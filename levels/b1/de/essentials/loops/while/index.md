---
title: Verwendung von `while`
---

{% include menu.html %}

Die `while`-Konstruktion hat eine boolesche Bedingung und einen Codeblock. Raku führt den Codeblock immer wieder aus, _während_ die Bedingung `True` ist.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Geben Sie eine Zahl ein, die nicht größer als 10 ist: ';
    say "Sie haben $x eingegeben.";
}
say "$x ist größer als 10.";
```

Das Programm fordert Sie auf, eine Zahl einzugeben. Wenn die Zahl nicht größer als 10 ist, läuft der Schleifenkörper noch einmal. Sobald die Zahl die Bedingung `$x <= 10` verletzt, endet die Schleife, und das Programm macht mit der nächsten Zeile weiter.

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
