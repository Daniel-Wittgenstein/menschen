
/*
world simulation stuff
TODO: proxy for vars when they change, update worldmanager state.




usage inside ink:

# js: kavka.room_content("$current_room", "links",
    "acc", "und", ".rc-span",
    {nothing: "Du siehst hier nichts.", pre: "Du siehst hier ", post: "."})

<span class="rc-span"></span>


############################

-> the Ink author has to add take/drop options.
They can be added like so:

make an include thingy with <- ret
so you can include this into any room.

There you can add options like this:

VAR current_room = "garden"

=== ret

# js: kavka.room_content("$current_room", "links", "acc") 
Du siehst hier {output}.

+ {sword_room == current_room} Nimm das Schwert
    Du schnappst dir das Schwert.
    ~ sword_room = "player"

+ {schrank_room === current_room and not schrank_open} Öffne den Schrank
    # js: kavka.room_content("schrank", "links", "acc") 
    Du machst den Schrank auf. Innen siehst du {output}.
    ~ schrank_open = true

-

-> ret

NOTE the "$current_room" in the example above vs. the "schrank".
The dollar symbol means this: looks at the string stored inside the
Ink variable "current_room", use that string as input to kavka_room_content.
(Basically one is JavaScript's thing.prop and one is thing[prop], more or less )

*/

class WorldManager {
    constructor(story, update_inline_links) {
        //story.variablesState
        this.story = story
        this.update_inline_links = update_inline_links
        this.current_lists = {}
        this.init()
    }

    get_room_content(room_ref, inline_links, grammar_case, and = "und", target,
            texts) {
        let vv = this.story.variablesState
        inline_links = (inline_links === "links")
        grammar_case = {acc: "acc", akk: "acc", dat: "dat", nom: "nom"}[grammar_case]
        if (!grammar_case) {
            throw `room_content: Invalid case. Must be "acc", "dat" or "nom.`
            return
        }
        let room
        if (room_ref.startsWith("$")) {
            room_ref = room_ref.replace("$", "").trim()
            room = vv[room_ref]
            if (room === null) {
                throw `room_content: $${room_ref}: the Ink variable ${room_ref} is
                    null, so it does not point to a room. It should contain a room id as
                    a string, instead.`
                return
            }
        } else {
            room = room_ref.trim()
        }

        let text = this.get_list(room, inline_links, grammar_case, and, texts)
        
        this.current_lists[target] = text
        
        //return value does not matter
    }

    notify_turn_end(inline_link_info) {
        setTimeout( () => {
            for (let target of Object.keys(this.current_lists)) {
                let text = this.current_lists[target]
                $(target).html(post_process_paragraph_text(text, Infinity))
            }
            this.update_inline_links(inline_link_info)
            this.current_lists = {}
        }, 0)
    }

    get_list(target_room, inline_links, grammar_case, and, texts) {
        let text = ""
        //rooms are just strings with a name, so a non-existing room
        //is fine

        let that = this

        function fetch_prop(thing, property) {
            let vv = that.story.variablesState
            let acc = thing.id + "_" + property
            return vv[acc]
        }

        let thingsies = Object.values(this.things).filter(thing => {
            return fetch_prop(thing, "room") === target_room
        })

        if (thingsies.length === 0) return texts.nothing
        let i = -1
        for (let thing of thingsies) {
            i++
            let comma = ", "
            if (i === thingsies.length - 1) comma = ""
            if (i === thingsies.length - 2) comma = " " + and + " "
            let xx = this.printed_thing(thing, grammar_case)
            let join_with_link = false
            if (comma === ", ") join_with_link = true
            if (join_with_link) xx += comma
            if (inline_links) {
                xx = `((@${thing.id} ${xx}))`
            }
            if (!join_with_link) xx += comma
            text += xx
        }
        let final = texts.pre + text + texts.post
        if (final.endsWith(")).")) {
            final = final.substr(0, final.length - 3) + ".))"
        }

        return final
    }
    
    printed_thing(thing, grammar_case) {
        return this.printed_thing_proper(thing, grammar_case)
    }

    printed_thing_proper(thing, grammar_case) {

        function grammatize_name(name, gend, cas) {
            const tabl1 = { //^
                m: { nom: "er", dat: "en", acc: "en" },
                f: { nom: "e", dat: "en", acc: "e" },
                n: { nom: "es", dat: "en", acc: "es" },
                p: { nom: "e", dat: "en", acc: "e" },
            }

            const tabl2 = { //(en): der Elefant / dem/den Elefanten
                m: { nom: "", dat: "en", acc: "en" },
                f: { nom: "", dat: "", acc: "" },
                n: { nom: "", dat: "", acc: "" },
                p: { nom: "", dat: "", acc: "" },
            }

            const tabl3 = { //(n)
                //der Balte / dem/den Balten
                //die Vögel / den Vögeln / die Vögel
                m: { nom: "", dat: "n", acc: "n" },
                f: { nom: "", dat: "", acc: "" },
                n: { nom: "", dat: "", acc: "" },
                p: { nom: "", dat: "n", acc: "" },
            }

            name = name
                .replaceAll("^", () => tabl1[gend][cas])
                .replaceAll("(en)", () => tabl2[gend][cas])
                .replaceAll("(n)", () => tabl3[gend][cas])
            return name
        }

        const art_table = {
            m: { nom: "ein", dat: "einem", acc: "einen" },
            f: { nom: "eine", dat: "einer", acc: "eine" },
            n: { nom: "ein", dat: "einem", acc: "ein" },
            p: { nom: "", dat: "", acc: "" },
        }

        let txt = ""
        let article = ""
        let name = thing.name
        let space = " "
        if (!name || !is_string(name)) {
            throw `${thing.id}: thing has no name. cannot print it.`
            return
        }
        if ( thing.no_article ) {
            article = ""
            space = ""
        } else {
            space = " "
            article = art_table[ thing.grammar_gender ][grammar_case]
        }
        name = grammatize_name(name, thing.grammar_gender, grammar_case)
        txt = article + space + name
        return txt
    }

