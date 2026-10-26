---
title: Probationes currere
translations_gpt:
---

{% include menu.html %}

Unum archivum probationum merum programma Raku est. Itaque id directe currere potes:

```
raku t/01-basic.rakutest
```

Exitum suum TAP in screen imprimit. Cum plura quam unum aut duo archiva habes, _cursorem probationum_ requiris. Totum directorium probationum currit et summam effectuum dat. Cursor pro Raku est `prove6`:

```
prove6 t/
```

Hoc omne archivum probationum sub `t/` currit et nuntiat quot archiva et probationes transierint. In fine est unus effectus universalis, transit aut deficit. Hoc multo facilius legitur quam nudum TAP ex singulis archivis.

Si distributio `META6.json` habet, instrumentum modulorum probationes eius pro te currere potest:

```
zef test .
```

`zef test` directorium `t/` invenit, probationes currit et effectum nuntiat. Prorsus idem sponte fit antequam distributio installatur. Itaque probationes duo munera habent. Eas per `prove6` curris dum codicem evolvis. Oecosystema eas currit ut distributionem verificet antequam quisquam eam installat.

> Archiva probationum extensionem `.rakutest` (vel `.t`) habent. Plerumque numeros in nominibus habent, ut in `t/01-basic.rakutest`.

{% include nav.html %}
