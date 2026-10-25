---
title: Multi-functiones
---

{% include menu.html %}

Raku _multiplicem distributionem_ secundum signaturam functionis habet. Cum ea plures functiones idem nomen habere possunt. Sed diversos typos datorum inputorum accipiunt. Scribe declaratorem `multi` ante quamque variantem functionis.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Potes `sub` post `multi` omittere.

Hic eadem functio duas variantes habet. Compilator argumenta in quaque vocatione spectat. Deinde variantem rectam eligit. Haec est multiplex distributio. Compara has duas vocationes:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Prima vocatio variantem cum parametris integris currit. Secunda vocatio secundam variantem currit. Ea varians duas chordas exspectat.

## Literales parametri

Ecce casus iucundus. Varians valorem literalem ut parametrum habere potest. Valor literalis est valor in codice, ut `42`. Specta has duas variantes:

```raku
multi sub f(42) {say 'Hoc est responsum'}
multi sub f($x) {say "$x non est responsum"}
```

Raku primam variantem solum currit cum argumentum est exacte 42. In omnibus aliis casibus Raku secundam variantem currit. Ordo duarum definitionum non refert.

```raku
f(10); # 10 non est responsum
f(42); # Hoc est responsum
```

{% include nav.html %}
