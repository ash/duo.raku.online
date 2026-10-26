---
title: 'Solvo: Komunaj elementoj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Vi povas trovi la fontkodon en la dosiero [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Eligo

```
2
False
```

## Komentoj

1. La komunaĵo `$a ∩ $b` ankaŭ estas aro. Ĉi tie, ĝi estas `{banana, cherry}`. Do ĝi havas `2` elementojn. Se vi volas ASCII, skribu `(&)` anstataŭ `∩`.

1. La komunaĵo estas aro. Do `∈` povas kontroli, ĉu valoro estas en ĝi. `apple` estas nur en la unua aro. Do ĝi ne estas en la komunaĵo. La testo redonas `False`.

{% include nav.html %}
