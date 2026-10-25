---
title: 'Solution: Bruchteile'
---

{% include menu.html %}

Wie bekommen Sie den Bruchteil einer Zahl? Ziehen Sie den ganzzahligen Teil ab. Für den ganzzahligen Teil wandeln Sie die Zahl in einen `Int` um.

## Code

Hier ist eine Lösung:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Finden Sie das Programm in der Datei [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Ausgabe

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Kommentar

Versuchen Sie das Programm auch mit negativen Zahlen. Zum Beispiel:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Auch hier ist das Ergebnis richtig:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
