

VAR tuersteher_ende = ""

=== tuersteher_gespraech


    * "Ja, natürlich."
        "Klar." Er lacht und zwinkert dir zu: "Kann ich Ihnen mit irgendwas anderem helfen?"

        ** "Das war kein Witz. Ich habe wirklich eine Einladung."
            ~ tuersteher_ende = "einladung"
            Seine Miene wird ernst: "Dürfte ich die mal sehen?"

            *** "Nein."
                "Dann kann ich Sie auch nicht rein lassen."

            *** "Ich habe sie leider zu Hause vergessen."
                "Aha." Man sieht an seiner Miene, dass er dir kein Wort glaubt. "Dann kann ich Sie leider auch nicht rein lassen."

        ** "Ich wurde überfallen."
            
            --- (tuersteher_ueberfallen)
    
            Er lässt einen skeptischen Blick an dir hinabgleiten: "Überfallen? Soll ich die Polizei rufen? Oder ... ein Taxi?"

            *** "Nein, danke."
                "Okay", sagt er, "Dann wünsche ich Ihnen noch einen schönen Abend."

            *** "Wenn Sie mich nur kurz rein lassen. Ich könnte einen Schluck Wasser vertragen." 
                Er hebt die Augenbrauen. Man sieht an seinem Gesicht klar, dass er dir kein Wort glaubt. "Ich kann Sie <i>nicht</i> rein lassen."

        ** "Mein Verlobter ist da drinnen."
            
            --- (tuersteher_verlobter)
            
            ~ tuersteher_ende = "freund"
            "Ach?" Sein Blick ist skeptisch.

            *** "Ich müsste ihn nur kurz mal sprechen."
                "Dann rufen Sie ihn doch an."

                **** "Aber er hat sein Handy nicht dabei."
                    Er lacht. Man sieht, dass er dir kein Wort glaubt: "Dann müssen Sie wohl bis morgen warten."

                **** "Aber er hat in der alten Villa doch keinen Empfang, bei den dicken Mauern."
                
                    "Doch, hat er." Der Türsteher nickt beflissen: "Der Empfang ist sogar ausgezeichnet. Der Herr Bürgermeister hat letztes Jahr eine eigene Antenne auf dem Dach montieren lassen, weil es ihn störte, dass die Gesprächsqualität so schlecht war. Wählen Sie ihn bei den Präsidentschaftswahlen im November! Er setzt sich auch für den Ausbau des tschechischen Netzes ein. Aber ... Sie sind Deutsche, nicht wahr?"

                    ***** "Ja."
                        "Habe ich an Ihrem Akzent gehört", sagt er lächelnd, "Tja, dann dürfen Sie wohl leider nicht bei uns wählen."
                        ~ tuersteher_ende = "deutsche"

                    ***** "Ääääh ... sind Sie sicher, dass die Antenne auf dem Dach auch funktioniert?"
                    
                        "Aber ja, doch, ganz ausgezeichnet funktioniert die."
                        ~ tuersteher_ende = "antenne"

                **** "Aber er geht nie ran, wenn ich ihn anrufe!"
                
                    Er lacht. Man sieht, dass er dir kein Wort glaubt: "Dann sollten Sie vielleicht mal drüber nachdenken, warum Sie mit ihm zusammen sind."
                    ~ tuersteher_ende = "freund"

            *** "Ich müsste nur kurz mit ihm Schluss machen."
            
                "Mit ihm ...<i>was</i>?", er blickt dich verdutzt an. Dann fängt er an zu lachen: "Haben Sie es damit so eilig?"
                
                ~ tuersteher_ende = "freund_schluss"

                **** "Ja. Ich habe einen hübscheren Mann getroffen."
                
                    "Haben Sie das?"

                    ***** "Ja. Dich."
                        Er schüttelt den Kopf: "Ne, sorry, das klappt nicht." Er hält einen Finger in die Höhe, an dem ein Ring steckt: "Ich bin nämlich <i>wirklich</i> verlobt."

                    ***** "Und wenn ich nicht sofort mit meinem Verlobten Schluss mache, macht der andere Schluss mit mir, verstehen Sie?"
                    
                        "Aber ja, doch", sagt er mit einem Lächeln. Man sieht, dass er dir kein Wort glaubt. "Dann machen Sie am besten per Sprachnachricht Schluss. Geht superschnell."

                **** "Unbedingt. Er ist ein unmöglicher Arsch."
                
                    Er lacht: "Ach, ist er das? Dann machen Sie doch per Sprachnachricht Schluss."

                    ***** "Sie glauben mir nicht?"
                    
                        Er schüttelt den Kopf: "Nein, tue ich nicht. Aber mir gefällt Ihre Kreativität."

                    ***** "Nein, das geht nicht."
                    
                        "Tja. Dann müssen Sie wohl bis morgen warten."

    * "Nein."
        "Okay. Kann ich Ihnen mit irgendetwas anderem helfen?"
        -> tuersteher_etwas_anderem_helfen

    * "Nein. Darf ich trotzdem rein?"
        "Leider nein. Kann ich Ihnen mit etwas anderem helfen?"
        -> tuersteher_etwas_anderem_helfen

-

-> tuerst_final


=== tuersteher_etwas_anderem_helfen

+ Danke, dass Sie fragen. Ich wurde überfallen.
    -> tuersteher_gespraech.tuersteher_ueberfallen

+ Wissen Sie, meine Verlobter ist da drinnen.
    -> tuersteher_gespraech.tuersteher_verlobter



=== tuerst_final

    Er winkt einen Bodybuilder mit Glatze und bösem Blick zu sich.
    
    { tuersteher_ende:
        - "freund_schluss":
            "Die Alte hier will auf die Feier, um mit ihrem erfundenen Freund Schluss machen", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall rein."
            
            Der Bodybuilder nickt.
            
        - "freund":
            "Die Alte hier will angeblich auf die Feier, um mit ihrem Freund zu reden", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall rein."
            
            Der Bodybuilder nickt.
            
        - "deutsche":
            "Unser deutscher Gast hier will auf die Feier", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall rein."
            
            Der Bodybuilder nickt.
            
        - "antenne":
            "Die Alte hier will sich die Antenne auf dem Dach anschauen", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall rein."
            
            Der Bodybuilder nickt.
            
        - "einladung":
            "Die Alte hier behauptet, dass sie ne Einladung hat", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall rein."
            
            Der Bodybuilder nickt.
            
        - else:
            "Die Alte hier will rein", sagt er zu seinem grimmigen Kollegen auf Tschechisch, wohl in der Annahme, dass du ihn nicht verstehst, "Lass sie auf keinen Fall durch."
            
            Der Bodybuilder nickt.

    }


+ "Das habe ich verstanden!"
    Er wirft dir einen verwunderten Blick zu. Dann zuckt er mit den Schultern: "Sie können nicht rein", nuschelt er verlegen, "Strenge Sicherheitsauflagen." Er wendet sich ab.

+ Sage nichts.

-

Na, das lief ja mal großartig. Wie sollst du jetzt in dieses dumme Haus reinkommen?

+ Suche nach einem anderen Eingang
    -> party_suche_eingang





