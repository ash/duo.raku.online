---
title: Verwendung von `until`
---

{% include menu.html %}

Eine `until`-Schleife ist das Gegenteil einer `while`-Schleife. Sie führt den Codeblock aus, bis die Bedingung `True` ist. Also läuft sie, solange die Bedingung `False` ist.

Hier ist noch einmal das [Programm von der letzten Seite](../while). Jetzt hat es `until` und eine neue Bedingung:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Geben Sie eine Zahl ein, die nicht größer als 10 ist: ';
    say "Sie haben $x eingegeben.";
}
say "$x ist größer als 10.";
```

Führen Sie das Programm aus und sehen Sie, was es ausgibt:

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

## `until` vs. `while`

Diese zwei Programme machen dasselbe. Das eine hat `while`, das andere hat `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Sehen Sie sich die zwei Bedingungen an. Die eine ist das Gegenteil der anderen. `while` und `until` sind ein Paar, wie `if` und `unless`.

{% include nav.html %}
