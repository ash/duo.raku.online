---
title: Hashes
---

{% include menu.html %}

_Hash_ est alius typus datorum associativus in Raku. Est typus aggregatus qui nomen cuiusque elementi cum valore eius iungit. Variabiles hash novum sigillum adhibent: `%`.

```raku
my %capitals;
```

Nunc hash uti potes et ei aliquos valores primos dare.

```raku
%capitals = Gallia => 'Lutetia', Italia => 'Roma';
```

Ut cum aliis typis datorum, ambas res uno gradu facere potes:

```raku
my %capitals = Gallia => 'Lutetia', Italia => 'Roma';
```

## Elementa accedere

Subscribere simili modo operatur atque in [paribus](../pairs) vidimus. Chordam in uncis angularibus vel in uncis curvis pone:

```raku
say %capitals<Gallia>;
say %capitals{'Italia'};
```

Hashes sunt mutabiles, ita valores exstantes mutare et novos addere potes:

```raku
%capitals<Germania> = 'Berolinum';
```

## Claves et valores

Hash duas methodos inbuilt habet, `keys` et `values`. Listam clavium eius et listam valorum eius reddunt:

```raku
say %capitals.keys;
say %capitals.values;
```

Hic est exemplum eorum quae hoc programma imprimit:

    (Germania Italia Gallia)
    (Berolinum Roma Lutetia)

Nota quod elementa hash in nullo ordine sunt. Sed methodi supra claves et valores eodem ordine reddunt.

{% include nav.html %}
