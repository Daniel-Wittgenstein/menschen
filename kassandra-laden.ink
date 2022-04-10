
/*

global prefix here is k_

try to use it.

*/

VAR self_name = ""


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

Du bleibst stehen und lauschst. Der Lärm der Autos, der Menschen. Wenn sich jemand Unsichtbares an dich anschleicht, würdest du es nie im Leben merken. Dein Herz klopft schneller.

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

<img src="assets/kas.jpeg" class="story-image">

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

<img src="assets/von.jpeg" class="story-image">

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
    
    Der alte Mann schmunzelt. "Nicht nur getroffen. Diese Dame hier neben mir ist sogar un..."

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


* Sage: "Hannah Kavka."
    "Hannah", wiederholt Von, "Die Anmutige. <>
    ~ self_name = "Frau Kavka"

* Lüge: "Bianca Bronski."
    "Bianca", wiederholt Von, "Die Weiße. <>
    ~ self_name = "Frau Bronski"
    

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



* Folge ihm

-

Du folgst ihnen in ein kleines Hinterzimmer, das vollgestopft ist mit Büchern und alten Zeitschriften. In der Mitte des Zimmers ist gerade genug Platz für ein winziges Tischchen, zwei gelbe, zerschlissene Sessel und einen Korbstuhl.

* Setz dich in den Korbstuhl
    
    Du lässt dich in den Korbstuhl sinken. Kassandra und Von nehmen auf den Sesseln Platz.

* Setz dich in einen Sessel

    Du setzt dich in einen der Sessel. Kassandra und Von nehmen ebenfalls Platz.
    
-

Du erzählst ihnen alles von Anfang an, von deinem Besuch bei Marek, von dem Mann, der dich auf dem Altstädter Ring verfolgt hat, und von deiner Begegnung mit Kross.

Als du fertig bist, seufzt Von laut. Er nimmt seine Brille ab, reibt sie langsam am Ärmel seines Jacketts und setzt sie dann wieder auf. "Glauben Sie an Dämonen, {self_name}?"


* "WAS?!!!"
    Von lächelt: "Eine verständliche Reaktion für einen Menschen des 21. Jahrhunderts. Ich persönlich glaube auch nicht daran. <>

* "Nein."
    "Ich ebenfalls nicht", sagt Von. "<>

* "Vielleicht."
    "Nun, ich persönlich glaube nicht daran", sagt Von. "<>

    -
    Die Naturwissenschaften waren nie meine Stärke, aber ich bin davon überzeugt, dass wir in einigen Jahrzehnten eine ganz plausible Erklärung haben werden, weshalb unser Freund Kross nicht mehr sichtbar ist. Einige unserer Mitmenschen aber ... sehen das leider anders." Er räuspert sich, nimmt noch einmal die Brille ab und reibt sie an seinem Jackettärmel, obwohl sie längst sauber ist. "Ich will nicht allzu weit ausholen ..."
    
* "Okay."

* "Doch, bitte!"


-
    "Es ist keine interessante Geschichte, glauben Sie mir", fährt Von fort, "Deswegen werde ich es kurz machen. Es gab da einmal drei junge Männer. Das war in den Neunzigern, nach dem Fall der Sowjetunion, als alle glaubten, dass es mit der Welt nur noch bergauf gehen kann. Alle Idioten zumindest. Leute, die Bücher lesen, wie ich, waren da schon immer skeptischer. Aber ich verliere mich ... wo war ich?"
    
* "Drei Jungen."
    "Ja, richtig." <>

* "Die Neunziger."
    "Hmmm ... ja", sagt er, "Havel war einer der wenigen Lichtblicke. Jedenfalls ... drei junge Männer ..." <>
    
-
    Sein Blick wird glasig und er starrt auf die Tischplatte. Man kann in seinem Gesicht Ekel und Abscheu sehen. "Drei Jungen", fährt er mechanisch fort, als versuche er, das Ganze möglichst schnell loszuwerden, "Drei dumme, junge Jungen. Sie hatten in einem Buch - wahrscheinlich das einzige Buch, das sie je aufgeklappt hatten - etwas über alte sumerische Riten gelesen. Drei Viertel davon hatte nichts mit sumerischen Riten zu tun, sondern war irgendwelcher dazugedichtete Quatsch, Aleister Crowley und ähnliche Scharlatane. Sie nahmen das Ganze ernst und töteten ein Mädchen. Als Opfer an einen sumerischen Dämon. Ich möchte nicht einmal den Namen dieses angeblichen Dämons aussprechen, so lächerlich ist das Ganze. Natürlich kamen sie damit davon, weil sie das Opfer gut gewählt hatten; sie hatten sich jemanden ausgesucht, auf den sowieso niemand etwas gibt. Und damit hätte die Geschichte auch schon zu Ende sein können, eine von tausenden Geschichten sinnloser menschlicher Brutalität und Dummheit."


