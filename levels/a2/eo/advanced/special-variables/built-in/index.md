---
title: Enkonstruitaj specialaj variabloj
translations_gpt:
---

{% include menu.html %}

Raku havas aron de variabloj pretaj por vi. La plej multaj el ili estas _dinamikaj_, kun la tvigilo `*`. Vi jam konas [dinamikajn variablojn](/eo/advanced/special-variables/dynamic-variables). Do vi povas legi ĉi tiujn variablojn ĉie. Vi eĉ povas doni al ili novan valoron por unu amplekso. Jen la variabloj, kiujn vi plej ofte bezonas.

## Normaj fluoj

Enigo kaj eligo iras tra tri dinamikaj variabloj. `$*OUT` estas la norma eligo. `$*ERR` estas la norma eraro, eligo por eraraj mesaĝoj. `$*IN` estas la norma enigo. `say` kaj `print` skribas al `$*OUT`. Ĉu vi volas sendi tekston al la norma eraro? Tiam voku la metodon sur `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Ĉi tiuj variabloj estas dinamikaj. Do, ene de bloko, vi povas sendi `$*OUT` al nova loko. Tiam la kodo, kiun vi vokas en la bloko, presas tien. Vi tute ne ŝanĝas tiun kodon.

## La programo kaj ĝia procezo

Kelkaj variabloj diras al vi pri la programo, kiu nun ruliĝas:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Iliaj valoroj estas malsamaj ĉiufoje, kiam vi rulas la programon. Do ni ne montras la eligon ĉi tie.

## Komandlinio kaj medio

Raku metas la argumentojn kaj la medion en du ujojn. Ili estas pretaj por vi:

* `@*ARGS` — la listo de komandliniaj argumentoj; subrutino `MAIN` ricevas la samajn argumentojn
* `%*ENV` — la mediaj variabloj, en hako

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Ĉi tiuj enkonstruitaj variabloj ŝparas al vi laboron. Vi ne devas mem kolekti ĉi tiujn informojn. Ili estas dinamikaj, do Raku serĉas ilin tra la voka stako. Do vi povas anstataŭigi ĉiun enkonstruitan `$*`-variablon por amplekso. Tio funkcias same kiel via propra `$*`-variablo.

Ĉi tiuj ĉiuj estas dinamikaj variabloj. Sed Raku ankaŭ havas enkonstruitajn variablojn kun la tvigilo `?`. Ili estas `$?FILE` kaj `$?LINE`. La kompililo agordas iliajn valorojn, antaŭ ol la programo ruliĝas. Vi jam vidis ilin sur la paĝo pri [tvigiloj](/eo/advanced/special-variables/twigils).

{% include nav.html %}
