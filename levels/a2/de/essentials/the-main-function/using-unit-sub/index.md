---
title: Verwendung von `unit sub`
---

{% include menu.html %}

Mit `unit sub` wird der Rest der Datei zum Körper der Funktion! Das ist mit `MAIN` sehr nützlich. Ohne `unit sub` stehen geschweifte Klammern um fast die ganze Datei. Mit `unit sub` brauchen Sie diese Klammern nicht. Außerdem brauchen die Zeilen am Anfang keine extra Leerzeichen.

Hier ist ein Beispielprogramm mit `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "Die Summe von $a und $b ist $sum.";
```

In dieser Datei ist `MAIN` die einzige Funktion. Ist das auch in Ihrem Programm so? Dann probieren Sie `unit sub MAIN` aus, wie im Beispiel oben.

{% include nav.html %}
