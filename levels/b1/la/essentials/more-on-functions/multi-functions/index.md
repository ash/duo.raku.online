---
title: Multi-functiones
---

{% include menu.html %}

Raku _multiplicem distributionem_ secundum signaturam functionis habet. Ea tibi permittit functiones creare cum eodem nomine sed diversis typis datorum inputorum. Utere declaratore `multi` pro quaque variante functionis.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Bene est `sub` post `multi` omittere.

Cum duae variantes eiusdem functionis sunt, compilator multiplicem distributionem facit. Electio eius ex argumentis pendet quae in vocatione functionis videt. Compara has duas vocationes:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

Prima vocatio variantem cum parametris integris currit. Secunda vocatio alteram variantem currit, quae duas chordas exspectat.

## Literales parametri

Usus iucundus multi-functionum sunt variantes cum valoribus literalibus ut parametris. Specta duas variantes sequentes:

```raku
multi sub f(42) {say 'Hoc est responsum'}
multi sub f($x) {say "$x non est responsum"}
```

Prima varians solum currit, si functionem cum valore 42 exacte vocas. In omnibus aliis casibus Raku secundam variantem adhibet. Non refert quo ordine hae functiones definiantur.

```raku
f(10); # 10 non est responsum
f(42); # Hoc est responsum
```

{% include nav.html %}
