
VAR eisenstangen_ruettel = 0
VAR kass_lebt_doch = false
VAR bleistift = false
VAR anhaenger = false
VAR aktens_count = 0


=== kassandra_start_haus

Ihr nehmt die C Richtung Stadtsüden. Dann weiter mit dem Bus, vorbei an schmutzigweißen Plattenbauten, dann weiter zu Fuß, vorbei an einer Sägemühle, an einem Fuhrpark, an einem Wohnhaus, das gerade abgerissen wird.

* ...

-
Schließlich erreicht ihr eine riesige, brache Fläche. Sand, Schlammpfützen und Grasflecken wechseln sich wie auf einer Camouflagejacke ab. Ab und zu gibt es auch ein paar Sträucher, unter denen Kondome, Kippen und Bierdosen liegen.

Ihr stapft los.

* ...

-
Ihr geht und geht. Nach einer Weile sind die Wohnblöcke hinter euch nur noch spielzeuggroße Schächtelchen am Horizont. 

* ...
-

Ihr geht immer noch. Ihr kommt an einem winzigen Teich vorbei, in dem eine einzelne Ente hockt, ein bisschen Schilf ist auch da. Sogar der Müll ist hier spärlicher verteilt. Nur ein paar Bierdeckel und eine leere Stange Pringels, die dir verdächtig bekannt und wieder nicht vorkommt, als hättest du sie schon einmal in einem anderen Universum gesehen. "Gewinne eine Reise nach Alaska" steht auf ihr.

* ...

-

Schließlich erreicht ihr eine gewaltige Kiesgrube. Am Rand der Kiesgrube führt ein Trampelpfad entlang. Dann kommt ein Maschendrahtzaun, der an einer Stelle eingetrampelt ist, dann ein paar Bäume, dann ein Stacheldrahtzaun, über den ihr klettern müsst.

* ...

-

Und dann steht ihr vor einem alten, verfallenen Industriegebäude.

"Voilà", sagt Kassandra, "Hier wohnt Benson. Naja, ich <i>schätze</i>, er ist hierhin zurückgekommen, wenn er wieder in der Stadt ist."


* "Sonst war der ganze Weg umsonst."
    "Das wollen wir mal nicht hoffen", sagt Kassandra.

* "Hoffentlich fällt uns das Dach nicht auf den Kopf."
    "Ja, hoffentlich", sagt Kassandra.

-

* ...
-
Ihr tretet in das Gebäude ein. Ihr findet euch in einem kühlen Raum mit Betonwänden wieder. Hoch über euch siehst du vergitterte Fenster, durch die ein wenig Tageslicht dringt. An den Wänden kleben hängemattengroße Spinnweben.

"Ich muss dich vorwarnen", sagt Kassandra, "Benson ist etwas ... eigenwillig. Aber keine Angst, er ist harmlo ..."

In diesem Moment passieren zwei Dinge. Erstens: Die Tür hinter euch schließt sich mit einem metallischen "Kleng!" Zweitens: eine rotierende Scheibe schießt aus der Wand und schlitzt Kassandra den Hals auf.

* ...

-
-> fabrik1


=== fabrik1
Ein kühler Raum mit Betonwänden. Hoch über dir siehst du vergitterte ((@fenster Fenster)), durch die ein wenig Tageslicht dringt. An den ((@waenden Wänden)) kleben hängemattengroße ((@spinnweben Spinnweben)). Eine ((@tuer1 Tür)) führt nach draußen, eine andere ((@tuer2 tiefer)) ins Fabrikgebäude. 

    {not kass_lebt_doch:
    
    Am Boden liegt ((@kass Kassandras Leiche)), neben ihr ein kreisrundes ((@saegeblatt Sägeblatt)).
    
    -else:
    
      
    Am Boden liegt ((@kass2 Kassandra)), neben ihr ein kreisrundes ((@saegeblatt Sägeblatt)).
    
    }


* {not kass_lebt_doch} @kass betrachte

    Sprachlos starrst du sie an. Sie ist tot.

/* Die Bedingung vor @kass2 ist nicht strikt notwendig, weil unser System Optionen nur anzeigt, wenn der betreffende Inline-Link auftaucht. Aber für automatisches Testen ist es wichtig! */

+ {kass_lebt_doch} @kass2 betrachte

    Sie hat die Augen geschlossen, aber sie atmet noch.

* @kass durchsuche
    
    ~ kass_lebt_doch = true
        
    Du bückst dich und greifst in ihre Jackentasche. Sie spuckt dir einen Schwall Blut ins Gesicht.
    
    "Verflucht, was machst du?", stammelt sie.
    
    Oh mein Gott, sie lebt!
    
    ** Untersuche ihre Wunden
        -> kass_wunden

    ** Schreie vor Schreck
    
        Du schreist. Kassandra hustet. "Ich spüre nichts", röchelt sie, "Sterbe ich?"
    
    ** Frage sie, wie sie sich fühlt
    
        "Ich spüre gar nichts", röchelt sie, "Sterbe ich?" 

    ** Wähle den Notruf
        -> kass_notruf

    --
    
    ** "Nein."
        "Ich kann nicht aufstehen", flüstert sie, "Du musst Hilfe holen."
    
    ** Untersuche ihre Wunden
        -> kass_wunden
    
    ** "Wir sind in Gefahr. Wir müssen hier so schnell wie möglich weg."
    
        "Ich kann nicht aufstehen", flüstert sie, "Du musst Hilfe holen."
    --
    
    ** Untersuche ihre Wunden
        -> kass_wunden
    
    ** Wähle den Notruf
        -> kass_notruf
        
    ** "Halte durch! Ich suche nach einem Ausgang."
        -> kass_ich_suche_ausgang

