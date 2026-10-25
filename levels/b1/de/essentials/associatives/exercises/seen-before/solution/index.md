---
title: 'Solution: Schon gesehen?'
---

{% include menu.html %}

Diese Aufgabe ist ein klassisches Beispiel dafür, wie man sich mit einem Hash Elemente merkt. Vor der Schleife erstellt das Programm den Hash `%seen`. In der Schleife wird das eingegebene Wort `$word` als Schlüssel des Hashes verwendet.

## Code

Hier ist die Lösung:

```raku
my %seen;
loop {
    my $word = prompt 'Wort: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Gesehen!' !! say "Schon %seen{$word} Mal gesehen!";
    }
    %seen{$word}++;
}
```

🦋 Finde das Programm in der Datei [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Ausgabe

```console
$ raku exercises/associatives/seen-before.raku
Wort: Ich
Wort: habe
Wort: noch
Wort: nie
Wort: eine
Wort: Säge
Wort: gesehen
Wort: Säge
Gesehen!
Wort: die
Wort: Säge
Schon 2 Mal gesehen!
Wahr
Wort: so
Wort: wie
Wort: die
Gesehen!
Wort: Säge
Schon 3 Mal gesehen!
Wahr
Wort: gesägt
Wort: ^C
```

## Kommentar

Das Konstrukt `%seen{$word}++` addiert nicht nur 1 zum Wert. Es erstellt den Wert auch, wenn er vorher noch nicht existiert hat. Das Erstellen eines Wertes auf diese Weise heißt _Autovivifikation_. Beachten Sie: Wenn Sie den Wert nur _lesen_, wie in der Bedingung `if %seen{$word}`, wird er nicht erstellt.

{% include nav.html %}
