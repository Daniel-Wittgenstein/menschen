
=== gespenster_jagd_start

Es ist noch dunkel, als du die Polizeiwache verlässt, aber im Osten zeichnet sich schon das zaghafte Blau eines neuen Tages ab.

Du machst dich auf den Weg nach Hause. Eine Gruppe betrunkener Franzosen kreuzt <i>Bella Ciao</i> singend deinen Weg, ein Obdachloser liegt am Rand der Straße und schnarcht, die gelben Augen einer Katze starren dich aus einer dunklen Seitengasse an. Dann plötzlich niemand mehr. Du läufst eine menschenleere Straße entlang und erreichst den Altstädter Ring, ebenfalls menschenleer um diese Uhrzeit.

Kurz bleibst du stehen und siehst dich um. Niemand. Nur du. Du und der ausgestorbene Platz, das alte Rathaus, die Teynskirche. Und die Dächer der Kirche, die in den langsam aufhellenden Himmel ragen, schwarze Stacheln, aus denen weitere, kleinere Stacheln sprießen, eine groteske Architektur wie aus einem Groschenroman.

"Niemand hätte sich so ein Gebäude ausdenken können", fährt es dir unvermittelt durch den Kopf und plötzlich fühlst du dich, als seist du gar nicht wirklich da. Nichts ist mehr da. Alles nur ein Fiebertraum.

* Zwicke dich in den Arm.
    Du zwickst in deinen Arm. Okay, das spürst du immerhin noch. Aber sogar der Schmerz ist dumpfer als sonst.

    Du siehst dich um. Kein Traum. Nein, das alles ist wirklich. <>

* Schließe die Augen.

    Du schließt die Augen und öffnest sie wieder. Alles ist noch da. Kein Traum. Alles wirklich. <>

-

Auch der Mann, der am anderen Ende des Platzes steht, raucht und dich beobachtet. Jetzt wirft er seine Zigarette auf den Boden und kommt auf dich zu. 
~ temp das_ein = "ein"

* Laufe weg
    -> xrenne
    
* Warte

-

Der Mann nähert sich dir. Als er nur noch wenige Schritte entfernt ist, zückt er ein Butterflymesser und lässt die Klinge aufspringen.
~ das_ein = "das"

* Schreie
    -- (xschreie)
    Du schreist, aber niemand kommt dir zur Hilfe.

    "Halt die Schnauze!", sagt der Mann und hält {das_ein} Messer an deinen Hals, "Los, raus mit deiner Brieftasche."

* Renne um dein Leben
    -- (xrenne)
    Du rennst davon. Der Mann dir hinterher.
    
    Du erreichst die Mündung der Kaprova und merkst, dass du schon außer Atem bist. Hättest du das Handballtraining nur nie aufgegeben.
    
    ** Laufe weiter
    
        Du läufst weiter, rutscht aus und fällst der Länge nach hin. Zwei starke Arme packen dich und zerren dich wieder auf die Beine.
        
        "Immer langsam", sagt der Mann höhnisch, während er {das_ein} Messer an deinen Hals hält, "Wir wollen doch nicht, dass du hinfällst und dir etwas brichst. Los, raus mit der Brieftasche!" 
    
    ** Suche nach einem Hauseingang, in dem du dich verstecken kannst
    
        Während du noch nach einem Hauseingang suchst, hat er dich schon eingeholt.
        
        *** Schreie
            -> xschreie
            
        *** Trete ihn
            Du versuchst ihn zu treten, aber er packt deinen Arm und hält {das_ein} Messer an deinen Hals.
            
            "Mach keine Dummheiten", zischt er, "Raus mit der Brieftasche."

        *** Bitte ihn, dir nichts zu tun
            "Halt die Schnauze!", sagt der Mann und hält {das_ein} Messer an deinen Hals, "Los, raus mit deiner Brieftasche."

* Bitte ihn, dir nichts zu tun
    "Halt die Schnauze!", sagt der Mann und hält das Messer an deinen Hals, "Los, raus mit deiner Brieftasche."

-

~ temp kwohnst = false

