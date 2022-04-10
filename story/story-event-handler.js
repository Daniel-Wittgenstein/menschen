
/*

#js: rain_sound_id2 = rain_sound2.play();

#js: rain_sound2.fade(0, 1.0, 300, rain_sound_id2);

#js: rain_sound1.fade(1.0, 0.0, 300, rain_sound_id1);

#js: rain_sound1.stop()
*/

(function() {
    let rain_sound1
    let rain_sound2
    let rain_sound_id1
    let rain_sound_id2
    window.story_event_handler = (name) => {
        //every time you use a tag like
        // #story_event: my_event in your ink story,
        //this will get called with name = "story_event"
        name = name.trim().toLowerCase()
        console.log("STORY EVENT TRIGGERED:", name)

                            return
                            
        switch (name) {
            case "start_story":
                rain_sound1 = new Howl({ 
                    src: ['assets/rain2.wav'], loop: true, volume: 0});
                
                rain_sound_id1 = rain_sound1.play();
                
                rain_sound1.fade(0, 0.5, 400, rain_sound_id1);            
            break
            case "enter_foyer":
                rain_sound1.fade(0.5, 0.1, 1000)
    /*
                rain_sound2 = new Howl({ 
                    src: ['assets/rain1.wav'], loop: true, volume: 0});

                    rain_sound2.seek(24)

                    rain_sound_id2 = rain_sound2.play();
                
                    rain_sound2.fade(0, 1.0, 0, rain_sound_id2);     */  

            break
            
            case "verhoer_start":
            rain_sound1.fade(0.2, 0.0, 300)


            break
        }
    }

})()





