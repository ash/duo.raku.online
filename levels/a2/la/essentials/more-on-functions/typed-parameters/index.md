---
title: Typis parametra
---

{% include menu.html %}

In Raku parameter functionis typum habere potest. Tum solum valores huius typi accipit. Hoc valde simile est [variabilibus typatis](/la/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nunc argumenta functionis numeri integri esse debent.

```raku
say add(10, 20);
# say add(pi, e); # Error
```

Solum valores `Int` transmittere potes. Quilibet alius typus errorem temporis compilationis dat. Talis error venit antequam programma currit.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Nota: Raku hic typos pro te non convertit. In aliis casibus talis conversio possibilis est.

```raku
# say add('3', '4'); # Error
say '3' + '4'; # OK et est 7
```

%%tipblock
## Estne error temporis compilationis?
Specta initium nuntii erroris. Estne `===SORRY!=== Error while compiling`? Tum error tempore compilationis accidit.
%%/tipblock

{% include nav.html %}