* Gib ihm die Brieftasche.
    Er nimmt die Brieftasche, öffnet sie und holt deinen Personalausweis heraus.
    
    "Hannah Kavka", liest er ab, "Gut. Jetzt weiß ich, wie du heißt, Barbie." Er gibt dir den Geldbeutel zurück. "Ist Marek wirklich tot?"
    ~ kwohnst = true
    -> marek_wirklich_tot

* Weigere dich.
    "Dumme Bitch", murmelt er, "Dein Geld interessiert mich einen Scheiß. Wie heißt du?"
    
    ** Sage: "Hannah Kavka."
        ~kwohnst = true

    ** Lüge: "Bianca Weißkopf."

    --
    "Ist Marek wirklich tot?", fragt er.

    -- (marek_wirklich_tot)

    ** "Ja."
        "Dann hat Kross keinen Scheiß erzählt."
    
    ** "Wer ist Marek?"
    
        "Marek Nedostal. Du weißt ganz genau, von wem ich spreche. Kross hat mir alles erzählt."
    --
    
    ** "Ich kenne keinen Kross."
        
        "Mir fuckegal", sagt er, "Der Dolch, mit dem Marek versucht hat, dich abzustechen. Hast du ihn mitgenommen?"
    
    ** "Wer ist Kross?"
                
        "Kann dir scheißegal sein", sagt er, "Der Dolch, mit dem Marek versucht hat, dich abzustechen. Hast du ihn mitgenommen?"
        
    ** "Bitte lassen Sie mich gehen."
    
        "Halt die Schnauze", sagt er, "Der Dolch, mit dem Marek versucht hat, dich abzustechen. Hast du ihn mitgenommen?"
    --

    ** "Nein."
        "Dann ist er noch im Haus?" <>
    
    ** "Woher weißt du davon?"
    
        "Ich stelle hier die Fragen. Wo ist der Scheißdolch? Ich frage nicht ein drittes Mal!"
    
        *** "Ich habe ihn nicht, ich schwöre!"
        "Dann ist er noch im Haus?" <>
        
        *** "Bei Marek."
            "Du meinst in dem Haus, in dem Marek dich gevögelt hat?" <>

-

Er scheint nachzudenken. "Ok, Püppi", meint er schließlich, "Wir zwei machen jetzt einen Deal. Dieser Dolch gehört eigentlich mir. Du besorgst ihn mir und du siehst mich nie wieder. Klar?"

* "Aber ich habe ihn nicht!"

    "Ja, das ist mir schon klar, dass du ihn nicht hast. Du gehst in das Scheißhaus zurück und holst ihn, klar? Ich würde ja selber gehen, aber momentan ist das ein fucking Tatort und es wimmelt da nur so vor Bullen. Und Kross zeigt sich nicht gerade kooperativ. Deswegen gehst du, Blondie."

* "Wie soll ich das machen?"

    "Wie du das machen sollst? Du spazierst einfach zurück zum gottverfickten Haus und holst mir den Dolch, klar? Ich würde ja selber gehen, aber momentan ist das ein fucking Tatort und es wimmelt da nur so vor Bullen. Und Kross zeigt sich nicht gerade kooperativ. Deswegen gehst du, Blondie."

-

* "Ja."

    "Braves Mädchen", sagt er mit einem dreckigen Grinsen. <>   

* "Ich kann doch nicht einfach so in einen Tatort spazieren."

    "Dann lass dir was einfallen. Zeig Ihnen deine Titten, damit sie dich durchlassen, oder was auch immer." Er grinst dreckig. <>
    
-

{kwohnst == true: "Wir sehen uns in drei Tagen wieder, Hannah Kavka. Und versuch nicht, unterzutauchen, Barbie, ich finde ich und mache dir ein Loch in deinen hübschen Hals."}

{kwohnst == false: "Wir sehen uns in drei Tagen wieder, Barbie. Und versuch nicht, unterzutauchen, ich finde dich und mache dir ein Loch in deinen hübschen Hals."}

* ...

-



-> gespenster_party_start

