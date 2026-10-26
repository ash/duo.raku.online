---
title: 'Solvo: Purigi ĉe foriro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub work {
    LEAVE say 'Cleanup';

    say 'Working';
    return;
    say 'never reached';
}

work();
```

🦋 Vi povas trovi la fontkodon en la dosiero [clean-up-on-leave.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/clean-up-on-leave.raku).

## Eligo

```
Working
Cleanup
```

## Komentoj

1. Post kiam `Working` estas presita, `return` tuj forlasas la subrutinon. Do `never reached` neniam estas presata.

1. La korpo estis forlasita frue. Tamen la fazilo `LEAVE` ruliĝas ĉe la eliro kaj presas `Cleanup`. Je tio vi ĉiam povas fidi. Ĝuste tial `LEAVE` estas la ĝusta loko por liberigi rimedojn. Ĝi ruliĝas, kiel ajn la bloko finiĝas.

{% include nav.html %}
