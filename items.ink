
/* generic: */

VAR current_room = ""

/* fabrik 3: */

VAR things = "kuehlschrank, brot, gabel"
VAR options_language = "German"

VAR kuehlschrank_name = "der Kühlschrank"
VAR kuehlschrank_container = true
VAR kuehlschrank_open = false
VAR kuehlschrank_room = "fabrik3"

VAR brot_name = "das Stück verschimmeltes Brot"
VAR brot_room = "kuehlschrank"

VAR gabel_name = "die Gabel"
VAR gabel_room = "kuehlschrank"



=== thing_actions(-> ret)

+ {brot_room == current_room or (brot_room == "kuehlschrank" and kuehlschrank_room == current_room and kuehlschrank_open == true)} @brot Nimm das Brot
    Angewidert hebst du das Brot auf.
    ~ brot_room = "player"

+ {gabel_room == current_room or (gabel_room == "kuehlschrank" and kuehlschrank_room == current_room and kuehlschrank_open == true)} @gabel Nimm die Gabel
    Du schnappst dir die Gabel.
    ~ gabel_room = "player"
    
-
-> ret
