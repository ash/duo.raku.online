---
title: 'Solvo: Kalkuli supren'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `++` estas postfiksa operatoro, kio signifas, ke ĝi venas post sia operando. En esprimo, `$n++` unue donas la *malnovan* valoron `9`. Tion presas `say`. Nur poste ĝi pliigas la variablon.

1. La dua linio montras, ke `$n` vere fariĝis `10`. La prefiksa formo `++$n` unue aldonus unu kaj poste redonus `10`.

{% include nav.html %}
