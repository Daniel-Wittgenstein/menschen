

let debug = {
    quick_start: 1,
    disable_auto_loading_game: 1, //very important for development,
        //because if you change the story, Ink wll then try to restore
        //from a broken save state and sometimes throw a
        //good error, sometimes a cryptic error.
        //this can be hard to fix if you don't know what you are looking for.
}

let DELAY_SETTINGS = {
    paragraph: 0, //ink main's standard animation for paragraph entry: in milliseconds
        //this makes it so that the paragraphs are not faded in simultaneously, but
        //with a little delay, the first one earlier, the second one a bit later etc.
        //0 to disable
    image: 200, ////ink main's standard animation for image entry
    choice: 100, ////ink main's standard animation for choice entry
    animation_duration: '0.2s', //custom animation for paragraph entry
        //(not for choice entry) with animate css. duration as string like '3.2s'
    animation_duration_from_inline_choice: '0s' //like animation_duration, but
        //if last clicked choice was an inline choice
}



let very_first_para_done = false


function split_into_first_word_and_rest(str) {
    //this returns a trimmed! version of both first_word and rest
    str = str.trim()
    let ix = str.search(/[\s]/)
    if (ix === -1) return [str, ""]
    return [str.substr(0, ix), str.substr(ix).trim()]
}