* @tuer1 öffne
    Die Tür ist aus schwerem, rostigem Eisen. Du ziehst an ihr, aber sie bewegt sich keinen Millimeter.

+ @tuer2 Gehe tiefer ins Fabrikgebäude hinein
    -> fabrik2

* @fenster betrachte
Ziemlich weit oben.

* @fenster klettere durch eines der Fenster
Die Fenster sind zu weit oben und sind außerdem noch vergittert.

* @spinnweben berühre
    Klebrig. Du wischst dir angewidert die Hände an deiner Hose ab.

* @waenden betrachte
    Mit mulmigem Gefühl betrachtest du die Wände. Woher kam das fliegende Sägeblatt, das Kassandra getroffen hat? Du siehst keine Öffnungen in den Wänden, aber du könntest schwören, dass das Sägeblatt direkt aus der Wand geschossen kam. Es handelte sich mit hundertprozentiger Sicherheit um eine Falle, von einem raffinierten Menschen so getarnt, dass man sie unmöglich sehen konnte. Was, wenn hier noch mehr Fallen lauern?


* @saegeblatt nimm es mit
    Es ist voller Blut. Du lässt es lieber liegen.

-
-> fabrik1

-> END


=== kass_wunden

Du betrachtest ihren Hals. Er ist voller Blut, aber inmitten des Bluts glaubst du einen Schnitt zu erkennen. Du hast keine Ahnung, wie tief er geht.
    
    * Versuche, ihre Wunde zu verbinden

    Du musst den Blutfluss stoppen. Du ziehst dein T-Shirt aus und reißt es in Streifen. Du fertigst einen improvisierten Verband um ihren Hals an. Du hoffst, dass es etwas hilft.
    
    "Können wir hier weg?", fragt Kassandra mit glasigen Augen.
    
    "Ja", sagst du, "Ich muss nur kurz einen Ausgang finden, ja? Halte durch!"
    
    Wenn es nur so leicht wäre. Der einzige Weg nach draußen scheint tiefer in die Fabrik zu führen ...

    -> fabrik1

    
* Lieber nicht, sonst entzündet sich die Wunde noch

    Du lässt es lieber sein. Du bist kein Arzt und am Ende richtest du noch mehr Unheil an. Das Wichtigste ist es jetzt, einen Ausgang zu finden!

    -> kass_ich_suche_ausgang




=== kass_notruf

Kein Empfang. Verdammt!

* Versuche es nochmal

    Nein, definitiv kein Netz. Was jetzt?

    ** Untersuche ihre Wunden
        -> kass_wunden

    ** Sage ihr, dass sie durchhalten soll.
        -> kass_ich_suche_ausgang

* Untersuche ihre Wunden
    Schon zu viel Zeit mit dem Handy verschwendet. Jede Minute zählt! Du beschließt, dir Kassandras Wunden anzusehen.
    
    -> kass_wunden

* Sage ihr, dass sie durchhalten soll.

    Du bist kein Arzt und kannst ihr wahrscheinlich auch nicht helfen. Es ist besser, sofort nach einem Ausgang zu suchen. Jede Minute ist kostbar!
    -> kass_ich_suche_ausgang


=== kass_ich_suche_ausgang

"Halte durch!", sagst du, "Ich suche nach einem Ausgang!"

Wenn es nur so leicht wäre. Der einzige Weg nach draußen scheint tiefer in die Fabrik zu führen ...

-> fabrik1

-> END

VAR plattform_kaputt = false

VAR lichtschranke_entdeckt = false

VAR falle_kaputt = false

=== fabrik2

Eine Industriehalle. Durch die ((@glasfenster Glasfenster)) in der Decke fällt Tageslicht. {Leider gibt es sonst keine Fenster. |}Du siehst hier einen Haufen ((@bauschutt Bauschutt)). {Außerdem mehrere Türen (naja, eher türlose Tür<i>rahmen</i>, wenn wir genau sein wollen), hinter denen du dunkle, kahle Räume erblickst.|}

    Eine ((@tuer1 Tür)) führt zurück in den Vorraum. An der gegenüberliegenden Wand gibt es eine ((@tuer2 weiße Tür))<>

    {lichtschranke_entdeckt:
        <>, an der ein ((@lichtkasten schwarzer Kasten)) montiert ist,<>
    }


    <> und eine ((@tuer3 erbsengrün gestrichene Tür)). <>

    {falle_kaputt:
        Im weißen Türrahmen liegen die Reste der Falle: eine ((@sense scharfe Sense)), die noch intakt scheint, und weitere Eisenteile.  
    }

    {
        - not plattform_kaputt:
    Etwa drei Meter über der weißen Tür ragt eine Plattform aus Eisengittern aus der Wand, die über eine ((@leiter Leiter)) erreicht werden kann.
    
        - else:
    Am Boden liegen die Reste der Plattform: Eisengitter, ((@eisenst Eisenstangen)) und ein paar lose Schrauben.
    }

+ {sense_room == "fabrik2"} @sense nimm sie
    Die Sense hat leider keinen Griff, sodass sie als Waffe oder Werkzeug ganz und gar unbrauchbar wäre. <i>Naja ... vielleicht kann ich sie ja werfen</i>, wenn mich jemand angreift, fährt es dir durch den Kopf.
    
    ++ Nimm sie mit.
        Du nimmst die Sense.
        ~ sense_room = "player"
        
    ++ Lass sie liegen.

* {plattform_kaputt and eisenstange_room != "player"} @eisenst nimm
    Du hebst eine der kleineren Eisenstangen auf. Sie ist etwa einen Meter lang. Vielleicht hilft sie dir, wenn du dich verteidigen musst. 
    ~ eisenstange_room = "player"

