
/* generic: */

VAR current_room = ""

/* fabrik 3: */

VAR things = "kuehlschrank, brot, gabel, bleistift, pflaster, amulett"
VAR options_language = "German"

VAR kuehlschrank_name = "der Kühlschrank"
VAR kuehlschrank_container = true
VAR kuehlschrank_open = false
VAR kuehlschrank_room = "fabrik3"

VAR brot_name = "das Stück verschimmeltes Brot"
VAR brot_room = "kuehlschrank"

VAR gabel_name = "die Gabel"
VAR gabel_room = "kuehlschrank"

VAR bleistift_name = "der Bleistift"
VAR bleistift_room = "aktenschraenke"

VAR pflaster_name = "das benutzt^ Pflaster"
VAR pflaster_room = "aktenschraenke"

VAR amulett_name = "der Umhänger"
VAR amulett_room = "aktenschraenke"


=== thing_actions(-> ret)


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





