---
title: Twigils
---

{% include menu.html %}

Ein _Twigil_ ist ein Zeichen zwischen dem Sigil und dem Namen einer Variable. Es ändert nicht den Namen. Stattdessen ändert es, wie sich die Variable verhält und wie Raku sie findet. Das sind die üblichen:

* `*` — eine **dynamische** Variable, wie `$*OUT`, die Raku über den Aufrufstapel sucht
* `?` — ein **Kompilierzeit**-Wert, den der Compiler liefert, wie `$?FILE` oder `$?LINE`
* `!` — ein **privates** Attribut eines Objekts, wie `$!balance`
* `.` — ein Attribut, das du über seine Accessor-Methode erreichst, wie `$.name`

Du hast schon mehrere davon gesehen, aber wir haben sie nicht Twigils genannt. Das sind die dynamischen `$*OUT` und `$*IN` sowie `$!`/`$.` aus dem [Teil über Objekte](/de/oop).

Der Compiler füllt die `?`-Variablen, während er dein Programm kompiliert:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Jedes Twigil zeigt sofort eine andere Art von Variable. Wenn du `$*foo` liest, weißt du gleich, dass sie dynamisch ist. Und `$?foo` ist eine Kompilierzeit-Konstante. Das nächste Thema behandelt [dynamische Variablen](/de/advanced/special-variables/dynamic-variables) im Detail. Sie verhalten sich ganz anders als die lexikalischen Variablen, die du bisher verwendet hast.

{% include nav.html %}
