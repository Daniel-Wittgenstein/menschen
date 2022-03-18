

VAR brauche_regenschirm = false
VAR brauche_taxi = false
VAR tmp = ""
VAR geht_sie_nichts_an = false

<h1>TEIL 1</h1>
<h2>Regen</h2>

* Neues Spiel
    -> start

=== start

#story_event: start_story


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
    # story_event: enter_foyer
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


# story_event: enter_foyer

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

Du betrittst einen prunkvollen, aber trotzdem gemütlichen Salon. Braune Ledersessel, Bücherregale, ein Tisch aus Massivholz (vielleicht Eiche?), ein Kamin, in dem ein Feuer prasselt.

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
    
        "Gut." Er nickt. "Ich dachte schon kurz ..." Er scheint nachzudenken. Dann erwacht er unvermittelt zu neuem Leben, als hätte jemand einen Knopf gedrückt. "<>
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
    
        "Oh fuck!", stammelst du. Der Typ ist wirklich durchgeknallt. Du schielst zur Tür, durch die du gekommen bist, und merkst, dass sie geschlossen ist. Keine Ahnung, wann das passiert ist.
    
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

Marek. Hat Marek gerade eben einen Geist beschwört?

* Schreie.
    Du versuchst zu schreien, aber kein Laut entweicht deinem Mund.
    
* Versuche, die Gitter vor dem Fenster aufzubiegen.
    Die Gitter sind aus massivem Eisen. Nichts zu machen.

-
Entsetzt beobachtest du, wie die Flasche eine Runde durch den Raum dreht und wieder auf dem Tisch landet. Marek scheint nichts bemerkt zu haben. Er entzündet die letzte Kerze und steht Freude strahlend auf.

* "Fass mich bloß nicht an!"
    "Ruhig, nur ruhig", <>

* "Die ... die Flasche hat sich bewegt!"
    "Die Flasche? Unsinn!", <>

* "Was soll das alles?"
    "Alles zu seiner Zeit", <>

-

sagt er. Ohne Eile tritt er an die Vitrine und holt aus einer Schublade einen langen, gekrümmten Dolch hervor. "Es wird ganz schnell vorbei sein."

* Schreie
    Du schreist, aber das scheint Marek nicht zu kümmern. Er packt dich und schleudert dich zu Boden.

* Greife ihn an
    Du stürzt dich auf ihn, aber er packt dich und schleudert dich zu Boden.

* Trete die Tür ein
    Du trittst gegen die Tür, aber sie gibt kein bisschen nach. Im nächsten Augenblick steht schon Marek hinter dir, packt dich und schleudert dich zu Boden.


-

Dann lässt er sich auf dich fallen. Du kannst nicht mehr aufstehen. Du spürst seinen heißen Atem in deinem Gesicht.

"Tut mir leid", flüstert er, "Sieh's mal so: dein Leben war nichts Besonderes. Du bist nur ein Mädchen von vielen. Du wärst alt geworden, hässlich geworden. Du hättest nie etwas Großes erreicht. Nie gewusst, weshalb du lebst. Ich erspare dir das alles. Es tut mir wirklich leid. Aber ... es ist besser so, ja."

* Wehr dich.
Du versuchst, dich zu wehren, aber er liegt mit seinem ganzen Gewicht auf dir. Du kannst nichts tun.

* Lass es geschehen.
Du kannst sowieso nichts tun.

-

Der Dolch nähert sich deinem Hals.

"Mach die Augen zu", flüstert Marek, "Dann ist es schneller vorbei."

Aber deine Augen sind sperrangelweit offen. Und mit deinen offenen Augen siehst du ...

* ...

-> verhoer


=== verhoer

#story_event: verhoer_start

"Okay. Stoppen wir mal an der Stelle."

Das Licht ist grell und surrt. Das feine, nervtötende Surren von Neonröhren. Wie lange sitzt du schon in diesem gottverdammten Verhörraum?

Der junge Polizist starrt dich mit blauen, durchdringenden Augen an. "In diesem Moment bewegte sich die Flasche, laut ihrer Angabe, zum ersten Mal?", fragt er auf Englisch, "Ist das korrekt?"

