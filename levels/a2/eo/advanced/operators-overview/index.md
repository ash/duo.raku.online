---
title: Revizio de operatora konduto
translations_gpt:
---

{% include menu.html %}

Esprimo povas havi plurajn operatorojn. Tiam Raku devas decidi la ordon. Kiu operatoro venas unue? Du reguloj decidas tion: _prioritato_ kaj _asocieco_.

## Prioritato

Prioritato decidas, kiu operatoro estas pli forta. La pli forta operatoro prenas siajn operandojn unue. Multipliko havas pli altan prioritaton ol adicio. Do multipliko okazas unue:

```raku
say 2 + 3 * 4; # 14
```

Raku legas la esprimon kiel `2 + (3 * 4)`. La rezulto estas `14`, ne `20`. Vi ĉiam povas aldoni krampojn. Ili donas alian ordon:

```raku
say (2 + 3) * 4; # 20
```

## Asocieco

Kelkaj operatoroj havas la _saman_ prioritaton. Tiam asocieco decidas la ordon. Subtraho estas maldekstre-asocia. Do Raku grupigas ĝin de maldekstre:

```raku
say 8 - 3 - 2; # 3
```

Tio estas `(8 - 3) - 2`. La rezulto estas `3`. Sed potencigo, la operatoro `**`, estas dekstre-asocia:

```raku
say 2 ** 3 ** 2; # 512
```

Ĉi tie, Raku grupigas la esprimon kiel `2 ** (3 ** 2)`. Tio estas `2 ** 9`, kaj la rezulto estas `512`.

## Ĉenitaj komparoj

Vi povas _ĉeni_ komparajn operatorojn. Tiam ili venas unu post alia. Tia kodo estas facile legebla. Ĝi funkcias kiel en matematiko:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

Raku komparas la mezan valoron kun ambaŭ valoroj apud ĝi. `1 < 2 < 3` estas vera. Tio estas, ĉar `1 < 2` estas vera, kaj `2 < 3` ankaŭ estas vera.

{% include nav.html %}
