---
title: Kā uzstādīt mutsu
translations_gpt:
---

{% include menu.html %}

mutsu piedāvā gatavus būvējumus macOS un Linux sistēmām. Ir būvējumi gan Intel/AMD, gan ARM procesoriem. Tie atrodas izlaidumu lappusē tā GitHub repozitorijā, [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Katrā būvējumā ir divi izpildāmie faili: pats `mutsu` un `mzef`, tā pakotņu pārvaldnieks.

## Ar mise

Vienkāršākais veids, kā instalēt izlaidumu, ir [mise](https://mise.jdx.dev/). Tas ir rīks, kas instalē un atjaunina izstrādātāju rīkus. Viena komanda lejupielādē jūsu datoram atbilstošo būvējumu. Tā arī padara gan `mutsu`, gan `mzef` pieejamus caur jūsu `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Ar Docker

Ja jūsu sistēmā darbojas Docker, jūs varat lietot mutsu, to neinstalējot. Tas darbojas arī Windows sistēmā. Šī komanda palaiž interaktīvo REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Bet šī izpilda programmu no pašreizējā direktorija:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Būvēšana no pirmkoda

mutsu ir uzrakstīts Rust valodā. Tāpēc jūs varat arī paši to uzbūvēt ar Cargo. Pirmkods ir tā repozitorijā, kur ir paskaidrotas arī detaļas.

## Versiju numuri

Opcija `--version` parāda, kāda versija jums ir:

```console
$ mutsu --version
mutsu 0.24.0
```

Tas ir paša mutsu izlaidums. Tāpat kā ar pārējiem kompilatoriem, valoda pati var pateikt savu versiju:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Salīdziniet to ar to, kā sevi piesaka [Rakudo](/lv/essentials/how-to-install-rakudo) un [Raku++](/lv/essentials/how-to-install-rakupp).

{% include nav.html %}