* @glasfenster betrachte
    Leider zu weit oben, um sie zu erreichen.

+ @tuer1 gehe in den Vorraum
    -> fabrik1

+ @tuer2 gehe durch die Tür

    {falle_kaputt:
        -> erfolgreich_durch_tuer
    }

    Als du durch die Tür gehst, schwingt eine rostige Sense von oben herab. Eigentlich sollte sie dich enthaupten, aber aufgrund eines Konstruktionsfehlers dringt sie nur tief in deinen Hals ein. Du verblutest langsam und qualvoll.
    
    -> end_game("Du bist gestorben.", "tot", "qualvoll", -> fabrik2)


+ {lichtschranke_entdeckt and not falle_kaputt} @tuer2 strecke deinen Arm durch die Türöffnung
    Eine rostige Sense fällt von oben herab und trennt deine Hand ab. Du stirbst nicht sofort, sondern verblutest langsam und qualvoll.
    -> end_game("Du bist gestorben.", "tot", "qualvoll", -> fabrik2)


+ {lichtschranke_entdeckt and not falle_kaputt} @tuer2 strecke etwas durch die Türöffnung
    ~ temp xxx = ""

    ** {gabel_room == "player"} die Gabel
        ~ xxx = "ga"

        Du streckst die Gabel durch die Türöffnung.

    ** {bleistift_room == "player"} den Bleistift
        ~ xxx = "bl"
        ~ bleistift_inv_text = "in zwei Teilen"
        Du hältst den Bleistift durch die Türöffnung.
    
    ** {eisenstange_room == "player"} die Eisenstange
        ~ xxx = "ei"
    
    Der schwarze Kasten piept. Aus einem dünnen Spalt im Türrahmen fällt eine Sense herab, trifft die Eisenstange und zerbricht mit einem scheußlichen Knirschen.
    
    Mit Genugtuung betrachtest du die kaputte Falle. 
    
        ~ falle_kaputt = true
        ~ sense_room = "fabrik2"
        -> fabrik2
    
    ++ ->
        Du trägst nichts Geeignetes bei dir.
        -> fabrik2
    --
    
    Der schwarze Kasten gibt ein leises Piepen von sich. Aus einem dünnen, kaum sichtbaren Spalt im Türrahmen fällt eine Sense herab, <>
    
    {xxx == "ga": trifft mit einem metallischen "Kleng" die Gabel}

    {xxx == "bl": trennt den Bleistift entzwei}



    <> und verschwindet wieder. Das alles hat nur den Bruchteil einer Sekunde gedauert. {Dir läuft ein kalter Schauer den Rücken herunter. Wer immer das gebaut hat, wusste, was er tut.|}
    
        
    -> fabrik2



* @tuer2 untersuche den Türrahmen
    
    Du betrachtest den Türrahmen. Dir fällt auf, dass am Türrahmen auf Höhe deines Knies ein kleiner, ((@lichtkasten schwarzer Kasten)) angebracht wurde. Im Gegensatz zum Rest der Umgebung ist er nicht verstaubt und sieht aus, als wäre er erst vor Kurzem montiert worden. Du hast so einen Kasten schon einmal gesehen. Eine Lichtschranke!
    ~ lichtschranke_entdeckt = true   
    
+ @tuer3 gehe durch die Türöffnung
    -> fabrik3

* @bauschutt betrachte
    Nur Bauschutt.

* @bauschutt durchsuche
    Du greifst in den Bauschutt und stichst dir den Finger an einem rostigen Nagel. Hoffentlich hast du an deine Tetanusauffrischung gedacht.
    ~ bauschutt_durchsucht = true


+ {bauschutt_durchsucht == true and foto2_room != "player"} @bauschutt durchsuche nochmal den Bauschutt
    Du wühlst im Bauschutt herum und bringst das Foto eines jungen, rothaarigen Mannes zutage.
    
    <img src="assets/polaroid2.png" class="story-image">
        
    ** Nimm es
        Du nimmst das Foto mit.
        ~ foto2_room = "player"
        -> fabrik2
        
    ++ Lass es liegen
        Du lässt das Foto, wo es ist.
        -> fabrik2


* {not plattform_kaputt} @leiter untersuche die Leiter
    Du rüttelst an der Leiter. Wirkt etwas instabil.
    
+ {not plattform_kaputt} @leiter klettere nach oben
    Du kletterst nach oben.
    -> plattform

-

-> fabrik2

VAR bauschutt_durchsucht = false

=== plattform 

Du stehst auf einer eisernen "Plattform", mehr oder weniger ein schwankendes Gitter, das von ein paar maroden ((@eisenstangen Eisenstangen)) getragen wird. Unter dir erstreckt sich die Fabrikhalle. Am Ende der Plattform befindet sich eine Türöffnung ohne Tür. Hinter der ((@buero Türöffnung)) siehst du etwas, was wie ein Büro aussieht. Die ((@leiter Leiter)) führt wieder nach unten.

+ @buero gehe ins Büro
    Du trittst ins Büro ein.
    -> buero
    
* @buero untersuche den Türrahmen
    Du suchst den Türrahmen nach Fallen ab, aber du bemerkst nichts Ungewöhnliches.

+ @leiter klettere wieder nach unten
    Du kletterst wieder nach unten.
    -> fabrik2

* {eisenstangen_ruettel == 0} @eisenstangen rüttle am Geländer
    Du rüttelst am Geländer. Die Plattform schwankt bedrohlich. Vielleicht keine so gute Idee.
    ~ eisenstangen_ruettel = 1

