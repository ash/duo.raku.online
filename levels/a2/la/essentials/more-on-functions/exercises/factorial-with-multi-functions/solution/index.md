---
title: 'Solutio: Factorial cum multi-functiones'
---

{% include menu.html %}

Hoc exercitium iterum de factorialibus est. Hoc munere plures proprietates Raku ostendere possumus.

Ut factorialem inveniamus, a numero dato incipere possumus. Deinde descendimus. Consistere debemus cum numerus est 1. Multi-functiones hoc facere possunt. Pone casum `$n == 1` in suam multi-functionem.

## Codex

Hic est solutio:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Invenias programmatum in archivo [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Exitus

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Commentarium

Nota: programma argumentum inputum in integrum mutat. Hoc per `@*ARGS[0].Int` facit. Sine eo, inputum `1` circulum infinitum dat. Ecce causa. Functio `factorial` tum valorem [`IntStr`](/la/essentials/typed-variables/allomorphs) accipit. Itaque Raku primam variantem multi-functionis adhibere non potest. Vocatio recursiva `factorial(2 - 1)` alia est. Ibi argumentum est integer. Itaque Raku primam variantem vocare potest.

{% include nav.html %}
