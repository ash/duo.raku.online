---
title: 'Solution: Schon gesehen?'
---

{% include menu.html %}

Das ist eine klassische Aufgabe für einen Hash. Der Hash merkt sich, welche Elemente schon da waren. Vor der Schleife erstellt das Programm den Hash `%seen`. In der Schleife gibt der Benutzer ein Wort ein, `$word`. Das Programm nimmt dieses Wort als Schlüssel des Hashes.

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

Der Code `%seen{$word}++` addiert 1 zum Wert. Wenn der Wert noch nicht existiert, erstellt der Code ihn auch. Das Erstellen auf diese Weise heißt _Autovivifikation_. Beachten Sie: Das passiert nicht, wenn Sie den Wert nur _lesen_. Zum Beispiel passiert es nicht in der Bedingung `if %seen{$word}`.

{% include nav.html %}
