---
title: 'Risinājums: Uzskaitīt simbolus'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

Programma, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Abus avota failus varat atrast direktorijā [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Izvade

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Komentāri

1. `Circle::` ir moduļa pakotne. `.keys` uzskaita tās nosaukumus. Katram nosaukumam ir savs sigils.

1. `.elems` saskaita šos nosaukumus. Modulim ir divi `our` mainīgie. Tāpēc skaits ir `2`.

1. `.keys` nedod nosaukumus noteiktā secībā. Tāpēc mēs izmantojam `.sort`. Tas sakārto nosaukumus alfabētiskā secībā. Tagad rezultāts vienmēr ir vienāds: `($pi $tau)`. Bez kārtošanas abu nosaukumu secība var mainīties. Tā var būt citāda katru reizi, kad programma darbojas.

{% include nav.html %}
