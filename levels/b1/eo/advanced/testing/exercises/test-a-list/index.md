---
title: Plani du kontrolojn
---

{% include menu.html %}

## Problemo

Skribu testodosieron, kiu uzas `plan`, ne `done-testing`. Per `plan`, diru ĉe la komenco, ke la dosiero havas ekzakte du kontrolojn. Faru ĉi tiujn kontrolojn:

1. Per `is-deeply`, kontrolu, ke ordigo de la listo `3, 1, 2` donas `[1, 2, 3]`.
1. Per `is`, kontrolu, ke `10 % 3` egalas `1`.

Donu al ĉiu kontrolo mallongan priskribon, kiun vi mem elektas.

## Ekzemplo

Se la priskriboj estas `sorted` kaj `remainder`, la programo presas:

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
