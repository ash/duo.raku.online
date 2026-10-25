---
title: Typis parametra
---

{% include menu.html %}

In Raku parametros functionis ad typum restringere potes. Hoc valde simile est [variabilibus typatis](/la/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nunc functio postulat ut argumenta sua numeri integri sint.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

Valor cuiuslibet typi praeter `Int` errorem temporis compilationis facit.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota: Raku hic typos automatice non convertet. In aliis casibus talem conversionem facere potest.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK et est 7
```

%%tipblock
## Quomodo scire an error temporis compilationis sit
Si nuntius erroris a `===SORRY!=== Error while compiling` incipit, error tempore compilationis accidit.
%%/tipblock

{% include nav.html %}
