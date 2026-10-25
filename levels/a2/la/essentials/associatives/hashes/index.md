---
title: Hashes
---

{% include menu.html %}

_Hash_ est alius typus datorum associativus in Raku. Est typus datorum aggregatus. Multa elementa continet. Quodque elementum nomen et valorem habet. Variabiles hash novum sigillum adhibent: `%`.

```raku
my %capitals;
```

Nunc hash uti potes. Ei aliquos valores primos assignare potes.

```raku
%capitals = Gallia => 'Lutetia', Italia => 'Roma';
```

Etiam ambas res simul facere potes. Hoc etiam cum aliis typis datorum operatur:

```raku
my %capitals = Gallia => 'Lutetia', Italia => 'Roma';
```

## Elementa accipere

Ut elementum accipias, hash subscribis. Hoc eodem modo facis ac cum [paribus](../pairs). Chordam in uncis angularibus vel in uncis curvis pone:

```raku
say %capitals<Gallia>;
say %capitals{'Italia'};
```

Hashes sunt mutabiles. Hoc significat: eos mutare potes. Valores mutare potes. Etiam novos addere potes:

```raku
%capitals<Germania> = 'Berolinum';
```

## Claves et valores

Raku duas methodos inbuilt pro hashibus habet, `keys` et `values`. Methodus `keys` listam clavium reddit. Methodus `values` listam valorum reddit:

```raku
say %capitals.keys;
say %capitals.values;
```

Programma hoc imprimere potest, exempli gratia:

    (Germania Italia Gallia)
    (Berolinum Roma Lutetia)

Nota: elementa hash nullum ordinem habent. Sed ambae methodi eundem ordinem adhibent.

{% include nav.html %}
