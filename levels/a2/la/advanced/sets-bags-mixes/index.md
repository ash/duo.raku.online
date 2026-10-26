---
title: Coniuncta, sacculi, et mixturae
translations_gpt:
---

{% include menu.html %}

Raku ordines et hashes habet. Etiam aliquot receptacula specialia pro gregibus valorum habet. Simplicissimum est `Set`, id est coniunctum. Valores eius _distincti_ sunt, itaque quisque valor ab aliis differt. Valores in coniuncto ordinem non habent. Valor in coniuncto est, aut non est. Si valor bis venit, coniunctum secundum neglegit.

Ut coniunctum facias, functionem `set` adhibe. Valores repetiti unus valor fiunt:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Coniuncto quinque numeros damus. Sed solum tria elementa habet. Nam `1` et `2` plus quam semel apparent.

Coniuncto plerumque unam quaestionem praecipuam ponis. Estne valor in coniuncto? Operator `∈` ei respondet. `∈` legis ut “est elementum”. Valorem Booleanum reddit, `True` vel `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Fortasse solum characteres ASCII simplices adhibere vis. Tum eundem operatorem ut `(elem)` scribe:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Proxima themata ostendunt quomodo coniuncta componas. Etiam sacculos et mixturas ostendunt. Sacculi et mixturae propinqui cognati coniunctorum sunt.

{% include nav.html %}
