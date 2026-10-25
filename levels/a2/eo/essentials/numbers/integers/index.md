---
title: Entjeraj nombroj
---

{% include menu.html %}

Entjeroj estas tutaj nombroj. En Raku, la datentipo `Int` estas por entjeroj. Entjero povas esti pozitiva aŭ negativa. Vi ankaŭ povas skribi la signon `+` antaŭ nombro, se vi volas. Jen kelkaj simplaj ekzemploj:

```raku
42
-42
100
-5
0
```

Jes, simpla `0` ankaŭ estas entjero defaŭlte.

## Grupoj de ciferoj

Raku havas belan trajton por grandaj nombroj. Vi povas dividi la ciferojn en grupojn de miloj. Tio faras la nombrojn pli facile legeblaj:

```raku
1_000_000
-3_141_592
```

Vi ankaŭ povas skribi nombron kiel `34_56`. Estas pli bone ne fari tion. Ĝi povas konfuzi aliajn homojn, kiuj legas vian kodon. Sed vi ne povas meti du substrekojn unu apud la alia. Kaj nombro ne povas komenciĝi aŭ finiĝi per substreko.

## Entjeroj de ajna longo

Raku perfekte laboras kun tre grandaj nombroj. Ili povas esti pli grandaj ol la limoj de 32 aŭ 64 bitoj. Ekzemple, la programo sube estas en ordo. Ĝi multiplikas du grandajn entjerojn kaj presas la ĝustan rezulton.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
