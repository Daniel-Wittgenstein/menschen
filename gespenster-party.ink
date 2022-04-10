

=== gespenster_party_start
~ SEED_RANDOM(236)

-> ballsaal

VAR player_just_moved = false

CONST rballsaal = "ballsaal"
CONST rfoyer = "foyer"
CONST rgarten = "garten"
CONST rmusikzimmer = "musikzimmer"
CONST rtreppenhaus = "treppenhaus"

CONST spieler = 100

CONST frau = "frau"
CONST herr = "junger_mann"
CONST dame = "dame"

VAR frau_mentioned = false
VAR herr_mentioned = false
VAR dame_mentioned = false

VAR spieler_raum = rballsaal
VAR frau_raum = rballsaal
VAR herr_raum = rfoyer
VAR dame_raum = rgarten

VAR spieler_raum_actual_knot = -> ballsaal

CONST frau_name1 = "((@frau eine wasserstoffblonde Frau in einem Minirock))"
CONST Frau_name1 = "((@frau Eine wasserstoffblonde Frau in einem Minirock))"

CONST frau_name2 = "((@frau die wasserstoffblonde Frau im Minirock))"
CONST Frau_name2 = "((@frau Die wasserstoffblonde Frau im Minirock))"

VAR frau_name = frau_name1
VAR Frau_name = Frau_name1


CONST herr_name1 = "((@herr ein junger Mann mit einer roten Krawatte))"
CONST Herr_name1 = "((@herr Ein junger Mann mit einer roten Krawatte))"

CONST herr_name2 = "((@herr der junge Mann mit der roten Krawatte))"
CONST Herr_name2 = "((@herr Der junge Mann mit der roten Krawatte))"

VAR herr_name = herr_name1
VAR Herr_name = Herr_name1

CONST dame_name1 = "((@dame eine ältere Dame mit einer Turmfrisur))"
CONST Dame_name1 = "((@dame Eine ältere Dame mit einer Turmfrisur))"

CONST dame_name2 = "((@dame die ältere Dame mit der Turmfrisur))"
CONST Dame_name2 = "((@dame Die ältere Dame mit der Turmfrisur))"

VAR dame_name = dame_name1
VAR Dame_name = Dame_name1

=== function get_location_of_person(t_person) 
    { t_person:
        - spieler: ~ return spieler_raum
        - frau: ~ return frau_raum
        - herr: ~ return herr_raum 
        - dame: ~ return dame_raum
    }    


=== function incoming_frau(o, n)
    {o == rgarten and n == rballsaal:
        {Frau_name} kommt aus dem Garten hereinstolziert.
        ~ return
    }
    
    {o == rballsaal and n == rgarten:
        {Frau_name} kommt von drinnen in den Garten stolziert. Sie wirft einen arroganten Blick um sich und stellt sich neben den Pool.
        ~ return
    }

    {Frau_name} kommt in den Raum stolziert.



=== function incoming_herr(o, n)
    {o == rgarten and n == rballsaal:
        {Herr_name} kommt aus dem Garten herein.
        ~ return
    }
    
    {o == rballsaal and n == rgarten:
        {Herr_name} kommt von drinnen und bleibt in der Nähe des Pools stehen.
        ~ return
    }

    {Herr_name} kommt in den Raum geschlendert.


=== function incoming_dame(o, n)
    {o == rgarten and n == rballsaal:
        {Dame_name} kommt aus dem Garten hereinstolziert.
        ~ return
    }
    
    {o == rballsaal and n == rgarten:
        {Dame_name} kommt von drinnen in den Garten spaziert.
        ~ return
    }

    {Dame_name} kommt in den Raum stolziert.
    
    



=== function leaving_frau(o, n)
    {o == rballsaal and n == rgarten:
        {Frau_name} geht hinaus in den Garten.
        ~ return
    }
    
    {o == rgarten and n == rballsaal:
        {Frau_name} wirft einen letzten gelangweilten Blick um sich und stolziert zurück ins Haus.
        ~ return
    }

    {n == rfoyer: {Frau_name} verlässt den Saal Richtung Foyer.}
        
    {o == rmusikzimmer and n == rballsaal: {Frau_name} verlässt das Musikzimmer Richtung Saal.}
        
    {n == rballsaal: {Frau_name} verlässt das Foyer Richtung Saal.}
                
    {n == rmusikzimmer: {Frau_name} verlässt den Saal Richtung Musikzimmer.}
        

