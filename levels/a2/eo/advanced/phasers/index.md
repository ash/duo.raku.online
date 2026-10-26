---
title: Faziloj
translations_gpt:
---

{% include menu.html %}

_Phaser_ estas speciala bloko. Ĝi ruliĝas per si mem en certa momento de la vivo de programo. Ĝi ne ruliĝas ĉe sia loko en la kodo. Vi ne vokas phaser-on. Vi nur diras, _kiam_ ĝia kodo devas ruliĝi. La nomo de la bloko diras tion.

La plej oftaj phaser-oj temas pri la stadioj de la tuta programo:

* `BEGIN` ruliĝas kiel eble plej frue. En tiu tempo, Raku ankoraŭ kompilas la programon.
* `INIT` ruliĝas unufoje, kiam la programo komenciĝas. Ĝi ruliĝas antaŭ la ĉefa kodo.
* `END` ruliĝas unufoje ĉe la plej fino. Ĝi ruliĝas post la fino de la ĉefa kodo.

Ĉi tiu programo havas ĉi tiujn phaser-ojn inter normalaj deklaroj. Rigardu la eligon. Ĝi ne sekvas la ordon de la linioj en la dosiero:

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

`BEGIN` ruliĝas unue, dum la kompilado. Poste la programo ruliĝas. `INIT` ruliĝas antaŭ la ĉefa korpo. Post tio, la ĉefa korpo presas sian linion. `END` ruliĝas laste. Ĝia loko en la dosiero ne gravas.

Oni ofte uzas `END` por presi resumon. Oni ankaŭ uzas ĝin por purigi ion. Tio okazas tuj antaŭ la fino de la programo. `BEGIN` estas utila por laboro, kiu devas okazi antaŭ ĉio alia.

{% include nav.html %}
