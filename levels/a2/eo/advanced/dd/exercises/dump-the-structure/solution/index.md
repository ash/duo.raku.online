---
title: 'Solvo: Dumpi la datumstrukturon'
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Vi povas trovi la fontkodon en la dosiero [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Eligo

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Komentoj

1. `dd @data` presas tion, kio estas en la tabelo. Ĝi presas ĝin en formo kiel kodo. Ĉi tiu eligo iras al la norma erara fluo.

1. La metodo `.raku` redonas la saman formon kiel ĉenon. La programo metas ĉi tiun ĉenon en normalan mesaĝon. Por tio, ĝi rulas kodon ene de la ĉeno. Poste `say` presas la mesaĝon al la norma eligo.

1. Ĉi tie, la du linioj aspektas same. Sed ili iras al malsamaj eligaj fluoj. La unua linio venas de `dd` kaj iras al la norma erara fluo. La dua linio venas de `say` kaj iras al la norma eligo. Komparu ĉi tiujn du lanĉojn:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
