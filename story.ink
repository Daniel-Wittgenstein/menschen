

VAR brauche_regenschirm = false
VAR brauche_taxi = false
VAR tmp = ""

-> start
-> start.verdammt_pass_auf

=== start

Schwarze Pappeln am Wegrand.

Am Himmel ein fahler, dreiäugiger Mond.

Und das unablässige Trommeln der Tropfen auf dem Regenschirm. 


"Wir sind gleich da", sagt Marek mit monotoner Stimme, "Nur noch ein kleines Stück."

    * Du denkst: "Vielleicht gehe ich besser nach Hause."
    
        Vielleicht wäre es besser, umzukehren, ja. Aber du gehst weiter.

    * Du sagst: "Vielleicht gehe ich besser nach Hause."

        "Keine Sorge", antwortet Marek roboterhaft, "Gleich da."
        
        ** "Wohin gehen wir?"
        
            "So etwas hast du noch nicht gesehen. Vertrau mir. Das haut dich um."
        
        ** "Meine Füße sind schon ganz nass."
        
            "Eben", sagt er, "drinnen ist es warm."
            
        --
        Du seufzt und murmelst ein kleines "Okay". Dann geht ihr weiter.

    * Du gehst schweigend weiter.
        Schweigend geht ihr weiter.

-

Der Pfad macht einen Schlenker. Die Pappeln ducken sich weg und geben den Blick auf die schwarze Silhouette einer Villa frei ... eher ein Palast als eine Villa. Und kein einziges Fenster ist erleuchtet.

* "Gehört das alles hier dir?"

    "Hmmm", macht er nur.
    
* "Der Film hat mir wirklich gut gefallen."
    
    "Der Film?", fragt Marek geistesabwesend. "Oh ja, <i>der</i> Film."
    
* "Das Haus da ist ein bisschen unheimlich."
    
    "Unheimlich?", antwortet Marek, "Unheimlich <i>groß</i>."

    ** "Und du wohnst hier?"
        "Hmm ...", macht Marek enigmatisch.
    
    ** "Wer wohnt hier?"
        "Hmm ...", macht Marek enigmatisch.


-


Ihr erreicht eine große, schwarze Pfütze, in der der Regen tanzt. Sie sieht aus wie ein enormer Schlund im Boden, tiefer als der Marianengraben.

Den Bruchteil einer Sekunde lang will Marek nach links und du nach rechts ausweichen, der Regenschirm, den er über eure Köpfe hält, kippt auf seine Seite und ein kalter Schwall Wasser trifft deinen Kopf.


* "Fuck!"
    "Hier lang", sagt Marek nur.
    
* "Upps! Mein Fehler."
    "Mmmh", macht Marek bekräftigend.

* "Wow. Ein echter Gentleman."
    "Nicht mein Fehler", sagt Marek ernst.
    
    ** "DOCH dein Fehler."
    
        --- (verdammt_pass_auf)
        Er räuspert sich. "Hinterher wirst du dich bedanken, dass ich dich mitgenommen habe", sagt er. Er klingt etwas gereizt.

        *** "Was soll das bitte heißen? Soll ich mich bei dir bedanken, wenn ich nass werde?"
            "Nein", antwortet er kühl, "Lass uns einfach weitergehen, okay?"
        
        *** "Es war dein Fehler. Punkt."
            "Okay", sagt er kühl.
        
        *** "Ich bin schon gespannt."
            "Okay", antwortet er ohne Begeisterung.
        
    ** "War nur ein Witz."
        "Klar", antwortet er teilnahmslos.

* "Verdammt, pass doch auf!"
    -> verdammt_pass_auf

-

Ihr umrundet die Pfütze und steuert weiter auf das Gebäude zu. Endlich erreicht ihr den Eingang.

Marek sperrt auf.

"Ladies first", sagt er und deutet auf die Tür.

* Trete ein.
    Du trittst ein und findest dich in einem großen Eingangssaal mit Marmorwänden wieder.
    ~ tmp = "mrk"
    -> foyer.backfoyer


