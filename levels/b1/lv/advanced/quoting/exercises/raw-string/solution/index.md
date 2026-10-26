---
title: 'Risinājums: Neapstrādāta virkne'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
say Q{$x and \n};
```

🦋 Programmas pirmkodu var atrast failā [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Izvade

```
$x and \n
```

## Komentāri

1. `Q` ir visburtiskākā citēšanas forma. Tā neko neinterpolē un neapstrādā aizbēgšanas secības.

1. Tāpēc `$x` paliek kā parasts teksts. Un `\n` paliek kā divas rakstzīmes, atpakaļsvītra un burts `n`.

{% include nav.html %}