* "Und dann?"
    "Dann verschwanden zwei dieser Jungen."

* "IST die Geschichte zu Ende?"
    "Nein, leider nicht. Kurz nach dem Mord verschwanden zwei dieser Jungen."
    
-
    "Du meinst, sie wurden unsichtbar", sagt Kassandra.
    
    "Ja, natürlich", er nickt, "Weiß Gott, warum. Vielleicht hatte die StB sie sich geschnappt und mit ihnen experimentiert. Vielleicht die Amerikaner, die unsichtbare Spione hinter den eisernen Vorhang schleusen wollten. Wobei die Frage offen bleibt, warum sie niemand Erfahreneren aussuchten. Ich persönlich glaube ja, dass es ein Zufall war, irgendein seltenes physikalisches Phänomen, das uns genauso mysteriös und übernatürlich erscheinen muss wie dem Steinzeitmenschen Feuer oder Blitze." Er zuckt mit den Schultern. "Wie dem auch sei. An diesem Punkt hätte die Geschichte ebenfalls enden können. Zumal sie sich nicht groß herumsprach."
    
* "Aber?"
    "Aber es gab über die Jahrzehnte ein paar Idioten, die davon Wind bekamen. <>

* "Ich kann mir nicht vorstellen, dass man so etwas geheim halten kann."
    "Vielleicht nicht", sagt er, "Aber die, die davon erfuhren, glaubten ohnehin nicht daran. Zumindest die meisten. Leider gab es einige, die es doch taten. <>

-
    Und da kommt der Dolch ins Spiel. Der Dolch mit dem ...", er zögert.
    
    "... sie damals das Mädchen abgestochen haben", ergänzt Kassandra.
    
    Von nickt langsam: "Ja. Manche glauben, dass dieser Dolch, der übrigens ganz banaler Provenienz ist, ein Artefakt, kaum hundert Jahre alt, dem aber trotzdem allerlei mystische Eigenschaften angedichtet werden, also, dass sie mit diesem Dolch eine ... wie soll ich sagen ..."
    
    "Sie glauben, dass der Dolch Zauberkräfte hat und dass sie damit eine Frau opfern müssen", unterbricht ihn Kassandra, "Sie glauben, dass sie dann auch unsichtbar werden oder magische Kräfte bekommen oder so."
    
    "Ja", sagt Von zerknirscht, "Sehr prägnant auf den Punkt gebracht, Cassie, wenn auch etwas lapidar."

* "Glauben das Leute wirklich?"

    "Wir reden hier von ein paar Durchgeknallten", sagt Kassandra, "Wie Marek Nedostal."
    
* "Oh, mein Gott! Marek!"

    "Genau", sagt Kassandra.
    
-
Das ist also der Grund. Er wollte dich töten, um übernatürliche Kräfte zu erhalten? Der Gedanke erfüllt dich mit Abscheu. 

* "Gibt es noch andere, die hinter dem Dolch her sind?"

    "Mindestens einer", sagt Kassandra, "Du hast uns doch von ihm erzählt."
    
    ** "Ja, mein Verfolger am Altstädter Ring."
        
        "Ja", sagt Kassandra, "<>
    
    ** "Wen meinst du?"
    
        "Deinen Stalker", sagt Kassandra, "<>
    
    Vielleicht wollte er den Dolch für sich. Oder um ihn an jemanden zu verkaufen, der damit einen Ritualmord vorhat."

* "Dieser Kerl am Altstädter Ring, wollte er deswegen den Dolch?"

    "Mit Sicherheit", sagt Kassandra, "Entweder für sich selbst oder um ihn an jemanden zu verkaufen, der damit einen Ritualmord vorhat."


-