+ {eisenstangen_ruettel == 1} @eisenstangen rüttle fester am Geländer

    {amulett_room == "player":
        -> anhaenger_rettung
    }

    Du rüttelst noch fester am Geländer. Die Plattform, auf der du stehst, fliegt in Einzelteile. Du fällst drei Meter tief, was nicht allzu schlimm ist. Leider landest du auf einer Eisenstange, die sich ca. zwei Zentimeter links vom Brustbein in dein Herz bohrt, was ein Quäntchen schlimmer ist.
    -> end_game("Du bist schnell und fast schmerzlos gestorben.", "tot", "schnell", -> plattform)


-

-> plattform


=== anhaenger_rettung
    Du rüttelst noch fester am Geländer. Die Plattform, auf der du stehst, fliegt in Einzelteile. Du fällst drei Meter tief und landest auf einer Eisenstange, die sich ca. zwei Zentimeter links von deinem Brustbein in dein Herz bohren würde, wenn du nicht zufällig einen hässlichen Anhänger aus rosa Plastik um den Hals tragen würdest, der die Eisenstange daran hindert, dich zu durchbohren.
    
    * Stehe auf
    
    - 
        ~ amulett_inv_text = "kaputt"
        
        Du rappelst dich auf und betrachtest ungläubig den Anhänger. Die Stange hat das Gesicht der blonden, lachenden Prinzessin in ein klaffendes Loch verwandelt.

        Die Wahrscheinlichkeit, dass der Anhänger sich genau zur richtigen Zeit am richtigen Ort befand, ist so klein, dass dir übel wird. Nein, wirklich. Du beugst dich nach vorne und übergibst dich auf den Boden der Fabrikhalle.
        
        * Wisch dir den Mund ab
        
        -
        Du wischst dir den Mund ab. Pfui, das war ekelhaft.
        
        Und du wärst fast dabei draufgegangen. Was musst du Idiotin auch am Geländer rütteln?
        ~ plattform_kaputt = true
        -> fabrik2
        


=== buero

Das hier war wohl mal ein Büro. Hier steht ein verstaubter Schreibtisch, ein umgekippter ((@papierkorb Papierkorb)) und ein paar ((@aktens Aktenschränke)). Und vermaledeiterweise kein Fenster. Durch die ((@tuer Tür)) geht es wieder nach draußen. <>

    {aktens_count == 2:
    # js: kavka.room_content("aktenschraenke", "links", "acc", "und", ".rc-span", {nothing: "", pre: "In der Schublade eines Aktenschranks siehst du ", post: "."})
    
    <span class="rc-span"></span>    
    }
    
    {aktens_count == 1:
        ~aktens_count = 2
    }

    <- thing_actions(-> buero)

+ @tuer verlasse das Büro
    Du gehst wieder raus.
    -> plattform

* @aktens betrachte die Aktenschränke
    Wenn du dir den Zustand der Aktenschränke ansiehst, kannst du dir denken, warum man sie einfach hier zurückgelassen hat.

+ {aktens_count == 0} @aktens öffne sie
    Du öffnest ein paar Schubladen. <>
    # js: kavka.room_content("aktenschraenke", "links", "acc", "und", ".rc-span2", {nothing: "", pre: "In einer Schublade findest du ", post: "."})
    <span class="rc-span2"></span>

    ~ aktens_count = 1

-
-> buero


=== fabrik3

Ein kleiner, dunkler Raum. Das einzige Licht hier fällt durch die Türöffnung, durch die du gekommen bist. Es gibt noch eine ((@esc_tür zweite Tür)), neben der ein modernes Panel mit einem ((@esc_ziffern  Ziffernblock)) angebracht ist. In einer Ecke steht ein kaputter ((@kuehlschrank Kühlschrank)). <>

    {kuehlschrank_open:
        # js: kavka.room_content("kuehlschrank", "links", "acc", "und", ".rc-span", {nothing: "", pre: "Im Kühlschrank siehst du ", post: "."})
        
        <span class="rc-span"></span>    
    }

~ current_room = "fabrik3"

<- thing_actions(-> fabrik3)

* @kuehlschrank öffne ihn
    Du machst den Kühlschrank auf.
    ~ kuehlschrank_open = true

+ Gehe zurück in die Fabrikhalle
    ~ current_room = "fabrik2"
    -> fabrik2

+ @esc_tür untersuche
    Eine schwere, geschlossene Metalltür.

+ @esc_ziffern untersuche
    Sieht aus, als müsste man einen Code eingeben, um die Tür zu öffnen.

+ @esc_ziffern tippe einen Code
    {Du tippst wahllos ein paar Zahlen ein. Nichts passiert. Entweder das Panel ist defekt oder das war nicht der richtige Code.|Du tippst beliebige Zahlen ein. Nichts passiert.}

+ @esc_tür schlage sie
    Womit?
    
    ++ Mit der Hand
        Brich dir lieber nicht die Hand.

    ++ {eisenstange_room == "player"} Mit der Eisenstange
        Du schlägst mit der Metallstange gegen die Tür. Kleng! Du dachtest doch nicht ernsthaft, dass du die Tür kaputtschlagen kannst? Du bist nicht Buffy.
    
    ++ {bleistift_room == "player"} Mit dem Bleistift
        Sehr effektiv. Die Tür bleibt natürlich ganz.

-
-> fabrik3


=== erfolgreich_durch_tuer

Du trittst durch die Tür und findest dich in einem dunklen Korridor wieder. Hinter dir siehst du das Licht der Fabrikhalle, aus der du kommst, vor dir glaubst du ein schwaches Pünktchen Licht zu erkennen, ein klitzekleiner, heller Fleck in der Finsternis.

