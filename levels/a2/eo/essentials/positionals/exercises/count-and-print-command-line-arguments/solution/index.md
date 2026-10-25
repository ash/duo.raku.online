---
title: 'Solvo: Kalkuli kaj presi komando-linio argumentojn'
---

{% include menu.html %}

`for` buklo estas bona por ĉi tiu programo.

## Kodo

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Trovu la programon en la dosiero [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Eligo

Rulu la programon. Kontrolu, ke ĝi presas la argumentojn kaj la liniajn numerojn:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Diskuto

Ĉi tiu programo uzas kelkajn utilajn trukojn. Unue, la `for` buklo iras tra [intervalo farita per `^`](/eo/essentials/ranges/excluding-endpoints). La intervalo komenciĝas ĉe 0. Ĝi iras ĝis la valoro de `@*ARGS`. Sed ĉi tiu lasta valoro ne estas en la intervalo. Ĉi tie, `@*ARGS` [donas](/eo/essentials/positionals/arrays#size) la longon de la tabelo.

La unua elemento de tabelo havas la indekson `0`. Sed la tasko volas liniajn numerojn ekde `1`. Do ni aldonas 1 al la indekso. La programo faras tion [en koda bloko](/eo/essentials/strings/code-interpolation) ene de ŝnuro: `"{$n + 1} ..."`.

{% include nav.html %}
