---
title: 'Solvo: Dumpi haketon'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Vi povas trovi la fontkodon en la dosiero [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Eligo

```
{:alpha(1), :beta(2)}
```

## Komentoj

1. `dd` presas la hakon en formo kiel kodo. Ĉiu paro aspektas kiel `:ŝlosilo(valoro)`.

1. La ŝlosiloj aperas en ordigita ordo. Do `alpha` venas antaŭ `beta`. Sed en la kodo, `beta` estas la unua.

{% include nav.html %}
