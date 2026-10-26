---
title: Publikigi per fez
translations_gpt:
---

{% include menu.html %}

La antaŭa temo prezentis `fez`, ilon, kiu alŝutas distribuojn al la Raku-ekosistemo. Vi ne devas uzi `fez`, ĉar estas aliaj manieroj publikigi. Sed ĝi estas la plej ofta elekto. Ĝi ankaŭ faras pli ol alŝuti. Ĝi povas prepari novan distribuon por vi kaj administri vian aŭtoran konton. Instalu ĝin per `zef`:

```
zef install fez
```

## Komenci distribuon

Vi povas krei `META6.json` kaj la dosierujojn `lib/` kaj `t/` mane. Aŭ vi povas lasi `fez` prepari ilin por vi:

```
fez init My::Greeting
```

`fez init` kreas novan distribuon, sur kiu vi povas konstrui. Ĝi estas projekta dosierujo kun preta `META6.json` kaj la norma aranĝo. Do vi povas tuj komenci skribi kodon sub `lib/` kaj testojn sub `t/`. Vi ne devas mem prepari la metadatuman dosieron.

## Registriĝi kaj ensaluti

Por publikigi, vi bezonas ekosisteman konton. Vi kreas ĝin unufoje per `fez register`, kiu petas uzantnomon, retpoŝton kaj pasvorton. Poste vi ensalutas per `fez login`. Ĝi konservas vian ŝlosilon, tiel ke postaj komandoj scias, kiu vi estas:

```
fez register
fez login
```

Via uzantnomo estas grava. La `META6.json` de distribuo devas havi kampon `auth` kun la valoro `zef:<username>`. Tiel la ekosistemo scias, ke la alŝuto vere venas de vi.

## Alŝuti

Kiam vi havas konton kaj la distribuo estas preta, rulu `fez upload`. Ĝi pakas la nunan dosierujon kaj sendas ĝin:

```
fez upload
```

Post tio, iu ajn povas instali ĝin laŭ nomo per `zef install My::Greeting`. Vi povas alŝuti ĉiun version nur unufoje. Do memoru pligrandigi la `version` en `META6.json`, antaŭ ol vi publikigas ĝisdatigon.

## Aliaj utilaj komandoj

Jen kelkaj pliaj komandoj de `fez`, kiujn vi bezonos:

* `fez review` — kontroli distribuon pri eblaj problemoj, antaŭ ol vi alŝutas ĝin;
* `fez list` — montri la distribuojn, kiujn vi jam publikigis;
* `fez refresh` — konstrui `META6.json` denove el la dosieroj, kiuj nun estas sur la disko.

> Ĉiuj ĉi tiuj bezonas instalitan `fez` kaj retan konekton. Ĉio post `init` ankaŭ bezonas ekosisteman konton.

{% include nav.html %}
