
/* generic: */

VAR current_room = ""

/* fabrik 3: */

VAR things = "kuehlschrank, brot, gabel, bleistift, pflaster, amulett, eisenstange, sense, foto1, foto2, foto3, foto4, foto5, zigaretten1, zigaretten2"

VAR options_language = "German"

VAR kuehlschrank_name = "der Kühlschrank"
VAR kuehlschrank_container = true
VAR kuehlschrank_open = false
VAR kuehlschrank_room = "fabrik3"

VAR brot_name = "das Stück verschimmeltes Brot"
VAR brot_room = "kuehlschrank"

VAR gabel_name = "die Gabel"
VAR gabel_room = "kuehlschrank"

VAR foto1_name = "das Polaroid-Foto einer jungen Frau"
VAR foto2_name = "das Polaroid-Foto eines jungen, rothaarigen Mannes"
VAR foto3_name = "das Polaroid-Foto eines jungen Mannes, der dir vage bekannt vorkommt"
VAR foto4_name = "das Polaroid-Foto eines jungen, schwarzen Mannes"
VAR foto5_name = "das Polaroid-Foto eines Kindes"

VAR foto1_pic = "polaroid1.png"
VAR foto2_pic = "polaroid2.png"
VAR foto3_pic = "polaroid3.png"
VAR foto4_pic = "polaroid4.png"
VAR foto5_pic = "polaroid5.png"

VAR foto1_room = "kuehlschrank"
VAR foto2_room = "nirwana"
VAR foto3_room = ""
VAR foto4_room = "aktenschraenke"
VAR foto5_room = ""

VAR bleistift_name = "der Bleistift"
VAR bleistift_room = "aktenschraenke"

VAR pflaster_name = "das benutzt^ Pflaster"
VAR pflaster_room = "aktenschraenke"

VAR amulett_name = "der Umhänger"
VAR amulett_room = "aktenschraenke"

VAR eisenstange_name = "die Eisenstange"
VAR eisenstange_room = "nirwana"

VAR bleistift_inv_text = ""
VAR amulett_inv_text = ""

VAR sense_name = "die Sense"
VAR sense_room = "nirwana"

VAR zigaretten1_name = "die volle Packung Zigaretten samt Feuerzeug"
VAR zigaretten1_room = "nirwana"

VAR zigaretten2_name = "die leere Packung Zigaretten"
VAR zigaretten2_room = "nirwana"


=== thing_actions(-> ret)


+ {foto1_room == current_room or (foto1_room == "kuehlschrank" and kuehlschrank_room == current_room and kuehlschrank_open == true)} @foto1 Nimm das Foto
    <img src="assets/polaroid1.png" class="story-image">
    Du nimmst das Foto an dich.
    ~ foto1_room = "player"

+ {foto2_room == current_room} @foto2 Nimm das Foto
    <img src="assets/polaroid2.png" class="story-image">
    Du nimmst das Foto.
    ~ foto2_room = "player"

+ {foto3_room == current_room} @foto3 Nimm das Foto
    <img src="assets/polaroid3.png" class="story-image">
    Du nimmst das Foto.
    ~ foto3_room = "player"

+ {foto4_room == current_room or (foto4_room == "aktenschraenke" and aktens_count)} @foto4 Nimm das Foto
    <img src="assets/polaroid4.png" class="story-image">
    Du schnappst dir das Foto.
    ~ foto4_room = "player"

+ {foto5_room == current_room} @foto5 Nimm das Foto
    <img src="assets/polaroid5.png" class="story-image">
    Du nimmst das Foto.
    ~ foto5_room = "player"

+ {brot_room == current_room or (brot_room == "kuehlschrank" and kuehlschrank_room == current_room and kuehlschrank_open == true)} @brot Nimm das Brot
    Angewidert hebst du das Brot auf.
    ~ brot_room = "player"

+ {gabel_room == current_room or (gabel_room == "kuehlschrank" and kuehlschrank_room == current_room and kuehlschrank_open == true)} @gabel Nimm die Gabel
    Du schnappst dir die Gabel.
    ~ gabel_room = "player"


+ {bleistift_room == current_room or (bleistift_room == "aktenschraenke" and aktens_count)} @bleistift Nimm den Bleistift
    Du schnappst dir den Bleistift.
    ~ bleistift_room = "player"


+ {amulett_room == current_room or (amulett_room == "aktenschraenke" and aktens_count)} @amulett Nimm den Umhänger
    Du nimmst den Anhänger in die Hand und betrachtest ihn. Er besteht aus rosa Hartplastik und ist unwahrscheinlich dick und klobig. Auf der Vorderseite klebt ein Sticker mit einer blonden Prinzessin. Auf der Rückseite steht in geschwungenen Lettern: "best friend's 4ever".
    ++ Behalte ihn
        In einem Anflug von Geschmacklosigkeit hängst du dir den Anhänger um den Hals.
        ~ amulett_room = "player"
    ++ Lege ihn zurück
        Du legst den Anhänger zurück in die Schublade.

+ {pflaster_room == current_room or (pflaster_room == "aktenschraenke" and aktens_count)} @pflaster Nimm das Pflaster
    Angewidert nimmst du das Pflaster und steckst es in deine Hosentasche.
    ~ pflaster_room = "player"




-
-> ret





