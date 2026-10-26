---
title: Publikigi per fez
translations_gpt:
---

{% include menu.html %}

La antaŭa temo montris `fez`. Per `fez` vi alŝutas distribuon al la Raku-ekosistemo. Vi ne devas uzi `fez`. Estas aliaj manieroj publikigi. Sed la plej multaj homoj uzas `fez`. Kaj ĝi faras pli ol alŝuti. Ĝi ankaŭ povas krei novan distribuon por vi. Ĝi povas ankaŭ zorgi pri via aŭtora konto. Instalu `fez` per `zef`:

```
zef install fez
```

## Krei novan distribuon

Vi povas mem fari la `META6.json` kaj la dosierujojn `lib/` kaj `t/`. Sed `fez` povas fari ilin por vi:

```
fez init My::Greeting
```

`fez init` kreas la komencon de nova distribuo. Ĝi estas projekta dosierujo. Ĝi jam havas `META6.json` kaj la norman aranĝon. Do vi povas tuj komenci skribi. La kodo iras sub `lib/`, kaj la testoj iras sub `t/`. Vi ne bezonas mem prepari la `META6.json`.

## Registriĝi kaj ensaluti

Por publikigi, vi bezonas konton en la ekosistemo. Vi kreas la konton nur unufoje, per `fez register`. Ĝi petas uzantnomon, retpoŝton kaj pasvorton. Poste vi ensalutas per `fez login`. Ĝi konservas vian ŝlosilon. Per ĉi tiu ŝlosilo, la sekvaj komandoj scias, kiu vi estas:

```
fez register
fez login
```

Via uzantnomo estas grava. La `META6.json` de distribuo devas havi kampon `auth`. Ĝia valoro estas `zef:<username>`. Tiel la ekosistemo scias, ke la alŝuto vere estas via.

## Alŝuti

Vi havas konton, kaj la distribuo estas preta. Nun `fez upload` pakas la nunan dosierujon kaj sendas ĝin:

```
fez upload
```

Post tio, ĉiu povas instali ĝin laŭ ĝia nomo per `zef install My::Greeting`. Vi povas alŝuti ĉiun version nur unufoje. Do antaŭ ĝisdatigo, faru la `version` en `META6.json` pli alta.

## Pliaj utilaj komandoj

Vi uzos ankaŭ ĉi tiujn komandojn de `fez`:

* `fez review` — serĉi eblajn problemojn en distribuo antaŭ la alŝuto;
* `fez list` — montri la distribuojn, kiujn vi jam publikigis;
* `fez refresh` — fari `META6.json` denove el la dosieroj, kiuj nun estas sur la disko.

> Ĉiuj ĉi tiuj komandoj bezonas instalitan `fez` kaj la reton. Ĉio post `init` ankaŭ bezonas ekosisteman konton.

{% include nav.html %}
