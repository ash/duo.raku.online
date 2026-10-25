---
title: Entjeraj nombroj
---

{% include menu.html %}

La datentipo `Int` estas por entjeroj, tio estas, tutaj nombroj. Ili povas esti pozitivaj aŭ negativaj. Vi povas aldoni la signon `+`, se vi volas. Jen kelkaj evidentaj ekzemploj:

```raku
42
-42
100
-5
0
```

Jes, defaŭlte Raku traktas simplan `0` kiel entjeron.

## Grupoj de ciferoj

Raku havas ĉarman trajton, kiu helpas vin skribi grandajn nombrojn. Vi povas dividi la ciferojn en grupojn de miloj, por ke ili estu pli facile legeblaj:

```raku
1_000_000
-3_141_592
```

Vi povas fari nombron kiel `34_56`, sed estas pli bone ne fari tion. Aliaj homoj, kiuj legas vian kodon, povas trovi ĝin konfuza. Sed vi ne povas meti du substrekojn unu apud la alia. Ankaŭ, nombro ne povas komenciĝi aŭ finiĝi per substreko.

## Entjeroj de ajna longo

Raku ne havas problemon kun nombroj preter la limoj de 32 aŭ 64 bitoj. Ekzemple, la sekva programo estas ĝusta. Ĝi multiplikas du grandajn entjerojn kaj presas la ĝustan rezulton.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
