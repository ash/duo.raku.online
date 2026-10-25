---
title: 'Solvo: Kalkuli kaj presi komando-linio argumentojn'
---

{% include menu.html %}

En ĉi tiu programo, `for` buklo estas bona elekto.

## Kodo

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Trovu la programon en la dosiero [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Eligo

Rulu la programon kaj kontrolu, ke ĝi presas la argumentojn kun liniaj numeroj:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskuto

Ĉi tiu programo uzas kelkajn oportunajn trukojn. Unue, la `for` buklo iras tra la [intervalo farita per `^`](/eo/essentials/ranges/excluding-endpoints). Do la intervalo komenciĝas ĉe 0. Ĝi iras ĝis la valoro de `@*ARGS`, sed ne inkluzivas ĝin. En ĉi tiu kunteksto, `@*ARGS` [redonas](/eo/essentials/positionals/arrays#size) la longon de la tabelo.

La unua elemento de tabelo havas la indekson `0`. Sed la tasko volas, ke ni nombru la liniojn ekde `1`. Ĉi tiu malgranda ŝovo estas kalkulata [ene de koda bloko](/eo/essentials/strings/code-interpolation) en ŝnuro: `"{$n + 1} ..."`.

{% include nav.html %}
