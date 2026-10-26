---
title: Dividendo et coniungendo
---

{% include menu.html %}

Chordam pluribus modis in partes dividere et iterum coniungere potes.

Methodus `words` chordam ad spatia alba in indicem verborum dividit:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Methodus `split` chordam ad separatorem quem eligis dividit:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Casus specialis et gravis est divisio per **chordam vacuam** `''`. Chordam in singulos characteres dividit. Sed etiam chordam vacuam in ipso initio et in ipso fine addit. Itaque eventus duo elementa plus habet quam fortasse exspectas:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Ut chordam in characteres dividas, methodum `comb` sine argumentis vocare potes. Hoc directe facit, et nullas chordas vacuas removere debes:

```raku
say 'Raku'.comb; # (R a k u)
```

Ut contrario modo procedas, methodum `join` adhibe. Indicem valorum in unam chordam coniungit et separatorem inter eos ponit:

```raku
say <a b c>.join('-'); # a-b-c
```

Duae aliae methodi cum partibus chordae operantur. Methodus `substr` partem chordae reddit. Ei positionem initialem das et, si vis, longitudinem:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Et `trim` spatia alba in initio et in fine chordae removet:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
