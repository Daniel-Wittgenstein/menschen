
=== gespenster_jagd_start

Es ist noch dunkel, als du die Polizeiwache verlässt, aber im Osten zeichnet sich schon das zaghafte Blau eines neuen Tages ab.






-


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
        "Dann hat Samuel keinen Scheiß erzählt."
    
    ** "Wer ist Marek?"
    
        "Marek Nedostal. Du weißt ganz genau, von wem ich spreche. Samuel hat mir alles erzählt."
    --
    
    ** "Ich kenne keinen Samuel."
        
        "Mir fuckegal", sagt er, "Der Dolch, mit dem Marek versucht hat, dich abzustechen. Hast du ihn mitgenommen?"
    
    ** "Wer ist Samuel?"
                
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

    "Ja, das ist mir schon klar, dass du ihn nicht hast. Du gehst in das Scheißhaus zurück und holst ihn, klar? Ich würde ja selber gehen, aber momentan ist das ein fucking Tatort und es wimmelt da nur so vor Bullen. Deswegen gehst du, Blondie."

* "Wie soll ich das machen?"

    "Wie du das machen sollst? Du spazierst einfach zurück zum gottverfickten Haus und holst mir den Dolch, klar? Ich würde ja selber gehen, aber momentan ist das ein fucking Tatort und es wimmelt da nur so vor Bullen. Deswegen gehst du, Blondie."

-

* "Ja."

    "Braves Mädchen", sagt er mit einem dreckigen Grinsen. <>   

* "Ich kann doch nicht einfach so in einen Tatort spazieren."

    "Dann lass dir was einfallen. Zeig Ihnen deine Titten, damit sie dich durchlassen, oder was auch immer." Er grinst dreckig. <>
    
-

{kwohnst == true: "Wir sehen uns in drei Tagen wieder, Hannah Kavka. Und versuch nicht, unterzutauchen, Barbie, ich finde ich und mache dir ein Loch in deinen hübschen Hals."}

{kwohnst == false: "Wir sehen uns in drei Tagen wieder, Barbie. Und versuch nicht, unterzutauchen, ich finde dich und mache dir ein Loch in deinen hübschen Hals."}

* weiter

-

Einfach hinreißend. Wir rekapitulieren: du bist fast abgestochen worden, musstest dich von Polizisten demütigen lassen und bist jetzt nochmal fast abgestochen worden. Was ist falsch mit dieser Stadt? Bis gestern eigentlich gar nichts. Bis gestern hast du deinen Auslandsaufenthalt wirklich genossen. Und jetzt das.

Du zitterst noch, vor Angst und Wut, während der Himmel über die sich langsam aufhellt, und schon musst du die nächste Entscheidung treffen.

+ Geh zurück zur Polizei und sage ihnen, dass du bedroht wurdest.
    
    Du bist schon auf dem Weg zurück zur Wache, als du plötzlich stehen bleibst. Sie werden dich sowieso nicht ernst nehmen. Und du willst nicht noch einmal von ihnen misshandelt werden. Nein, es muss einen anderen Weg geben.
    

+ Nimm die Sache selbst in die Hand

+ Verzweifle
    Nein, das ist keine Option. Du darfst dich nicht unterkriegen lassen.

-
Du musst die Sache selbst in die Hand nehmen. Es ist ja nur ein Dolch. Du musst nur zurück ins Haus, den Dolch holen und dem Stalker geben und du bist das Problem für immer los. Nach allem, was du schon überlebt hast, ist das nur noch ein Spaziergang. Es kann natürlich sein, denkst du, dass ...

+ ... der Tatort bewacht wird.

+ ... die Polizisten den Dolch schon weggeschafft haben.

-
Das wäre natürlich nicht gut. Du zögerst. Vielleicht doch kein guter Plan?

+ Du beschließt, später nochmal darüber nachzudenken.

    Hört sich vernünftig an. Du brauchst erstmal Ruhe und Schlaf, bevor du etwas Neues starten kannst.
    ~ den_dolch_holen = false

+ Du beschließt, dass es nicht schaden kann, zurück zum Haus zu gehen, und sich mal VORSICHTIG die Lage anzusehen.
    
    Ja, das hört sich vernünftig an. Aber erstmal brauchst du Schlaf. Es ist absolut ausgeschlossen, jetzt noch irgendwas Großes zu starten, dafür bist du viel zu müde.
    ~ den_dolch_holen = true
    
-
+ weiter
Du wankst nach Hause. Zum Glück ist es nicht weit zu deiner Wohnung.

-
+ weiter

-> zuhausedazwischen


=== zuhausedazwischen

