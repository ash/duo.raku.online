---
title: 'Solvo: Vivperiodo laŭ aĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Eligo

```
adult
```

## Komentoj

1. Ĉi tiu solvo havas du specojn de `when`. La unua estas *kondiĉo*, `$_ < 0`. Ĉi tie `$_` estas la temo de `given`. Ĉi tiu kondiĉo kaptas la aĝojn, kiuj ne havas sencon. La aliaj blokoj `when` estas *intervaloj*. Ili metas la ĝustajn aĝojn en periodojn.

1. La ordo estas grava. La kontrolo de negativa aĝo venas unue. Do ĝi ruliĝas antaŭ ĉiuj intervaloj. La valoro `30` estas en `20..64`. Do la programo presas `adult`.

1. La bloko `default` estas por ĉiu aĝo de 65 kaj pli. Neniu el la intervaloj en la listo havas ĉi tiujn aĝojn.

Estas ankaŭ alia maniero. Lasu `default` kapti la *nevalidan* enigon. Listigu ĉiun konatan periodon. Skribu `senior` kiel la kondiĉon `$_ >= 65`. Ĉio alia estas nevalida, ekzemple negativa aĝo:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Ĉi tie `default` vere signifas «neniu el la supraj». Kiu versio estas pli bona? Vi povas elekti. Ĉu la nevalida kazo estas malofta? Tiam metu la kontrolon unue. Ĉu vi listigas ĉiujn validajn periodojn klare? Tiam faru la nevalidan kazon la `default`.

{% include nav.html %}