+ Folge dem Licht
    Du schreitest mit unsicheren Schritten durch die Dunkelheit voran. Das Pünktchen Licht vor dir wird ein wenig größer. Schließlich stehst du direkt vor ihm. Es ist eines dieser Neonsternchen, das Kinder gerne an Wände kleben und die im Dunkeln leuchten.
        Sonst ist hier nichts.
    
    -- (k_back_dunkel)

    ++ Gehe geradeaus weiter
        Vor dir fühlst du eine nasse, kalte Wand. Hier geht es nicht weiter.

    ++ Suche links von dir nach einem Durchgang
        Du tappst im Dunkeln herum, aber fühlst nur nassen, kalten Beton. Das ist doch zum Verzweifeln! Hier hinten ist gar nichts! Hast du die Falle ganz umsonst entschärft?
    
    ++ Suche rechts von dir
        Du tappst im Dunkeln herum, aber fühlst nur nassen, kalten Beton.

    ++ Taste die Wände ab
        Du tastest die Wände ab, aber findest keinen Durchgang.
    
    ++ {not dunkel_papier} Taste den Boden ab
        Du tastest den Boden ab und findest etwas, das sich wie ein Stück Papier anfühlt.
    
        +++ Nimm es
            Du nimmst das Papier.
            ~ dunkel_papier = true
        +++ Lass es liegen
            Du lässt es lieber liegen.
    
    ++ Kehre um
        -> back_dark_fabrik2
    
    --
    -> k_back_dunkel

+ Kehre um.
    -> back_dark_fabrik2



VAR dunkel_papier = false
VAR dunkel_papier_gesehen = false


=== back_dark_fabrik2

{dunkel_papier == true && dunkel_papier_gesehen == false:
    -> dunkel_entziffer

}

-> fabrik2


=== dunkel_entziffer
Du gehst zurück in die Fabrikhalle und wirfst einen Blick auf das Papier, das du mitgenommen hast. Es entpuppt sich als das Foto eines jungen Mannes. Er kommt dir vage bekannt vor.

    <img src="assets/polaroid3.png" class="story-image">
     ~ foto3_room = "player"
     
+ weiter
-> pen_enter


=== pen_enter

"Er hat sich verändert, oder?"

Da ist niemand, der gesprochen haben könnte. Und es ist auch nicht Kross' Stimme.

+ Schlage wild um dich
    Du triffst nur Luft.

    -- (k_back_bens_gesp)
    
    ++ Frage: "Ist da jemand?"
        "Nein. Niemand hier."

    ++ Sage: "Ich bin bewaffnet!"
        "Be-waff-net. Gut. Lass dich nicht lumpen."
    
+ Laufe weg
    Und wohin? Du sitzt hier in der Falle, schon vergessen?
    -> k_back_bens_gesp

+ Frage: "Wer ist da?"
    "Niemand. Gar niemand."

+ Frage: "WER hat sich verändert?"
    "Na, er. Natürlich hat er sich verändert, ja. Musste ja der einzige sein. Wobei ... wir vielleicht auch. Aber würde man es merken? Nein, natürlich nicht. Manchmal taste ich mein Gesicht ab, aber Falten spürt man nicht, weißt du? Oder erst, wenn es zu spät ist, schätze ich."

+ Frage: "Benson?"
    "Benson. Du kennst Benson? Merkwürdig."

-
<> Es ist die Stimme einer Frau. "Ich hatte die Fotos aus einem Grund versteckt, weißt du. Nicht, damit du anfängst, sie alle wieder rauszuzerren. Vor allem das da."

- (penback1)

~ k_count_pen1 += 1

* {k_count_pen1 == 1} "Das Foto hier? Was ist damit?"

    "Na, es zeigt ihn. Was denn sonst? Jeder hat ein Foto bekommen, aber sie wollte ein Foto vor dem Himmelsblau. Also haben wir die Wand angemalt, denn wir konnten sie ja nicht rauslassen, nicht tagsüber. Das wäre ein Fehler gewesen. Hätte uns fast die Polizei erwischt."

    ++ "Wer ist ER?"
        "Erkennst du ihn nicht aus der Zeitung? Ich nicht, ich lese keine Zeitungen. Aber auch sonst ist er ja überall. Supersichtbar. Dank uns."

    ++ "Erzählst du mir, dass du jemanden gefangen hältst?"
    
        "Gefangen. So wollten wir das nie nennen. Aber ich schätze, das war es, ja." Sie schluchzt leise. "Wir waren Teufel, oder? Waren wir das? Aber jetzt ist sie frei. Frei und groß."

* "Wer bist du?"
    "Wer weiß. Du bist du, ich bin ... Du bist überhaupt nicht da. Sonst hätte dich ja eine von den Fallen schon massakriert. Bist du ein Geist?"
        ~ k_p_geist = true
    
    ++ "Ja."
        "Ha! Genau das würde ein Geist sagen", ruft sie, "Ich glaube dir kein Wort."
    
    ++ "Nein."
        "Ja, sonst wärst du nicht durch die Fallen ... ich meine, das wäre dann doch etwas zu offensichtlich ..."
    
    ++ "Ich heiße Hannah."
        "Ja, doch. Aber das habe ich nicht gefragt. Ein Geist. Was wäre ein Geist schon ohne Namen? Irgendwo muss man ja seine Vitamine herkriegen, oder?" Sie kichert.

* "Bist du unsichtbar?"

    "Für dich, ja." Sie macht eine kurze Pause. "Für mich auch. Für alle, eigentlich. Blöde Antwort. Entschuldige. Ja, ich bin unsichtbar. Für alle und ewig. Wir alle sind unsichtbar. Außer er. Er ist sichtbar. Sehr sogar."

    ++ "Er? Wen meinst du?"
        "Na, er!" Das Foto des jungen Mannes, das du in deiner Hand trägst, flattert, als habe es eine Brise Wind gepackt.
        
        Du betrachtest das Foto. Es ist wie verhext. An irgendwen erinnert es dich, aber du weißt nicht, an wen.

    ++ "Wie bist du unsichtbar geworden?"
        "Das willst du nicht wissen. Nein, tust du nicht."

