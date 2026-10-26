---
title: Enkonstruitaj specialaj variabloj
translations_gpt:
---

{% include menu.html %}

Raku difinas aron de variabloj por vi. La plej multaj el ili estas _dinamikaj_, kun la tvigilo `*`. Do vi povas legi ilin ĉie, kiel vi vidis ĉe [dinamikaj variabloj](/eo/advanced/special-variables/dynamic-variables). Vi eĉ povas anstataŭigi ilin por certa amplekso. Jen tiuj, kiujn vi plej ofte bezonos.

## Normaj fluoj

Enigo kaj eligo iras tra tri dinamikaj variabloj: `$*OUT` por la norma eligo, `$*ERR` por la norma eraro, kaj `$*IN` por la norma enigo. `say` kaj `print` skribas al `$*OUT`. Por sendi tekston anstataŭe al la norma eraro, voku la metodon sur `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Ĉar ĉi tiuj variabloj estas dinamikaj, vi povas redirekti `$*OUT` en bloko. Tiam ĉio, kion vi vokas ene de tiu bloko, sendas sian eligon al la nova loko. Vi ne bezonas ŝanĝi ion ajn en tiu kodo.

## La programo kaj ĝia procezo

Kelkaj variabloj donas informojn pri la ruliĝanta programo mem:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Iliaj valoroj ŝanĝiĝas ĉiufoje, kiam vi rulas la programon. Do ĉi tie ne estas fiksa eligo por montri.

## Komandlinio kaj medio

La argumentoj kaj la medio venas en du ujoj, kiuj estas pretaj por uzo:

* `@*ARGS` — la listo de komandliniaj argumentoj (subrutino `MAIN` ricevas la samajn)
* `%*ENV` — la mediaj variabloj, en hako

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Ĉi tiuj enkonstruitaj variabloj ŝparas al vi la laboron mem kolekti la samajn informojn. Ili ankaŭ estas dinamikaj, do Raku serĉas ilin tra la voka stako. Do vi povas anstataŭigi ĉiun enkonstruitan `$*`-variablon por amplekso. Tio funkcias ĝuste kiel kun via propra `$*`-variablo.

Krom ĉi tiuj dinamikaj variabloj, Raku ankaŭ havas la kompiltempajn enkonstruitajn `?`-variablojn: `$?FILE` kaj `$?LINE`. Vi jam vidis ilin sur la paĝo pri [tvigiloj](/eo/advanced/special-variables/twigils).

{% include nav.html %}