* Sage: "Du zuerst!"
    ~ tmp = "mrk_weg"
    Er lacht unvermittelt: "Na, meinetwegen."
    
    Er dreht sich um und tritt ohne ein weiteres Wort ein.
    
    ** Folge ihm
    
    ** Gehe nach Hause
        Du zögerst. Du fühlst dich nicht ganz wohl bei der Sache. Sollst du nach Hause gehen?
        
        Hinter dem Vordach, unter dem du stehst, fällt der Regen in Strömen herab. Du willst nicht klatschnass werden.
        
        *** Du denkst: "Vielleicht gehe ich nur kurz rein und bitte ihn, mir seinen Regenschirm zu leihen."
            ~ brauche_regenschirm = true
        Ja, das klingt nach einem guten Plan.
        
        *** Du denkst: "Vielleicht gehe ich nur kurz rein und bitte ihn, mir ein Taxi zu rufen."
            ~ brauche_taxi = true
        
        Ja, das klingt nach einem guten Plan.
        
        *** Du denkst: "Was soll's, ich bleibe doch hier!"
        
        Jetzt wo du schon so weit gekommen bist, kannst du auch hier bleiben.
    
-

Du trittst ein.

-> foyer

=== foyer

Du findest dich in einem großen Eingangssaal mit Marmorwänden wieder. <>

- (backfoyer)



Bis auf eine ((@bueste Marmorbüste)) und ein halbes Dutzend antiker ((@foyer_gemaelde Gemälde)) an den Wänden ist er vollständig leer. <>


{tmp != "mrk": Aus einer halb geöffneten ((@tuer Tür)) am anderen Ende des Saals fällt warmes Licht.}
 
{tmp == "mrk_weg": Marek ist nirgendwo zu sehen.}

{tmp == "mrk": "Schau dich um", sagt Marek, "Ich bin drüben." Mit hastigen Schritten verlässt er dich.}

~ tmp = ""



* @bueste betrachte die Marmorbüste
    Antonín Dvořák. Nicht, dass du sein Gesicht erkannt hättest; der Name steht auf einem Schild unter der Büste.

* @bueste berühre sie
    Kalter Marmor.

* @bueste nimm sie mit
    Du versuchst allen Ernstes, sie anzuheben, aber natürlich ist sie zu schwer.

* @foyer_gemaelde Betrachte die Gemälde
    Dein Blick schweift über die Bilder, aber du hast nicht die Muße, sie aufmerksam zu betrachten.

* @tuer Geh nach drüben
    -> salon

-

Du befindest dich in einem großen Saal mit Marmorwänden. <>

-> backfoyer

=== salon

Du betrittst einen prunkvollen, aber trotzdem gemütlichen Salon. Braune Ledersessel, Bücherregale, ein Tisch aus Massivholz (vielleicht Eche), ein Kamin, in dem ein Feuer prasselt.

Marek steht neben dem Kamin und starrt ein Ölgemälde an.

~ temp t = ""

* "Hast du so schnell ein Feuer gemacht?"
    ~ t = "feuer"

* "Schönes Bild."
    ~ t = "bild"

* {brauche_regenschirm} "Kann ich mir deinen Regenschirm leihen?"
    ~ t = "regenschirm"
    

* {brauche_taxi} "Kannst du mir ein Taxi rufen?"
    ~ t = "taxi"

-

Er dreht sich um und starrt dich mit leerem Blick an. Nach einigen Sekunden blinzelt er und räuspert sich: "Weißt du, wer Libuše ist?"

* Sage: "Ja."

    "Eine mythische Königin", sagst du, "In der Sage führt sie ihre Amazonen in den Kampf gegen die Männer."
    
    -> libuseweiter

* Lüge: "Nein."

    Marek deutet auf das Bild. Es zeigt eine Schlacht zwischen halbnackten Frauen und Männern in Rüstungen.
    
    "Die Königin Böhmens", sagt er, "Sie vereinte die Frauen unter sich und versuchte, den Männern die Herrschaft zu entreißen. Aber sie verlor."

    ** "Und seitdem herrschen die Männer über die Frauen."
    
        Er nickt: "Das tun sie. Aber wer herrscht über die Männer?" Sein Ton ist nachdenklich. "Libuše ... <>
    
    ** "Altes, sexistisches Märchen."
    
        "Ja, vielleicht", nickt er nachdenklich. "Libuše ... <>

    ** "Interessant."
    
        "Eigentlich nicht", sagt Marek unvermittelt. "Aber Libuše ...", er zögert. "<>

* {t == "regenschirm"} "Ich habe gefragt, ob du einen Regenschirm hast."
    -> lib_willst_nach_hause

