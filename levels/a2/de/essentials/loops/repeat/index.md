---
title: Verwendung von `repeat`
---

{% include menu.html %}

Manchmal läuft ein `while`- oder `until`-Block gar nicht. Das passiert, wenn die Bedingung am Anfang `False` ist. Ein `repeat`-Block ist anders: Er läuft immer mindestens einmal. Raku prüft die Bedingung nach dem Block. Für die Prüfung verwenden Sie die gleichen Wörter, `while` oder `until`.

Sehen Sie sich dieses Programm an.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Am Anfang ist die Variable `$x` gleich `100`. Die `while`-Bedingung prüft, ob `$x` kleiner oder gleich `10` ist. Mit diesem Wert ist die Bedingung schon `False`. Aber der Codeblock läuft trotzdem zuerst.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Jetzt ändern wir das Programm und verwenden `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Führen Sie es aus und prüfen Sie, ob es funktioniert:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
