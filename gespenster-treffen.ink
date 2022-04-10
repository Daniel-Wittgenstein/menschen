


VAR uns_info_gerettet = 0
VAR uns_info_unsichtbar = 0
VAR unsgesagtarschl = 0
VAR unswiemachstdudas = 0
VAR uns_info_dolch = 0
VAR uns_info_dolch_holen = 0
VAR uns_info_wiedersehen = 0

=== uns_start

-> uns_talkstart

=== uns_talkstart

"Ach, du schon wieder", sagt eine Stimme. Du fährst herum, aber hinter dir ist niemand. Im ganzen Zimmer ist niemand. "Was zum Geier treibt dich her?"

+ "Wer ist da?"
    Die Stimme lacht: "Komm mal runter." Eine Männerstimme. Sie spricht Englisch mit einem tschechischen Akzent und klingt tief und kratzig. Außerdem lallt sie leicht. "Ich versuch dir hier nur zu helfen, ja?"

+ "Hilfe!"
    "Hey, hör auf rumzuschreien!", sagt die Stimme. Eine Männerstimme. Sie spricht Englisch mit einem tschechischen Akzent und klingt tief und kratzig.  Außerdem lallt sie leicht. "Ich versuch dir hier nur zu helfen, ja?"

-

+ "Helfen?"
    ~ uns_info_gerettet = 1
    "Du bist echt ein bisschen langsam, oder? Ja, helfen.
    Wer, glaubst du, hat dir das Leben gerettet?"
    
    .. "Du sicher nicht."
        -> unsdunicht

    .. "Das verstehe ich nicht."
        -> unsverstehnicht

    .. "Du meinst, du warst das?"
        -> unsduwarstdas

+ "Verpiss dich!"
    ~ uns_info_gerettet = 1
    -- (unsdankstso)
    
    "Sachte, Süße. Dankst du so deinem Lebensretter?"
    
    ++ "Du sollst mir das Leben gerettet haben?"
        -> unsdunicht

    ++ "Verstehe ich nicht."
        -> unsdunicht

    ++ "Du meinst, du warst das?"
        -> unsduwarstdas

+ "Ich weiß nicht, wie du das machst, aber das ist nicht witzig."

    "Doch, ziemlich witzig, wenn du mich fragst."

    ++ "Hau ab!"
        -> unsdankstso

    ++ "Wer bist du?"
        ~ uns_info_gerettet = 1
        "Was glaubst du denn? Ich bin der Typ, der dein Leben gerettet hat."

    ++ "WAS bist du?"
        ~ uns_info_gerettet = 1
        "Was glaubst du denn? Ich bin der Typ, der dein Leben gerettet hat."


-

+ "Nein, bist du nicht."
    -- (unsdunicht)
    "Ach, ne? Glaubst du, Flaschen fangen einfach so an,
    durch die Luft zu schweben?

+ "Das verstehe ich nicht."
    -- (unsverstehnicht)
    Er lacht: "Oh Mann, echt schwer von Begriff, was?

+ "Du meinst, du warst das?"
    -- (unsduwarstdas)
    "Ja, was glaubst <em>du</em>? Der Osterhase?

-

~ uns_info_unsichtbar = 1

<> Falls du's immer noch nicht checkst: ich bin unsichtbar."

+ "Oh Gott, ich bin verrückt."
    "Na, wenn du meinst."

+ "Ist das ein Trick?"
    "Nö."

-

Das kann nicht wahr sein. Jemand will dich für dumm verkaufen.

+ "Wo bist du?"

    "Hier drüben."
    
    Du siehst, <>


+ Hier muss irgendwo ein Rekorder versteckt sein. Suche ihn.

    Die Stimme lacht: "Such ruhig. Du wirst nichts finden."
    
    Plötzlich siehst du, <>

-
wie die Vitrine aufgleitet und eine Flasche Wein herausschwebt. Neben ihr schwebt ein Korkenzieher durch die Luft. Der Korkenzieher entkorkt die Flasche, als wäre nichts dabei, und landet sanft auf dem Tisch. Der Korken fällt auf den Boden. Dir fällt auf, dass dort schon zwei leere Weinflaschen liegen.

"Gläschen gefällig?", fragt die Stimme.

+ "Okay, ich bin wirklich verrückt."

+ "Das gibt es nicht."

-

