---
title: Normaj fluoj
translations_gpt:
---

{% include menu.html %}

Ĉiu programo havas tri _normajn fluojn_, kiuj konektas ĝin al ĝia medio. Ili estas norma eligo, norma erarfluo kaj norma enigo. Raku donas aliron al ili per tri specialaj variabloj: `$*OUT`, `$*ERR` kaj `$*IN`.

Fakte, vi skribas al norma eligo jam de la komenco. Kaj `say` kaj `print` sendas sian tekston al `$*OUT`.

```raku
say 'Hello'; # iras al norma eligo
```

Erarmesaĝoj kaj aliaj mesaĝoj pri problemoj iras al aparta fluo, norma erarfluo. Tiel ili ne miksiĝas kun la vera eligo de la programo. La rutino `note` skribas tien:

```raku
note 'Something looks wrong'; # iras al norma erarfluo
```

Estas utile teni ilin apartaj, ĉar vi povas redirekti ĉiun fluon aparte. Ekzemple, vi povas konservi la eligon de programo en dosiero. Ĝiaj erarmesaĝoj tamen ankoraŭ aperas sur la ekrano.

Vi ankaŭ povas skribi al la fluoj rekte. Kaj `$*OUT` kaj `$*ERR` estas _teniloj_ kun siaj propraj metodoj `say` kaj `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

La tria fluo, `$*IN`, estas norma enigo. Vi jam uzis ĝin, sed ne rekte: `prompt` legas linion el ĝi. Ni revenos al legado de enigo en la temo pri [dosierteniloj](/eo/oop/file-handles). Tio estas, ĉar `$*IN` estas tenilo, same kiel malfermita dosiero.

{% include nav.html %}