=== function leaving_herr(o, n)
    {o == rballsaal and n == rgarten:
        {Herr_name} geht hinaus in den Garten.
        ~ return
    }
    
    {o == rgarten and n == rballsaal:
        {Herr_name} schlendert zurück ins Haus.
        ~ return
    }

    {n == rfoyer: {Herr_name} verlässt den Saal Richtung Foyer.}
        
    {o == rmusikzimmer and n == rballsaal: {Herr_name} verlässt das Musikzimmer Richtung Saal.}
        
    {n == rballsaal: {Herr_name} verlässt das Foyer Richtung Saal.}
                    
    {n == rmusikzimmer: {Herr_name} verlässt den Saal Richtung Musikzimmer.}


=== function leaving_dame(o, n)
    {o == rballsaal and n == rgarten:
        {Dame_name} geht hinaus in den Garten.
        ~ return
    }
    
    {o == rgarten and n == rballsaal:
        {Dame_name} trippelt zurück ins Haus.
        ~ return
    }

    {n == rfoyer: {Dame_name} verlässt den Saal Richtung Foyer.}
        
    {o == rmusikzimmer and n == rballsaal: {Dame_name} verlässt das Musikzimmer Richtung Saal.}
        
    {n == rballsaal: {Dame_name} verlässt das Foyer Richtung Saal.}
        
    {n == rmusikzimmer: {Dame_name} verlässt den Saal Richtung Musikzimmer.}


=== function notify_incoming(t_person, org_room, nu_room)
    { t_person:
        - frau: ~ incoming_frau(org_room, nu_room)
        - herr: ~ incoming_herr(org_room, nu_room)
        - dame: ~ incoming_dame(org_room, nu_room)
    }
    ~ mentioned(t_person)
    ~ just_came_in = t_person
    
    
VAR just_came_in = -666

=== function notify_leaving(t_person, org_room, nu_room)
    { t_person:
        - frau: ~ leaving_frau(org_room, nu_room)
        - herr: ~ leaving_herr(org_room, nu_room)
        - dame: ~ leaving_dame(org_room, nu_room)
    }
    ~ mentioned(t_person)

=== function notify_movement(t_person, org_room, nu_room)
    ~ temp player_room = spieler_raum

    {org_room == player_room:

        ~ notify_leaving(t_person, org_room, nu_room)
        ~ return
    }
    
    {nu_room == player_room:
        ~ notify_incoming(t_person, org_room, nu_room)
        ~ return
    }
    
    
=== function mentioned(t_person)
    { t_person:
        - frau: 
            ~ frau_name = frau_name2
            ~ Frau_name = Frau_name2
            ~ frau_mentioned = true
        - herr: 
            ~ herr_name = herr_name2
            ~ Herr_name = Herr_name2
            ~ herr_mentioned = true
        - dame: 
            ~ dame_name = dame_name2
            ~ Dame_name = Dame_name2
            ~ dame_mentioned = true

    }    
   
    

=== function move_to_room(t_person, t_raum)

    ~ temp original_room = get_location_of_person(t_person) 

    //move:
      { t_person:
        - frau: ~ frau_raum = t_raum
        - herr: ~ herr_raum = t_raum
        - dame: ~ dame_raum = t_raum
    }    

<span class='debug'>DIAGNOSTICS: {t_person} moves from {original_room} to {t_raum}</span>


    ~ notify_movement (t_person, original_room, t_raum)


VAR next_person_counter = 0

=== function get_next_person()
    ~ next_person_counter++
    
    { next_person_counter:
        - 1: 
            ~ return frau
        - 2: 	
            ~ return herr
        - 3: 	
            ~ next_person_counter = 0
            ~ return dame
    }


=== function new_person_event()

    {player_just_moved:
        ~ player_just_moved = false
        ~ return
    }

    ~ party_count = 0

    ~ temp person = get_next_person()

    ~ temp action = RANDOM(1, 100)
    
    { action <= 100:
        ~ new_event_walk(person)
    }