"Ja, ja. <i>Das ist nicht möglich. Das darf es nicht geben. Ich träume. Ich bin verrückt.</i> Wenn wir mit dem Üblichen fertig sind, darf ich dann was sagen?" Er hustet leise und heiser, während ein Weinglas aus der Vitrine sich in die Luft erhebt und sich auf den Weg zur Weinflasche macht. "Was zur Hölle machst du eigentlich hier? Nicht gerade klug, zum Tatort zurückzukehren, findest du nicht? Am Ende halten dich die Bullen noch für die Mörderin."


+ "Wie machst du das mit dem Unsichtbarsein?"
    ~ unswiemachstdudas = 1
    "<i>Machen?</i> Ich wünschte. Ich mache gar nichts, ich <i>bin</i> es einfach."

    ++ "Wie das?"
        "Ich werde dir jetzt nicht meine Lebensgeschichte auf die Nase binden."

    ++ "Ich glaube dir kein Wort."
        "Puuuh. Mir egal, was du glaubst."

+ "Nein. Sie verdächtigen mich nicht."
    "Na, wenn du's sagst."

+ "Das ist zu irre."
    "Du wiederholst dich."

-
Die Flasche vollführt eine Drehung und schenkt dunkelroten Wein in das Glas ein. "Hör mal zu, was die ganze Geschichte angeht, das war nicht meine Schuld. Ich rede normalerweise nicht mit Sichtbaren. Und ich greife auch nicht ein. Normal schaue ich lieber zu. Ich dachte, dass Marek, dieses blöde Arschloch, dich nach Hause mitnimmt, um dich durchzuvögeln. Wie er es immer tut."

+ "Du ... wolltest uns dabei zuschauen?"
    "Klar. Wenn man schon unsichtbar bist, muss man wenigstens die Vorzüge genießen, oder?"
    
    ++ "Was?!"
    
        "Du musst es nicht gut finden. Jedenfalls ist das der Grund, warum du noch lebst."

    ++ "Du bist krank."
    
        "Vielleicht bin ich das, ja. Und wenn ich es nicht wäre, wärst du nicht mehr am Leben. Was für eine Ironie, oder?"

    ++ DESWEGEN hast du dich unsichtbar gemacht?
        {unswiemachstdudas:
            "Wie oft denn noch? Ich <i>mache</i> gar nichts, ich <i>bin</i> unsichtbar."
        -else:
            "<i>Gemacht?</i> Ich wünschte. Ich mache gar nichts, ich <i>bin</i> einfach unsichtbar."
        }

+ "Ich wollte NICHT mit ihm schlafen!"
    "Ja, sagen sie alle. Mir eigentlich auch egal."

+ "Ich wollte NICHT mit ihm schlafen, du Stück Scheiße!"
    "Okay, okay, meinetwegen. Reg dich ab. Du fluchst ja schlimmer als ich."

+ "Vollkommen und total irre ist das."
    "Ja, ich weiß. Ich find's auch ziemlich irre, dass ich dir das Leben retten musste. Nicht, dass ich es <i>bereue</i>, oder so."
    
    
-

Das Weinglas neigt sich. Wein fließt heraus und verschwindet, ohne auf den Boden zu fallen. "Aaah", macht die Stimme, "Echt guter Tropfen. Ich bin übrigens Kross. Mit K. Und du bist Hannah, ich weiß. Du hast mir immer noch nicht gesagt, warum du wiedergekommen bist. Wolltest du dich nicht bei mir bedanken, dass ich dich gerettet habe? Also, wenn du Lust hast, mir aus Dankbarkeit deine Titten zu zeigen, oder so, sage ich nicht nein."

+ "Du bist ekelhaft."
    "Puuuh. Ja, vielleicht bin ich das.

+ "Fick dich!"
    "Echt ein Temperamentchen hast du. 

+ \(sarkastisch:\) "Ja, ganz bestimmt."
    Er lacht dreckig. "Schade.

-

<> Wenn du nicht wegen mir gekommen bist, dann entweder, um hier den Laden auszurauben ... ne, so siehst du nicht aus." Die Flasche Wein fällt unvermittelt auf den Boden und zerbricht in tausend Scherben. "Fuck! Wie viel von dem Scheiß hier habe ich schon getrunken? Zu viel", antwortet er sich selber. "Wo war ich? Ah ja ... du bist wegen dem Dolch hier, oder? Der ist aber leider schon weg. Habe ihn einem alten Freund zurückgebracht." 

