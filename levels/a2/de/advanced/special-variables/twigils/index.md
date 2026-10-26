---
title: Twigils
---

{% include menu.html %}

Ein _Twigil_ ist ein Zeichen. Es steht zwischen dem Sigil und dem Namen einer Variable. Es ändert nicht den Namen. Es ändert, wie die Variable funktioniert. Es ändert auch, wie Raku sie findet. Das sind die üblichen Twigils:

* `*` — eine **dynamische** Variable, zum Beispiel `$*OUT`; Raku findet sie über den Aufrufstapel
* `?` — ein **Kompilierzeit**-Wert; der Compiler setzt ihn, zum Beispiel `$?FILE` und `$?LINE`
* `!` — ein **privates** Attribut eines Objekts, zum Beispiel `$!balance`
* `.` — ein Attribut, das du über seine Accessor-Methode benutzt, zum Beispiel `$.name`

Du kennst schon einige davon, aber ohne den Namen "Twigil". `$*OUT` und `$*IN` sind dynamisch. Und `$!` und `$.` hast du im [Teil über Objekte](/de/oop) gesehen.

Der Compiler gibt den `?`-Variablen ihre Werte. Das macht er, wenn er dein Programm kompiliert:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Jedes Twigil zeigt eine andere Art von Variable. Du siehst das sofort. Wenn du `$*foo` liest, weißt du, dass sie dynamisch ist. Und `$?foo` ist eine Kompilierzeit-Konstante. Das nächste Thema schaut sich [dynamische Variablen](/de/advanced/special-variables/dynamic-variables) genau an. Sie funktionieren ganz anders als die lexikalischen Variablen, die du kennst.

{% include nav.html %}
