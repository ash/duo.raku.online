---
title: Revizio de operatora konduto
translations_gpt:
---

{% include menu.html %}

Kiam esprimo havas plurajn operatorojn, Raku devas decidi, en kiu ordo uzi ilin. Du reguloj regas tion: _prioritato_ kaj _asocieco_.

## Prioritato

Prioritato decidas, kiu operatoro estas pli forta, tio estas, kiu ligas pli forte. Multipliko havas pli altan prioritaton ol adicio, do ĝi estas farata unue:

```raku
say 2 + 3 * 4; # 14
```

Raku legas la esprimon kiel `2 + (3 * 4)`, do la rezulto estas `14` kaj ne `20`. Vi ĉiam povas uzi krampojn por ricevi alian ordon:

```raku
say (2 + 3) * 4; # 20
```

## Asocieco

Asocieco decidas la ordon, kiam operatoroj havas la _saman_ prioritaton. Subtraho estas maldekstre-asocia, kio signifas, ke ĝi grupiĝas de maldekstre:

```raku
say 8 - 3 - 2; # 3
```

Tio estas `(8 - 3) - 2`, kio donas `3`. Potencigo, aliflanke, estas dekstre-asocia:

```raku
say 2 ** 3 ** 2; # 512
```

Ĉi tie, la esprimo grupiĝas kiel `2 ** (3 ** 2)`. Tio estas `2 ** 9`, kio donas `512`.

## Ĉenitaj komparoj

Komparaj operatoroj povas esti _ĉenitaj_. Tio legiĝas nature kaj faras tion, kion vi atendus el matematiko:

```raku
say 1 < 2 < 3; # True
say 1 < 5 < 3; # False
```

La meza valoro estas komparata kun la valoroj ĉe ambaŭ flankoj de ĝi. Do `1 < 2 < 3` estas vera, ĉar kaj `1 < 2` kaj `2 < 3` estas veraj.

{% include nav.html %}
