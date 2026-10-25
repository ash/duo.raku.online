---
title: Verwendung von `repeat`
---

{% include menu.html %}

Die `while`- und `until`-Blöcke laufen möglicherweise nie, wenn die Bedingung am Anfang `False` ist. Der `repeat`-Block dagegen läuft immer mindestens einmal. Die Bedingung wird nach dem Codeblock geprüft. Für die Prüfung verwenden Sie die gleichen Wörter `while` oder `until`.

Sehen Sie sich dieses Programm an.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Die Variable `$x` beginnt mit dem Wert `100`, und die `while`-Bedingung prüft, ob `$x` kleiner oder gleich `10` ist. Mit diesem Wert ist die Bedingung bereits `False`, aber der Codeblock läuft trotzdem zuerst einmal.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ändern wir das Programm so, dass es stattdessen `until` verwendet.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Führen Sie es aus, um zu prüfen, ob es wie erwartet funktioniert:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
