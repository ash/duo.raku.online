---
title: 'Eligo per `say`'
---

{% include menu.html %}

La funkcio `say` presas valorojn al la norma eliga fluo, `STDOUT`. Oni ankaŭ nomas ĝin subrutino, aŭ simple rutino. Ĉu vi rulas la programon en terminalo? Tiam vi vidas la eligon tie. Ĉu vi uzas retan servon? Tiam la eligo iras al speciala parto de la retpaĝo.

Jen ekzemplo de uzado de `say`:

```raku
say 42;
```

Ĉi tiu linio povas esti parto de pli granda programo. Ĝi ankaŭ povas esti la tuta programo. Kompreneble, ĝi presas `42` al la eligo.

Nun ni provu ŝnuron:

```raku
say 'Hello, World!';
```

Bone! Nun `Hello, World!` estas sur la ekrano.

La rutino `say` povas preni pli ol unu argumenton. Do ni povas presi plurajn valorojn samtempe:

```raku
say 42, 'Hello, World!';
```

Sed rigardu la eligon. Ĝiaj partoj estas kunigitaj en unu ŝnuron: `42Hello, World!`. Do estas pli bone aldoni spacon inter ili. Vi jam povas solvi ĉi tiun problemon. Ekzemple, tiel:

```raku
say 42, ' ', 'Hello, World!';
```

La rutino `say` presas ĉiujn argumentojn. Poste ĝi aldonas novlinian signon al la eligo.

{% include nav.html %}