* {t == "taxi"} "Ich habe gefragt, ob du ein Taxi rufen kannst."

    -- (lib_willst_nach_hause)

    "Wieso?" Er blickt dich überrascht an. "Du willst ... nach Hause?"

    ** "Ja."
        "Bleib doch noch", sagt er, "<>
        -> lib_er_vorschlag
        
    ** "Nein."
    
        "Gut." Er nickt. "Ich dachte schon kurz ..." Er scheint nachzudenken. Dann erwacht er unvermittelt zu neuem Leben, als hätte jemand einen
            Knopf gedrückt. "<>
        -> lib_er_vorschlag


* {t == "feuer"} "Ich habe gefragt, ob du das Feuer gerade eben angemacht hast."

    "Das Feuer?" Er blickt zum Kamin, als bemerke er zum ersten Mal, dass darin ein Feuer brennt. "Ach, das ... ist so ein Benzinding." Er zuckt mit den Schultern. "Wo war ich gerade?"
    
    ** "Bei Königin Libuše. Ich nehme mal an, du hast von der mythologischen Gestalt gesprochen und nicht von einer anderen Libuše."
        
        Er guckt verwundert.
        -> libuseweiter_alt
        
    ** "Hast du was zu Trinken da?"
        -> lib_trinken
    
    ** "Schlafen wir jetzt endlich miteinander?"
        -> lib_schlafen

    ** "Ich muss jetzt wirklich nach Hause gehen."
        -> lib_nach_hause
    

* {t == "bild"} "Ich habe über das Bild geredet, nicht über Libuše."

    "Eben", er nickt, "Guck!"
    
    Du stellst dich neben ihn und betrachtest das Bild.
    
    "Der Krieg der Geschlechter", sagt Marek mit Blick auf das Gemälde. Es zeigt eine Schlacht zwischen halbnackten Frauen und Männern in Rüstungen. "Königin Libuše und ihre Amazonen kämpfen gegen die Männer um die Vorherrschaft über das Land", erklärt Marek.

    ** "Und die Männer haben den Krieg gewonnen."
    
    ** "Eine bekannte tschechische Sage, ja."
    
    -- (libuseweiter)

    Er wendet sich dir verwundert zu.
    
    -- (libuseweiter_alt)
    
    "Richtig, ja", sagt er, "Du kennst dich ein wenig aus mit tschechischer Kultur? Sehr gut. Es gibt nicht viele Schwedinnen, die ..."
    
    ** "Deutsche."
        "Was?!"
        
        "Ich komme aus Deutschland."
        
        "Ah ja", macht er, "Ich dachte, Schweden. Jedenfalls ... wo war ich?" Er kratzt sich am Kopf. "Ach, ja, richtig. Libuše. <>
    
    ** Lass ihn weiterreden.
    
        "... sich für Böhmen interessieren. Weißt du, was Böhmen ist? Tschechien besteht aus drei Landesteilen ..."
    
        *** Lass ihn weiterreden, damit er sich schlau fühlt.
        
            Er redet und redet. Nach etlichen Minuten kommt er plötzlich wieder auf die Königin zurück. "Libuše", sagt er, "<>
        
        *** Sage: "Das weiß ich alles."
        
            "Ah", macht er. Er wendet sich wieder schweigend dem Bild zu. Dann räuspert er sich und fängt wieder unvermittelt zu sprechen an. "Libuše", sagt er, "<>
        
-
Weißt du, wofür sie <i>noch</i> bekannt war?"