;(function(storyContent) {

    // Create ink story from the content using inkjs
    var story = new inkjs.Story(storyContent);

    window.global_story = story

    var savePoint = "";

    let savedTheme;
    let globalTagTheme;

    // Global tags - those at the top of the ink file
    // We support:
    //  # theme: dark
    //  # author: Your Name
    var globalTags = story.globalTags;
    if( globalTags ) {
        for(var i=0; i<story.globalTags.length; i++) {
            var globalTag = story.globalTags[i];
            var splitTag = splitPropertyTag(globalTag);

            // THEME: dark
            if( splitTag && splitTag.property == "theme" ) {
                globalTagTheme = splitTag.val;
            }

            // author: Your Name
            else if( splitTag && splitTag.property == "author" ) {
                var byline = document.querySelector('.byline');
                byline.innerHTML = "by "+splitTag.val;
            }
        }
    }

    var storyContainer = document.querySelector('#story');
    var outerScrollContainer = document.querySelector('.outerContainer');

    // page features setup
    setupTheme(globalTagTheme);
    var hasSave = false
    if (!debug.disable_auto_loading_game) hasSave = loadSavePoint();

    setupButtons(hasSave);

    // Set initial save point
    savePoint = story.state.toJson();

    // Kick off the start of the story!
    continueStory(true);

    // Main story processing function. Each time this is called it generates
    // all the next content up as far as the next set of choices.
    function continueStory(firstTime, from_inline_choice = false) {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        // Generate story text - loop through available content

        let para_count = 0

        $("#story").html("") //flush screen after every turn


        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();
            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for(var i=0; i<tags.length; i++) {
                var tag = tags[i];

                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customised to be used for other things too.
                var splitTag = splitPropertyTag(tag);

                // AUDIO: src
                if( splitTag && splitTag.property == "AUDIO" ) {
                  if('audio' in this) {
                    this.audio.pause();
                    this.audio.removeAttribute('src');
                    this.audio.load();
                  }
                  this.audio = new Audio(splitTag.val);
                  this.audio.play();
                }

                // AUDIOLOOP: src
                else if( splitTag && splitTag.property == "AUDIOLOOP" ) {
                  if('audioLoop' in this) {
                    this.audioLoop.pause();
                    this.audioLoop.removeAttribute('src');
                    this.audioLoop.load();
                  }
                  this.audioLoop = new Audio(splitTag.val);
                  this.audioLoop.play();
                  this.audioLoop.loop = true;
                }


                // JS
                if( splitTag && splitTag.property.toLowerCase() == "js" ) {
                    eval(splitTag.val)
                }


                // JS
                if( splitTag && splitTag.property.toLowerCase() == "story_event" ) {
                    story_event_handler(splitTag.val)
                }



                // IMAGE: src
                if( splitTag && splitTag.property == "IMAGE" ) {
                    var imageElement = document.createElement('img');
                    imageElement.src = splitTag.val;
                    storyContainer.appendChild(imageElement);

                    showAfter(delay, imageElement);
                    delay += DELAY_SETTINGS.image
                }

                // LINK: url
                else if( splitTag && splitTag.property == "LINK" ) {
                    window.location.href = splitTag.val;
                }

                // LINKOPEN: url
                else if( splitTag && splitTag.property == "LINKOPEN" ) {
                    window.open(splitTag.val);
                }

                // BACKGROUND: src
                else if( splitTag && splitTag.property == "BACKGROUND" ) {
                    outerScrollContainer.style.backgroundImage = 'url('+splitTag.val+')';
                }

                // CLASS: className
                else if( splitTag && splitTag.property == "CLASS" ) {
                    customClasses.push(splitTag.val);
                }

                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if( tag == "CLEAR" || tag == "RESTART" ) {
                    removeAll("p");
                    removeAll("img");

                    // Comment out this line if you want to leave the header visible when clearing
                    setVisible(".header", false);

                    if( tag == "RESTART" ) {
                        restart();
                        return;
                    }
                }
            }

            // Create paragraph element (initially hidden)
            var paragraphElement = document.createElement('p');

            text = post_process_paragraph_text(paragraphText, para_count)
            para_count++

            paragraphElement.innerHTML = text;

            let ddur = DELAY_SETTINGS.animation_duration
            if (from_inline_choice) {
                ddur = DELAY_SETTINGS.animation_duration_from_inline_choice
            }

            $(paragraphElement).css('animation-duration', ddur)
            paragraphElement.classList.add('animate__animated')
            paragraphElement.classList.add('animate__slideInUp')

            storyContainer.appendChild(paragraphElement);

            // Add any custom classes derived from ink tags
            for(var i=0; i<customClasses.length; i++)
                paragraphElement.classList.add(customClasses[i]);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);
            delay += DELAY_SETTINGS.paragraph
        }

        // Create HTML choices from ink choices
        let ch_index = 0

        let inline_link_info = {}

        story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");

            let text = choice.text

            text = post_process_choice_text(text, ch_index,
                ch_index === story.currentChoices.length - 1, choice,
                inline_link_info)
            
            if (text.dont_print) return
            
            ch_index ++

            choiceParagraphElement.innerHTML = text
            storyContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += DELAY_SETTINGS.choice

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("button")[0];
            choiceAnchorEl.addEventListener("click", function(event) {

                // Don't follow <a> link
                event.preventDefault();

                window.do_select_choice(choice.index)

            });
        });

        //now mark the inline links as usable, unless
        //there are no entries for them:

        let els = $(".__unfinished_inline_link")

        for ( let el of els ) {
            let id = $(el).prop("id")
            id = id.replace("__inline-link-", "")
            $(el).removeClass("__unfinished_inline_link")
            let entry = inline_link_info[id]
            if (!entry || entry.length === 0) {
                //no choices: just print as normal text:
                let nu_el = $(`<span>${$(el).html()}</span>`)
                $(el).replaceWith(nu_el)
            } else {
                $(el).addClass("__inline_link")
            }
        }

        update_inline_link_handler(inline_link_info)

        // Extend height to fit
        // We do this manually so that removing elements and creating new ones doesn't
        // cause the height (and therefore scroll) to jump backwards temporarily.
        storyContainer.style.height = contentBottomEdgeY()+"px";

        if( !firstTime )
            scrollDown(previousBottomEdge);

    }

    function restart() {
        very_first_para_done = false

        story.ResetState();

        setVisible(".header", true);

        // set save point to here
        savePoint = story.state.toJson();

        continueStory(true);

        outerScrollContainer.scrollTo(0, 0);
    }

    // -----------------------------------
    // Various Helper functions
    // -----------------------------------

    // Fades in an element after a specified delay
    function showAfter(delay, el) {
        el.classList.add("hide");
        setTimeout(function() { el.classList.remove("hide") }, delay);
    }

    // Scrolls the page down, but no further than the bottom edge of what you could
    // see previously, so it doesn't go too far.
    function scrollDown(previousBottomEdge) {

        // Line up top of screen with the bottom of where the previous content ended
        var target = previousBottomEdge;

        // Can't go further than the very bottom of the page
        var limit = outerScrollContainer.scrollHeight - outerScrollContainer.clientHeight;
        if( target > limit ) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0-lerp)*start + lerp*target);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Remove all elements that match the given selector. Used for removing choices after
    // you've picked one, as well as for the CLEAR and RESTART tags.
    function removeAll(selector)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            if( !visible )
                el.classList.add("invisible");
            else
                el.classList.remove("invisible");
        }
    }

    // Helper for parsing out tags of the form:
    //  # PROPERTY: value
    // e.g. IMAGE: source path
    function splitPropertyTag(tag) {
        var propertySplitIdx = tag.indexOf(":");
        if( propertySplitIdx != null ) {
            var property = tag.substr(0, propertySplitIdx).trim();
            var val = tag.substr(propertySplitIdx+1).trim();
            return {
                property: property,
                val: val
            };
        }

        return null;
    }

    window.do_select_choice = (index, from_inline_choice = false) => {
        // Remove all existing choices
        removeAll(".choice");
    
        // Tell the story where to go next
        story.ChooseChoiceIndex(index);
    
        // This is where the save button will save from
        savePoint = story.state.toJson();
    
        // Aaand loop
        continueStory(false, from_inline_choice);
    }

    // Loads save state if exists in the browser memory
    function loadSavePoint() {

        try {
            let savedState = window.localStorage.getItem('save-state');
            if (savedState) {
                story.state.LoadJson(savedState);
                return true;
            }
        } catch (e) {
            console.debug("Couldn't load save state");
        }
        return false;
    }

    // Detects which theme (light or dark) to use
    function setupTheme(globalTagTheme) {

        // load theme from browser memory
        var savedTheme;
        try {
            savedTheme = window.localStorage.getItem('theme');
        } catch (e) {
            console.debug("Couldn't load saved theme");
        }

        // Check whether the OS/browser is configured for dark mode
        var browserDark = window.matchMedia("(prefers-color-scheme: dark)").matches;

        //override: set dark theme by default. user can still click on light theme
        browserDark = true 

        if (savedTheme === "dark"
            || (savedTheme == undefined && globalTagTheme === "dark")
            || (savedTheme == undefined && globalTagTheme == undefined && browserDark))
            document.body.classList.add("dark");   
    }

    // Used to hook up the functionality for global functionality buttons
    function setupButtons(hasSave) {

        let rewindEl = document.getElementById("rewind");
        if (rewindEl) rewindEl.addEventListener("click", function(event) {
            removeAll("p");
            removeAll("img");
            setVisible(".header", false);
            restart();
        });

        let saveEl = document.getElementById("save");
        if (saveEl) saveEl.addEventListener("click", function(event) {
            try {
                window.localStorage.setItem('save-state', savePoint);
                document.getElementById("reload").removeAttribute("disabled");
                window.localStorage.setItem('theme', document.body.classList.contains("dark") ? "dark" : "");
            } catch (e) {
                console.warn("Couldn't save state");
            }

        });

        let reloadEl = document.getElementById("reload");
        if (!hasSave) {
            reloadEl.setAttribute("disabled", "disabled");
        }
        reloadEl.addEventListener("click", function(event) {
            if (reloadEl.getAttribute("disabled"))
                return;

            removeAll("p");
            removeAll("img");

            try {
                let savedState = window.localStorage.getItem('save-state');
                if (savedState) story.state.LoadJson(savedState);
            } catch (e) {
                console.debug("Couldn't load save state");
            }
            continueStory(true);
        });

        let themeSwitchEl = document.getElementById("theme-switch");
        if (themeSwitchEl) themeSwitchEl.addEventListener("click", function(event) {
            document.body.classList.add("switched");
            document.body.classList.toggle("dark");
        });
    }

})(storyContent);



