
/* Sage: "XXX" ->  "Sage:" vor direktem Dialog verwenden wir eher am Anfang, damit dem Spieler wirklich sonnenklar ist, dass es sich hier um direkten Dialog handelt (obwohl die Anführungsstriche das ohnehin schon zeigen.) Nach ein paar Zügen wird das Sage: Frage: usw. am Anfang weggelassen, weil es irgendwann den Spieler nervt und weil es spätestens dann klar sein müsste, was abgeht. Es kann aber eingesetzt werden, wenn du denkst, dass es gerade erzählerisch passt.

    Wir verwenden Inky's Syntax, um choice texte und ihren output zu manipulieren nicht, weil das zu umständlich und unflexibel und wartungsaufwändig ist. Stattdessen geben wir den choice text mit anderem CSS style aus, was viel besser und einfacher ist.
*/

-> start

=== start

Marek grinst. Er hat spitze Eckzähne, wie ein Wolf.

"Ladies first!", sagt er und deutet auf die Tür.

* Only choic
 
 
-
-> st
=== st

* Gehe ins Haus
    Du trittst ein.

* Laufe weg

* Schreie

* Sage: "Du zuerst!"
    Er lacht: "Na, meinetwegen."
    
    Er tritt ein. Kurz zögerst du, dann folgst du ihm.
    
-

-> foyer

=== foyer

Du siehst hier eine ((@vase antike Vase)) und eine ((@statue Statue)) und einen ((@pfeil Pfeil)).

* @vase Nimm sie mit
    Du schnappst dir die Vase.

* @vase Schmeiß sie auf den Boden
    Du zerstörst die Vase.

* @statue Berühre sie
    Du fasst die Statue an.

-

-> foyer

-> END






