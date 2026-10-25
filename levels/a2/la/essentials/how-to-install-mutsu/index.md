---
title: Quomodo mutsu installare
translations_gpt:
---

{% include menu.html %}

mutsu versiones paratas pro macOS et Linux habet. In processoriis Intel/AMD et ARM currunt. Propositum in GitHub est: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Versiones in pagina emissionum eius invenis. Quaeque versio duos fasciculos programmatis habet: ipsum `mutsu` et `mzef`. `mzef` est eius instrumentum moderandi modulos. Modulos Raku installat.

## Cum mise

Via facillima emissionem installandi est [mise](https://mise.jdx.dev/). Hoc instrumentum instrumenta pro programmatoribus installat et renovat. Unum imperatum satis est. Versionem pro computatro tuo deprimit. Etiam `mutsu` et `mzef` in `PATH` tuum ponit:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Cum Docker

Cum Docker, mutsu uti potes sine installatione. Hoc in omni systemate cum Docker valet, etiam in Windows. Hoc imperatum corticem REPL interactivum incipit:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Et hoc imperatum programma ex directoria currenti exsequitur:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Ex codice fonte aedificare

mutsu in Rust scriptus est. Itaque eum etiam ipse cum Cargo aedificare potes. Codicem fontem ex repositorio eius adhibe. Repositorium singula explicat.

## Numeri versionum

Quam versionem habes? Optione `--version` utere:

```console
$ mutsu --version
mutsu 0.24.0
```

Haec est emissio ipsius mutsu. Versio linguae Raku alia res est. Eam ab ipsa lingua quaeris, sicut apud alios compilatores:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Hoc confer cum [Rakudo](/la/essentials/how-to-install-rakudo) et [Raku++](/la/essentials/how-to-install-rakupp). Vide quomodo versiones suas ostendant.

{% include nav.html %}