window.onload = () => {
    if (debug.quick_start) {
        $(".title-box").hide()
    }

    $("body").on("keydown", (e) => {
        if (e.key === "Escape") hide_sub_choice_selection()
    })

}


function start_up() {
    $("#title-box1").fadeOut(500)
}


function start_up2() {
    $("#title-box2").fadeOut(500)
}


function post_process_choice_text(text, index, is_last,
    choice, inline_link_info ) {
    //has side-effect: MODIFIES inline_link_info!
    if ( text.trim().startsWith("@") ) {
        let p = split_into_first_word_and_rest(text)
        let first_word = p[0]
        let rest = p[1]
        if (!first_word || !rest) throw `Wrong @ choice`
        first_word = first_word.replace("@", "")
        if (!first_word) throw `Wrong @ choice. single @?`
        
        if (!inline_link_info[first_word]) inline_link_info[first_word] = []
        inline_link_info[first_word].push({
            text: rest,
            choice: choice,
        })

        return { dont_print: true }
    }

    if (index === 0 && is_last) {
        return `<button class="single-ch story-choice">${text}</button>`
    }
    else if (index === 0) {
        return `<button class="first-ch story-choice">${text}</button>`
    } else if (is_last) {
        return `<button class="last-ch story-choice">${text}</button>`        
    }
    return `<button class="middle-ch story-choice">${text}</button>`
}


