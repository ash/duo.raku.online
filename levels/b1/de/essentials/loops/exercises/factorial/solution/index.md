---
title: 'Solution: Fakultät'
---

{% include menu.html %}

Die Fakultät von `N` ist das Produkt aller ganzen Zahlen von 1 bis einschließlich `N`. Zum Beispiel ist die Fakultät von 4 gleich 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Finde das Programm in der Datei [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Ausgabe

Führe das Programm ein paar Mal aus und probiere verschiedene Werte für `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Kommentare

Dieses Programm verwendet den Operator `*=`, eine Kurzform für Multiplikation mit Zuweisung: `$x *= $y` ist dasselbe wie `$x = $x * $y`.

Du kannst auch eine ‚vollständige‘ Schleife anstelle der Postfix-Form verwenden:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Mehr zu diesem Thema

Wir werden noch mehrmals zu dieser Aufgabe zurückkommen. In diesem Teil des Kurses werden wir sie auch rekursiv lösen.

Im zweiten Teil des Kurses lernen wir die sogenannten Reduktionsoperatoren kennen, mit denen die Lösung sehr einfach wird. Wir sehen auch, wie du einen eigenen Operator `!` definierst, sodass du `$n!` schreiben kannst, um eine Fakultät zu berechnen. Schließlich sehen wir eine weitere interessante Lösung, wenn wir über die `where`-Klausel sprechen.

{% include nav.html %}
