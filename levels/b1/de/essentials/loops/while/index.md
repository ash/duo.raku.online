---
title: Verwendung von `while`
---

{% include menu.html %}

Die `while`-Schleife hat eine boolesche Bedingung (`True` oder `False`) und einen Codeblock. Raku wiederholt den Block, _während_ die Bedingung `True` ist.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Geben Sie eine Zahl ein, die nicht größer als 10 ist: ';
    say "Sie haben $x eingegeben.";
}
say "$x ist größer als 10.";
```

Das Programm bittet Sie, eine Zahl einzugeben. Wenn die Zahl nicht größer als 10 ist, läuft der Schleifenkörper noch einmal. Wenn eine Zahl die Bedingung `$x <= 10` nicht erfüllt, endet die Schleife. Dann macht das Programm mit der nächsten Zeile weiter.

```console
$ raku t.raku
Geben Sie eine Zahl ein, die nicht größer als 10 ist: 10
Sie haben 10 eingegeben.
Geben Sie eine Zahl ein, die nicht größer als 10 ist: 4
Sie haben 4 eingegeben.
Geben Sie eine Zahl ein, die nicht größer als 10 ist: 1
Sie haben 1 eingegeben.
Geben Sie eine Zahl ein, die nicht größer als 10 ist: 20
Sie haben 20 eingegeben.
20 ist größer als 10.
```

{% include nav.html %}
