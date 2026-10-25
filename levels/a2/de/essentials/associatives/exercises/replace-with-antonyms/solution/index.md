---
title: 'Solution: Mit Antonymen ersetzen'
---

{% include menu.html %}

Zuerst nehmen wir den Inhalt der Datei [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Wir kopieren ihn in die Lösungsdatei [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Dann geht eine Schleife über die Eingabeargumente. Die Schleife sucht jedes Wort im Wörterbuch. Wenn das Wort da ist, nimmt die Schleife sein Antonym. Wenn nicht, nimmt das Programm das ursprüngliche Wort.

## Code

Hier ist die Lösung. Sie zeigt nur einen Teil des Wörterbuchs.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Finde das Programm in der Datei [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Ausgabe

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Kommentare

1. Der `//` Operator ist der [defined-or Operator](/de/essentials/scalar-variables/defined-or-operator). Er gibt den ersten definierten Operanden zurück.
1. Alle Schlüssel im Hash sind Wörter. Sie sehen wie Bezeichner aus. Darum brauchen Sie keine Anführungszeichen um sie. Sie können den Hash auch so schreiben:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
