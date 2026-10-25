---
title: Kā uzstādīt Raku++ 🆕
translations_gpt:
---

{% include menu.html %}

Raku++ ir pieejams tā tīmekļa vietnē, [raku.online](https://raku.online). To var dabūt arī no tā GitHub repozitorija, [github.com/ash/rakupp](https://github.com/ash/rakupp). Kad to instalējat, jūs iegūstat vienu izpildāmo failu ar nosaukumu `rakupp`. Nekas cits nav jāiestata, jo Raku++ nav atsevišķas virtuālās mašīnas.

## Uzstādītājs

macOS, Linux un BSD sistēmās viena komanda izdara visu. Tā lejupielādē jūsu datoram atbilstošo būvējumu un pārbauda to. Tad tā padara `rakupp` pieejamu caur jūsu `PATH`. Administratora tiesības jums tam nav vajadzīgas:

```console
$ curl -fsSL https://raku.online/install.sh | sh
```

Windows sistēmā tā vietā izmantojiet PowerShell logu. Varat arī izmantot instalēšanas vedni `rakupp-setup-windows-x64.exe`. Tas ir repozitorija izlaidumu lappusē. PowerShell logā izpildiet šo:

```console
> irm https://raku.online/install-windows.ps1 | iex
```

Uzstādītājs pajautā, vai vēlaties Raku++ arī ar nosaukumu `raku`. Pēc tam atveriet jaunu termināli, lai jaunais `PATH` sāktu darboties. Vēlāk `rakupp upgrade` to aizstāj ar jaunāko izlaidumu.

## Citi instalēšanas veidi

* macOS sistēmā, ar Homebrew: `brew tap ash/rakupp && brew install rakupp`.
* Ar Docker jums nekas nav jāinstalē: `docker run --rm -it ghcr.io/ash/rakupp` palaiž interaktīvo REPL.
* Gatavi arhīvi katrai platformai ir repozitorija izlaidumu lappusē.
* Raku++ ir uzrakstīts C++ valodā. Tāpēc jūs varat arī paši to uzbūvēt no pirmkoda. Repozitorijā ir paskaidrots, kādi rīki jums vajadzīgi.

## Versiju numuri

Opcija `--version` parāda, kāda versija jums ir:

```console
$ rakupp --version
Raku++ 5.4.1 (2026-10-13) arm64-darwin
```

Rinda parāda paša Raku++ izlaidumu, `5.4.1`. Tā parāda arī būvēšanas datumu un platformu, kurai binārais fails paredzēts. Raku valodas versija ir cita lieta. To varat pajautāt pašai valodai:

```console
$ rakupp -e 'say $*RAKU.version'
v6.d
```

Salīdziniet to ar Rakudo versijas paziņojumu [Rakudo instalēšanas lappusē](/lv/essentials/how-to-install-rakudo). Tad jūs redzēsiet, kā abi kompilatori sevi piesaka.

{% include nav.html %}
