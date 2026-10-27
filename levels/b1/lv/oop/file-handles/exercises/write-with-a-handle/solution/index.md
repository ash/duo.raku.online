---
title: 'Risinājums: Rakstīšana ar deskriptoru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 Atrodiet programmu failā [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Izvade

```
1
2
3
```

## Komentāri

1. `open` ar karodziņu `:w` dod turi rakstīšanai. Turis paliek atvērts visa cikla laikā, tāpēc katrs `$fh.say` pievieno vēl vienu rindu. Šeit turis ir labāks par `spurt`, kas katru reizi atvērtu failu no jauna.

1. `close` saglabā datus diskā. Tāpēc nākamais `slurp` nolasa atpakaļ visas trīs rindas.

{% include nav.html %}
