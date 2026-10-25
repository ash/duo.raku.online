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

Katru reizi, kad cikls izpildās, mainīgais `$n` ņem nākamo vērtību no diapazona. Ievērojiet, ka jums nav jādeklarē mainīgais ar `my`. Koda bloks izpildās vienu reizi katram datu avota elementam. Tātad programma izdrukā skaitļus pa vienam rindā:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma iet cauri visām vērtībām, ko dod [diapazons](/lv/essentials/ranges) `1..5`. Tās ir `1`, `2`, `3`, `4` un `5`.

## Vairāk nekā vienas vērtības ņemšana

Šeit ir interesanta Raku īpašība. Cikls var ņemt vairāk nekā vienu vienumu vienlaikus. Nākamā programma izdrukā divus skaitļus katru reizi, kad cikls izpildās:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Šī ir programmas izvade:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
