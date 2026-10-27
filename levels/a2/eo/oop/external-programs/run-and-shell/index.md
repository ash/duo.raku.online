---
title: run kaj shell
translations_gpt:
---

{% include menu.html %}

Estas du manieroj lanĉi eksteran programon. La unua estas la funkcio `run`. Ĝi ne uzas ŝelon. Ŝelo estas programo, kiu legas komandojn kaj rulas ilin. `run` prenas la komandon kaj ĝiajn argumentojn kiel **apartajn** valorojn. Argumentoj estas la valoroj, kiujn vi donas al la komando. Poste `run` lanĉas la programon rekte:

```raku
run 'echo', 'hello';
```

Ĉi tio rulas la programon `echo` kun unu argumento, `hello`. La programo presas `hello`. La argumentoj venas al la programo aparte. Do neniu ŝelo povas miskompreni spacojn aŭ specialajn signojn. Tial `run` estas la sekura defaŭlta elekto.

La funkcio `shell` funkcias alimaniere. Ĝi donas **unu solan ĉenon** al la ŝelo de la sistemo. La ŝelo legas la ĉenon kaj rulas ĝin. Do vi povas uzi ecojn de la ŝelo, kiel redirektadon kaj duktojn. Redirektado sendas eligon al alia loko, ekzemple al dosiero. Dukto sendas la eligon de unu komando al la sekva:

```raku
shell 'echo hello | tr a-z A-Z';
```

Ĉi tie, la ŝelo rulas `echo`. Dukto sendas ĝian eligon al `tr`. Poste la ŝelo presas `HELLO`. Tio estas facila, sed estas risko. La ŝelo mem legas la ĉenon kaj trovas ĝiajn partojn. Eble la ĉeno venas el enigo, kiun vi ne fidas. Tiam komando `shell` estas danĝera. Uzu `run`, krom se vi vere bezonas ecojn de la ŝelo.

Ambaŭ funkcioj redonas objekton `Proc`. Ĝi diras al vi, kiel la programo finiĝis. Normale, la lanĉita programo uzas la saman eligon kiel via programo. Do vi vidas ĝian eligon sur la ekrano. Vi ankaŭ povas kapti ĉi tiun eligon. Por tio, vi devas peti ĝin. La sekva temo montras, kiel.

{% include nav.html %}