function post_process_paragraph_text(text, index) {
    //text: text of paragraph
    //index: 0 = first paragraph after last clicked choice
    // 1 = second paragraph ...

    text = linkify_text(text)

    if (text.trim().startsWith("@")) {
        //strip initial @word
        text = text.trim().replace(/\@.*?(\s|$)/g, "")
    }

    if (very_first_para_done && index === 0) {
        /* text of selected choice gets wrapped into special class,
        so we can give it special style:
        (when reloading game these classes get removed unfortunately,
            but it's not that bad)
        */
        return `<span class="was-choice">${text}</span>`
    }
    very_first_para_done = true

    return text
}

function on_restart() {
    very_first_para_done = false
}


function update_inline_link_handler(info) {

    $(".__inline_link").off("click")

    $(".__inline_link").on("click", function() {
        let id = $(this).prop("id")
        id = id.replace("__inline-link-", "")
        let entry = info[id]
        if (!entry || entry.length === 0) {
            return
        } else {
            show_sub_choice_selection(entry)
        }
    })
}

function show_sub_choice_selection(entry) {
    let el = $("#selection-overlay-inner")
    let html = ""
    let index = -1
    for (let item of entry) {
        index++
        html += `<div class="selection-overlay-entry"
            onclick="click_overlay(${item.choice.index})"
            >${item.text}</div>`
    }
    el.html(html)
    $("#selection-overlay").css("display", "flex")
    $("#selection-overlay").on("click", hide_sub_choice_selection)
    $("#selection-overlay-inner").addClass("animate__animated")
    $("#selection-overlay-inner").addClass("animate__backInUp")   
}

window.click_overlay = (index) => {
    hide_sub_choice_selection()
    window.do_select_choice(index, true)
}

function hide_sub_choice_selection() {
    $("#selection-overlay").hide()
}

function linkify_text(text) {
    text = text.replace(/\(\(.*?\)\)/g, (n) => {
        n = n.trim().replace("((", "").replace("))", "").trim()
        let p = split_into_first_word_and_rest(n)
        let first_word = p[0]
        let rest = p[1]
        if (!first_word || !rest) throw `Wrong inline link`
        first_word = first_word.replace("@", "")
        rest = rest.trim()
        return `<button class='__unfinished_inline_link'
            id='__inline-link-${first_word}'>
            ${rest}</button>`
    })
    return text
}





