---
title: run kaj shell
translations_gpt:
---

{% include menu.html %}

Estas du manieroj lanĉi eksteran programon. La funkcio `run` prenas la komandon kaj ĝiajn argumentojn kiel **apartajn** valorojn. Ĝi rulas la programon rekte, sen ŝelo:

```raku
run 'echo', 'hello';
```

Ĉi tio rulas la programon `echo` kun la sola argumento `hello`, do ĝi presas `hello`. La argumentoj estas transdonataj aparte, do ŝelo ne povas miskompreni spacojn aŭ specialajn signojn. Tial `run` estas la sekura defaŭlto.

La funkcio `shell` funkcias alimaniere. Ĝi transdonas **unu solan ĉenon** al la sistema ŝelo, kiu legas kaj rulas ĝin. Tio permesas al vi uzi ŝelajn ecojn, kiel duktojn kaj redirektadon:

```raku
shell 'echo hello | tr a-z A-Z';
```

Ĉi tie, la ŝelo rulas `echo` kaj sendas ĝian eligon tra `tr` per dukto. Poste ĝi presas `HELLO`. Tio estas oportuna, sed vi devas esti atenta. La ŝelo mem decidas, kion la ĉeno signifas. Do estas danĝere konstrui komandon `shell` el enigo, kiun vi ne fidas. Uzu `run`, krom se vi vere bezonas ŝelajn ecojn.

Ambaŭ funkcioj redonas objekton `Proc`, kiu priskribas, kiel la programo finiĝis. Defaŭlte, la lanĉita programo kunhavas la eligon de via programo. Do tio, kion ĝi presas, aperas sur la ekrano. Por anstataŭe kapti tiun eligon, vi devas peti ĝin. Tio estas la temo de la sekva paĝo.

{% include nav.html %}
