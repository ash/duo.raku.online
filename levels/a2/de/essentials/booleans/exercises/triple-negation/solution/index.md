---
title: 'Solution: Dreifache Verneinung'
---

{% include menu.html %}

Das Programm aus der Aufgabe kompiliert nicht. Es braucht eine kleine Korrektur. Hier ist eine korrekte Version, die funktioniert. Sie hat ein Leerzeichen zwischen `!` und `!!`:

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 Du kannst den vollständigen Code in der Datei [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku) finden.

## Ausgabe

Das Programm gibt den umgekehrten Booleschen Wert aus. Das hast du wahrscheinlich erwartet:

```console
$ raku triple-negation.raku
True
```

## Kommentare

Das Programm mit drei Ausrufezeichen kompiliert nicht. Das haben wir nicht erwartet:

```console
$ raku triple-negation.raku
===SORRY!=== Fehler beim Kompilieren von /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Zwei Begriffe in Folge
bei /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    erwartet wurde einer der folgenden:
        Infix
        Infix-Stoppzeichen
        Postfix
        Anweisungsende
        Anweisungsmodifikator
        Anweisungsmodifikatorschleife
```

Ein weiteres Leerzeichen löst dieses Problem. Aber sei vorsichtig. Mach nicht noch einen Fehler. Sieh dir dieses Programm an:

```raku
my $value = False;
say !!! $value;
```

Dieses Programm kompiliert. Aber dann endet es mit dieser Meldung:

```console
$ raku triple-negation.raku
False
    im Block <unit> bei exercises/booleans/triple-negation.raku Zeile 2
```

Warum passiert das? `!!!` ist ein spezieller Operator. Er markiert einen Teil des Codes als Platzhaltercode. Platzhaltercode ist Code, der noch nicht fertig ist. Wenn das Programm an diese Stelle kommt, hört es auf. Es gibt auch eine Meldung aus. Hier ist die Meldung der aktuelle Wert der Variablen `$value`. Mehr dazu kannst du in 📖 [der Dokumentation](https://docs.raku.org/routine/!!!) lesen.

{% include nav.html %}
