---
title: Verwendung von `until`
---

{% include menu.html %}

Die `until`-Schleife ist das Gegenteil von `while`. Sie führt den Codeblock aus, bis die Bedingung `True` wird. Mit anderen Worten: Sie läuft, solange die Bedingung `False` ist.

Hier ist noch einmal das [Programm von der vorherigen Seite](../while). Jetzt verwendet es `until` und eine neue Bedingung:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Geben Sie eine Zahl ein, die nicht größer als 10 ist: ';
    say "Sie haben $x eingegeben.";
}
say "$x ist größer als 10.";
```

Führen Sie das Programm aus und sehen Sie sich die Ausgabe an:

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

Vergleichen Sie diese zwei Zeilen. Beide tun dasselbe mit `while` und `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Die zwei Bedingungen sind genau das Gegenteil voneinander. Also arbeiten `while` und `until` als Paar, genau wie `if` und `unless`.

{% include nav.html %}