* "Wir müssen zur Polizei gehen."

    Kassandra und Von tauschen einen finsteren Blick.
    
    "Die Polizei hat, was das angeht, etwas eigene Ansichten", sagt Von kryptisch.
    
    ** "Sie meinen, dass sie uns nicht glauben werden?"

        "Einige von ihnen werden uns nicht glauben, ja", sagt Von, "Andere wissen genau, wovon wir sprechen."

        *** "Ist das Ihr Ernst?"

            "Ja, das ist sein Ernst", sagt Kassandra.

            Sie tauscht wieder einen Blick mit Von.            

            "Die Polizisten sind auch abergläubisch", sagt sie schließlich, "Sie wollen mit dem Dolch nichts zu tun haben."
            
        *** "Und warum tun sie dann nichts?"
            
            Kassandra und Von tauschen wieder einen Blick.
            
            "Sie sind auch abergläubisch", sagt Kassandra schließlich, "Sie wollen mit dem Dolch nichts zu tun haben."
            
        ---
            
        *** "Was?! Das kann doch nicht die Erklärung sein?"
            
            "Glaub mir, sie werden uns nicht helfen", sagt Kassandra, "deine Erfahrung mit ihnen war auch nicht rosig, oder?"
            
            **** "Ja, das stimmt."
            
            
            **** "Sie waren schrecklich zu mir."
        
            ----
            
            "Eben", sagt Kassandra, "Aber ich weiß, was ich mache."

            **** "Und zwar?"

            **** "Ach?
            
            ----
            "<>
        
        *** "Was können wir dann tun?"
            "Ganz einfach", sagt Kassandra, "<>        
        
    ** "Was können wir dann tun?"
        "Ganz einfach", sagt Kassandra, "<>
    

* "Das ist schrecklich."

    "Auf jeden Fall", sagt Kassandra, "Aber es wird nicht passieren. <>
   
   
-
  
    Ich hole mir diesen Dolch und werfe ihn in die Moldau. Ne, noch besser, ich schmelze ihn ein."
    
    * "Das wird meinem Stalker nicht gefallen."
    
        "Mit dem werden wir schon fertig, keine Sorge", sagt Kassandra.
    
        ** "Danke, das ist nett."
        
            Auf Kassandras Lippen blitzt ein Lächeln auf, das ehrlich wirkt: "Keine Ursache."
        
        ** "Da bin ich mir nicht so sicher."
    
            "Unterschätz mich nicht", antwortet Kassandra mit gerunzelter Stirn.
    
        ** "Du? Wie willst DU mit dem fertig werden?
        
            "Unterschätz mich nicht", antwortet Kassandra pikiert.

        --
        
        Von räuspert sich laut. "Dein Plan in allen Ehren, Cassie, aber wir müssen den Dolch erst finden."
    
    * "Aber wir wissen noch nicht einmal, wo der Dolch ist."

        
-


"Du hast doch gesagt, dass Kross ihn einem Bekannten gegeben hat", sagt Kassandra.

"Das schränkt die Auswahl nicht gerade ein", murmelt Von.

-

* "Warte! Er hat mir noch die Zigaretten mitgegeben."

* "Vielleicht haben die Zigaretten eine Bedeutung?"

-

Du holst die Zigarettenpackung aus der Tasche und reichst sie Kassandra.

Kassandra atmet tief ein und aus und reicht die Packung an Von weiter.

"Er ist also wieder in der Stadt", sagt Kassandra.

"Ja, vermutlich", sagt Von.

* "Wer ist wieder in der Stadt?"

* "Hä?"

-

"Benson", sagt Kassandra. Sie deutet auf die Zigarettenpackung, auf der "Benson & Hedges" steht. "Benson ist ein alter Bekannter von uns. Ich nehme an, Kross hat ihm den Dolch gegeben. Das ist Kross' Humor. Seine Art, uns etwas mitzuteilen."

* "Das ... klingt umständlich."

    "Ja", seufzt Kassandra, "Kross war schon immer so."

* "Und wo ist dieser Benson?"

-

-> k_last_par

=== k_last_par

Kassandra und Von tauschen einen tiefen Blick.

"Ich glaube, ich weiß, wo Benson ist", sagt Kassandra.

"Nimm doch {self_name} mit", sagt Von.

Kassandra schürzt skeptisch den Mund.

* "Ich will mitkommen!"

    "Na, gut", sagt Kassandra, "Aber sei gewarnt. Benson ist etwas ... eigen."

* "Ich entscheide immer noch selber, ob ich mitkomme."

    "Okay", sagt Kassandra, "Und, <i>kommst</i> du mit?
    
    ** "Ja, natürlich."
    
    ** "Nein, lieber nicht."
        "Okay", sagt Kassandra, "Dann ... alles Gute, schätze ich. Wenn ich es schaffe, diesen Dolch für immer loszuwerden, werde ich ... äääh ... einen auf dich trinken, okay?"    

        -> end_game("Du hast einen Rückzieher gemacht.", "feige", "", -> k_last_par)
        
        -> END

    

-

-> kassandra_start_haus