+ "Wem?"
    "Wieso willst du das wissen?"
    
    ++ "Weil ich den Dolch brauche!"
        -> uns_brauchedolch
        
    ++ "Weil ich in Lebensgefahr schwebe."
        -> uns_lebensgefahr
    
+ "Ich brauche den Dolch!"
    -> uns_brauchedolch

+ "Ich bin in Lebensgefahr!"
    -> uns_lebensgefahr


=== uns_lebensgefahr
"Schon wieder? Sorry, aber diesmal bin ich raus. Das war ein einmaliges Ding."
    
+ "Ich brauche den Dolch."
    "Hä? Um dich zu verteidigen? Kannst du dafür nicht <i>irgendein</i> Messer nehmen?"

+ "Ich brauche deine Hilfe nicht. Ich will nur den Dolch."
    "Hä? Um dich zu verteidigen? Kannst du dafür nicht <i>irgendein</i> Messer nehmen?"

-

+ "Es gibt einen Typen, der den Dolch von mir will. Er hat gedroht, mich umzubringen."
    -> unsdrohdolch

+ "Ich brauche den Dolch und Ende."
    -> uns_dolchende

==== uns_brauchedolch
"Ach, tatsächlich? Denkst wohl, es ist ne gute Idee, ihn zu verhökern. Dachte ich auch. Deswegen habe ich ihn an Marek verkauft. War wohl doch keine so gute Idee, was?"

+ "Ich brauche den Dolch, weil ich bedroht werde."

    "Es gibt einen Typen, der den Dolch von mir will", fügst du hinzu, "Er hat gedroht, mich umzubringen."
    -> unsdrohdolch
            
+ "Es geht dich gar nichts an, wofür ich den Dolch brauche."
    -> uns_dolchende



=== uns_dolchende

"Jesus. Du erinnerst mich immer mehr an meine Ex mit deinem Temperament. Na, wie auch immer." <>

-> uns_zig_gib

=== unsdrohdolch

"Oh fuck", murmelt er, "Okay, meinetwegen. Aber das hier ist jetzt wirklich das letzte Mal, dass ich mich einmische. Und auch nur, weil ich nicht zulassen kann, dass dieser Typ dir was antut, so kurz nachdem ich dich gerettet habe. Das wäre irgendwie als würde man die Toilette putzen und zwei Minuten später kommt irgendein Wichser und scheißt sie wieder zu."

+ "Und ich bin die Toilette in dieser Metapher?"
    "Was?! Nein, so meinte ich das nicht. Fuck, du bist ja wie meine Ex. Immer einem die Wörter im Mund rumdrehen."

    ++ "Du bist echt unmöglich, weißt du das?"
        "Ja, das hat sie auch immer gesagt."
    
        +++ "Ist deine Ex auch unsichtbar?"

        +++ "Oh, Wunder."

        ---                    
            
        "Hör mal, wir haben keine Zeit, uns über mein Leben zu unterhalten. Und Bock habe ich auch keinen."
        
    ++ "Was ist jetzt mit dem Dolch?"
        "Ja, der Dolch." <>

+ "Deine Motivation interessiert mich nicht. Sag mir endlich, wo der Dolch ist."
    "Okay, okay. Du bist ja fast wie meine Ex."

+ "Danke ... schätze ich."
    "Hmmm ... keine Ursache", antwortet er, den leichten Sarkasmus in deiner Stimme offenbar nicht bemerkend.

-
-> uns_zig_gib

=== uns_zig_gib
Etwas fliegt plötzlich in deine Richtung. Automatisch fängst du es auf. Es ist eine leere Zigarettenpackung.

+ "Was soll ich damit?"
    "<>

+ "Ich rauche nicht."
    "Jupp, deswegen ist sie auch leer.

-
~ zigaretten2_room = "player"

Ich schreib dir jetzt eine Adresse auf. Da kannst du dich mit allen weiteren Fragen hinwenden. Und das ist wirklich das letzte, was ich für dich tue. Hab nämlich echt keinen Bock mehr Babysitter zu spielen. So, das war's. Und meinetwegen nimm noch ne Flasche Wein mit, ist sowieso nicht meiner." Eine Flasche verlässt die Vitrine, fliegt auf dich zu und landet einen halben Meter vor deinen Füßen auf dem Boden. Du betrachtest stumm die Scherben.

"Fuck", murmelt Kross.

+ weiter
-> uns_ende_gespr


=== uns_ende_gespr

-> kassandra_start_laden

-> END

