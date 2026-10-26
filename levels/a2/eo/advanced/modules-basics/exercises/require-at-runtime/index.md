---
title: Ŝargi je rultempe
translations_gpt:
---

{% include menu.html %}

## Problemo

Jen modulo, `Greeting.rakumod`. Ĝi eksportas subrutinon `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Ŝargu ĉi tiun modulon per `require`, ne per `use`. Tiam la programo ŝargas ĝin je **rultempo**, dum la programo ruliĝas. `require` ne importas nomojn aŭtomate. Do listigu la nomon, kiun vi volas, jene: `require Greeting <&hello>;`. Poste voku `hello('Sam')` kaj presu la rezulton.

Nun montru, kial ŝargado je rultempo estas utila. Metu la `require` en `sub MAIN` kun flago `--quiet`. La modulo ŝargiĝas *nur*, kiam vi vere volas saluton. Kun `--quiet`, la programo tute ne tuŝas la modulon. Ĝi nur presas `Silence.`

## Ekzemplo

Rulu la programon kun la modulo sur la serĉvojo. Ĝi presas:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
