---
title: 'Solvo: Englutaj nomitaj argumentoj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Unue la fiksita pozicia parametro `$name` ricevas sian valoron. Poste la engluta `*%opts` kolektas ĉiujn aliajn nomitajn argumentojn. Ĝi metas ilin en hakon.

1. `%opts.sort` ordigas la parojn laŭ ŝlosilo. Do la eligo estas ĉiam la sama: `colour` venas antaŭ `size`. `.map` faras ĉenon `key=value` el ĉiu paro. Por tio ĝi uzas `.key` kaj `.value`. Poste `.join(', ')` kunigas la ĉenojn.

1. La lasta ĉeno havas en si la valorojn de `$name` kaj `$details`. Ni konstruis `$details` antaŭe. La rezulto estas `Anna: colour=red, size=5`.

{% include nav.html %}