=== function get_random_person()
    ~ temp r = RANDOM(1,3)
    {r == 1:
        ~ return frau
    }
    {r == 2:
        ~ return herr
    }
    {r == 3:
        ~ return dame
    }
   

=== function get_random_room()
    ~ temp r = RANDOM(1, 4)
    {r == 1:
        ~ return rballsaal
    }
    {r == 2:
        ~ return rgarten
    }
    {r == 3:
        ~ return rmusikzimmer
    }
    {r == 4:
        ~ return rfoyer
    }


=== function new_event_walk(person)
    ~ temp loc = get_location_of_person(person)

    ~ temp dest = get_random_room()
    /* valid room connections: */
    
    ~ temp valid = false
    { loc == rballsaal and dest == rfoyer:
        ~ valid = true
    }
    
    { loc == rballsaal and dest == rgarten:
        ~ valid = true
    }
    
    { loc == rballsaal and dest == rmusikzimmer:
        ~ valid = true
    }
    
    { loc == rmusikzimmer and dest == rballsaal:
        ~ valid = true
    }
    
    { loc == rfoyer and dest == rballsaal:
        ~ valid = true
    }

    { loc == rgarten and dest == rballsaal:
        ~ valid = true
    }
    
    { not valid:
        ~ new_event_walk(person)
        ~ return
    }

    ~ move_to_room(person, dest)
    
    
VAR party_count = 0

=== party_jede_runde
    ~ party_count ++
    
    ~ temp r = RANDOM (1, 1)
    
    {r == 1:
        ~ party_count ++
    }
    
    {party_count >= 1:
        ~ new_person_event()
    }


->->

/* Ink lists are fucking retarded. seriously, they could have just given us hashmaps or objects. but who cares. gift horse etc. */


=== raum_leute

    ~ temp jci = just_came_in
    ~ just_came_in = -666

    {frau_mentioned and get_location_of_person(frau) == spieler_raum and jci != frau:

        {~((@frau Die Frau)) mit dem wasserstoffblonden Haaren steht alleine da und scheint sich zu langweilen.|((@frau Die Frau)) mit den wasserstoffblonden Haaren nippt an ihrem Martini.|((@frau Die Blonde)) mit dem Minirock gähnt gelangweilt.|((@frau Die blonde Frau)) mit dem Minirock wirft einen ratlosen Blick um sich.}


    }
    
    {herr_mentioned and get_location_of_person(herr) == spieler_raum and jci != herr:

        {~((@herr Der junge Mann)) mit der roten Krawatte nippt an seinem Glas Cola.|((@herr Der junge Mann)) mit der roten Krawatte wirft dir einen verstohlenen Blick zu. Als du zurückschaust, wendet er sich schnell ab.|((@herr Der Mann)) mit roten Krawatte steht abseits der anderen Gäste und wartet, dass ihn jemand anspricht.|((@herr Der junge Mann)) mit der roten Krawatte gähnt.}

    }
    
    {dame_mentioned and get_location_of_person(dame) == spieler_raum and jci != dame:
        { spieler_raum:
            - rgarten:
                Unweit des Pools steht ((@dame die ältere Dame)) mit der Turmfrisur und unterhält sich angeregt mit einer Freundin.
            - else:
                Die ((@dame ältere Dame)) mit der Turmfrisur {~lacht laut über etwas, was jemand gesagt hat.|unterhält sich angeregt mit einer anderen Frau.}          
        }
    

    }
    
    ->->


=== ballsaal
~ spieler_raum = rballsaal
~ spieler_raum_actual_knot = -> ballsaal

Ein festlich geschmückter Ballsaal. Im hinteren Teil des Saals ist ein Büffet aufgebaut.

-> raum_leute ->

<- people_actions

+ Warte
    Du wartest.
    -> party_jede_runde -> ballsaal

