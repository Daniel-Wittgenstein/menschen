
/*

global prefix here is k_

try to use it.

*/


=== kassandra_start_laden

Über dem goldenen Dach des Nationaltheaters brütet eine schwere Mittagssonne.

Tag. Zum Glück. Du weißt nicht, ob du jemals wieder nachts das Haus verlassen kannst, nach allem, was passiert ist.

Die Sonne scheint hell und trotzdem siehst du dich ständig um, ob dir jemand folgt. Dabei ... wenn Kross dir folgen würde, würdest du ihn gar nicht sehen, richtig? Oder jemand anderes ... gibt es andere Unsichtbare da draußen? Und wenn ja, haben sie dich schon mal verfolgt? Beobachtet, während du dachtest, du bist allein?

Fuck! Wie sollst du jemals wieder ein normales Leben führen, wenn du weißt, dass dich jederzeit jemand ...?

* Versuche, dich zu beruhigen.
    -> k_atmen

* Gehe schneller
    Du beschleunigst den Schritt.
    -> k_gasse

* Bleibe stehen und lausche

Du bleibst stehen und lauschst. Der Lärm der Autos, der Menschen. Wenn sich jemand an dich anschleicht, würdest du es nie im Leben merken. Dein Herz klopft schneller.

    ** Versuche, tief ein und auszuatmen.
        -> k_atmen

    ** Gehe weiter und versuche, nicht mehr an unsichtbare Verfolger zu denken

    Du versuchst, deinen Kopf frei zu machen und gehst weiter.
    -> k_gasse


=== k_atmen
    Du atmest tief ein und aus. Ein wenig scheint es zu helfen. Dann gehst du mit bewusst langsamen Schritten weiter.
    -> k_gasse


=== k_gasse

Hinter dem Nationaltheater biegst du rechts in eine Seitenstraße. Dann wieder links in eine Querstraße, dann wieder rechts in eine enge Gasse, die mit Kopfstein gepflastert ist.

Hmmm ... laut deiner Karten-App müsste es hier in der Nähe sein.

* Schau nochmal auf dem Handy nach
    Du öffnest die Karten-App und tippst den Straßennamen ein.
    
    "Null Ergebnisse. Kein Ort mit diesem Namen gefunden."
    
    Merkwürdig. Zu Hause ging es noch. Was sollst du jetzt tun?

    ** Google den Namen
    
        Du tippst den Straßennamen ein: <i>Hov ...</i>
        
        Während du den Namen tippst, fällt es dir wie Schuppen von den Augen. Dieser verdammte %&;~\#!
        
        <i>Hovnová?</i> Zu Deutsch mehr oder weniger "Scheißestraße". Kross hat dir eine falsche Adresse gegeben und lacht sich jetzt wahrscheinlich schlapp über dich.
     
        *** Schmeiße vor Wut das Handy an die nächste Hauswand    
            -> k_handy_crash
        
        *** Gehe nach Hause
            -> k_hause
     
        *** Frage: "Bist du hier?"
            Keine Antwort. Du kommst dir ziemlich dämlich vor.
            
            **** Gehe nach Hause
                -> k_hause
            
            **** Schmeiße vor Wut das Handy an die nächste Hauswand    
            -> k_handy_crash
     
    ** Verlasse dich auf deinen sechten Sinn
        -> k_sechster_sinn

* Verlasse dich auf deinen sechsten Sinn
    -- (k_sechster_sinn)
    Bis gestern hast du nicht an übernatürliche Dinge geglaubt und du bist dir immer noch nicht sicher, ob du es jetzt tust, aber wer weiß, vielleicht gibt es ja wirklich so etwas wie einen sechsten Sinn.
    
    Du beschließt, auf gut Glück herumzuschlendern. Vielleicht findest du die Adresse ja so.
    
    Du schlenderst ein wenig die Gasse entlang und stehst plötzlich vor einem Buchladen. Neben dem Eingang hängt ein Messingschild mit der Nummer 17. Das ist die Hausnummer, die du gesucht hast!

        -> k_in_laden


=== k_handy_crash
    In einem plötzlichen Anfall von Wut schmeißt du das Handy gegen die nächste Hauswand. Als du es beschämt wieder aufhebst, ist das Display zerbrochen. Was nun?

    * Gehe nach Hause
        -> k_hause
    
    * Gehe bis ans Ende der Gasse
        Du gehst mit wenig Hoffnung die Gasse hinunter und stehst plötzlich vor einem Buchladen.
        -> k_laden_einf_hovn
    

