---
title: Coniuncta, sacculi, et mixturae
translations_gpt:
---

{% include menu.html %}

Praeter ordines et hashes, Raku aliquot receptacula specialia pro collectionibus valorum habet. Simplicissimum est `Set`, id est coniunctum. Est collectio valorum _distinctorum_ sine certo ordine. Quisque valor aut in coniuncto est aut non est, et valores repetiti negleguntur.

Coniunctum functione `set` creas. Si valor repetitur, coniunctum solum unum exemplar servat:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Quinque numeros dedimus, sed coniunctum solum tria elementa habet. Causa est quod `1` et `2` plus quam semel apparuerunt.

Praecipua quaestio quam coniuncto ponis est num valor in eo sit. Operator `∈`, quem ut “est elementum” legis, valorem Booleanum reddit:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Si solum ASCII simplici uti vis, eundem operatorem ut `(elem)` scribe:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Deinde videbis quomodo coniuncta componas. Etiam sacculos et mixturas cognosces, qui propinqui cognati coniunctorum sunt.

{% include nav.html %}