* Guck dir das Büffet an
    Du siehst einen Salat und ein Auberginensandwich, die vielleicht vegan sein könnten.

    ++ Iss was vom Salat
        Du nimmst dir einen Teller und ein wenig Salat, bevor du siehst, dass er Hühnchenstücke enthält. Angewidert stellst du den Teller zurück auf den Tisch.
        
        +++ Iss das Sandwich
            Du isst das Sandwich. Hat gut geschmeckt.
            -> party_jede_runde -> ballsaal      
            
        +++ Lass das mit dem Essen lieber
            -> party_jede_runde -> ballsaal
    
    ++ Iss das Sandwich
        Du isst das Sandwich. Hat gut geschmeckt.
        -> party_jede_runde -> ballsaal
        
    ++ Lass es lieber
    -> party_jede_runde -> ballsaal

+ Geh rüber ins Foyer
    ~ player_just_moved = true
    -> party_foyer


+ Geh ins Musikzimmer
    ~ player_just_moved = true
    -> musikzimmer

+ Geh raus in den  Garten
    ~ player_just_moved = true
    -> garten

+ Geh zurück ins Treppenhaus
    Du gehst zurück ins Treppenhaus, aus dem du gekommen bist.
    -> treppenhaus
    
    
=== treppenhaus
    ~ spieler_raum = rtreppenhaus
    ~ spieler_raum_actual_knot = -> treppenhaus
    
    Du stehst im Treppenhaus. Die Treppe führt nach oben in den ersten Stock. Durch die Tür geht es zurück in den Ballsaal.
    
    <- people_actions
    
    + Gehe nach oben
        Du hast oben nichts zu schaffen.
    -> treppenhaus
    
    + Gehe zurück in den Ballsaal
        Du gehst zurück in den Ballsaal.
    -> ballsaal
    
    + Sieh dich um
    Hier gibt es wenig zu sehen. Eine Büste von Sokrates, ein Rauchmelder an der Decke, ein Treppengeländer mit verschnörkelten Verzierungen. Und keine Menschen außer dir.
    -> treppenhaus

=== party_foyer
~ spieler_raum = rfoyer
~ spieler_raum_actual_knot = -> party_foyer

Das Foyer. Du erinnerst dich. Hier warst du, als Marek dich ins Haus gebracht hat. Und da drüben ist die Tür, die in den Salon führt. Sie ist verschlossen. Außerdem siehst du eine Tür, die mit "Damen" beschriftet ist, die dir letztes Mal, als du hier warst, nicht aufgefallen ist.

-> raum_leute ->

<- people_actions

+ Warte
    Du wartest.
    -> party_jede_runde -> party_foyer

+ Geh rüber in den Ballsaal
    ~ player_just_moved = true
    -> ballsaal

* Geh auf Toilette
    -> toilette
    
* Gehe in den Salon

    Ein Securitytyp hält dich auf: "Kein Zutritt!"
 
    ++ "Sie wissen schon, dass hier ein Mord stattgefunden hat?"
    
        Er blickt hektisch um sich. "Das ... ist eine Lüge. Von politischen Gegnern gestreut, um den Wahlkampf von Herrn Němec zu sabotieren. In seinem Haus würde sich so etwas nie zutragen."
        
        +++ "Ich dachte, hier wohnt Marek Nedostal, der Filmemacher?"
            
            "Was?! Nein, das hier ist das Haus unseres künftigen Präsidenten Jirka Němec. Berichte, dass er Freunden sein Haus überlässt, um junge Frauen zu ... äääh ... verführen, sind Fake News."
            
            ++++ "Alles klar."

                "Entfernen Sie sich jetzt bitte von der Tür."
    
            ++++ "Darf ich jetzt in den Salon? Ich habe meinen Regenschirm dort vergessen."
            
                Er schüttelt den Kopf.
    
        +++ "Darf ich jetzt in den Salon? Ich habe meinen Regenschirm dort vergessen."
        
            Er schüttelt den Kopf.
    
    ++ "Darf ich jetzt in den Salon? Ich habe meinen Regenschirm dort vergessen."
    
        Er schüttelt den Kopf.
    
-

Mist! Wie sollst du jetzt in den Salon kommen und den Dolch holen?
-> party_foyer    


    
=== toilette

Du betrittst das Bad. Zwei Frauen um die Ende dreißig in Abendroben stehen vor dem Spiegel.

"Schätzchen, hast du vielleicht ein bisschen Gras?", fragt dich die mit der blonden Dauerwelle.

    + "Leider nein."
    
    + "Ääääh ..."
    