* Sage: "Ja."
    "Ja", sagst du, "Sie konnte die Zukunft sehen."
    
    "Sehr gut!", er nickt und über sein Gesicht huscht ein merkwürdiges, fast gequältes Lächeln. "Ja, das konnte sie. Die Zukunft sehen. Obwohl sie blind war ..."
    
    -- (lib_kass1)
    
    ** "Ich glaube, das war Kassandra."
    
        "Was?"
        
        "Ich glaube, Kassandra war die blinde Prophetin. Libuše war einfach nur Prophetin."
        
        Marek wiegt den Kopf. "Ist das so?", murmelt er.
    
    
        *** "Ich bin mir ziemlich sicher."
        
            "Okay", er nickt und sieht sich verloren im Salon um, "Was ich eigentlich sagen wollte ... was wollte ich nochmal sagen?" Er wirft dir einen fast verzweifelten Blick zu. Dann ändert sich seine Miene plötzlich. "<>
            -> lib_er_vorschlag
        
        *** "Warum erzählst du mir das alles?"
            -> warum_erz_alles
    
    
        *** "Schlafen wir jetzt endlich miteinander?"
            -> lib_schlafen
    
        *** {not brauche_regenschirm and not brauche_taxi } "Ich muss jetzt wirklich nach Hause gehen."
            -> lib_nach_hause
    
        *** {brauche_regenschirm} "Was ist mit meinem Regenschirm? Ich muss jetzt wirklich nach Hause gehen."
            -> lib_nach_hause
        
        *** {brauche_taxi} "Was ist mit meinem Taxi? Ich muss jetzt wirklich nach Hause."
            -> lib_nach_hause
                
    ** "Und wieso erzählst du mir das alles?"
    
        "Weil ... Libuše konnte sehen, obwohl sie nicht ... nein, anders. Also, was wollte ich sagen? Stell dir vor, du kannst sehen, aber nicht gesehen werden. Verstehst du, was das bedeuten würde?"
        
        *** "Nein."
        
        "Ist auch egal", er zuckt mit den Schultern, "Was schwafle ich eigentlich ... wir sollten ..."
        -> lib_er_vorschlag

        *** "Nein. Hast du was zu Trinken da?"
        -> lib_trinken

        *** "Nein. Schlafen wir jetzt endlich miteinander?"
            -> lib_schlafen

        *** {not brauche_regenschirm and not brauche_taxi } "Ich muss jetzt wirklich nach Hause gehen."
            -> lib_nach_hause
    
        *** {brauche_regenschirm} "Was ist mit meinem Regenschirm? Ich muss jetzt wirklich nach Hause gehen."
            -> lib_nach_hause
        
        *** {brauche_taxi} "Was ist mit meinem Taxi? Ich muss jetzt wirklich nach Hause."
            -> lib_nach_hause
        
* Lüge: "Nein."

    "Sie war eine Wahrsagerin. Sie konnte die Zukunft sehen. Obwohl sie blind war."
    -> salon.lib_kass1


* "Sind wir hier im Geschichtsunterricht?"

    "Was? Nein ..." Er sieht sich verloren im Saal um. "Entschuldigung, dass ich geschwafelt habe. Du langweilst dich sicher."
    
    ** "Ein wenig, ja."
    
        Er nickt: "Okay. Aber bleib noch. <>
        -> lib_er_vorschlag
        
    ** "Ich habe ernsthaft darüber nachgedacht, nach Hause zu gehen."
        Er nickt: "Okay. Aber bleib noch. <>
        -> lib_er_vorschlag

    ** "Nein, alles gut."
        Er nickt: "Gut. Wir sollten ... <>
        -> lib_er_vorschlag

=== warum_erz_alles
    "Ja, du hast recht." Er sieht sich verloren im Saal um. "Was schwafle ich eigentlich. Wir sollten ...
    
    -> lib_er_vorschlag
    
        

=== lib_er_vorschlag

Wir können ... etwas trinken!" Auf einmal sind seine Bewegungen schneller, fast hektisch. <>
-> lib_glas_anbiet

=== lib_trinken
"Ja, natürlich!" Plötzlich scheint er zum Leben zu erwachen. Seine Bewegungen sind schneller, fast hektisch.
-> lib_glas_anbiet


=== lib_nach_hause
"Nein, nein!", ruft er. Plötzlich erwacht er zum Leben. Seine Bewegungen sind schneller, fast hektisch. "Wir können ... etwas trinken, bevor du gehst!"
-> lib_glas_anbiet



===lib_schlafen
Er blickt dich verdutzt an.

"Ja", sagt er nach einer kurzen Pause, "Gute Idee. Fang schon mal an, dich auszuziehen. Ich mache hier ... diese Kerzen an."

* "Ich brauche keine Kerzen."
    "Doch, die Kerzen sind wichtig."

* "Zieh du dich zuerst aus."
    "Was? Nein, nein", er schüttelt den Kopf, "Das wird nicht nötig sein.
    Nur du musst ..." Er fuchtelt mit der Hand in
    der Luft. "Also, runter damit."
    
-
    
-> kerzen


-> DONE

