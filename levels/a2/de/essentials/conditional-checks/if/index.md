---
title: '`if`-Blöcke'
---

{% include menu.html %}

`if` ist eine Bedingungsprüfung. Sie prüft eine Bedingung. Wenn die Bedingung `True` ist, führt `if` einen Codeblock aus.

```raku
if 10 > 4 {
    say 'Mathematik funktioniert!';
}
```

Sie müssen die Bedingung nicht in runde Klammern setzen. Aber Sie können es, wenn Sie wollen.

Natürlich können Sie in den Tests Variablen benutzen:

```raku
my $flag = False;
if $flag {
    # . . . etwas tun
}
```

Manchmal benutzen zwei oder mehr Prüfungen dieselbe Variable. Dann können Sie die Vergleiche als Kette schreiben:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Die richtige Antwort $x wurde gegeben.";
}
```

Manchmal ist die Bedingung `False`. Dann führt Raku den Codeblock nicht aus. Das Programm läuft einfach weiter.

```raku
say 'Begin';
if False {
    say 'Dies wird nie gedruckt.';
}
say 'Ende';
```

Dieses Programm gibt nur `Begin` und `Ende` aus.

{% include nav.html %}
