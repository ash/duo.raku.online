---
title: zef kaj la ekosistemo
translations_gpt:
---

{% include menu.html %}

`zef` estas la modula instalilo de Raku. Vi jam uzis ĝin por instali modulojn laŭ nomo. Ĝi ankaŭ funkcias kun loka distribua dosierujo. Ene de distribuo vi povas rekte testi kaj instali ĝin:

```
zef test .
zef install .
```

`zef test .` rulas la dosierojn sub `t/`. `zef install .` instalas la distribuon en vian Raku, tiel ke aliaj programoj povas `use` ĝin. Instali laŭ nomo, kiel en `zef install Cro`, faras la samon. Sed ĝi unue elŝutas la distribuon el la ekosistemo.

Vi povas **publikigi** vian propran distribuon, tiel ke aliaj povas instali ĝin laŭ nomo. Por tio vi alŝutas ĝin al la ekosistemo. La kutima ilo por tio estas `fez`:

```
fez upload
```

Tio pakas la nunan distribuon kaj sendas ĝin al la Raku-ekosistemo. Post tio, `zef install Maths::Simple` funkcios por iu ajn.

> Ĉi tiuj komandoj bezonas instalitajn `zef`/`fez` kaj retan konekton. Alŝutado ankaŭ bezonas ekosisteman konton.

Do la vivo de kunhavigita modulo havas tri paŝojn. Vi aranĝas ĝin kun `META6.json` kaj testas ĝin per `zef test`. Poste vi publikigas ĝin per `fez upload`. De tiam ĝi estas nur unu plia nomo, kiun iu ajn povas `zef install`.

{% include nav.html %}
