---
title: 'Solution: Dreifache Verneinung'
---

{% include menu.html %}

Das Programm aus der Aufgabe kompiliert nicht, deshalb braucht es eine kleine Korrektur. Hier ist eine korrekte Version, die funktioniert (mit einem zusätzlichen Leerzeichen zwischen `!` und `!!`):

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 Du kannst den vollständigen Code in der Datei [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku) finden.

## Ausgabe

Wie du wahrscheinlich erwartet hast, gibt das Programm den umgekehrten Booleschen Wert aus:

```console
$ raku triple-negation.raku
True
```

## Kommentare

Überraschenderweise kompilierte das Programm mit drei Ausrufezeichen nicht:

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

Ein zusätzliches Leerzeichen löst dieses Problem. Aber fall nicht in eine andere Falle. Sieh dir das folgende Programm an:

```raku
my $value = False;
say !!! $value;
```

Dieses Programm kompiliert, aber es endet mit der folgenden Meldung:

```console
$ raku triple-negation.raku
False
    im Block <unit> bei exercises/booleans/triple-negation.raku Zeile 2
```

Das passiert, weil `!!!` ein spezieller Operator ist. Er markiert einen Teil des Codes als Platzhaltercode, also als unfertigen Code. Wenn das Programm diese Stelle erreicht, hört es auf und gibt die Meldung aus. In unserem Fall war die Meldung der aktuelle Wert der Variablen `$value`. Weitere Details findest du in 📖 [der Dokumentation](https://docs.raku.org/routine/!!!).

{% include nav.html %}
