---
title: 'Risinājums: Apklusināt brīdinājumu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Atrodiet programmu failā [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Izvade

```
Hello, !
```

## Komentāri

1. Ja virknē ieliek nedefinēto `$name`, parasti rodas brīdinājums par “neinicializētas vērtības lietošanu”. Ar `quietly` ap izteiksmi brīdinājums ir paslēpts, tāpēc tiek izdrukāts tikai sveiciens.

1. Tāpat kā `do`, `quietly` atgriež sava bloka vērtību. Tāpēc gatavā virkne tiek saglabāta mainīgajā `$greeting`. Trūkstošais vārds tajā atstāj tukšu spraugu.

1. `quietly` tikai paslēpj brīdinājumu, un vērtība joprojām ir nedefinēta. Ja jūs gribat ar trūkstošo vērtību *tikt galā*, dodiet noklusējuma vērtību. Šim nolūkam izmantojiet defined-or operatoru `//`. `$name // 'friend'` dod `'friend'`, kad `$name` ir nedefinēts. Tāpēc `"Hello, " ~ ($name // 'friend') ~ "!"` izdrukā `Hello, friend!` pavisam bez brīdinājuma.

{% include nav.html %}
