
INCLUDE items.ink

INCLUDE regen.ink

INCLUDE gespenster.ink
INCLUDE gespenster-jagd.ink
INCLUDE gespenster-party.ink

INCLUDE kassandra.ink
INCLUDE kassandra-laden.ink
INCLUDE kassandra-haus.ink

INCLUDE menschen.ink


/* testing redirects: */


/*
~ gabel_room = "player"
~ bleistift_room = "player"
~ amulett_room = "player"
~ eisenstange_room = "player"
~ foto1_room = "player"
~ foto2_room = "player"
~ foto3_room = "player"
~ foto4_room = "player"
~ foto5_room = "player"
*/


-> pen_enter

-> dunkel_entziffer

-> fabrik2

-> buero

-> fabrik2

-> kassandra_start_haus

-> kassandra_start_laden


-> gespenster_start

-> gespenster_party_start


/* testing redirects, end */

-> start

=== start

    + Neues Spiel
        -> regen_start
   
    + Danksagungen
        ...
        -> start

-> END


VAR gestorben = 0
VAR qualvolle_tode = 0
VAR feige = 0

=== end_game(txt, grund, sub, -> ret)
    <h2>✪✪✪ Ende  ✪✪✪</h2>
    /* spaces in the line above are correct! */

    {txt}

    {grund == "tot": 
        ~ gestorben += 1
    }

    {grund == "tot" and sub == "qualvoll": 
        ~ qualvolle_tode += 1
    }
    
    {grund == "feige": 
        ~ feige += 1
    }

    ~ statistik()
    
    + Letzte Entscheidung rückgängig machen
        -> ret
    
=== function statistik()
    <h2>Statistik</h2>
    
    • Gestorben: {gestorben}x
    • Qualvolle Tode: {qualvolle_tode} von {gestorben}
    • Das Abenteuer abgelehnt und beschlossen, stattdessen ein ruhiges Leben zu führen: {feige}x


