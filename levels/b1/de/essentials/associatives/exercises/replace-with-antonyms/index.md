---
title: Mit Antonymen ersetzen
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm, das alle Wörter aus der Befehlszeile durch ihre Antonyme ersetzt. Antonyme sind Wörter mit der umgekehrten Bedeutung. Wenn ein Wort nicht im Wörterbuch steht, geben Sie es ohne Änderung aus.

Speichern Sie das Wörterbuch der Antonyme in einem Hash, direkt im Programmcode. Damit es leichter geht, gibt es hier eine fertige Liste mit etwa 200 Paaren: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Sie können sie direkt kopieren und in Ihr Programm einfügen. Alle Paare stehen dort in beide Richtungen, zum Beispiel:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Halten Sie das Programm so einfach wie möglich und geben Sie ein Wort pro Zeile aus.

## Beispiel

Führen Sie das Programm mit ein paar Wörtern als Argumenten aus. Prüfen Sie, dass mindestens einige davon im Wörterbuch stehen.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
