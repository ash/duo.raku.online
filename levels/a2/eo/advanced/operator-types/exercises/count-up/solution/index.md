---
title: 'Solvo: Kalkuli supren'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Vi povas trovi la fontkodon en la dosiero [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Eligo

```
9
10
```

## Komentoj

1. `++` estas postfiksa operatoro. Ĝi venas post sia operando. En esprimo, `$n++` unue donas la *malnovan* valoron, `9`. Tion presas `say`. Nur post tio, `++` aldonas 1 al la variablo.

1. La dua linio montras, ke `$n` nun estas `10`. La prefiksa formo `++$n` funkcias alimaniere. Ĝi unue aldonas 1, kaj poste ĝi redonas `10`.

{% include nav.html %}
