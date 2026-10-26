---
title: 'Solvo: Ripeti ĉiun nombron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Vi povas trovi la fontkodon en la dosiero [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Eligo

```
[1 2 2 3 3 3 4 4 4 4]
```

## Komentoj

1. Vi ne bezonas ĝuste unu `take` en ĉiu rondo. Rigardu la internan `take $n for 1..$n` ĉi tie. Ĝi rulas `take` malsaman nombron da fojoj en ĉiu rondo. Ĉi tiu libereco faras `gather`/`take` pli forta ol simpla `map`.

1. La ekstera buklo havas variablon kun nomo, `-> $n`. Tio estas intenca. Imagu, ke ni uzas `$_` en la interna buklo. Tiam la interna `for` metas sian propran nombrilon en `$_`. Do ni prenas la nombrilon, ne la aktualan nombron.

1. `gather` simple kolektas ĉiun valoron, kiun la kodo prenas, laŭ ordo. Do `@result` havas unu `1`, du `2`-ojn, tri `3`-ojn kaj kvar `4`-ojn.

{% include nav.html %}
