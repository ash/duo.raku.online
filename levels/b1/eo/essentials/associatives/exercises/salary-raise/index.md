---
title: Salajra altiĝo
---

{% include menu.html %}

## Problemo

Jen haketo kun la datumoj de dungito:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Altigu la salajron je 5&thinsp;% kaj presu ĝin kune kun la nomo de la dungito. Post la altigo, la haketo `%employee` devas ankoraŭ enhavi la ĝustajn valorojn.

## Ekzemplo

Jen kion la programo devus presi:

```console
$ raku salary-raise.raku
New salary of Eliza Vents: 3150
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
