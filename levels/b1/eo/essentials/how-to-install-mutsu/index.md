---
title: Kiel instali mutsu
translations_gpt:
---

{% include menu.html %}

mutsu proponas pretajn binaraĵojn por macOS kaj Linukso. Estas binaraĵoj por procesoroj kaj Intel/AMD kaj ARM. Ili troviĝas en la eldona paĝo de ĝia deponejo en GitHub, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Ĉiu binaraĵo enhavas du ruleblajn dosierojn: `mutsu` mem kaj `mzef`, ĝian pakaĵadministrilon.

## Per mise

La plej simpla maniero instali eldonon estas [mise](https://mise.jdx.dev/). Ĝi estas ilo, kiu instalas kaj ĝisdatigas programistajn ilojn. Unu komando elŝutas la binaraĵon por via maŝino. Ĝi ankaŭ metas kaj `mutsu` kaj `mzef` en vian `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Per Docker

Se via sistemo rulas Docker, vi povas uzi mutsu sen instali ĝin. Tio funkcias ankaŭ sur Vindozo. Ĉi tiu komando lanĉas la interagan ŝelon REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Kaj ĉi tio rulas programon el la nuna dosierujo:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Konstrui el la fontkodo

mutsu estas skribita en Rust. Do vi ankaŭ povas mem konstrui ĝin per Cargo. La fontkodo estas en ĝia deponejo, kiu ankaŭ klarigas la detalojn.

## Versiaj numeroj

La opcio `--version` montras, kiun version vi havas:

```console
$ mutsu --version
mutsu 0.24.0
```

Ĉi tio estas la eldono de mutsu mem. Same kiel ĉe la aliaj kompililoj, la lingvo povas diri al vi sian version:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Komparu tion kun tio, kiel [Rakudo](/eo/essentials/how-to-install-rakudo) kaj [Raku++](/eo/essentials/how-to-install-rakupp) raportas sin.

{% include nav.html %}
