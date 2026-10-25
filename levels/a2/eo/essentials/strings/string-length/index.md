---
title: Ĉena longo
---

{% include menu.html %}

Ŝnuroj en Raku estas Unikodaj ŝnuroj. Pro tio, kelkaj simplaj aferoj estas iom pli malfacilaj. Aŭ, almenaŭ, vi devas pensi pli pri ili. Ekzemple, prenu la longecon de ŝnuro. Ĉu ĝi estas la nombro de karakteroj? Aŭ ĉu ĝi estas la nombro de bajtoj? Kaj kelkfoje la sama karaktero havas malsamajn partojn en malsamaj ŝnuroj. Ĉu ĝi tiam ankoraŭ estas unu karaktero?

## Longeco en karakteroj

La _metodo_ `chars` donas la longecon de ŝnuro en karakteroj:

```raku
my $str = '你好世界';
say $str.chars;
```

Ni parolos pri metodoj poste. Sed ni jam povas uzi ilin nun. En Raku, vi povas voki metodojn sur preskaŭ ĉiu objekto. Ŝnuroj kaj skalaj variabloj ankaŭ estas objektoj. Por voki metodon, skribu punkton. Ĉi tie, la variablo tenas ŝnuron. Ni vokas la metodon sur ĉi tiu variablo: `$str.chars`.

Ĉi tiu ĉina saluto havas kvar karakterojn: 你好世界. Kaj `$str.chars` donas ekzakte `4`.

## Longeco en bajtoj

Ĉi tio estas nur por via informo. Jen kiel ricevi la longecon de ŝnuro en bajtoj. Por tio, vi devas scii la kodadon de la ŝnuro:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Ĉi-foje, la programo presas `12`. Rigardu la duan linion. Ĝi havas du vokojn de metodoj, unu post la alia.

## Longeco en kodpunktoj

Por fini ĉi tiun temon, jen ankoraŭ unu utila metodo por la longeco de ŝnuro: `codes`. Ĝi donas la nombron de kodpunktoj en la ŝnuro. Kodpunkto estas la numero de karaktero en Unikodo. Antaŭ ol kalkuli, Raku normaligas la ŝnuron. Ĝi donas al la ŝnuro norman formon. Ofte, `codes` kaj `chars` donas la saman rezulton. Sed en kelkaj maloftaj kazoj, la du metodoj donas malsamajn rezultojn. Ekzemple, vi povas konstrui ‘neeblan’ karakteron. La tuta Unikoda spaco ne havas unu solan kodpunkton por ĝi.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

La karaktero `x̨` ne havas propran kodpunkton. Vi povas konstrui ĝin nur el du partoj. La unua parto estas la malgranda litero `x`. La dua parto estas la kombina karaktero `0x0328`. Ĝi aldonas signon al la litero. Do, ĝi estas unu karaktero, sed ĝi havas du kodpunktojn. Tial la programo presas jenon:

    1
    2

{% include nav.html %}
