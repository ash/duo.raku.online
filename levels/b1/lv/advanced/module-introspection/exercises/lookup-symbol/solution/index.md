---
title: 'Risinājums: Atrast simbolu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējamais risinājums.

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

1. `Circle::` ir moduļa stash. Ja izmantojat nosaukumu kā atslēgu, piemēram, `Circle::{'$pi'}`, jūs iegūstat zem tā saglabāto vērtību. Atslēgā jāiekļauj sigils, tāpat kā uzskaitītajos nosaukumos.

1. Tas dod to pašu vērtību kā kvalificētais `$Circle::pi`. Bet šeit nosaukums ir parasta virkne. Tāpēc to var izveidot izpildes laikā. Tas nav jāieraksta pirmkodā.

{% include nav.html %}
