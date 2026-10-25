---
title: '`for` cikli'
---

{% include menu.html %}

`for` cikls ir ļoti noderīgs. Tas iet cauri daudziem vienumiem, pa vienam. Piemēram, paņemiet diapazonu:

```raku
for 1..5 -> $n {
    say $n;
}
```

`$n` katru reizi saņem nākamo vērtību no diapazona. Jums nav jāraksta `my` pirms `$n`. Bloks izpildās vienu reizi katrai diapazona vērtībai. Tāpēc programma izdrukā skaitļus, katru savā rindā:

```console
$ raku t.raku 
1
2
3
4
5
```

Programma iet cauri visām [diapazona](/lv/essentials/ranges) `1..5` vērtībām. Šīs vērtības ir `1`, `2`, `3`, `4` un `5`.

## Vairāk nekā viena vērtība vienlaikus

Raku valodā cikls katru reizi var ņemt divus vai vairāk vienumus. Šī programma izdrukā divus skaitļus vienlaikus:

```raku
for 1..6 -> $n, $m {
    say "$n and $m";
}
```

Lūk, ko programma izdrukā:

```console
$ raku t.raku
1 and 2
3 and 4
5 and 6
```

{% include nav.html %}