=== lib_glas_anbiet
Er stürmt zu einer Vitrine und holt zwei Gläser und eine Flasche Whiskey daraus hervor. Er schenkt dir mit zitternder Hand ein, wobei die Hälfte der Flasche auf dem Boden landet. Dann lässt er eine weiße Tablette in das Glas fallen. "Hier, trink das!", sagt er.

    * "Ähm .... Hast du gerade VOR MEINEN AUGEN eine Pille in das Glas fallen lassen?"

        "Nein", antwortet er, "Oder doch? Habe ich das?" Er sieht dich ratlos an.
        
        "Ja", sagt er nach einer kurzen Pause lächelnd, "Natürlich habe ich das. Das ist ein Superpille, die schickt dich auf den Mond, glaub mir, super Qualität. Aber garantiert sicher. Wir machen heute Party, oder?"

    * Gaffe ihn sprachlos an.
        "Oh", sagt er nach einer kurzen Pause, "Du hast die Pille gesehen, oder?" Er kratzt sich ratlos am Kopf. "Ja, also ... es ist nicht so, wie du meinst. Das ist eine ...", seine Miene hellt sich plötzlich auf, "... eine Superpille, ja. Die schickt dich auf den Mond, glaub mir, super Qualität. Aber garantiert sicher. Wir machen heute Party, oder?"
    
- 

    * "Du hast nicht mehr alle."
        "Ja, okay, ich bin ... <>
  
            
    * "Ich gehe jetzt."    
        "Nein, bitte! Ich weiß, ich bin ein bisschen ... <>
 
    
-
verrückt", sagt er mit einem Lächeln, das entwaffnend wirken soll, aber eher gruselig ist, "Aber du musst keine Angst haben. So sind wir Künstler eben. Durchgeknallte Bohème, richtig? Aber du wirst zu nichts gezwungen." Er lässt das Glas auf den Boden fallen. "Siehst du? Niemand muss hier etwas trinken, wenn er nicht will. Ich zeig dir etwas Tolles."
    
-> kerzen

=== kerzen

Er holt aus einer Vitrine schwarze Kerzen und fängt an, sie auf dem Boden im Kreis aufzustellen. Dann tunkt er seinen Finger in einen gläsernen Behälter. Als der Finger herauskommt, ist er rot. Er fängt an, zwischen die Kerzen etwas zu malen, was einem Pentagramm verdächtig ähnlich sieht.
    
    * "Oh fuck!"
    
        "Oh fuck!", stammelst du. Du schielst zur Tür, durch die du gekommen bist, und merkst, dass sie geschlossen ist. Keine Ahnung, wann das passiert ist.
    
    * Laufe einfach weg.
        Du schielst zur Tür, durch die du gekommen bist, und merkst, dass sie geschlossen ist. Keine Ahnung, wann das passiert ist.
-

* Rüttle an Tür, durch die du gekommen bist.
    Die Tür ist abgesperrt. War ja klar.

* Versuche es mit der anderen Tür.
    Die Tür ist abgesperrt. War ja klar.

* Die Türen sind sicher abgesperrt. Springe durch das Fenster.
    Das Fenster ist vergittert. Verdammter Altbau! Was war das hier früher? Ein Gefängnis für Prinzessinnen?
-

"Es gibt ja Leute, die nicht an so etwas glauben", sagt Marek, während er die Kerzen anzündet. Dann blickt er plötzlich zu dir auf und scheint verwundert: "Du hast ja immer noch deine Kleider an. Also, die müssen runter. Es funktioniert wirklich, weißt du?"

Du sitzt wirklich in der Patsche, Hannah. Außer, das hier ist ein dummer Scherz.

* "Ist das alles ein dummer Scherz?"
    Du hast den Satz noch nicht zu Ende geprochen, als <>

* Greife ihn an.
    Du versuchst gerade, den Mut aufzubringen, als <>

-
die Whiskeyflasche, die Marek auf dem Eichentisch abgestellt hat, anfängt, zu schweben.

<i>Es funktioniert wirklich.</i>

Marek. Hat Marek gerade eben einen Geist beschworen?

* Schreie.
    Du versuchst zu schreien, aber kein Laut entweicht deinem Mund.
    
* Versuche, die Gitter vor dem Fenster aufzubiegen.
    Die Gitter sind aus massivem Eisen. Nichts zu machen.

-
Entsetzt beobachtest du, wie die Flasche eine Runde durch den Raum dreht und wieder auf dem Tisch landet. Marek scheint nichts bemerkt zu haben. Er entzündet die letzte Kerze und steht Freude strahlend auf.






-> DONE




