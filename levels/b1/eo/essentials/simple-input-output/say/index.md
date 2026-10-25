---
title: 'Eligo per `say`'
---

{% include menu.html %}

La funkcio `say` presas valorojn al la norma eliga fluo, `STDOUT`. Ĝi ankaŭ nomiĝas subrutino, aŭ simple rutino. Se vi rulas la programon el terminalo, la eligo aperas tie. Kun retaj servoj, ĝi iras al speciala areo de la retpaĝo.

Jen ekzemplo de uzado de `say`:

```raku
say 42;
```

Ĉi tiu linio povas esti parto de pli granda programo aŭ la tuta programo. Kompreneble, ĝi presas `42` al la eligo.

Ni laboru kun ŝnuroj nun:

```raku
say 'Hello, World!';
```

Kaj jen ĝi: `Hello, World!` sur la ekrano.

`say` povas preni plurajn argumentojn, do ni povas presi pli da valoroj samtempe:

```raku
say 42, 'Hello, World!';
```

Nur notu, ke la partoj estas kunigitaj en unu ŝnuron: `42Hello, World!`. Do estas pli bone aldoni spacon inter ili. Vi jam devus povi solvi ĉi tiun problemon. Ekzemple, tiel:

```raku
say 42, ' ', 'Hello, World!';
```

Post ĉiuj argumentoj, `say` aldonas novlinian signon al la eligo.

{% include nav.html %}
