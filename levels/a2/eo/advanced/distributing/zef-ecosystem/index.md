---
title: zef kaj la ekosistemo
translations_gpt:
---

{% include menu.html %}

`zef` instalas Raku-modulojn. Vi jam uzis ĝin por instali modulojn laŭ iliaj nomoj. Ĝi ankaŭ funkcias kun distribuo en loka dosierujo. Iru en la dosierujon de distribuo. De tie vi povas rekte testi kaj instali ĝin:

```
zef test .
zef install .
```

`zef test .` rulas la dosierojn sub `t/`. `zef install .` instalas la distribuon en vian Raku. Tiam aliaj programoj povas `use` ĝin. Vi ankaŭ povas instali laŭ nomo, ekzemple `zef install Cro`. Tio faras la samon. Sed unue ĝi elŝutas la distribuon el la ekosistemo.

Eble vi volas **publikigi** vian propran distribuon. Tiam aliaj homoj povas instali ĝin laŭ nomo. Por tio vi alŝutas ĝin al la ekosistemo. Homoj kutime uzas `fez` por tio:

```
fez upload
```

Tio pakas la nunan distribuon kaj sendas ĝin al la Raku-ekosistemo. Post tio, `zef install Maths::Simple` funkcias por ĉiu.

> Ĉi tiuj komandoj bezonas instalitan `zef`/`fez` kaj la reton. Por alŝuti, vi ankaŭ bezonas ekosisteman konton.

Do kunhavigita modulo iras tra tri paŝoj. Unue, vi donas al ĝi la norman aranĝon kaj `META6.json`. Poste, vi testas ĝin per `zef test`. Tiam vi publikigas ĝin per `fez upload`. Post tio, ĝi estas nur unu plia nomo. Ĉiu povas instali ĝin per `zef install`.

{% include nav.html %}
