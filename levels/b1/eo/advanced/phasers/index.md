---
title: Faziloj
translations_gpt:
---

{% include menu.html %}

_Phaser_ estas speciala bloko. Ĝi ruliĝas aŭtomate en certa momento de la vivo de programo. Ĝi ne ruliĝas tie, kie ĝi aperas en la fontkodo. Vi ne vokas phaser-on. Vi nur diras, _kiam_ ĝia kodo ruliĝu, per la nomo de la bloko.

La plej oftaj phaser-oj markas la stadiojn de la tuta programo:

* `BEGIN` ruliĝas kiel eble plej frue, dum Raku ankoraŭ kompilas la programon;
* `INIT` ruliĝas unufoje, kiam la programo komenciĝas, antaŭ la ĉefa kodo;
* `END` ruliĝas unufoje ĉe la plej fino, post kiam la ĉefa kodo finiĝis.

La sekva programo metas ĉi tiujn phaser-ojn inter ordinarajn deklarojn. Rimarku, ke la eligo ne sekvas la ordon de la linioj en la dosiero:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

La programo presas:

```
BEGIN
INIT
main body
END
```

`BEGIN` ruliĝas unue, dum la programo estas kompilata. Poste, kiam la programo ruliĝas, `INIT` venas antaŭ la ĉefa korpo. Poste presas la ĉefa korpo. `END` ruliĝas laste, kie ajn ĝi estas skribita en la dosiero.

`END` estas ofte uzata tuj antaŭ ol la programo finiĝas. Ĝi povas presi resumon aŭ purigi ion. `BEGIN` estas utila por laboro, kiu devas okazi antaŭ ĉio alia.

{% include nav.html %}
