---
title: 'Solvo: Sumi ĉiujn argumentojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Vi povas trovi la fontkodon en la dosiero [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Eligo

```
15
```

## Komentoj

1. La engluta parametro `*@nums` kolektas ĉiujn argumentojn en la tabelon `@nums`. La nombro de argumentoj ne gravas.

1. Poste la redukta metaoperatoro `[+]` adicias ilin ĉiujn. La rezulto estas `15`.

{% include nav.html %}
