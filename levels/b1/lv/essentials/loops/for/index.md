---
title: '`for` cikli'
---

{% include menu.html %}

`for` cikls ir spēcīgs rīks, lai ietu cauri vairākiem elementiem pa vienam. Piemēram, ņemsim diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

Šajā programmā mainīgais `$n` katrā iterācijā ņem nākamo vērtību no diapazona. Ievērojiet, ka jums nav jādeklarē mainīgais ar `my`. Koda bloks atkārtojas tik reižu, cik elementu ir datu avotā. Tātad programma izdrukā skaitļus pa vienam rindā:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma iet cauri visām vērtībām, ko rada [diapazons](/lv/essentials/ranges) `1..5`. Tās ir `1`, `2`, `3`, `4` un `5`.

## Vairāk nekā vienas vērtības ņemšana

Interesanta Raku īpašība ir tā, ka vienā iterācijā varat ņemt vairāk nekā vienu vienumu. Šī programma izdrukā divus skaitļus katru reizi, kad cikls izpildās:

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
