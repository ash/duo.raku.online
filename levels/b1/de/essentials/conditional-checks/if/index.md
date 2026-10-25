---
title: '`if`-Blöcke'
---

{% include menu.html %}

Die `if`-Bedingungsprüfung testet eine Bedingung. Wenn die Bedingung `True` ist, läuft ein Codeblock.

```raku
if 10 > 4 {
    say 'Mathematik funktioniert!';
}
```

Beachten Sie, dass Sie die Bedingung nicht in Klammern setzen müssen. Aber Sie können es, wenn Sie möchten.

Natürlich dürfen Sie in den Tests gerne Variablen benutzen:

```raku
my $flag = False;
if $flag {
    # . . . etwas tun
}
```

Wenn mehrere Prüfungen dieselbe Variable benutzen, können Sie die Vergleiche zu einer Kette verbinden:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Die richtige Antwort $x wurde gegeben.";
}
```

Wenn die Bedingung nicht erfüllt ist, läuft ihr Codeblock nicht. Das Programm läuft dann ganz normal weiter.

```raku
say 'Begin';
if False {
    say 'Dies wird nie gedruckt.';
}
say 'Ende';
```

Dieses Programm druckt nur `Begin` und `Ende`.

{% include nav.html %}
