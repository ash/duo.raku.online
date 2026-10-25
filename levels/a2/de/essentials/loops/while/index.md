---
title: Verwendung von `while`
---

{% include menu.html %}

Eine `while`-Schleife hat eine Bedingung und einen Codeblock. Die Bedingung ist `True` oder `False`. Raku führt den Block immer wieder aus, _während_ die Bedingung `True` ist.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Geben Sie eine Zahl ein, die nicht größer als 10 ist: ';
    say "Sie haben $x eingegeben.";
}
say "$x ist größer als 10.";
```

Das Programm fragt Sie nach einer Zahl. Wenn die Zahl höchstens 10 ist, läuft die Schleife noch einmal. Wenn die Zahl größer als 10 ist, ist die Bedingung `$x <= 10` `False`. Dann stoppt die Schleife. Das Programm geht weiter zur nächsten Zeile.

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
