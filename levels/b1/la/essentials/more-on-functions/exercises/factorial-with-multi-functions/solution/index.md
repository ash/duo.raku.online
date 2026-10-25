---
title: 'Solutio: Factorial cum multi-functiones'
---

{% include menu.html %}

Hoc exercitium iterum de factorialibus est. Re vera hoc munus nobis permittit plures proprietates Raku ostendere.

Factorialem computare potes incipiendo a numero dato et descendendo. In eo casu consistere debes cum numerus ad 1 pervenit. Multi-functiones hoc tibi permittunt. Transfer casum `$n == 1` in separatam multi-functionem.

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

Nota programma argumentum inputum in integrum convertere: `@*ARGS[0].Int`. Hoc circulum infinitum prohibet, cum numerus inputus est `1`. Sine conversione functio `factorial` valorem typi [`IntStr`](/la/essentials/typed-variables/allomorphs) accipit. Prima varians multi-functionis talem vocationem capere non potest. Sed in vocatione recursiva `factorial(2 - 1)` argumentum est integer. Itaque Raku primam variantem vocare potest.

{% include nav.html %}
