---
title: 'Solution: Fakultät'
---

{% include menu.html %}

Für die Fakultät von `N` multipliziert man alle ganzen Zahlen von 1 bis `N` miteinander. Die Fakultät von 4 ist zum Beispiel 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Finde das Programm in der Datei [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Ausgabe

Führe das Programm ein paar Mal mit verschiedenen Werten für `$n` aus.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Kommentare

Dieses Programm verwendet den Operator `*=`. Er ist eine kurze Schreibweise für Multiplizieren und Zuweisen: `$x *= $y` bedeutet dasselbe wie `$x = $x * $y`.

Du kannst auch eine ‚vollständige‘ Schleife statt der Postfix-Form verwenden:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Mehr dazu

Wir kommen im Kurs noch mehrmals zu dieser Aufgabe zurück. In diesem Teil des Kurses lösen wir sie auch mit Rekursion.

Im zweiten Teil des Kurses lernst du Reduktionsoperatoren kennen. Mit ihnen ist die Lösung sehr einfach. Du lernst auch, einen eigenen Operator `!` zu erstellen. Dann kannst du `$n!` schreiben und bekommst so eine Fakultät. Später sehen wir noch eine interessante Lösung mit der `where`-Klausel.

{% include nav.html %}
