---
title: 'Risinājums: Komandrindas argumentu skaitīšana un drukāšana'
---

{% include menu.html %}

Šajā programmā `for` cikls ir laba izvēle.

## Kods

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Atrodi programmu failā [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Izvade

Palaid programmu un pārbaudi, ka tā izdrukā argumentus ar rindu numuriem:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskusija

Šī programma izmanto dažus noderīgus trikus. Pirmkārt, `for` cikls iet pa [diapazonu, kas izveidots ar `^`](/lv/essentials/ranges/excluding-endpoints). Tātad diapazons sākas ar 0. Tas iet līdz `@*ARGS` vērtībai, bet to neietver. Šajā kontekstā `@*ARGS` [atgriež](/lv/essentials/positionals/arrays#size) masīva garumu.

Masīva pirmajam elementam ir indekss `0`. Bet uzdevums prasa, lai mēs skaitītu rindas no `1`. Šī mazā nobīde tiek aprēķināta [koda blokā](/lv/essentials/strings/code-interpolation) virknes iekšpusē: `"{$n + 1} ..."`.

{% include nav.html %}
