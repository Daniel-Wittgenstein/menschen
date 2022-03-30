
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

VAR eisenstange = false

=== fabrik2

Eine Industriehalle. Durch die ((@glasfenster Glasfenster)) in der Decke fällt Tageslicht. Leider gibt es sonst keine Fenster. Du siehst hier einen Haufen ((@bauschutt Bauschutt)). Außerdem eine ((@tuer1 Tür)), die zurück in den Vorraum führt, und an der gegenüberliegenden Wand eine ((@tuer2 weiß gestrichene Tür)) und eine ((@tuer3 Türöffnung ohne Tür)). <>

    {
        - not plattform_kaputt:
    Etwa drei Meter über der weißen Tür ragt eine Plattform aus Eisengittern aus der Wand, die über eine ((@leiter Leiter)) erreicht werden kann.
    
        - else:
    Am Boden liegen die Reste der Plattform: Eisengitter, ((@eisenst Eisenstangen)) und ein paar lose Schrauben.
        
    }


* {plattform_kaputt and not eisenstange} @eisenst nimm
    Du hebst eine der kleineren Eisenstangen auf. Sie ist etwa einen Meter lang. Vielleicht hilft sie dir, wenn du dich verteidigen musst. 
    ~ eisenstange = true

* @glasfenster betrachte
    Leider zu weit oben, um sie zu erreichen.

+ @tuer1 gehe in den Vorraum
    -> fabrik1
    
+ @tuer2 gehe durch die Tür

    Als du durch die Tür gehst, schwingt eine rostige Sense von oben herab. Eigentlich sollte sie dich enthaupten, aber aufgrund eines Konstruktionsfehlers dringt sie nur tief in deinen Hals ein. Du verblutest langsam und qualvoll.
    
    -> end_game("Du bist gestorben.", "tot", "qualvoll", -> fabrik2)
    -> END

+ @tuer3 gehe durch die Türöffnung
    -> fabrik3

* @bauschutt betrachte
    Nur Bauschutt.

* @bauschutt durchsuche
    Du greifst in den Bauschutt und stichst dir den Finger an einem rostigen Nagel. Hoffentlich hast du an deine Tetanusauffrischung gedacht.

* {not plattform_kaputt} @leiter untersuche die Leiter
    Du rüttelst an der Leiter. Wirkt etwas instabil.
    
+ {not plattform_kaputt} @leiter klettere nach oben
    Du kletterst nach oben.
    -> plattform

-

-> fabrik2



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

    {anhaenger ==true:
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

        Du rappelst dich auf und betrachtest ungläubig den Anhänger. Die Stange hat das Gesicht der blonden, lachenden Prinzessin in ein klaffendes Loch verwandelt.

        Die Wahrscheinlichkeit, dass der Anhänger sich genau zur richtigen Zeit am richtigen Ort befand, ist so klein, dass dir übel wird. Nein, wirklich. Du beugst dich nach vorne und kotzt auf den Boden der Fabrikhalle.
        
        * Wisch dir den Mund ab
        
        -
        Du wischst dir den Mund ab. Pfui, das war ekelhaft. Und überflüssig. Was musst du Idiotin auch am Geländer rütteln?
        ~ plattform_kaputt = true
        -> fabrik2
        


=== buero

Das hier war wohl mal ein Büro. Hier steht ein verstaubter Schreibtisch, ein umgekippter ((@papierkorb Papierkorb)) und ein paar ((@aktens Aktenschränke)). Und vermaledeiterweise kein Fenster. Durch die ((@tuer Tür)) geht es wieder nach draußen.

+ @tuer verlasse das Büro
    Du gehst wieder raus.
    -> plattform

* @aktens betrachte die Aktenschränke
    Wenn du dir den Zustand der Aktenschränke ansiehst, kannst du dir denken, warum man sie einfach hier zurückgelassen hat.

+ {aktens_count == 0} @aktens öffne sie
    Du öffnest ein paar Schubladen. Du findest einen zerbrochenen ((@bleistift Bleistift)), ein benutztes ((@pflaster Pflaster)) und einen billigen ((@anhaenger Anhänger)).
    ~ aktens_count = 1
    -> buero_aktens_sub_post
    
+ {aktens_count == 1} @aktens untersuche sie
    
    Du guckst dir nochmal die Aktenschränke an.
    
    -- (buero_aktens_sub)

    {
        - not bleistift and anhaenger:
        In einer Schublade liegt ein zerbrochener ((@bleistift Bleistift)) und ein benutztes ((@pflaster Pflaster)).        
        - not bleistift and not anhaenger:
        In einer Schublade siehst du einen ((@bleistift Bleistift)), ein benutztes ((@pflaster Pflaster)) und einen billigen ((@anhaenger Anhänger)).
        - bleistift and anhaenger:
        In einer Schublade siehst du ein benutztes ((@pflaster Pflaster)).
        - not anhaenger and bleistift:
        In einer Schublade liegt ein billiger ((@anhaenger Anhänger)) und ein benutztes ((@pflaster Pflaster)).  
    }


    -- (buero_aktens_sub_post)

    ++ {not bleistift} @bleistift nimm
        Du nimmst die zwei kaputten Hälften des Bleistifts und steckst sie in die Tasche.
        ~ bleistift = true
    
    ** @pflaster nimm
        Pfui! Das fasst du lieber nicht an.
        
    ++ {not anhaenger} @anhaenger nimm
        Du nimmst den Anhänger in die Hand und betrachtest ihn. Er besteht aus rosa Hartplastik und ist unwahrscheinlich dick und klobig. Auf der Vorderseite klebt ein Sticker mit einer blonden Prinzessin. Auf der Rückseite steht in geschwungenen Lettern: "best friend's 4ever".
        
        +++ hänge ihn dir um
            In einem Anflug von Geschmacklosigkeit hängst du ihn dir um den Hals.
            ~ anhaenger = true
            
        +++ lass ihn liegen
            Du legst ihn zurück.
    
    ++ Guck dir den Rest des Büros an
        -> buero
    
    --
    -> buero_aktens_sub
    
* @papierkorb untersuche
    Du guckst in den Papierkorb rein und findest ein paar zusammengeknüllte Blätter. 

    ++ Nimm sie
    Du hebst die Blätter auf und knüllst sie auseinander. Auf den Seiten stehen viele Zahlen, in Spalten angeordnet. Wahrscheinlich Buchhaltungskram. Auf eines der Blätter hat jemand mit einem himmelblauen Buntstift und krakeliger Schrift "Ariadne" geschrieben.
    
        +++ Nimm die Blätter mit
            Du steckst die Blätter ein.
    
        +++ Lass sie liegen
            Du lässt die Blätter wieder auf den Boden fallen.
    
    ++ Lass sie liegen
        Sicher nicht wichtig. Du lässt die Blätter liegen.
    



-


-> buero


=== fabrik3

Ein kleiner, dunkler Raum. Das einzige Licht hier fällt durch die  du Türöffnung, durch die du gekommen bist. In einer Ecke steht ein kaputter ((@kuehlschrank Kühlschrank)). <>

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

-

-> fabrik3





=== aaasonstiges

- Kassandra und du brecht in Bensons Haus ein, das voll mit Fallen ist.
    Schließlich schafft ihr es, ihn zu stellen.
    Er erzählt euch die Geschichte mit dem Fluch und teilweise
    die mit den Unsichtbaren.
    Es kommt zum Kampf zwischen den beiden und Kassandra stirbt.


* ...
-> menschen_start