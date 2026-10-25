---
title: 'Solutio: Numerare et print argumentorum lineae mandati'
---

{% include menu.html %}

Ansa `for` bona est pro hoc programmate.

## Codex

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Invenies programma in archivo [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Exitus

Curre programma. Proba id argumenta et numeros linearum imprimere:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Disputatio

Hoc programma aliquot artibus utilibus utitur. Primum, ansa `for` per [extensionem cum `^` factam](/la/essentials/ranges/excluding-endpoints) it. Extensio a 0 incipit. Usque ad valorem `@*ARGS` it. Sed hic ultimus valor in extensione non est. Hic `@*ARGS` longitudinem array [dat](/la/essentials/positionals/arrays#size).

Primum elementum array indicem `0` habet. Sed munus numeros linearum a `1` vult. Itaque 1 ad indicem addimus. Programma hoc [in clausula codicis](/la/essentials/strings/code-interpolation) intra chordam facit: `"{$n + 1} ..."`.

{% include nav.html %}