=== k_hause
    Zerknirscht machst du dich auf den Weg nach Hause. Nach nicht einmal hundert Metern stehst du plötzlich vor einem Buchladen.
    -> k_laden_einf_hovn


=== k_laden_einf_hovn
       Neben dem Eingang hängt ein Messingschild mit der Nummer 17. Daneben ein rotes Schild mit dem Straßennamen "Hovnová". Verdutzt starrst du das Schild an und fragst dich, welcher historischen Kuriosität die Gasse ihren Namen verdanken mag. Wobei ... eigentlich willst du es gar nicht so genau wissen.
        
        Es scheint jedenfalls, als wärst du am Ziel angekommen.
        -> k_in_laden
        

=== k_in_laden
* Trete in den Laden ein

~ temp k_entry = true

-

Du betrittst den Laden. Sie hat rote Haare. Sie sieht dich ernst, stumm und fragend an.


* "Dobrý den!"
    Sie mustert dich den Bruchteil einer Sekunde lang enigmatisch und fängt dann sofort an, Englisch zu sprechen: "Suchst du Reiseführer?"

* "Hello there!"
    "Hallo", antwortet sie auf Englisch, "Suchst du Reiseführer?"

* "Guten Tag!"
    Sie mustert dich skeptisch. "Suchst du Reiseführer?", antwortet sie nach einer kurzen Pause auf Englisch.

* "Привет!"
    "I'm sorry, we don't speak Russian", antwortet sie routiniert, "May I interest you in some city guides in Russian language?" Sie zieht einen Stapel bunter Bücher mit kyrillischen Buchstaben aus dem Regal hinter ihr und klatscht sie lieblos auf den Tresen. "Prague City Guide, Synagogues of Prague, Visiting Prague for Experts ..."
        ~ k_entry = false

-

* {k_entry} "Nein, keine Reiseführer. Ich suche Von."
    -> k_suche_von
    
* {not k_entry} "Ich suche Von."
    -> k_suche_von

* "Bist du die Besitzerin?"

    "Nein", antwortet sie und sieht dich an, als führtest du etwas Böses im Schilde.

    ** "Ich suche Von."
        -> k_suche_von

    ** "Ich suche einen gewissen Von."
        -> k_suche_von


=== k_suche_von

"Nie gehört", sagt sie.

* "Wirklich nicht?"
    "Ja, wirklich nicht", antwortet sie. Ihr Blick ist kalt und abweisend.

* "Merkwürdig."
    Sie zuckt mit den Schultern. "Tut mir leid", sagt sie kalt, "Aber da müssen Sie an der falschen Adresse sein."

* "Vielleicht hat man mir eine falsche Adresse gegeben."
    "Ja, vielleicht", antwortet sie kalt.

-

* Frage sie, ob sie wirklich niemanden kennt, der so heißt.

    Sie mustert dich mit Abscheu. "Nein", sagt sie, "Und jetzt raus aus meinem Laden!"

    In diesem Moment erklingt die Stimme eines Mannes: "Nun sei doch nicht so unfreundlich zu unseren Gästen."

* Frage sie, ob sie schon einmal etwas von unsichtbaren Menschen gehört hat.

    Du kommst dir ein bisschen dämlich vor und bist dir nicht sicher, wie du die Frage formulieren sollst.
    
    "Ich suche ein Buch über ... ich meine ... über Menschen, die unsichtbar sind. Haben Sie von so etwas schon einmal gehört?" 

    Sie starrt dich entsetzt an. "Raus!", zischt sie, "Raus aus meinem Laden!"

    In diesem Moment erklingt die Stimme eines Mannes: "Nun sei doch nicht so unfreundlich zu unseren Gästen."

* Geh nach Hause

    Na, gut. Dann hilft wohl nichts, als wieder nach Hause zu gehen. Du bist gerade dabei, den Laden zu verlassen, als du eine Stimme hörst.

    "Bitte unseren Gast doch, noch kurz zu bleiben", hörst du die Stimme eines Mannes.
    
-
Ein kleiner, alter Mann kommt aus einer Seitentür geschlurft und stellt sich neben die rothaarige Frau hinter den Tresen: "Sie suchen mich?" Sein Akzent ist britisch.

* "Sind Sie Von?"

* "Ich suche Von."

-

Er lächelt: "Ganz recht, das bin ich. Verzeihen Sie meiner Kollegin. Sie hat den Hang, etwas misstrauisch zu sein."

Die rothaarige Frau schnaubt und vedreht die Augen.

