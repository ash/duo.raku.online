---
title: Verwendung von `repeat`
---

{% include menu.html %}

Ein `while`- oder `until`-Block läuft vielleicht nie, wenn die Bedingung von Anfang an `False` ist. Ein `repeat`-Block dagegen läuft immer mindestens einmal. Seine Bedingung wird nach dem Block geprüft. Für die Prüfung verwenden Sie die gleichen Wörter, `while` oder `until`.

Schauen Sie sich dieses Programm an.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Die Variable `$x` beginnt bei `100`. Die `while`-Bedingung prüft, ob `$x` kleiner oder gleich `10` ist. Mit diesem Wert ist die Bedingung schon `False`, aber der Block läuft trotzdem zuerst einmal.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Jetzt ändern wir das Programm so, dass es `until` verwendet.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Führen Sie es aus, um zu prüfen, ob es so funktioniert, wie Sie es erwarten:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
