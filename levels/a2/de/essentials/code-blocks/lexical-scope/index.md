---
title: Lexikalischer Gültigkeitsbereich
---

{% include menu.html %}

Ein Codeblock erstellt einen lexikalischen Geltungsbereich. Was bedeutet das? Sie erstellen eine Variable in einem Block. In diesem Block ist sie sichtbar. Dann verlässt das Programm den Block. Danach ist die Variable nicht mehr sichtbar. Sehen Sie sich ein Beispiel an:

```raku
{
    my $x = 42;
    say $x;
}

say $x;
```

Wir erstellen die Variable `$x` im Codeblock. Das erste `say $x` steht im Block. Dort ist die Variable sichtbar. Also gibt `say` ihren Wert aus. Das zweite `say $x` funktioniert nicht. Außerhalb des Blocks gibt es den Namen `$x` nicht. Nach dem Ende des Blocks kennt das Programm ihn nicht. Das Programm kompiliert nicht. Sie bekommen einen Fehler:

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Variable '$x' is not declared
    at /Users/ash/raku-course/t.raku:6
    ------> say ⏏$x;

{% include nav.html %}
