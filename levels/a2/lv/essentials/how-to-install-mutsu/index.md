---
title: Kā uzstādīt mutsu
translations_gpt:
---

{% include menu.html %}

Ir gatavi mutsu būvējumi macOS un Linux sistēmām. Tie darbojas ar Intel/AMD un ar ARM procesoriem. Projekts ir GitHub vietnē: [github.com/tokuhirom/mutsu](https://github.com/tokuhirom/mutsu). Būvējumus var atrast tā izlaidumu lappusē. Katrā būvējumā ir divi programmas faili: pats `mutsu` un `mzef`. `mzef` ir tā pakotņu pārvaldnieks. Tas instalē Raku moduļus.

## Ar mise

Vieglākais veids, kā instalēt izlaidumu, ir [mise](https://mise.jdx.dev/). Šis rīks instalē un atjaunina rīkus izstrādātājiem. Jums vajag tikai vienu komandu. Tā lejupielādē būvējumu jūsu datoram. Tā arī pievieno `mutsu` un `mzef` jūsu `PATH`:

```console
$ mise use -g github:tokuhirom/mutsu
```

## Ar Docker

Ar Docker jūs varat lietot mutsu bez instalēšanas. Tas darbojas jebkurā sistēmā ar Docker, arī Windows. Šī komanda palaiž interaktīvo REPL:

```console
$ docker run --rm -it ghcr.io/tokuhirom/mutsu
```

Un šī komanda palaiž programmu no pašreizējā direktorija:

```console
$ docker run --rm -v "$PWD:/work:ro" ghcr.io/tokuhirom/mutsu mutsu hello.raku
```

## Būvēšana no pirmkoda

mutsu ir uzrakstīts Rust valodā. Tāpēc jūs varat arī paši to uzbūvēt ar Cargo. Ņemiet pirmkodu no tā repozitorija. Repozitorijs izskaidro detaļas.

## Versiju numuri

Kāda versija jums ir? Izmantojiet opciju `--version`:

```console
$ mutsu --version
mutsu 0.24.0
```

Tas ir paša mutsu izlaidums. Raku valodas versija ir cita lieta. To jūs jautājat pašai valodai, tāpat kā ar citiem kompilatoriem:

```console
$ mutsu -e 'say $*RAKU.version'
v6.d
```

Salīdziniet to ar [Rakudo](/lv/essentials/how-to-install-rakudo) un [Raku++](/lv/essentials/how-to-install-rakupp). Paskatieties, kā tie rāda savas versijas.

{% include nav.html %}
