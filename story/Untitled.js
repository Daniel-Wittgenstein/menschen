var storyContent = ﻿{"inkVersion":20,"root":[["^Du stehst am Hauptbahnhof.","\n",["ev",{"^->":"0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":"0.c-0","flg":18},{"s":["^Steige in den Zug",{"->":"$r","var":true},null]}],["ev",{"^->":"0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":"0.c-1","flg":18},{"s":["^Geh nach Hause",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":"0.2.s"},[{"#n":"$r2"}],"\n",{"->":"0.g-0"},{"#f":5}],"c-1":["ev",{"^->":"0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":"0.3.s"},[{"#n":"$r2"}],"\n",{"->":"0.g-0"},{"#f":5}],"g-0":["^Du steigst in den Zug.","\n","^Warte! Du hast etwas vergessen!","\n","^Deine Tasche!","\n","^So ein Mist auch!","\n","end",["done",{"#f":5,"#n":"g-1"}],{"#f":5}]}],"done",{"#f":1}],"listDefs":{}};