Du sperrst die Tür zu deiner Wohnung auf, gehst in dein Zimmer und schlüpfst aus den Schuhen. Sonst ziehst du nichts aus. Du fällst auf dein Bett und in einen Schlaf voll merkwürdiger Träume.

-
+ weiter

Als du aufwachst, wird es allmählich wieder dunkel. <>

{den_dolch_holen:
    Du rappelst dich auf und weißt, dass es Zeit ist zu handeln. Du wirst dir diesen Dolch holen.
-else:
    Du rappelst dich aus dem Bett auf und weißt plötzlich, dass du den Dolch holen willst.
}

-

+ Dusche dich vorher noch.
    Du duschst dich schnell und schlüpfst in neue Kleidung.
    ~ duschen = true
    
+ Gehe gleich los.
    Du machst dich gleich auf den Weg, um keine Zeit zu verlieren.

-

+ weiter

Das ist merkwürdig. Du stehst im Park vor Mareks Haus. Es ist eine laue Sommernacht, der Himmel zeigt kaum Wolken. Doch das Haus ist nicht dunkel. Im Gegenteil, die Fenster im Erdgeschoss sind hell erleuchtet und du hörst in der Ferne Lachen und die Stimmen vieler Leute. Findet in dem Haus <i>eine Party statt?</i> Am Tag nachdem Marek gestorben ist? Skurril, um nicht zu sagen, makaber. Wie kann das überhaupt sein?
-

+ weiter

-

Du näherst dich dem Haus und siehst vor dem Eingang eine kleine Schlange Menschen in schicken Abendkleidern. Ein halbes Dutzend Türsteher winken sie einen nach dem anderen durch.

Es scheint sich um eine sehr gediegene Veranstaltung zu handeln. Du verfluchst die Tatsache, dass du <>

{duschen:
    dir nichts Vernünftiges angezogen hast.
-else:
    du nicht geduscht hast.
}

<> Aber wer konnte auch wissen, dass hier eine Feier im Gange ist? Oder eher eine Benefizveranstaltung oder Gala, wenn du dir die Gäste so ansiehst.

{duschen:
    Naja, wenigstens hast du geduscht. Vielleicht lässt dich der Türsteher ja rein, wenn du so tust, als ob du dazugehörst.
-else:
    Naja, vielleicht lässt dich der Türsteher ja trotzdem rein, wenn du so tust, als ob du dazugehörst.
}

Und es gibt noch eine gute Neuigkeit: wenn das Haus nur so vor Gästen wimmelt, müsste es doch eigentlich ganz leicht sein, sich in den Salon zu schleichen, oder? Wollen wir mal hoffen ...

Jetzt musst du erstmal ins Haus kommen.

+ Gehe durch den Haupteingang

    Du näherst dich dem Eingang. Ein junger Türsteher mit einem Ziegenbärtchen stellt sich dir in den Weg. "Haben Sie eine Einladung?", fragt er auf Englisch.
    -> tuersteher_gespraech

+ Suche nach einem anderen Eingang
    -> party_suche_eingang
    
VAR den_dolch_holen = false
VAR duschen = false



=== party_suche_eingang

Du schleichst um das Haus herum. Du siehst kein offenes Fenster, aber einen Balkon im ersten Stock.

+ Klettere nach oben

    Du kletterst nach oben und erreichst tatsächlich unbemerkt den Balkon. Hinter einer Glastür siehst du ein dunkles, leeres Zimmer.
-

+ Schlage die Scheibe ein

    Jetzt gibt es kein Zurück mehr. Du schlägst die Glasscheibe ein und schleichst dich ins Zimmer. Du hörst die Geräusche der Party aus dem Erdgeschoss.

- 

+ Schleiche dich nach unten

+ Durchsuche erst das Zimmer
    
    Du öffnest einen Kleiderschrank und findest darin ein paar Abendkleider. Wow, was für ein Glück! Du ziehst ein schwarzes an und stellst mit Genugtuung fest, dass es fast perfekt sitzt. Okay, Zeit nach unten zu gehen.
    ~ abendkleid = true

-

Du schleichst dich ins Erdgeschoss und erreichst einen kleinen Zwischenflur am Ende des Treppenhauses. Hinter einer geschlossenen Tür hörst du Stimmen.

+ Gehe durch die Tür
    
+ Warte und lausche
    Du lauschst. Du hörst Partygespräche. Sonst nichts Auffälliges.

    ++ Gehe durch die Tür
    
-
Du gehst durch die Tür und findest dich in einem Ballsaal wieder, in dem mindestens vierzig Menschen herumstehen und sich angeregt unterhalten. Ein paar Pärchen tanzen auch tatsächlich.

Niemand scheint dich bemerkt zu haben, als du durch die Tür geschlichen bist. Grandios!

-
-> gespenster_party_start

-> END

VAR abendkleid = false



