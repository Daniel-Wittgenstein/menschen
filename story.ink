
INCLUDE regen.ink

INCLUDE gespenster.ink
INCLUDE gespenster-jagd.ink
INCLUDE gespenster-party.ink

INCLUDE kassandra.ink
INCLUDE kassandra-laden.ink
INCLUDE kassandra-haus.ink

INCLUDE menschen.ink


/* testing redirects: */


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


=== function end_msg(txt)
    <h2>✪✪✪ Ende  ✪✪✪</h2>
    /*spaces in the line above are correct! */

    {txt}
    
    Bist du mit diesem Ende zufrieden? Wenn nicht, versuche es mit der "Rückgängig"-Taste (Pfeil oben rechts).





