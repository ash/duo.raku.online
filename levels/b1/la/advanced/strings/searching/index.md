---
title: Quaerendo in catenis
---

{% include menu.html %}

Plures methodi tibi dicunt quid chorda contineat.

Methodus `contains` probat an una chorda alicubi intra alteram sit:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Methodi `starts-with` et `ends-with` probant quomodo chorda incipiat et desinat:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Ut exactam positionem subchordae invenias, `index` adhibe. Positionem primae congruentiae reddit, a nulla numerans:

```raku
say 'Raku'.index('k'); # 2
```

Si `index` subchordam non invenit, `Nil` reddit, non numerum:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
