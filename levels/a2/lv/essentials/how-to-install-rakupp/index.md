---
title: Kā uzstādīt Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

Raku++ var dabūt tā tīmekļa vietnē, [raku.online](https://raku.online). Tas ir arī GitHub vietnē: [github.com/ash/rakupp](https://github.com/ash/rakupp). Kad jūs to instalējat, jūs saņemat vienu programmas failu: `rakupp`. Jums nekas cits nav jāiestata. Raku++ nav jāinstalē atsevišķa virtuālā mašīna.

## Uzstādītājs

macOS, Linux un BSD sistēmās jums vajag tikai vienu komandu. Tā lejupielādē būvējumu jūsu datoram. Tā pārbauda būvējumu. Tad tā pievieno `rakupp` jūsu `PATH`. Tai nevajag administratora tiesības:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Windows sistēmā tā vietā lietojiet PowerShell logu. Cits veids ir instalēšanas programma, `rakupp-setup-windows-x64.exe`. To var lejupielādēt no repozitorija izlaidumu lappuses. Šeit ir komanda PowerShell logam:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Uzstādītājs jautā, vai jūs gribat Raku++ arī ar nosaukumu `raku`. Pēc tam atveriet jaunu termināli. Tad jaunais `PATH` sāk darboties. Vēlāk `rakupp upgrade` to atjaunina uz jaunāko izlaidumu.

## Citi instalēšanas veidi

* macOS sistēmā, ar Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Ar Docker jums nekas nav jāinstalē. `docker run --rm -it ghcr.io/ash/rakupp` palaiž interaktīvo REPL.
* Katrai platformai ir gatavi arhīvi. Tie ir repozitorija izlaidumu lappusē.
* Raku++ ir uzrakstīts C++ valodā. Tāpēc jūs varat arī paši to uzbūvēt no pirmkoda. Repozitorijs saka, kādi rīki jums vajadzīgi.

## Versiju numuri

Kāda versija jums ir? Izmantojiet opciju `--version`:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Rinda rāda trīs lietas. Pirmā ir paša Raku++ izlaidums: `5.4.1`. Otrā ir būvējuma datums. Trešā ir šī programmas faila platforma. Raku valodas versija ir cita lieta. To jūs varat pajautāt pašai valodai:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Salīdziniet to ar Rakudo versijas paziņojumu. Tas ir [Rakudo instalēšanas lappusē](/lv/essentials/how-to-install-rakudo). Jūs redzēsiet, kā abi kompilatori rāda savas versijas.

{% include nav.html %}