    show_character() {
        function add_text(thing_id) {
            let thing = that.things[thing_id]
            let add_txt = ""
            let vv = that.story.variablesState
            let xx = vv[thing.id + "_inv_text"]
            if (xx) {
                add_txt = " (" + xx + ")"
            }
            let txt = "<p>✪&nbsp;" + that.printed_thing_proper(thing, "acc") +
                add_txt
            let x = vv[thing_id + "_pic"]
            if (x) {
                txt += `<img onclick="show_image_big('assets/${x}')"
                    src="assets/${x}" class="inventory-image">`
            }
            txt += "</p>"
            return txt
        }
        let that = this
        let vv = this.story.variablesState
        let things = vv.things.split(",").map(n=>n.trim()).filter(n=>n)
        let txt = ""
        let okay = false
        for (let thing_id of things) {
            let room = thing_id + "_room"
            if (vv[room] === "player") {
                txt += add_text(thing_id)
                okay = true
            }
        }
        if (!okay) txt = "✪✪✪ Nichts Erwähnenswertes. ✪✪✪"
        that.show_character_dialog(txt)
    }

    show_character_dialog(txt) {
        Swal.fire({
            title: 'Du trägst bei dir:',
            html: txt,
            confirmButtonColor: confirm_button_color,
        })
    }

    init() {
        let vv = this.story.variablesState

        if (!vv.things) {
            throw `The WorldManager expects an Ink variable called things. Example:\n
            VAR things = "sword, schild, papagei, amsel, affe, kessel, schrank, truhe, sma, anita"\n
            This list should be STATIC THROUGHOUT THE GAME. But DO NOT define it with CONST!`
            return
        }

        if (vv.options_language === null) {
            throw `Ink variable 'options_language' must be set`
            return
        }

        if (vv.options_language.toLowerCase() !== "german") {
            throw `Ink variable 'options_language': the only valid
            setting is "German" (or "german"). Example:\n
            VAR options_language = "German"\n
            Do not use CONST!`
            return
        }

        let lang = vv.options_language.toLowerCase()

        let all_things = vv.things.split(",")
            .map( n => n.trim() ).filter(n => n)

        for (let thing of all_things) {
            if (thing.toLowerCase() !== thing) {
                throw `Inside the Ink variable 'things' you defined a thing '${thing}', but 
                thing id's must be all lower-case.`
                return
            }
        }

        const allowed_props = [
            {prop: "name", type: "string"},
            {prop: "room", type: "string"},
            {prop: "take", type: "bool"},
            {prop: "container", type: "bool"},
            {prop: "open", type: "bool"},
            {prop: "no_article", type: "bool"},
            {prop: "plural", type: "bool"},
        ]

        let actual_things = {}
        this.things = actual_things

        for (let thing_id of all_things) {
            if (thing_id.includes("_")) {
                throw `Thing id cannot contain underscores (but thing properties can).`
                return
            }
            let thing = { id: thing_id }
            actual_things[thing_id] = thing
            for (let prop of allowed_props) {
                let acc = thing_id + "_" + prop.prop
                if (vv[acc] !== null) {
                    thing[prop.prop] = vv[acc]
                }
            }
        }

        /*
        let locations = {} //rooms and containers
        this.locations = locations

        for (let thing of Object.values(actual_things) ) {
            if (!thing.room) {
                throw `Thing '${thing.id}' has no room.`
                return
            }
            if (!locations[thing.room]) locations[thing.room] = []
            locations[thing.room].push(thing)
            let t = actual_things[thing.room]
            if (t && !t.container) {
                throw `${thing.id} is inside ${t.id}, but ${t.id} is not a container.`
                return
            }
        }
*/

        console.log(actual_things)
        
        if (lang === "german") {
            for (let thing of Object.values(actual_things) ) {
                if (!thing.name) {
                    throw `Thing '${thing.id}' has no name. Do:\n
                    VAR sword_name = "sword"`
                    return
                }
                let name = thing.name.trim()
                const articles = ["der", "die", "das"]
                let art = false
                for (let article of articles) {
                    if ( name.startsWith(article + " ") ) {
                        art = article
                        name = name.replace(article + " ", "")
                    }
                    thing.name = name.trim()
                }
                if (!art) {
                    throw `'${thing.id}_name': Der Name sollte mit "der ", "die "
                    oder "das " anfangen. String should start with a German article.`
                    return
                }

                if (thing.plural) {
                    if (art !== "die") {
                        throw `'${thing.id}_name': Pluralwort: der Name muss mit "die " anfangen.`
                        return
                    }
                    art = "p"
                }

                thing.grammar_gender = {der: "m", die: "f", das: "n", p: "p"}[art]

                
            }
        }


        

    } //init

}



