---
title: 'Solvo: Komunaj elementoj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La komunaĵo `$a ∩ $b` mem estas aro, ĉi tie `{banana, cherry}`. Do ĝi havas `2` elementojn. Se vi preferas ASCII, skribu `(&)` anstataŭ `∩`.

1. La komunaĵo estas aro, do `∈` povas diri al vi, ĉu valoro estas en ĝi. `apple` estas nur en la unua aro, do ĝi ne estas en la komunaĵo. La testo redonas `False`.

{% include nav.html %}
