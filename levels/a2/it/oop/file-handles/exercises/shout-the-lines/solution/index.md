---
title: 'Soluzione: Numerate le righe'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `spurt` scrive le tre parole nel file. I ritorni a capo separano le parole.

1. `.IO.lines` dà le righe una per una. Le righe non hanno il ritorno a capo alla fine. Teniamo un contatore `$n`. Ogni giro del ciclo gli aggiunge 1. Così stampiamo ogni riga con il suo posto nel file.

{% include nav.html %}
