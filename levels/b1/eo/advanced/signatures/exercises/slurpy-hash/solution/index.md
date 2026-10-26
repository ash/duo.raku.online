---
title: 'Solvo: Englutaj nomitaj argumentoj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Vi povas trovi la fontkodon en la dosiero [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Eligo

```
Anna: colour=red, size=5
```

## Komentoj

1. La fiksita pozicia parametro `$name` ricevas sian valoron unue. Poste la engluta `*%opts` kolektas ĉiujn restantajn nomitajn argumentojn en hakon.

1. `%opts.sort` ordigas la parojn laŭ ŝlosilo, do la eligo estas ĉiam la sama: `colour` venas antaŭ `size`. La `.map` transformas ĉiun paron en ĉenon `key=value` per `.key` kaj `.value`. Poste `.join(', ')` kunigas la ĉenojn.

1. La fina ĉeno enhavas la valorojn de `$name` kaj de la preta `$details`. Tio donas `Anna: colour=red, size=5`.

{% include nav.html %}
