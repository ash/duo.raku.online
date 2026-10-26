---
title: 'Solvo: Dumpi haketon'
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

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

1. `dd` presas la hakon en kodosimila formo. Ĉiu paro estas montrata kiel `:ŝlosilo(valoro)`.

1. La ŝlosiloj estas presataj en ordigita ordo, do `alpha` venas antaŭ `beta`. Tio okazas, kvankam `beta` estis skribita unue.

{% include nav.html %}
