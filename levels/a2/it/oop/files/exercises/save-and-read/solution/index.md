---
title: 'Soluzione: Salvate e rileggete'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Trova il programma nel file [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Output

```
84
```

## Commenti

1. `spurt` crea il file e ci scrive la stringa. `slurp` rilegge tutto il file in una stringa. Insieme fanno tutti e due i lavori. Salvano i dati e li caricano di nuovo.

1. `slurp` restituisce del testo: `"42\n"`. Quindi usiamo `trim` per togliere il ritorno a capo alla fine. Poi chiamiamo `.Int` per trasformare il testo in un numero. Ora possiamo fare dei calcoli con il numero. Il risultato di `42 * 2` è `84`.

1. Ma il programma funziona anche senza `.trim.Int`.

{% include nav.html %}
