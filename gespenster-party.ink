

=== gespenster_party_start
~ SEED_RANDOM(236)

-> ballsaal

VAR player_just_moved = false

CONST rballsaal = "ballsaal"
CONST rfoyer = "foyer"
CONST rgarten = "garten"
CONST rmusikzimmer = "musikzimmer"

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

CONST frau_name1 = "eine platinblonde Frau in einem Minirock"
CONST Frau_name1 = "Eine platinblonde Frau in einem Minirock"

CONST frau_name2 = "die platinblonde Frau im Minirock"
CONST Frau_name2 = "Die platinblonde Frau im Minirock"

VAR frau_name = frau_name1
VAR Frau_name = Frau_name1


CONST herr_name1 = "ein junger Mann mit einer roten Krawatte"
CONST Herr_name1 = "Ein junger Mann mit einer roten Krawatte"

CONST herr_name2 = "der junge Mann mit der roten Krawatte"
CONST Herr_name2 = "Der junge Mann mit der roten Krawatte"

VAR herr_name = herr_name1
VAR Herr_name = Herr_name1


CONST dame_name1 = "eine ältere Dame mit einer Turmfrisur"
CONST Dame_name1 = "Eine ältere Dame mit einer Turmfrisur"

CONST dame_name2 = "die ältere Dame mit der Turmfrisur"
CONST Dame_name2 = "Die ältere Dame mit der Turmfrisur"

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
        {Frau_name} kommt von drinnen. Sie wirft einen arroganten Blick um sich und stellt sich neben den Pool.
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
    
    ~ temp r = RANDOM (1, 2)
    
    {r == 1:
        ~ party_count ++
    }
    
    {party_count >= 2:
        ~ new_person_event()
    }


->->

/* Ink lists are fucking retarded. seriously, they could have just given us hashmaps or objects. but who cares. gift horse etc. */


=== raum_leute

    ~ temp jci = just_came_in
    ~ just_came_in = -666

    {frau_mentioned and get_location_of_person(frau) == spieler_raum and jci != frau:

        {~Die Frau mit dem platinblonden Haaren steht alleine da und scheint sich zu langweilen.|Die Frau mit den platinblonden Haaren nippt an ihrem Martini.|Die Blonde mit dem Minirock gähnt gelangweilt.|Die blonde Frau mit dem Minirock wirft einen ratlosen Blick um sich.}


    }
    
    {herr_mentioned and get_location_of_person(herr) == spieler_raum and jci != herr:

        {~Der junge Mann mit der roten Krawatte nippt an seinem Glas Cola.|Der junge Mann mit der roten Krawatte wirft dir einen verstohlenen Blick zu. Als du zurückschaust, wendet er sich schnell ab.|Der Mann mit roten Krawatte steht abseits der anderen Gäste und wartet, dass ihn jemand anspricht.|Der junge Mann mit der roten Krawatte gähnt.}

    }
    
    {dame_mentioned and get_location_of_person(dame) == spieler_raum and jci != dame:
        { spieler_raum:
            - rgarten:
                Unweit des Pools steht die ältere Dame mit der Turmfrisur und unterhält sich angeregt mit einer Freundin.
            - else:
                Die ältere Dame mit der Turmfrisur {~lacht laut über etwas, was jemand gesagt hat.|unterhält sich angeregt mit einer anderen Frau.}          
        }
    

    }
    
    ->->


=== ballsaal
~ spieler_raum = rballsaal
~ spieler_raum_actual_knot = -> ballsaal

Du bist im Ballsaal.

-> raum_leute ->

<- people_actions

+ Warte
    Du wartest.
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


=== party_foyer
~ spieler_raum = rfoyer
~ spieler_raum_actual_knot = -> party_foyer

Das Foyer.

-> raum_leute ->

<- people_actions

+ Warte
    Du wartest.
    -> party_jede_runde -> party_foyer

+ Geh rüber in den Ballsaal
    ~ player_just_moved = true
    -> ballsaal


=== musikzimmer
~ spieler_raum = rmusikzimmer
~ spieler_raum_actual_knot = -> musikzimmer

Das Musikzimmer.

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
    
+ {frau_raum == spieler_raum} @frau rede mit ihr
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
    
-
-> DONE



=== frau_talk

-> finish_people_interaction


=== herr_talk

-> finish_people_interaction


=== dame_talk

-> finish_people_interaction



