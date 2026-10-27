---
title: 'Solvo: Rezerva valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Vi povas trovi la fontkodon en la dosiero [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Eligo

```
5
default
```

## Komentoj

1. `get(5)` redonas `5` kiel kutime. Do `//` konservas ĉi tiun valoron.

1. `get(0)` redonas `Failure`. `Failure` estas valoro kun eraro interne. Ĝi estas nedifinita. Do `//` uzas la rezervan valoron, `'default'`. `//` traktas la nedifinitan `Failure` kviete. Ĝi ne ĵetas escepton.

{% include nav.html %}