"Dieser Name", fährt der alte Mann fort, "So hat mich lange niemand mehr genannt. Verzeihen Sie meine Neugierde, aber mich würde doch interessieren, wer Ihnen den Namen verraten hat. Wobei ...", er legt die Stirn in Falten, "... wenn ich eins und eins zusammenzähle, rein bildlich gesprochen, mathematische Angelegenheiten haben auf mich nie einen besonderen Reiz ausgeübt, würde ich vermuten, dass Sie einer Person über den Weg gelaufen sind, die, wie soll ich sagen, unter einem gewissen visuellen Handicap litt."

* "Wie meinen?"

* "Ääääääh ..."

-

"Er meint, dass der Typ unsichtbar war", sagt die rothaarige Frau, "Fucking unsichtbar."

"Ja, das meine ich", nickt der alte Mann, "Verzeihen Sie die vulgäre Ausdrucksweise meiner Kollegin, sie ..."

"Verdammt, Von!", schneidet sie ihm das Wort ab, "Weißt du, was das bedeutet? Das ist <i>nicht cool</i>! Kannst du einmal <i>nicht</i> alles ins Lächerliche ziehen?"

Der kleine, alte Mann hebt die Schultern. "Ich mache mich gar nicht lustig", sagt er etwas pikiert.

* "Das heißt ... Sie glauben an unsichtbare Menschen?"

    Der alte Mann schmunzelt. "Natürlich tun wir das. Diese Dame hier neben mir ist sogar un..."

* "Das heißt ... Sie haben schon einmal unsichtbare Menschen getroffen?"
    
    Der alte Mann schmunzelt. "Nicht nue getroffen. Diese Dame hier neben mir ist sogar un..."

-

Die rothaarige Frau wirft ihm einen bösen Blick zu und er verstummt.

* "Sie ist un... was?"

    Die rothaarige Frau sieht dich böse an.
    
    "Lassen wir das Thema lieber", meint der alte Mann, "Ich muss aber darauf bestehen, dass Sie uns von Ihren Erlebnissen erzählen. <>

* "Sie ist un... sichtbar?"

    Der alte Mann kichert: "Nein. Nein, das ist sie nicht. Ganz im Gegenteil."
    
    Die rothaarige Frau sieht dich böse an.
    
    "Lassen wir dieses Thema", meint der alte Mann, "Ich muss allerdings darauf bestehen, dass Sie uns von Ihren Erlebnissen erzählen. <>

* "Das ist doch alles verrückt."

    "In der Tat, ja", nickt der alte Mann, "Aber ich muss darauf bestehen, dass Sie uns von Ihren Erlebnissen erzählen. Über verrückte Dinge zu reden, kann ungemein helfen, glauben Sie mir, ich spreche da aus Erfahrung. <>


-

Wie heißen Sie überhaupt, meine Liebe?"


* Sage: "Hannah."
    "Hannah", wiederholt Von, "Die Anmutige. <>
    ~ self_name = "Hannah"

* Lüge: "Bianca."
    "Bianca", wiederholt Von, "Die Weiße. <>
    ~ self_name = "Bianca"
    

-

Und wenn wir schon bei Namen sind. Meine werte Kollegin hier, der Engel unserer Buchhandlung, hört auf den Namen Kassandra."

Kassandra schenkt dir ein Kopfnicken, gepaart mit einem kalten Lächeln.

* "Kassandra? Wie die blinde Seherin?"
    
    Kassandra starrt dich mit entsetztem Ausdruck an.
    
    Von lacht: "Ein offensichtliches Missverständnis. {self_name} scheint sich falsch zu erinnern. Die Kassandra der Sage war nicht blind. Eine Verwechslung mit dem Seher Teiresias, nehme ich an." Er legt Kassandra eine Hand auf die Schulter und flüstert ihr etwas ins Ohr. Der schockierte Ausdruck weicht aus ihrem Gesicht.
    
    "Nun gut", sagt Von, "Wenn die Damen mir nun <>

* Ignoriere den Namen.
    
    "Nun gut", sagt Von, "Wenn die Damen mir jetzt <>



-

ins Hinterzimmer folgen würden. Ich denke doch, dass es sich dort angenehmer parlieren lässt, meint ihr nicht auch?"

+ ...

-

-> END


VAR self_name = ""

=== sonstiges

() Du gehst zu Laden, triffst Kassandra und Von.
    Von sagt, wenn es dieser Dolch ist, schwebt ihr in Gefahr
    Ihr müsst den Dolch finden und vernichten, dann ist der Fluch zu Ende
    Benson ist ein anderer Unsichtbarer, der schon halb durchgeknallt ist.

    Suche nach Vons Laden (irgendein Puzzle?)

    Dialog mit Kassandra und Von


* ...

-> kassandra_start_haus

