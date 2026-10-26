---
title: 'Solvo: Denaska tabelo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my uint8 @bytes = 100, 200, 255;
say @bytes.sum;
```

🦋 Vi povas trovi la fontkodon en la dosiero [native-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-array.raku).

## Eligo

```
555
```

## Komentoj

1. La fiksgranda indiĝena tipo `uint8` venas antaŭ la `@`-tabelo. Tio deklaras tabelon, kie ĉiu elemento estas unu sensigna bajto. Ĝi prenas malmulte da memoro, kio estas bona por binaraj datumoj.

1. La limo de ĉirkaŭvolviĝo `0..255` validas por ĉiu *elemento*, sed ne por ilia sumo. `.sum` enkastas la totalon en ordinaran `Int`. Do `100 + 200 + 255` donas la plenan `555`.

{% include nav.html %}
