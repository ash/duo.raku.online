---
title: 'Risinājums: Numurējiet rindas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `spurt` ieraksta failā trīs vārdus ar jaunas rindas rakstzīmēm starp tiem.

1. `.IO.lines` dod rindas pa vienai, bez jaunas rindas rakstzīmēm to beigās. Mēs turam skaitītāju `$n` un palielinām to katrā kārtā. Tāpēc katra rinda tiek izdrukāta kopā ar savu vietu failā.

{% include nav.html %}
