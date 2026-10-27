---
title: 'Risinājums: Rakstīšana ar deskriptoru'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `open` ar karodziņu `:w` dod turi rakstīšanai. Turis paliek atvērts visa cikla laikā. Tāpēc katrs `$fh.say` pievieno vēl vienu rindu. Šeit turis ir labāks par `spurt`. `spurt` atver failu no jauna katru reizi.

1. `close` ieraksta visus datus diskā. Tāpēc `slurp` pēc tā nolasa atpakaļ visas trīs rindas.

{% include nav.html %}
