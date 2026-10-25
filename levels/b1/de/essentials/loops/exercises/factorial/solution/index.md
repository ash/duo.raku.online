---
title: 'Solution: Fakultät'
---

{% include menu.html %}

Die Fakultät von `N` ist das Produkt aller ganzen Zahlen von 1 bis `N`. Zum Beispiel ist die Fakultät von 4 gleich 1 * 2 * 3 * 4 = 24.

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

Dieses Programm verwendet den Operator `*=`, der in einem Schritt multipliziert und zuweist: `$x *= $y` bedeutet dasselbe wie `$x = $x * $y`.

Statt der Postfix-Form kannst du auch eine ‚vollständige‘ Schleife verwenden:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Mehr zu diesem Thema

Wir kommen noch mehrmals zu dieser Aufgabe zurück. Später in diesem Teil des Kurses lösen wir sie auch mit Rekursion.

Im zweiten Teil des Kurses lernen wir Reduktionsoperatoren kennen. Sie machen die Lösung sehr einfach. Wir erstellen auch einen eigenen Operator `!`, sodass `$n!` eine Fakultät ergibt. Schließlich gibt es noch eine interessante Lösung, wenn wir über die `where`-Klausel sprechen.

{% include nav.html %}