* "Nein."
    "Nein?", wiederholt der alte Polizist.
    
    ** "Nein."
    
        Sie warten einen Augenblick, ob noch mehr kommt.
    
        "Und genauer?", fragt der junge Polizist schließlich.
        
        *** "Das habe ich alles schon erzählt."
            -> pol_schon_erzaehlt
    
        *** "WAS EXAKT wollen sie genauer wissen?"
            "Das mit der Flasche", sagt der junge Polizist.
            -> pol_weiter
    
    ** "Das habe ich alles schon zu Protokoll gegeben."
            -> pol_schon_erzaehlt

* "Verdammt nochmal, wie oft denn noch: Nein!"
    -> pol_anti

* "Hören Sie mir überhaupt zu?"
    -> pol_anti


=== pol_anti

    "Reißen Sie sich zusammen", fährt der alte Polizist dir über den Mund.

    "Also, nochmal", sagt der junge Polizist ruhig, "Die Flasche. Was passierte mit ihr?"
    -> pol_weiter


=== pol_schon_erzaehlt
        "Ja, natürlich", der junge Polizist nickt, "Wenn Sie uns nur den Gefallen tun würden, es nochmal zu wiederholen." Er deutet auf den Papierbogen, der vor ihm liegt. "Reine Formalität."
    -> pol_weiter

=== pol_weiter
    
    * "Die Flasche fing zu schweben an."
    
        "Die Flasche fing zu schweben an", sagst du, "<>
        -> pol_weiter2
    
    
    * "Sie glauben mir sowieso nicht."

        "Ob wir Ihnen glauben oder nicht, tut nichts zur Sache", sagt der junge Polizist, "Erzählen Sie einfach, was aus Ihrer Sicht passiert ist."

        ** "Was heißt: AUS MEINER SICHT? Glauben Sie, ich bin verrückt?"
        
            Der junge Polizist schüttelt den Kopf: "Nein, das glaube ich nicht. Sehen Sie, Frau Kavka, unter akutem psychischem Stress können Menschen sich allerlei Dinge einbilden."

            *** "Ich habe mir das NICHT nur eingebildet."

                "Da gehen unsere Meinungen wohl auseinander", sagt der junge Polizist mit einem kleinen Lächeln. "Wollen Sie uns noch einmal schildern, was dann passierte?"

                **** "Meinetwegen."
                    -> pol_meinetwegen
                    
                **** "Sehen Sie in Ihrem Protokoll nach."
                    -> pol_anti2

            *** "Glauben Sie wirklich?"
            
                "Ja", antwortet der junge Polizist, "Aber machen Sie sich keine Sorgen. Sie scheinen mir vollkommen psychisch gesund zu sein."
                
                "Da bin ich mir nicht so sicher", murmelt der alte Polizist auf Tschechisch, weil er glaubt, dass du ihn nicht verstehst.

                "Wollen Sie uns noch einmal schildern, was dann passierte?", fragt der junge Polizist.
                
                **** "Okay."
                    "Okay", sagst du, "Die Flasche fing zu schweben an. <>
                    -> pol_weiter2
                
                **** "Meinetwegen."
                    -> pol_meinetwegen

        ** "Meinetwegen."
            -- (pol_meinetwegen)
        
            "Meinetwegen", seufzt du, "Die Flasche fing zu schweben an. <>
            -> pol_weiter2


=== pol_weiter2

Wie ich bereits vorhin sagte. Aber es war nicht das erste Mal. Vorhin war sie schon einmal geschwebt."

Der junge Polizist nickt. "Während er Kerzen aufstellte, flog die Flasche eine langsame Runde durch den Raum und landete wieder auf dem Tisch", liest er von seinem Blatt ab.

* "Richtig."

    Der junge Polizist nickt zufrieden. "Die Flasche", fährt er fort, "landete also wieder auf dem Tisch und blieb dort. Nachdem der Angreifer Sie zu Boden geworfen hatte, fing die Flasche allerdings ein <i>zweites</i> Mal zu schweben an." Er wirft einen Blick auf seine Unterlagen. <>

* "Sehen Sie? Sie haben es schon aufgeschrieben. Was fragen Sie also noch?"

    "Erzählen Sie uns nicht, wie wir unsere Arbeit machen sollen", brummt der alte Polizist und funkelt dich böse an.
    
    "Die Flasche", sagt der junge Polizist, "landete also wieder auf dem Tisch und blieb dort. Nachdem der Angreifer sie zu Boden geworfen hatte, fing sie allerdings ein <i>zweites</i> Mal zu schweben an." Er wirft einen Blick auf seine Unterlagen. <>

-
-> pol_und_landete

