---
title: Lazy und unendliche Sequenzen
---

{% include menu.html %}

Eine Sequenz muss nicht alle ihre Werte auf einmal berechnen. Sequenzen in Raku sind _lazy_. Raku macht jeden Wert erst, wenn du ihn wirklich brauchst. Also kannst du eine Sequenz ganz ohne Ende beschreiben.

Für eine unendliche Sequenz benutze `Inf` als Endpunkt. Raku macht das `=` vor dem `...`. Wir sagen: `...` bindet schwächer als `=`. Also setze die Sequenz in Klammern:

```raku
my $naturals = (1 ... Inf);
```

Sieh dir `my $naturals = 1 ... Inf` ohne Klammern an. Hier bekommt die Variable nur `1`. Danach baut Raku die Sequenz für sich allein. Niemand benutzt diese endlose Sequenz. Aber Raku versucht, sie zu berechnen. Also hängt das Programm und wird nie fertig.

Bis jetzt berechnet Raku nichts. Die Sequenz gibt dir Werte nur, wenn du nach ihnen fragst. Die Methode `head` nimmt die ersten paar Werte:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Die Sequenz ist unendlich. Aber Raku macht nur die ersten fünf Zahlen. Ohne Laziness versucht das Programm, die ganze endlose Sequenz zu bauen. So ein Programm wird nie fertig.

Eine endliche Sequenz hat ein Ende. Bei so einer Sequenz nimmt die Methode `tail` Werte vom Ende:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Mit Laziness kannst du zwei Dinge getrennt machen. Zuerst gibst du die _Beschreibung_ einer Sequenz. Später entscheidest du, wie viel davon du benutzt.

{% include nav.html %}
