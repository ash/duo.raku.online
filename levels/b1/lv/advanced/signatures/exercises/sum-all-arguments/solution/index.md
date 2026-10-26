---
title: 'Risinājums: Summēt visus argumentus'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Uzsūcošais parametrs `*@nums` savāc visus argumentus masīvā `@nums`. Nav svarīgi, cik to ir.

1. Tad redukcijas meta-operators `[+]` tos visus saskaita un dod `15`.

{% include nav.html %}