- 
"Schade", seufzt sie, "Hätte jetzt echt was vertragen können."

"Ach, komm", sagt die andere, "Auf der Toilette rauchen? Du bist keine siebzehn mehr."

"Oh, wenn es nach mir ginge, würde ich auch draußen rauchen", sagt die mit der blonden Dauerwelle, "Habe ich beim letzten Empfang hier probiert. Der Rauchmelder ist losgegangen und das ganze Haus musste evakuiert werden. Was glaubst du, was mein Mann für Ärger bekommen hat."

"<i>Er</i> hat Ärger bekommen und nicht <i>du</i>?"

"Pfff ... Er kann nicht sauer auf mich sein, dazu ist er ein zu großer Schlappschwanz." Sie wirft dir unvermittelt ein freundliches Lächeln zu: <>


{abendkleid:
    "Liebchen, dieses Kleid steht dir <i>wirklich</i> nicht."
-else:
    "Ich <i>liebe</i> deinen Stil. Einfach so nonchalant."
    
    Sie lässt den Blick an deinem Outfit mit dem Schlabbershirt und der ausgeblichenen Jeans herabgleiten.
    
    "In dem Alter und mit der Figur steht einem aber auch wirklich alles", sagt die andere mit einer Mischung aus Bewunderung und Neid.
}

Bevor du etwas antworten kannst, verlassen sie das Bad, als würde es sie gar nicht interessieren, was du dazu zu sagen hast. Hmmmm ... wahrscheinlich interessiert es sie <i>wirklich</i> nicht.

-> toilette2.toilette2b

=== toilette2

Du befindest dich im Badezimmer.

- (toilette2b)

+ Gehe auf Toilette
    Du musst gerade nicht.

+ Wasch dir die Hände
    Du wäschst dir die Hände, warum auch immer.

+ Geh wieder nach draußen.
    -> party_foyer

-

-> toilette2
    

=== musikzimmer
~ spieler_raum = rmusikzimmer
~ spieler_raum_actual_knot = -> musikzimmer

Das Musikzimmer. Hier steht ein Klavier. Der Pianist spielt {~die Mondscheinsonate|"Memories" aus dem Musical "Cats"|die Titelmelodie aus "Amelie"|den Türkischen Marsch|"Una Mattina" von Ludovico Eunaudi|etwas, was von Erik Satie sein dürfte, wenn du dich nicht täuschst|"Für Elise"|"Clair de Lune" von Debussy|etwas, was sich nach Chopin anhört, und dessen Titel dir nicht mehr einfällt|etwas, was sich nach Tschaikowski anhört|den weltbekannten Kanon in D-Dur von Pachelbel|das "Air" aus Suite Nr. 5 ... ne, es war Nr. 3, in D-Dur von Bach|die Kleine Nachtmelodie}.

-> raum_leute ->

<- people_actions


+ Warte
    Du wartest.
    -> party_jede_runde -> musikzimmer

+ Geh rüber in den Ballsaal
    ~ player_just_moved = true
    -> ballsaal

=== garten
~ spieler_raum = rgarten
~ spieler_raum_actual_knot = -> garten

Der Garten.

-> raum_leute ->

<- people_actions

+ Warte
    Du wartest.
    -> party_jede_runde -> garten

+ Geh wieder ins Haus rein
    ~ player_just_moved = true
    -> ballsaal

=== sonstiges2asa
Du schläfst erstmal.

Dann gehst du zu Mareks Haus, um den Dolch zu holen.

Dort ist Party.

Du schaffst es, dich in den Raum zu schleichen.

Dort triffst du auf Kross, der sich zu erkennen gibt.

Sie geht ins Haus zurück / Party. Findet dort Dolch nicht.
    Unsichtbarer (Cross) ist da. Du sagst ihm, dass du den Dolch suchst.
    Er sagt, er hat ihn an Benson verhökert.
    Du sagst, du brauchst den Dolch, weil du bedroht wirst
    Er sagt, er kann nichts machen.
    Er hat auch keine Lust, dir das alles
    mit den Unsichtbaren zu erzählen. Er sagt,
    du sollst mit Von reden, gibt dir die Adresse.
    
* ...

-> kassandra_start


