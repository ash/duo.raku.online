---
title: Normaj fluoj
translations_gpt:
---

{% include menu.html %}

Ĉiu programo havas tri _normajn fluojn_. Fluo portas tekston en programon aŭ el ĝi. La tri fluoj konektas la programon kun la ekstera mondo. Ili estas norma eligo, norma erarfluo kaj norma enigo. Raku donas al vi tri specialajn variablojn por ili: `$*OUT`, `$*ERR` kaj `$*IN`.

Norma eligo estas por la normala eligo de programo. Vi jam uzas ĝin la tutan tempon. `say` kaj `print` sendas sian tekston al `$*OUT`.

```raku
say 'Hello'; # iras al norma eligo
```

Erarmesaĝoj kaj aliaj mesaĝoj pri problemoj iras al norma erarfluo. Ĝi estas aparta fluo. Do ĉi tiuj mesaĝoj ne miksiĝas kun la vera eligo de la programo. La rutino `note` skribas al norma erarfluo:

```raku
note 'Something looks wrong'; # iras al norma erarfluo
```

Tio estas utila. Vi povas sendi ĉiun el la du fluoj al alia loko. Tio nomiĝas redirektado. Ekzemple, vi povas konservi la eligon en dosiero. Sed vi ankoraŭ vidas la erarmesaĝojn sur la ekrano.

Vi ankaŭ povas skribi al la fluoj rekte. Ĉiu el `$*OUT` kaj `$*ERR` estas _tenilo_. Per tenilo, programo povas skribi aŭ legi datumojn. Ĉiu tenilo havas siajn proprajn metodojn `say` kaj `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

La tria fluo, `$*IN`, estas norma enigo. Ĝi portas tekston en la programon, ekzemple de la klavaro. Vi jam uzis ĝin, sed ne rekte. La funkcio `prompt` legas linion el ĝi. Ni revenas al legado de enigo en la paĝo pri [dosierteniloj](/eo/oop/file-handles). Tio estas, ĉar `$*IN` estas tenilo, same kiel malfermita dosiero.

{% include nav.html %}
