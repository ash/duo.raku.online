---
title: 'Solvo: Ĉenita komparo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say 0 <= 73 <= 100;
```

🦋 Vi povas trovi la fontkodon en la dosiero [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Eligo

```
True
```

## Komentoj

1. Komparaj operatoroj povas esti ĉenitaj. Do `0 <= 73 <= 100` signifas «0 estas maksimume 73, kaj 73 estas maksimume 100». La operatoro `<=` permesas la finajn valorojn. Do poentaro de ĝuste `0` aŭ `100` ankaŭ validus.

1. Ambaŭ partoj estas veraj, do la tuta esprimo estas `True`. Notu, ke vi skribas la mezan valoron `73` nur unufoje. Tamen ĝi estas komparata kun ambaŭ siaj najbaroj.

1. Sen ĉenado, vi devus skribi ambaŭ komparojn kaj kunigi ilin per `&&`. Tiam vi ripetas la mezan valoron: `0 <= 73 && 73 <= 100`. La ĉenita formo diras la samon pli mallonge.

{% include nav.html %}
