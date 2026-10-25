---
title: Quomodo mutsu installare
translations_gpt:
---

{% include menu.html %}

mutsu versiones paratas pro macOS et Linux praebet. Sunt versiones tam pro processoriis Intel/AMD quam pro ARM. In pagina emissionum repositorii eius GitHub sunt, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Quaeque versio duo programmata exsecutabilia continet: ipsum `mutsu` et `mzef`, instrumentum eius moderandi modulos.

## Cum mise

Via simplicissima emissionem installandi est [mise](https://mise.jdx.dev/). Est instrumentum quod instrumenta programmatorum installat et renovat. Unum imperatum versionem machinae tuae aptam deprimit. Etiam `mutsu` et `mzef` ambo in `PATH` tuum ponit:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Cum Docker

Si in systemate tuo Docker currit, mutsu uti potes sine installatione. Hoc etiam in Windows valet. Hoc imperatum corticem REPL interactivum incipit:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Et hoc programma ex directoria currenti exsequitur:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Ex codice fonte aedificare

mutsu in Rust scriptus est. Itaque eum etiam ipse cum Cargo aedificare potes. Codex fons in repositorio eius est, quod etiam singula explicat.

## Numeri versionum

Optio `--version` ostendit quam versionem habeas:

```console
$ mutsu --version
mutsu 0.24.0
```

Haec est emissio ipsius mutsu. Ut apud alios compilatores, lingua ipsa versionem suam tibi dicere potest:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Hoc confer cum modo quo [Rakudo](/la/essentials/how-to-install-rakudo) et [Raku++](/la/essentials/how-to-install-rakupp) se ipsos nuntiant.

{% include nav.html %}
