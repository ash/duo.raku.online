---
title: 'Solvo: Kaptu la eligon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Eligo

```
3
```

## Komentoj

1. `:out` sendas la eligon de la programo en la `Proc` anstataŭ al la ekrano. `.out.slurp(:close)` relegas ĉion. `.trim` forigas la linifinon, kiun `echo` aldonas ĉe la fino.

1. Nun la eligo estas ordinara ĉeno en nia programo. Ni traktas ĝin kiel ĉiujn aliajn datumojn. `.words.elems` dividas ĝin ĉe blankspaco kaj kalkulas la pecojn, kio donas `3`. Jen la celo de kaptado de eligo. La ekstera programo fariĝas konstruelemento, kaj ni plu prilaboras ĝian rezulton.

{% include nav.html %}
