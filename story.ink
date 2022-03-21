
INCLUDE regen.ink

INCLUDE gespenster.ink
INCLUDE gespenster-jagd.ink
INCLUDE gespenster-party.ink

INCLUDE kassandra.ink
INCLUDE kassandra-laden.ink
INCLUDE kassandra-haus.ink

INCLUDE menschen.ink


/* testing redirects: */

-> gespenster_start

-> kassandra_start_laden

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