* {k_count_pen1 > 2} "Ich verstehe nicht ..."
    "Ja, das verstehe ich", sagt die Stimme.

* {k_count_pen1 > 1} "Kennst du Kross?"
    "Und wie. Und wie und wie. Es tut mir leid. Ich hätte es ihm nicht geben sollen."

    ** "WAS nicht geben sollen?"
    
        "Das Ding. Mit dem wir damals das Ding gemacht haben. Kross wusste ja gar nicht, dass ich es habe. Dann bin ich zurück nach Prag gekommen. Ich Idiotin. Hätte es ihm wirklich nicht geben sollen. Aber wenigstens hat er es jetzt zurückgebracht."
        
        *** "Sprichst du von dem Dolch?"
            
            "Pssst! Ich habe nicht davon gesprochen. Das warst du. Und jetzt Schluss!"
            ~ k_p_dolch = true
        
        *** "Du musst mir helfen."
            -> k_p_musst_helfen
    
    ** "Woher kennst du Kross?"
    
        "Wir waren ja fünf Freunde. Ohne Hund. Nein, wir waren nur vier. Vier ohne den Hund. Also, eigentlich nur drei. Ich bin nur mitgegangen, weil Kross wollte. Und ich liebte Benson nicht. So war das."

* {k_count_pen1 > 2} "Wie heißt du?"

    "Ich bin ja gar nicht da, du. Schon lange nicht mehr. Man könnte ja glauben, dass man mich nicht sieht und der Rest noch da ist. Aber ich bin mir da nicht mehr so sicher, nach all den Jahren."

* {k_count_pen1 > 3} "Du musst mir helfen."
    -> k_p_musst_helfen

* {k_count_pen1 > 4} "Meine Freundin liegt im Sterben."
    -> k_p_im_sterben

-

-> penback1


-> END

VAR k_count_pen1 = 0
VAR k_p_geist = false
VAR k_p_dolch = false

=== k_p_musst_helfen

{
    - k_p_geist:
        "Helfen? Aber du bist doch ein Geist, wie soll ich dir da helfen? Oder bist du doch kein Geist? Ich bin verwirrt. "
    - k_p_dolch:
        "Du bekommst ihn aber nicht. Nein, nein. Wir sind sowieso nicht da."
    - else:
        "Helfen? Als ob du wirklich hier wärst"
}

- (k_p_back)

* "Weißt du, wie ich hier rauskomme?"
    "Durch die Wand, vielleicht? Nein, das ist nicht gut. Man muss ja dann doch drinnen bleiben."

* "Meine Freundin liegt im Sterben!"
    -> k_p_im_sterben
    
* "Weißt du, ob es hier noch mehr Fallen gibt?"
    "Fallen? Nein. Nachdem Benson weg ist, hatte ich keine Lust mehr, welche zu bauen. Was heißt <i>weg</i>. Gestorben ist er. Habe ihn nie geliebt. Armer Benson."
    
    ** "DU hast die Fallen gebaut?"
        "Ja, natürlich. Wer sonst? Benson hatte zwei linke Hände. Damit sie nicht kommen und uns holen. Dann sind wir weg aus Prag. Warum bin ich überhaupt wiedergekommen? Idiotisch."

        *** "Eine deiner Fallen hat meine Freundin verwundet."
        
        *** "Meine Freundin ist verwundet."
        
        ---
        "Ja, vielleicht. 
        -> k_p_choice_next

    ** "Meine Freundin liegt im Sterben!"
        -> k_p_im_sterben

-

-> k_p_back


=== k_p_im_sterben
"Tun wir das nicht alle?

-> k_p_choice_next

=== k_p_choice_next

<> Aber wahrscheinlich gibt es deine Freundin sowieso nicht."

+ "Doch, es gibt sie wirklich! Sie heißt Kassandra!"

    Eine lange Pause. Du glaubst schon, dass sie gegangen ist, als du wieder ihre Stimme hörst. "Kassandra", sagt sie tonlos. Wieder eine lange Pause. Dann endlich: "Wo?"
    ~ k_p_erz = true

+ "Doch, komm mit und ich zeige sie dir!"
    Eine lange Pause. Du glaubst schon, dass sie gegangen ist, als du wieder ihre Stimme hörst:
    "Zeig sie mir."
    
-

+ weiter

-

Du gehst zurück zu Kassandra. Sie liegt am Boden und ihre Augen sind geschlossen. Erleichtert stellst du fest, dass sie noch atmet.

{k_p_erz:
        "Sie ist es wirklich", sagt die Stimme hinter dir, "Sie ist wieder gekommen."
    - else:
        "Kassandra", sagt die Stimme hinter dir, "Sie ist wieder gekommen."
}

+ "Warte mal ... du KENNST sie?"

+ "Kannst du ihr helfen?"

-

Keine Antwort. Du hörst einen Schritt, dann noch einen, verstärkt durch das Echo des leeren Raums. Eine von Kassandras rotblonden Locken tanzt, als wäre sie von einem Hauch Wind erfasst worden. "Cassie", flüstert die Stimme, "So groß ist sie geworden." Dann bewegt sich Kassandras Arm wie von einem unsichtbaren Faden geführt nach oben.

+ "Was machst du mit ihr?"
    "Nichts, was ein Arzt nicht auch tun würde. <>

+ "Bist du das?"
    "Nein, das ist Kassandra", antwortet die Stimme, "<>

