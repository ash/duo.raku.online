---
title: 'Risinājums: Uzskaitīt simbolus'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējamais risinājums.

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

1. `Circle::` ir moduļa pakotne. `.keys` uzskaita nosaukumus, kas tajā ir, katru ar tā sigilu.

1. `.elems` saskaita šos nosaukumus. Modulis definē divus `our` mainīgos, tāpēc skaits ir `2`.

1. `.keys` nesola nekādu noteiktu secību. Tāpēc mēs izmantojam `.sort`, kas katru reizi dod to pašu alfabētisko rezultātu: `($pi $tau)`. Bez kārtošanas abu nosaukumu secība dažādās palaišanas reizēs varētu mainīties.

{% include nav.html %}
