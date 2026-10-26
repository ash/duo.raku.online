---
title: 'Solvo: Purigi ĉe foriro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Unue la programo presas `Working`. Poste `return` tuj forlasas la subrutinon. Do la programo neniam presas `never reached`.

1. La korpo finiĝas frue. Sed la fazilo `LEAVE` tamen ruliĝas ĉe la eliro. Ĝi presas `Cleanup`. Pri tio vi ĉiam povas esti certa. Tial `LEAVE` estas la ĝusta loko por liberigi rimedojn. Ĝi ĉiam ruliĝas, kiel ajn la bloko finiĝas.

{% include nav.html %}
