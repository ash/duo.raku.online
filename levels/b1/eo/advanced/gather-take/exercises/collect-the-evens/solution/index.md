---
title: 'Solvo: Ripeti ĉiun nombron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. Nenio diras, ke devas esti nur unu `take` ĉe ĉiu paŝo. Ĉi tie la interna `take $n for 1..$n` rulas `take` malsaman nombron da fojoj ĉe ĉiu paŝo. Ĉi tiu fleksebleco estas ĝuste tio, kio faras `gather`/`take` pli potenca ol simpla `map`.

1. La ekstera buklo intence uzas nomitan variablon, `-> $n`. Supozu, ke ni uzus `$_` en la interna buklo. Tiam la interna `for` metus sian propran nombrilon en `$_`. Do ni prenus la nombrilon anstataŭ la aktualan nombron.

1. `gather` simple kolektas ĉiun valoron, kiu estis prenita, laŭ ordo. Do `@result` enhavas `1`, poste du `2`-ojn, poste tri `3`-ojn, poste kvar `4`-ojn.

{% include nav.html %}
