---
title: '`for` cikli'
---

{% include menu.html %}

`for` cikls ir spēcīgs rīks. Tas iet cauri daudziem elementiem, vienam pēc otra. Piemēram, ņemsim diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

Šajā programmā mainīgais `$n` katru reizi saņem nākamo vērtību no diapazona. Jums nav jādeklarē mainīgais ar `my`. Koda bloks izpildās vienu reizi katram diapazona elementam. Tāpēc programma izdrukā skaitļus, katru savā rindā:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma iet cauri visām [diapazona](/lv/essentials/ranges) `1..5` vērtībām. Tās ir `1`, `2`, `3`, `4` un `5`.

## Vairāk nekā viena vērtība vienlaikus

Raku valodā cikls var ņemt vairāk nekā vienu vienumu vienlaikus. Šī programma katru reizi izdrukā divus skaitļus:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Šeit ir programmas izvade:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
