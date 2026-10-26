---
title: Quaerendo in catenis
---

{% include menu.html %}

Aliquae methodi tibi de contentis chordae dicunt.

Methodus `contains` probat an una chorda intra alteram chordam sit. Quolibet loco esse potest:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Methodus `starts-with` initium chordae probat. Methodus `ends-with` finem probat:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Requirisne exactam positionem partis chordae? Tum `index` adhibe. Positionem primae congruentiae reddit. A nulla numerat:

```raku
say 'Raku'.index('k'); # 2
```

Interdum `index` partem invenire non potest. Tum `Nil` reddit, non numerum:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
