---
title: Lexikalischer Gültigkeitsbereich
---

{% include menu.html %}

Ein Codeblock erstellt einen sogenannten lexikalischen Geltungsbereich. Wenn Sie eine Variable in einem Block deklarieren, ist sie innerhalb des Blocks sichtbar. Aber sie ist nicht mehr sichtbar, wenn das Programm den Block verlassen hat. Hier ist ein Beispiel:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Die Variable `$x` wird im Codeblock erstellt. Das erste `say $x` gibt ihren Wert aus, weil die Variable im Block sichtbar ist. Das zweite `say $x` schlägt fehl, weil es den Namen `$x` außerhalb des Blocks nicht gibt. Nach dem Ende des Blocks ist der Name nicht mehr bekannt. Das Programm kompiliert nicht, und Sie bekommen einen Fehler:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
