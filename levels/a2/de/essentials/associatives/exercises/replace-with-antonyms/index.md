---
title: Mit Antonymen ersetzen
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm. Es nimmt Wörter von der Befehlszeile. Es ersetzt jedes Wort durch sein Antonym. Ein Antonym ist ein Wort mit der umgekehrten Bedeutung. Manche Wörter sind nicht im Wörterbuch. Ändern Sie diese Wörter nicht. Geben Sie sie so aus, wie sie sind.

Speichern Sie das Wörterbuch der Antonyme in einem Hash. Schreiben Sie den Hash direkt in den Code. Als Hilfe haben wir eine Liste mit etwa 200 Paaren gemacht. Sie können sie kopieren und in Ihr Programm einfügen: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Jedes Paar steht zweimal in der Liste, einmal in jede Richtung. Zum Beispiel:

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

Machen Sie das Programm so einfach wie möglich. Geben Sie jedes Wort in einer eigenen Zeile aus.

## Beispiel

Führen Sie das Programm aus und geben Sie ihm ein paar Wörter. Mindestens einige der Wörter müssen im Wörterbuch stehen.

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
