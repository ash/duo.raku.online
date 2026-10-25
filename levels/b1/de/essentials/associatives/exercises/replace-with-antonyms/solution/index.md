---
title: 'Solution: Mit Antonymen ersetzen'
---

{% include menu.html %}

Die Lösungsdatei [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku) beginnt mit einer Kopie von [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Danach geht eine Schleife über die Eingabeargumente. Sie versucht, jedes Wort im Wörterbuch zu finden. Wenn das klappt, nimmt sie das Antonym. Wenn es kein solches Wort im Wörterbuch gibt, wird das ursprüngliche Wort verwendet.

## Code

Die Lösung steht unten, aber hier ist nur ein Teil des Wörterbuchs zu sehen.

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

1. Der `//` Operator ist der [defined-or Operator](/de/essentials/scalar-variables/defined-or-operator). Er gibt den ersten Operanden zurück, der definiert ist.
1. Alle Schlüssel im Hash sind Wörter, die wie Bezeichner aussehen. Darum müssen Sie sie nicht in Anführungszeichen setzen. Das heißt, Sie können den Hash auch so erstellen:

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
