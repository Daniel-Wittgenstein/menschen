
/* Sage: "XXX" ->  "Sage:" vor direktem Dialog verwenden wir eher am Anfang, damit dem Spieler wirklich sonnenklar ist, dass es sich hier um direkten Dialog handelt (obwohl die Anführungsstriche das ohnehin schon zeigen.) Nach ein paar Zügen wird das Sage: Frage: usw. am Anfang weggelassen, weil es irgendwann den Spieler nervt und weil es spätestens dann klar sein müsste, was abgeht. Es kann aber eingesetzt werden, wenn du denkst, dass es gerade erzählerisch passt.

    Wir verwenden Inky's Syntax, um choice texte und ihren output zu manipulieren nicht, weil das zu umständlich und unflexibel und wartungsaufwändig ist. Stattdessen geben wir den choice text mit anderem CSS style aus, was viel besser und einfacher ist.
*/

-> start

=== start

Marek grinst. Er hat spitze Eckzähne, wie ein Wolf.

"Ladies first!", sagt er und deutet auf die Tür.


* Gehe ins Haus
    Du trittst ein.

* Laufe weg

* Schreie

* Sage: "Du zuerst!"
    Er lacht: "Na, meinetwegen."
    
    Er tritt ein. Kurz zögerst du, dann folgst du ihm.
    
-


Du siehst hier eine ((antike Vase .. vase)) und eine ((Statue .. statue)).

* @vase Nimm sie mit

* @vase Schmeiß sie auf den Boden

* @statue Berühre sie



-> END






