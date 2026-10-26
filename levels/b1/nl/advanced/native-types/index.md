---
title: Native typen
---

{% include menu.html %}

De typen die je tot nu toe hebt gebruikt, `Int`, `Num` en `Str`, zijn volwaardige Raku-objecten. Ze zijn flexibel en kunnen je iets over zichzelf vertellen. Ze kunnen ook zo groot zijn als je nodig hebt. Raku heeft daarnaast een tweede, parallelle familie van _native_ typen. Die passen direct bij de manier waarop de machine zelf waarden opslaat. Dat zijn `int`, `num`, `str` en een reeks gehele getallen met een vaste grootte.

Native typen hebben namen in kleine letters. Ze leveren wat flexibiliteit in voor snelheid en een vaste grootte. Ze gedragen zich ook een beetje anders dan de bijbehorende boxed typen. Dit deel laat zien wat native typen zijn en hoe hun vaste grootte tot overflow leidt.

{% include nav.html %}
