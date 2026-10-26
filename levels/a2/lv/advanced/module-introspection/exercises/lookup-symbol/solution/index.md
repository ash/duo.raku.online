---
title: 'Risinājums: Atrast simbolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

Programma, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Abus avota failus varat atrast direktorijā [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Izvade

```console
$ raku -I. lookup.raku
3.14
```

## Komentāri

1. `Circle::` ir moduļa stash. Jūs izmantojat nosaukumu kā atslēgu: `Circle::{'$pi'}`. Tas dod šī nosaukuma vērtību. Atslēgā jābūt sigilam. Arī nosaukumiem sarakstā tas ir.

1. Jūs iegūstat to pašu vērtību kā ar pilno nosaukumu `$Circle::pi`. Bet šeit nosaukums ir parasta virkne. Tāpēc programma var izveidot nosaukumu, kamēr tā darbojas. Jums tas nav jāraksta pirmkodā.

{% include nav.html %}
