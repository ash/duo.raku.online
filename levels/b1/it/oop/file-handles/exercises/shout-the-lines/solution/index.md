---
title: 'Soluzione: Numerate le righe'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Trova il programma nel file [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Output

```
1: apple
2: banana
3: cherry
```

## Commenti

1. `spurt` scrive le tre parole nel file, con dei ritorni a capo tra di loro.

1. `.IO.lines` dà le righe una per una, senza i ritorni a capo alla fine. Teniamo un contatore `$n` e lo aumentiamo a ogni giro. Così ogni riga viene stampata insieme alla sua posizione nel file.

{% include nav.html %}
