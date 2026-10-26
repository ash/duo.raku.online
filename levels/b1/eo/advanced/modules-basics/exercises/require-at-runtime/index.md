---
title: Ŝargi je rultempe
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas modulon `Greeting.rakumod`, kiu eksportas subrutinon `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Ŝargu ĉi tiun modulon per `require` anstataŭ `use`. Tiam ĝi estas ŝargata je **rultempo**. `require` ne importas nomojn aŭtomate. Do vi devas listigi la simbolon, kiun vi volas, per `require Greeting <&hello>;`. Poste voku `hello('Sam')` kaj presu la rezulton.

Ĉi tiu tasko ankaŭ montras, por kio utilas ŝargado je rultempo. Metu la `require` en `sub MAIN` kun flago `--quiet`. Tiam la modulo estas ŝargata *nur*, kiam saluto estas vere bezonata. Kun `--quiet`, la programo presas `Silence.` kaj tute ne tuŝas la modulon.

## Ekzemplo

Se vi rulas ĝin kun la modulo sur la serĉvojo, la programo presas:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
