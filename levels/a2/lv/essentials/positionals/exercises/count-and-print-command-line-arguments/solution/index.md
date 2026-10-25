---
title: 'Risinājums: Komandrindas argumentu skaitīšana un drukāšana'
---

{% include menu.html %}

`for` cikls labi der šai programmai.

## Kods

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Atrodi programmu failā [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Izvade

Palaid programmu. Pārbaudi, ka tā izdrukā argumentus un rindu numurus:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskusija

Šī programma izmanto dažus noderīgus trikus. Pirmkārt, `for` cikls iet pa [ar `^` izveidotu diapazonu](/lv/essentials/ranges/excluding-endpoints). Diapazons sākas ar 0. Tas iet līdz `@*ARGS` vērtībai. Bet šī pēdējā vērtība nav diapazonā. Šeit `@*ARGS` [dod](/lv/essentials/positionals/arrays#size) masīva garumu.

Masīva pirmajam elementam ir indekss `0`. Bet uzdevums prasa rindu numurus no `1`. Tāpēc mēs pieskaitām indeksam 1. Programma to dara [koda blokā](/lv/essentials/strings/code-interpolation) virknes iekšpusē: `"{$n + 1} ..."`.

{% include nav.html %}
