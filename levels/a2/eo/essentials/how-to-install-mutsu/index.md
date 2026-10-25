---
title: Kiel instali mutsu
translations_gpt:
---

{% include menu.html %}

mutsu havas pretajn binaraĵojn por macOS kaj Linukso. Ili funkcias sur procesoroj Intel/AMD kaj ARM. La projekto estas en GitHub: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Vi trovas la binaraĵojn en ĝia eldona paĝo. Ĉiu binaraĵo havas du programdosierojn: `mutsu` mem kaj `mzef`. `mzef` estas ĝia pakaĵadministrilo. Ĝi instalas Raku-modulojn.

## Per mise

La plej facila maniero instali eldonon estas [mise](https://mise.jdx.dev/). Ĉi tiu ilo instalas kaj ĝisdatigas ilojn por programistoj. Vi bezonas nur unu komandon. Ĝi elŝutas la binaraĵon por via komputilo. Ĝi ankaŭ metas `mutsu` kaj `mzef` en vian `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Per Docker

Per Docker, vi povas uzi mutsu sen instali ĝin. Tio funkcias sur ĉiu sistemo kun Docker, ankaŭ sur Vindozo. Ĉi tiu komando lanĉas la interagan ŝelon REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Kaj ĉi tiu komando rulas programon el la nuna dosierujo:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Konstrui el la fontkodo

mutsu estas skribita en Rust. Do vi ankaŭ povas mem konstrui ĝin per Cargo. Uzu la fontkodon el ĝia deponejo. La deponejo klarigas la detalojn.

## Versiaj numeroj

Kiun version vi havas? Uzu la opcion `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Ĉi tio estas la eldono de mutsu mem. La versio de la lingvo Raku estas alia afero. Vi demandas la lingvon pri ĝi, kiel ĉe la aliaj kompililoj:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Komparu tion kun [Rakudo](/eo/essentials/how-to-install-rakudo) kaj [Raku++](/eo/essentials/how-to-install-rakupp). Vidu, kiel ili montras siajn versiojn.

{% include nav.html %}
