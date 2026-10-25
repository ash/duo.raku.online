---
title: 'Solutio: Numerare et print argumentorum lineae mandati'
---

{% include menu.html %}

In hoc programmate, `for` ansa bona electio est.

## Codex

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Invenies programma in archivo [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Exitus

Curre programma et proba id argumenta cum numeris linearum imprimere:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Disputatio

Hoc programma aliquot artibus utilibus utitur. Primum, ansa `for` per [extensionem cum `^` factam](/la/essentials/ranges/excluding-endpoints) it. Itaque extensio a 0 incipit. Usque ad valorem `@*ARGS` it, sed eum non includit. In hoc contextu, `@*ARGS` longitudinem array [reddit](/la/essentials/positionals/arrays#size).

Primum elementum array indicem `0` habet. Sed munus vult ut lineas a `1` numeremus. Haec parva translatio [intra clausulam codicis](/la/essentials/strings/code-interpolation) in chorda computatur: `"{$n + 1} ..."`.

{% include nav.html %}
