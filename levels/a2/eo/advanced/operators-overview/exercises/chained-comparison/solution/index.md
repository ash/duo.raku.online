---
title: 'Solvo: Ĉenita komparo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Vi povas ĉeni komparajn operatorojn. Do `0 <= 73 <= 100` signifas «0 estas maksimume 73, kaj 73 estas maksimume 100». La operatoro `<=` permesas ankaŭ la finojn. Do poentaro de ĝuste `0` aŭ `100` ankaŭ estas valida.

1. Ambaŭ partoj estas veraj. Do la tuta esprimo estas `True`. Rigardu la mezan valoron, `73`. Vi skribas ĝin nur unufoje. Sed Raku komparas ĝin kun ambaŭ valoroj apud ĝi.

1. Sen ĉenado, vi devas skribi ambaŭ komparojn. Vi kunigas ilin per `&&`. Kaj vi skribas la mezan valoron dufoje: `0 <= 73 && 73 <= 100`. La ĉenita formo diras la samon pli mallonge.

{% include nav.html %}