=== pol_und_landete
"Und landete auf <i>dem Kopf</i> des Angreifers. Können Sie beschreiben, wie genau <i>das</i> ablief?"

* "Sie landete eben auf seinem Kopf."

    "Einfach so?"
    
    ** "Sie flog, bis sie über seinem Kopf schwebte."

        -> pol_ueber_kopf


    ** "Sie stellen wirklich dämliche Fragen."
    
    "Nennen Sie uns dämlich?", fragt der alte Polizist.
    
    Der junge Polizist winkt ab. "Bleiben wir doch bei der Sache, Frau Kavka", sagt er, "Sie haben hier zu Protokoll gegeben, dass die Flasche sich in der Luft über Herrn Nedostals Kopf positionierte. Was passierte dann?"

        *** "Sie schlug zu."
            -> pol_schlug_zu
        
        *** "Lesen SIE es mir doch vor."

        Der junge Polizist seufzt. "Na, wenn Sie meinen", sagt er, "Sie haben zu Protokoll gegeben, dass die Flasche <i>zuschlug</i>. <>
            -> pol_wie_darf

* "Sie flog, bis sie über seinem Kopf schwebte."
        -> pol_ueber_kopf



=== pol_ueber_kopf

        "Sie flog, bis sie über seinem Kopf schwebte", sagst du.
        
        "Und dann?"
        
-> pol_schlug_zu
        
=== pol_schlug_zu

        "Dann schlug sie zu", sagst du.

        "Sie ...?"
        
        Die zwei Polizisten tauschen einen ratlosen Blick aus.

        "Die Flasche schlug zu?", wiederholt der junge Polizist. "<>

    -> pol_wie_darf


=== pol_wie_darf

Wie darf ich mir das vorstellen? Die Flasche schlug zu, wie ... eine Flasche zuschlägt, wenn jemand damit ... jemanden schlägt? Aber da war kein Arm, der die Flasche bewegte?"
    
    
* "Ja."

    "Verstehe", sagt der junge Polizist.

* "Sie drehte sich erst in der Luft."
    "Sie drehte sich erst in der Luft", sagst du, "Und dann schlug sie eben zu. Mit der breiten Seite. Der unteren Seite. Sie wissen, was ich meine." 

    "Ja, ich denke, ich kann es mir vorstellen", sagt der junge Polizist.


-

"Bekloppt, bekloppt, bekloppt", murmelt der alte Polizist auf Tschechisch, weil er glaubt, dass du ihn nicht verstehst. "Sie sagen also, Marek Nedostal", fährt er dann in scharfem Ton auf Englisch fort, "Prager Regisseur, bekannt für seine Experimentalfilme, wurde von einer zum Leben erwachten, fliegenden Whiskeyflasche erschlagen. Während er versuchte, sie zu vergewaltigen?"


* "Er versuchte, mich zu ERMORDEN."

    "Sie zu ermorden, ja", sagt der alte Polizist skeptisch, "Wieso sind Sie mit ihm nach Hause gegangen?"
    
    -- (pol_warum_mitgehen_pre)
    
    ** "Wieso ich ...?"
    
        "Ja", sagt der alte Polizist barsch, "Gestern Nacht erst haben Sie ihn kennengelernt", sagt der alte Polizist, "Und da dachten Sie sich, ich gehe sofort mit ihm nach Hause, obwohl ich ihn kaum kenne? Wieso? Weil er reich war? Weil er berühmt war?"
    
    ** "Ich habe ihn auf einer Filmpremiere kennengelernt."
    
        "Auf einer Filmpremiere, ja", sagt der alte Polizist, "Gestern Nacht erst. Und da dachten Sie sich, ich gehe sofort mit ihm nach Hause, obwohl ich ihn kaum kenne? Warum? Weil er reich war? Weil er berühmt war?"
    
    ** "Das geht Sie überhaupt nichts an."
        
        "Das wird dem Richter gefallen, wenn Sie ihm sagen, dass ihn das nichts angeht", antwortet der alte Polizist mit einem höhnischen Grinsen, "Wussten Sie, dass unsere glorreiche Regierung gerade die Haftstrafe für vorsätzlichen Mord nach oben gesetzt hat, Frau Kavka?"
        
            ~ geht_sie_nichts_an = true
        
        
        *** "Ja. Ich lese Zeitung."
        
            "Oh, wundervoll", der alte Polizist grinst, "Sie informieren sich, wie ich sehe. Sie sind eine niveauvolle, junge Frau, nicht wahr? Was bewegt Sie dann eigentlich dazu, mit einem wildfremden Mann nach Hause zu gehen? Sie haben Marek Nedostal gestern Nacht kennengelernt. Und schon laufen Sie mit ihm mit. Warum? Weil er reich war? Weil er berühmt war?"
        
        *** "Sie machen mir keine Angst."
        
            "Ich mache Ihnen keine Angst, so, so", der alte Polizist grinst, "Hat ihnen Marek Nedostal Angst gemacht? Sie haben ihn erst gestern Nacht kennengelernt. Und schon laufen Sie mit ihm nach Hause. Warum? Weil er reich war? Weil er berühmt war?"


        *** "Ich habe niemanden umgebracht!"
        
            "Ja, kann sein", sagt der alte Polizist unbeeindruckt, "Ich frage mich aber immer noch, wieso Sie mit einem wildfremden Mann nach Hause gehen. Sie haben Marek Nedostal erst gestern Nacht kennengelernt. Was hat Sie dazu bewogen, mit ihm mitzugehen? Weil er reich war? Weil er berühmt war?"

    --
    -> pol_warum_mitgehen