=== finish_people_interaction
    -> spieler_raum_actual_knot


=== people_actions

+ {frau_raum == spieler_raum} @frau betrachte sie
    Du betrachtest die Frau.
    -> finish_people_interaction
    
* {frau_raum == spieler_raum} @frau rede mit ihr
    -> frau_talk

+ {herr_raum == spieler_raum} @herr betrachte ihn
    Du betrachtest den jungen Mann.
    -> finish_people_interaction
    
+ {herr_raum == spieler_raum} @herr rede mit ihm
    -> herr_talk

+ {dame_raum == spieler_raum} @dame betrachte sie
    Du betrachtest die Dame.
    -> finish_people_interaction
    
+ {dame_raum == spieler_raum} @dame rede mit ihr
    -> dame_talk

+ {zigaretten1_room == "player"} rauche eine Zigarette
    {
    - spieler_raum == rtreppenhaus:
        -> alarm
    
    - spieler_raum == rgarten:    
        Du zündest eine Zigarette an und ziehst einmal. Angewidert wirfst du sie auf den Boden und trittst sie aus.
    
    - else:
        Du hast die Zigarette noch nicht einmal ganz aus der Packung geholt, geschweige denn angezündet, da steht schon ein Securitytyp neben dir: "Rauchen ist hier nicht erlaubt."
    }
    -> finish_people_interaction

-
-> DONE


=== alarm

Du zündest eine Zigarette an. Nach nicht einmal einer Minute fängt der Rauchmelder an, laut zu piepen. Dann geht ein schriller Feueralarm los. Hinter der Tür hörst du aufgeregte Stimmen und Securitymenschen, die Anweisungen bellen. Nach einer Viertelstunde dann endlich vollkommene Stille.

Du öffnest die Türe. Wow! Das ganze Gebäude wurde evakuiert.

+ weiter

-

Du schleichst dich ins Foyer. Der Alarm hat aufgehört zu läuten, aber es ist keine Menschenseele weit und breit zu sehen.

+ weiter
-

Du betrittst den Salon. Das Licht brennt. Du wirfst einen Blick um dich, aber siehst keinen Dolch.

-> uns_start


=== frau_talk

    Du näherst dich der Dame mit den wasserstoffblonden Haaren.

    "Ufff!", stöhnt sie und mustert dich von unten bis oben, "Endlich mal jemand, der sich traut, beschissen gekleidet rumzulaufen." Sie senkt ihre Stimme: "Ich halt's hier echt nicht mehr aus zwischen diesen Trantüten." Sie reicht dir die Hand. "Ich bin Ava."

    + "Hannah."
        "Ah, auch ein Palindrom. Nicht schlecht.
        
    + "SOOO schlecht sehe ich auch nicht aus."
        
        "Aber nein, du siehst fantastisch aus, Süße! Nur mit so einem Gesicht kann man sich leisten, so rumzulaufen, das weiß ich doch. Modelst du?"
        
        ++ "Ähm ... danke für das Kompliment, aber leider nein.
            "Nix leider. Sei froh. Es ist eine einzige Scheiße.
        
        ++ "Nein."
            "Sei froh. Es ist eine einzige Scheiße.
    
    -
    Rauchst du?"
    
    + Lüge: "Ja."
        "Wunderbar." Sie drückt dir eine Packung Zigaretten in die Hand. <>
    
    + Sage: "Nein."
        "Ah, umso besser. Dann habe ich kein schlechtes Gewissen, wenn ich dir die hier gebe." Sie drückt dir eine Packung Zigaretten in die Hand. <>
    
    -
    "Ich muss unbedingt aufhören und ich suche schon den ganzen Abend jemanden, der sie mir abnimmt. Vielen Dank, du bist ein echter Schatz!"
    
    Sie wirft einen nervösen Blick um sich. "Hör mal, ich muss weg, ja? Vielleicht sehen wir uns ja bald wieder?" Sie lächelt dich noch einmal an und verschwindet in der Menge.
    ~ zigaretten1_room = "player"
    
-> finish_people_interaction


=== herr_talk

    Du traust dich nicht.

-> finish_people_interaction


=== dame_talk

    Du traust dich nicht.

-> finish_people_interaction