-
Ihr Puls ist gut. Der Schnitt ist nicht tief. Nur das Gift. Benson mit seinen blöden Giften. Muskellähmung, respiratorische Depression, Tod. Sie hat vielleicht noch zwei Stunden. Falls sie das wirklich ist. Ich kann nicht glauben, dass das Cassie ist. Dass sie so groß geworden ist. Und wenn du schon dabei bist, könnte ich dir auch etwas für Cassie mitgeben."

+ "WOBEI bin?"

    "Dabei, sie ins Krankenhaus zu bringen. Habe ich dich nicht schon darum gebeten? Tut mir leid. Also: du musst sie unbedingt ins Krankenhaus bringen. Nachdem ich dir das Zeug mitgebe. Was aber nicht so wichtig ist. Ich wollte es ihr schon länger geben. Aber viel Zeit bleibt nicht."

+ "Häh? Etwas mitgeben?!"

    "Ach, nichts weiter. Etwas, was ich ihr schon länger geben wollte. Das kannst du ihr nachher geben ... erst müsst ihr ins Krankenhaus, denke ich. Unbedingt, sogar."

+ "Hast du Verbandszeug?"

    "Oh, nein, das spielt keine Rolle. Ich habe gesagt, der Schnitt ist nicht tief. Habe ich das schon gesagt? Es ist das Gift. Muskellähmung, respiratorische Depression, Tod."

    ++ "Ja, hast du schon gesagt."
        
    ++ "Okay. Was machen wir?"

    --
        "Sie muss ins Krankenhaus. Also, nachdem ich dir das Zeug mitgebe. Was aber nicht so wichtig ist. Ich wollte es ihr schon länger geben. Kannst du sie bitte ins Krankenhaus bringen? Das wäre dann doch wichtig."

-

Du spürst etwas, das dein Handgelenk umschließt und festhält. "Bitte bring sie hin, ja?"

+ Schnappe danach.
    Du schnappst nach vorne und bekommst einen unsichtbaren Arm zu fassen.
    
    "Du fühlst dich echt an", sagt die Frauenstimme emotionslos, "Fühle ich mich auch echt an?"
    
    ++ "Ja."
    
    "Merkwürdig", murmelt sie, "Aber sag mal ... wolltest du nicht Cassie mitnehmen?"
    
        +++ "Zeig mir den Ausgang!"
        
        +++ "Ich komme hier nicht raus."
    
    ++ "Du musst mir helfen, Kassandra hier rauszubringen."
    
    ++ "Wenn du mir nicht hilfst, lasse ich dich nicht mehr gehen."

    "Ich und gehen?", fragt sie, "Ich geh tagsüber sowieso nicht raus. Zu gefährlich. Die Dämmerung ist gut. Da sieht man selbst noch, aber sie können einen nicht sehen. Auch keine Fußspuren. Aber du solltest gehen. Und sie mitnehmen."
    
    +++ "Ich komme hier nicht raus."
    
    +++ "Zeig mir, wie man hier rauskommt, sonst lasse ich dich nicht los."

+ Sage: "Ich bringe sie ins Krankenhaus, versprochen."

    "Versprochen, versprochen, gleich wieder gebrochen." Die Hand lässt dich los. "Ich wette, du weißt noch nicht einmal, wie du hier rauskommst."

    ++ "Dann zeig mir den Ausgang!"
    
    ++ "Dann zeig mir den Ausgang, verdammt!"
    

+ Sage: "Ich kann hier nicht raus."

-

-> k_haus_ende

VAR k_dolch_nimm = false

=== k_haus_ende

"Du willst hier raus?" Die Stimme klingt verwundert. "Das ist leicht. Warum hast du das nicht gleich gesagt?"

+ weiter
-

Dann bist du ihr gefolgt. Sie kannte die Kombination für die Tür.

+ weiter
-

Draußen schien die Sonne, als wäre nie etwas passiert.  
  
+ weiter
-
  
Dein Handy hatte Empfang. Du hast den Notruf gewählt und sie haben euch einen Krankenwagen geschickt.

+ weiter
-

Jetzt sitzt du in einem Gang im dritten Stock eines Krankenhauses.

Sie haben gesagt, Kassandra wird wieder gesund.

+ weiter  
-

Aber du darfst sie heute nicht mehr sehen.

+ weiter  
-

Vielleicht wäre es besser, endlich nach Hause zu gehen.

+ gleich ...
-

Du bist so müde.

Du betrachtest den Schuhkarton, den dir die unsichtbare Frau für Kassandra mitgegeben hat.

+ Nimm den Dolch aus der Schachtel
    Du nimmst ihn in die Hand.
    ~ k_dolch_nimm = true

+ Betrachte den Dolch, aber fass ihn nicht an
    Du betrachtest ihn. 

-

Das ist er. Der Dolch, mit dem Marek dich ... es fühlt sich beinahe normal an, das zu denken. Und der Dolch sieht auch beinahe normal aus. Er hat eine gekrümmte Klinge. In den Knauf sind drei rote, billig wirkende Steine eingearbeitet. Du fragst dich ...

+ ... wie Marek so etwas tun konnte.

    Nein. Du willst dich nicht mit solchen Fragen quälen. Nicht jetzt.
    Konzentriere dich auf das Positive. Du bist noch am Leben.
    Kassandra auch. Und du hast den Dolch. <>

+ ... welcher Vollidiot wirklich glauben würde, dass dieser Dolch mystische Kräfte besitzt.

    Sehr gute Frage. Ich meine, du bist sicher, so ein Ramschding kriegt man auf dem nächsten Vietnamesenmarkt für 30 Euro oder weniger. Sollten sogenannte magische Artefakte nicht wenigstens alt <i>aussehen</i>?
    
        Wie auch immer. Du hast jetzt endlich den Dolch. <>
