---
title: Dividendo et coniungendo
---

{% include menu.html %}

Chordam pluribus modis in partes dividere potes. Etiam partes iterum coniungere potes.

Methodus `words` chordam in indicem verborum dividit. Spatium album, exempli gratia spatium simplex, verba separat:

```raku
say 'Hello big World'.words; # (Hello big World)
```

Methodus `split` chordam ad separatorem secat. Tu separatorem eligis:

```raku
say 'a,b,c'.split(','); # (a b c)
```

Ecce casus specialis et gravis. Chordam per **chordam vacuam** `''` dividere potes. Tum singulos characteres chordae accipis. Sed etiam duas alias chordas vacuas accipis. In ipso initio et in ipso fine sunt. Itaque eventus duo elementa plus habet quam exspectas:

```raku
say 'abc'.split('').elems;        # 5 — the three letters, plus an empty string at each end
say 'abc'.split('', :skip-empty); # (a b c) — the :skip-empty adverb drops the empties
```

Visne chordam in characteres dividere? Methodum `comb` sine argumentis voca. Hoc directe facit. Nullae aliae chordae vacuae sunt:

```raku
say 'Raku'.comb; # (R a k u)
```

Methodus `join` contrarium facit. Indicem valorum in unam chordam coniungit. Separatorem inter valores ponit:

```raku
say <a b c>.join('-'); # a-b-c
```

Duae aliae methodi cum partibus chordae operantur. Methodus `substr` tibi partem chordae dat. Ei positionem initialem das. Si vis, etiam longitudinem ei dare potes:

```raku
say 'Hello World'.substr(0, 5); # Hello
say 'Hello World'.substr(6);    # World
```

Et `trim` spatia alba in utroque fine chordae removet:

```raku
say '  hi  '.trim; # hi
```

{% include nav.html %}