* "Ja."
    
    "Tatsächlich?" Der alte Polizist grinst triumphierend. "Vorhin sagten Sie noch, er wollte Sie ERMORDEN. Mit einem Messer. Lügen Sie uns an, Frau Kavka?"

    ** "Nein."
        
    ** "Ich weiß nicht, was er von mir wollte!"
    
    
    --
    "So, so", der alte Polizist wiegt den Kopf und legt die Stirn in Falten, "Wissen Sie, was ich mich frage? Wieso sind Sie mit ihm nach Hause gegangen?"
    -> pol_warum_mitgehen_pre
    

* "Ich wusste doch, dass Sie mir nicht glauben würden."
    
    "Ach, tatsächlich?", fragt der alte Polizist mit einem listigen Lächeln, "Sie finden die Geschichte, die Sie erzählt haben, also unglaubwürdig?"

    ** "Ist das eine Fangfrage?"
    
        "Ich brauche Ihnen keine Fangfragen zu stellen, Sie widersprechen sich ganz von alleine", sagt der alte Polizist, "Können Sie mir wenigstens erklären, warum Sie mit Nedostal nach Hause gegangen sind?"
      -> pol_warum_mitgehen_pre      
        
    ** "Nein, finde ich nicht."
    
        "Sie haben also schon oft von fliegenden Flaschen gehört, die Menschen ermorden", sagt der alte Polizist, "Anscheinend ganz gewöhnlich bei Ihnen in Deutschland. Nur wir Tschechen leben ganz offensichtlich hinter dem Mond, bei uns hat man nämlich davon noch nicht Wind bekommen. Können Sie mir wenigstens erklären, wieso sie mit Nedostal nach Hause gegangen sind?"
        -> pol_warum_mitgehen_pre
        
    ** "Ich erzähle nur, was ich mit meinen eigenen Augen gesehen habe."

        "So, so", der alte Polizist wiegt den Kopf und legt die Stirn in Falten, "Wissen Sie, was ich mich frage? Wieso sind Sie mit Nedostal nach Hause gegangen?"
        -> pol_warum_mitgehen_pre

=== pol_warum_mitgehen



* "Das geht Sie nichts an!"

    {geht_sie_nichts_an:
        "Ja, das sagten Sie bereits."
    - else:
        "Geht mich nichts an", brummt er, "So, so."
    }


* "Was ist das bitte für eine Frage?"

    "Eine ganz gewöhnliche Frage, Frau Kavka."

* "Ich weiß nicht, warum ich mit ihm mitgegangen bin."

    "Sie wissen es also nicht. So, so."

-

<> Er räuspert sich. "Gehen Sie oft mit fremden Männern nach Hause, Frau Kavka?"


* "Ja."

    "Aha. Und spielte das Vermögen von Herrn Nedostal eine Rolle bei Ihrer Entscheidung, ihn zu begleiten?"


* "Nein."

    "Aber bei Herrn Nedostal war es anders. Wieso? Spielte das Vermögen von Herrn Nedostal eine Rolle bei Ihrer Entscheidung, ihn zu begleiten?"


* "Diese Frage ist eine Unverschämtheit."

    "Also, ja", sagt der Alte, "Diese Männer, mit denen Sie nach Hause gehen, Frau Kavka, spielt ... wie soll ich sagen ... das Vermögen dieser Männer eine Rolle bei Ihrer Entscheidung, sie zu begleiten?"
    