-

Du kannst ...

+ ... ihn zerstören, damit niemand mehr damit getötet wird.
    Ja, du wirst den Dolch zerstören. Das war es, was Kassandra vorhatte, und es scheint dir das Sinnvollste. Solange es da draußen Verrückte gibt, die wirklich denken, dass man mit diesem Dolch irgendwelche dunklen Riten durchführen kann, stellt er eine Gefahr dar. Besser, ihn ein für alle Mal aus der Welt zu schaffen.

        {k_dolch_nimm:
            Du legst ihn zurück in die Schachtel.
            -else:
            Du wendest den Blick wieder von ihm ab.
        }

+ ... ihn deinem Stalker geben, damit er dich in Ruhe lässt.
    Kassandra wollte den Dolch zwar zerstören, aber du hast keine Lust, deinen Stalker zu verärgern. Du wirst ihm den Dolch geben und hoffen, dass er dich dann in Ruhe lässt. Hoffen, dass du einfach zu deinem normalen Leben zurückkehren kannst, in dem niemand bedroht, abgestochen oder von grausamen Fallen zerstückelt wird.
        
        {k_dolch_nimm:
            Du legst den Dolch zurück in die Schachtel.
            -else:
            Du wendest den Blick vom Dolch ab.
        }


+ ... ihn verscherbeln.
    Kurz blitzt der Gedanke in deinem Kopf auf, dass du den Dolch verkaufen solltest. Laut Kassandra gibt es ja Verrückte, die wirklich glauben, dass der Dolch magische Kräfte besitzt. Vielleicht würde einer von ihnen dafür ordentlich Geld hinblättern. Aber das wäre falsch, oder? Am Ende versucht jemand das, was Marek mit dir versucht hat.
    
    ** Dolch hin oder her. Verrückte Mörder wird es immer geben.
        
        Das stimmt. Böse Menschen werden immer Ausreden finden, um böse zu sein. Der Dolch hat gar nichts damit zu tun. Oder doch? Du hast kein gutes Gefühl bei der Sache.
        
        *** Beschließe, den Dolch zu verkaufen
            Ja, du wirst den Dolch verkaufen! Wenn du schon durch diese ganze Scheiße musstest, willst du auch dafür belohnt werden, richtig? Warum musst du auch immer die sein, die sich herumschubsen und misshandeln lässt? Ein einziges Mal willst du Glück haben. Du wirst den Dolch verkaufen und mit dem Geld wirst du ...
            
            **** ... dir irgendwas Schönes kaufen.
                Jepp, so machst du es! Du wirst dir von dem Geld etwas Schönes kaufen. <>
            
            **** ... einen wohltätigen Zweck unterstützen.
                    Ja, das ist eine gute Idee. Auch, um die Stimme zu beruhigen, die dir sagt, dass du den Dolch vielleicht doch nicht verkaufen solltest. Aber wenn du das Geld für etwas Gutes einsetzt, dann wird es schon richtig sein. <>
            ----  
            Bei diesem Gedanken fühlst du dich ...
                
            **** ... besser.
                Ja, das fühlt sich besser an.
            
                {k_dolch_nimm:
                    Du legst den Dolch zurück in die Schachtel.
                    -else:
                    Du wendest den Blick vom Dolch ab.
                }

                    
            **** ... wütend.
                Du fühlst dich wütend wegen allem, was du durchmachen musstest. Und wegen dieser bescheuerten kleinen Stimme, die dir sagt, dass es falsch ist, den Dolch zu verkaufen. Fuck it! Du hast keine Lust mehr auf Gewissensbisse.
                
                {k_dolch_nimm:
                    Du knallst den Dolch zurück in die Schachtel.
                    -else:
                    Du wirfst dem Dolch einen letzten, hasserfüllten Blick zu und wendest dich von ihm ab.
                }


        *** Beschließe, darüber zu schlafen
            Du beschließt, über die Sache zu schlafen und <>
            
            {k_dolch_nimm:
                legst den Dolch zurück in die Schachtel.
                -else:
                wendest den Blick vom Dolch ab.
            }

    ** Nein, das kannst du nicht tun.

        Nein, das kannst du nicht tun. Es wäre einfach falsch. Du wirst darüber nachdenken müssen, was du dann mit dem Dolch anstellen willst. Aber erst morgen, heute ist es zu spät dafür.

        {k_dolch_nimm:
            Du legst den Dolch zurück in die Schachtel.
            -else:
            Du wendest den Blick vom Dolch ab.
        }

+ ... du bist dir noch nicht sicher, was du mit dem Dolch tun wirst.
    Es ist nicht leicht, sich zu entscheiden. Einerseits wollte Kassandra ihn zerstören, damit keine Verrückten sich mehr dazu hinreißen lassen, mit ihm angeblich dunkle Riten zu vollführen. Andererseits wollte dein Stalker den Dolch. Er könnte wirklich sauer werden, wenn du ihm nicht gibst, was er will ... Entscheidungen sind so anstrengend. Vielleicht schläfst du besser eine Nacht drüber.


        {k_dolch_nimm:
            Du legst den Dolch zurück in die Schachtel.
            -else:
            Du wendest den Blick vom Dolch ab.
        }

- 

* Nimm die Kladde aus der Schuhschachtel
    -> k_buch





VAR k_p_erz = false

=== aaasonstiges

- Kassandra und du brecht in Bensons Haus ein, das voll mit Fallen ist.
    Schließlich schafft ihr es, ihn zu stellen.
    Er erzählt euch die Geschichte mit dem Fluch und teilweise
    die mit den Unsichtbaren.
    Es kommt zum Kampf zwischen den beiden und Kassandra stirbt.


* ...
-> menschen_start