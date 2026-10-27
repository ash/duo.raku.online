---
title: 'Risinājums: Numurējiet rindas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Atrodiet programmu failā [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Izvade

```
1: apple
2: banana
3: cherry
```

## Komentāri

1. `spurt` ieraksta failā trīs vārdus. Jaunas rindas rakstzīmes atdala vārdus.

1. `.IO.lines` dod rindas pa vienai. Rindām beigās nav jaunas rindas rakstzīmes. Mēs turam skaitītāju `$n`. Katra cikla kārta pieskaita 1 šim skaitītājam. Tāpēc programma izdrukā katru rindu kopā ar tās vietu failā.

{% include nav.html %}