-

Plötzlich fasst der junge Polizist den alten Polizisten am Arm an.

"Ich glaube ... das führt zu nichts", murmelt er auf Tschechisch.

Der Alte sieht ihn böse an: "Was soll das heißen, führt zu nichts? Die Kleine ist eine Hobbyhure, das sehe ich."

"Ich glaube nicht, dass sie ...", er beißt auf seine Unterlippe, "können wir draußen sprechen?"

"Draußen? Wieso?"

Der Junge nickt in Richtung der Kamera, die über der Tür angebracht ist.

Der Alte zieht die Augenbrauen nach oben und steht auf.

"Wir sind gleich zurück, Frau Kavka", sagt der junge Polizist mit einem bemüht freundlichen Lächeln. Dann verschwinden sie durch die Tür.

* Warte.

    Du wartest. Das Surren der Neonröhren ist laut und raubt dir den letzten Nerv. Du sitzt echt in der Tinte, Hannah. Die wollen dir einen verfluchten Mord anhängen.

* Versuche, die Tür zu öffnen.

    Die Tür ist von außen abgesperrt. Hmm ... wäre ohnehin keine sehr gute Idee gewesen, aus der Polizeiwache auszubrechen. Du sitzt so schon tief genug in der Tinte. Die wollen dir einen verfluchten Mord anhängen.

-
Nach ein paar Minuten kommt der junge Polizist zurück.

"Das wäre dann alles, Frau Kavka", sagt er mit einem zurückhaltenden Lächeln. Sie dürfen gehen."

* Du starrst ihn überrascht und sprachlos an.

    Sein Lächeln wird etwas breiter. "Überrascht?", fragt er, "Machen Sie sich keine Sorgen. Wir haben alle Anklagepunkte gegen Sie fallen gelassen.  Was den Mörder von Marek Nedostal angeht ... wir haben zumindest eine Tatwaffe. Mal sehen, was das Labor an DNA hergibt."
    
* Du sagst: "Und wie geht es weiter?"
    Sein Lächeln wird etwas breiter. "Wie es mit Ihnen weiter geht?", fragt er, "Machen Sie sich keine Sorgen. Wir haben alle Anklagepunkte gegen Sie fallen gelassen. Was den Mörder von Marek Nedostal angeht ... wir haben zumindest eine Tatwaffe. Mal sehen, was das Labor an DNA hergibt."

-

<i>Mal sehen, was das Labor an DNA hergibt?</i>

Ist das hier eine Folge CSI? Du verstehst nicht, warum er mit dir Details der Ermittlungen bespricht. Und schon gar nicht verstehst du, warum Sie dir eben noch einen Mord anhängen wollten und dich jetzt auf einmal gehen lassen.

* "Sie glauben also, dass jemand Marek erschlagen hat?"

    "Ja, natürlich. Irgendein Fremder ist in das Haus eingedrungen, während Sie sich dort mit Herrn Nedostal aufhielten. Dass Sie sich nicht an den Angreifer erinnern, ist ein ganz normales Symptom von posttraumatischem Stress. Lassen Sie sich von einem Arzt, untersuchen, ja?"


* "Ich verstehe nicht ..."

    "Das müssen Sie auch nicht, Frau Kavka. Sie stehen ganz offensichtlich noch unter Schock. Ihre Zeugenaussage mit dem unsichtbaren Angreifer deutet ganz klar darauf hin. Lassen Sie sich von einem Arzt untersuchen, ja?"

Er deutet dir mit einer ungeduldigen Handbewegung an, den Raum zu verlassen.

-

* Weiter
    -> part2



-> DONE

=== pol_anti2

Der junge Polizist räuspert sich: "Sie sind nicht gerade kooperativ, Frau Kavka. Aber gut. Ich lese noch einmal in meinem Protokoll nach. Hier steht, dass die Flasche eine Runde durch den Raum flog und wieder auf dem Tisch landete. Dort ... blieb sie erst einmal. Nachdem der Angreifer Sie zu Boden geworfen hatte, fing die Flasche allerdings ein <i>zweites</i> Mal zu schweben an." Er wirft einen Blick auf seine Unterlagen. <>
    -> pol_und_landete




=== part2

<h1>TEIL 2</h1>
<h2>Gespenster</h2>

-> DONE

