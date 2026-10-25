---
title: Verwendung von `repeat`
---

{% include menu.html %}

Eine `while`- oder `until`-Schleife läuft vielleicht gar nicht. Das passiert, wenn die Bedingung am Anfang `False` ist. Ein `repeat`-Block ist anders. Er läuft immer mindestens einmal. Raku prüft die Bedingung nach dem Block. Für die Prüfung verwenden Sie die gleichen Wörter: `while` oder `until`.

Sehen Sie sich dieses Programm an.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Am Anfang ist die Variable `$x` gleich `100`. Die `while`-Bedingung prüft, ob `$x` höchstens `10` ist. Also ist die Bedingung schon `False`. Aber der Codeblock läuft trotzdem einmal.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Jetzt schreiben wir das Programm mit `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Führen Sie es aus und prüfen Sie das Ergebnis:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
