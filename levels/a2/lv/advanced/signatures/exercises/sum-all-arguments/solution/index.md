---
title: 'Risinājums: Summēt visus argumentus'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 Pirmkodu var atrast faila [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Izvade

```
15
```

## Komentari

1. Uzsūcošais parametrs `*@nums` savāc visus argumentus masīvā `@nums`. Argumentu skaits nav svarīgs.

1. Tad redukcijas meta-operators `[+]` tos visus saskaita kopā. Rezultāts ir `15`.

{% include nav.html %}
