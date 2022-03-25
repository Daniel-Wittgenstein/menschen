

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


VAR kass_lebt_doch = false

=== fabrik1
Ein kühler Raum mit Betonwänden. Hoch über dir siehst du vergitterte ((@fenster Fenster)), durch die ein wenig Tageslicht dringt. An den ((@waenden Wänden)) kleben hängemattengroße ((@spinnweben Spinnweben)). Eine ((@tuer1 Tür)) führt nach draußen, eine andere ((@tuer2 tiefer)) ins Fabrikgebäude. 

    {not kass_lebt_doch:
    
    Am Boden liegt ((@kass Kassandras Leiche)), neben ihr ein kreisrundes ((@saegeblatt Sägeblatt)).
    
    -else:
    
      
    Am Boden liegt ((@kass2 Kassandra)), neben ihr ein kreisrundes ((@saegeblatt Sägeblatt)).
    
    }



* {not kass_lebt_doch} @kass betrachte

    Sprachlos starrst du sie an. Sie ist tot.

+ @kass2 betrachte

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


=== fabrik2

Fabrikhalle2
-> END
=== aaasonstiges

- Kassandra und du brecht in Bensons Haus ein, das voll mit Fallen ist.
    Schließlich schafft ihr es, ihn zu stellen.
    Er erzählt euch die Geschichte mit dem Fluch und teilweise
    die mit den Unsichtbaren.
    Es kommt zum Kampf zwischen den beiden und Kassandra stirbt.



* ...
-> menschen_start