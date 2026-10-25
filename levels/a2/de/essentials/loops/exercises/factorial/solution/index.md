---
title: 'Solution: Fakultät'
---

{% include menu.html %}

Für die Fakultät von `N` multiplizierst du alle Zahlen von 1 bis `N`. Die Fakultät von 4 ist zum Beispiel 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Finde das Programm in der Datei [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Ausgabe

Führe das Programm ein paar Mal aus. Probiere verschiedene Werte für `$n` aus.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Kommentare

Das Programm verwendet den Operator `*=`. Er multipliziert und speichert das Ergebnis in der Variablen. Also ist `$x *= $y` dasselbe wie `$x = $x * $y`.

Du kannst auch eine ‚vollständige‘ Schleife schreiben, mit `for` vor dem Block:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Mehr dazu

Diese Aufgabe kommt im Kurs noch ein paar Mal vor. In diesem Teil lösen wir sie auch auf eine andere Art. Wir verwenden eine Funktion, die sich selbst aufruft.

Im zweiten Teil lernst du Reduktionsoperatoren kennen. Mit ihnen ist die Lösung sehr einfach. Du lernst auch, einen eigenen Operator zu machen, `!`. Dann kannst du `$n!` für eine Fakultät schreiben. Später siehst du noch eine schöne Lösung mit `where`.

{% include nav.html %}
