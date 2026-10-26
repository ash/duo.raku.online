---
title: 'Solvo: Dumpi la datumstrukturon'
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

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

1. `dd @data` presas la enhavon de la tabelo en kodosimila formo. Ĉi tiu eligo iras al la norma erara fluo.

1. La metodo `.raku` redonas la saman reprezenton kiel ĉenon. Ĉi tiu ĉeno poste estas enmetita en normalan mesaĝon, per kodo ene de kurbaj krampoj. Tiam `say` presas la mesaĝon al la norma eligo.

1. La du linioj aspektas same ĉi tie, sed ili iras tra malsamaj eligaj fluoj. La unua venas de `dd` kaj iras al la norma erara fluo. La dua venas de `say` kaj iras al la norma eligo. Komparu la jenon:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
