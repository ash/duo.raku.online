---
title: 'Risinājums: Akronīms'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `$phrase.words` dod vārdu sarakstu. Cilpa ar `substr(0, 1)` paņem katra vārda pirmo rakstzīmi. Tā pievieno šo rakstzīmi `$acronym` beigās.

1. Beigās visi pirmie burti ir mainīgajā `$acronym`. Tad `uc` pārvērš rezultātu lielajos burtos: `HTML`.

{% include nav.html %}
