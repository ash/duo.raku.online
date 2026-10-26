---
title: 'Risinājums: Summa ar `&` sigilu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my &add = -> $a, $b {
    $a + $b;
};

say add(2, 3);
```

🦋 Atrodiet programmu failā [sum-with-sigil.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/sum-with-sigil.raku).

## Izvade

```
5
```

## Komentāri

1. Bultiņas blokam ir divi parametri: `-> $a, $b`. Tāpēc anonīmā apakšprogramma ņem divus argumentus.

1. Mainīgajam ir sigils `&`. Tāpēc jūs varat to izsaukt kā `add(2, 3)`. Tas darbojas kā parasta apakšprogramma ar nosaukumu. Izsaukumā jūs nerakstāt sigilu. Rezultāts ir `5`.

{% include nav.html %}
