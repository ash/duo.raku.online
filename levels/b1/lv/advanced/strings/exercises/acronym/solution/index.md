---
title: 'Risinājums: Akronīms'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Programmas pirmkodu var atrast failā [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Izvade

```
HTML
```

## Komentāri

1. `$phrase.words` atgriež vārdu sarakstu. Katram vārdam cilpa ar `substr(0, 1)` paņem pirmo rakstzīmi. Tad tā pievieno šo rakstzīmi `$acronym` beigās.

1. Kad visi pirmie burti ir savākti, `uc` pārvērš rezultātu lielajos burtos: `HTML`.

{% include nav.html %}
