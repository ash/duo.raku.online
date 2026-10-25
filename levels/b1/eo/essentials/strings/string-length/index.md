---
title: Ĉena longo
---

{% include menu.html %}

Ĉar ŝnuroj en Raku estas Unikodaj, kelkaj simplaj aferoj fariĝas iom pli malfacilaj. Aŭ, almenaŭ, vi devas pensi pri ili pli zorge. Prenu, ekzemple, la longecon de ŝnuro. Ĉu ĝi estas la nombro de karakteroj aŭ la nombro de bajtoj? Kaj kio, se la sama karaktero konsistas el malsamaj partoj en malsamaj ŝnuroj? Ĉu ĝi ankoraŭ estas unu karaktero?

## Longeco en karakteroj

Por ekscii, kiom da karakteroj ŝnuro havas, uzu la _metodon_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

Ni parolos pri metodoj poste, sed ni jam devus povi uzi ilin. En Raku, vi povas voki metodojn sur preskaŭ ĉiu objekto, inkluzive de ŝnuroj kaj skalaj variabloj. Por voki metodon, uzu punkton. Do ĉi tie, ni vokas la metodon sur variablo, kiu tenas ŝnuron: `$str.chars`.

La ĉina saluto 你好世界 havas kvar karakterojn. Kaj `$str.chars` redonas ekzakte `4`.

## Longeco en bajtoj

Nur por referenco, jen kiel trovi la longecon de ŝnuro en bajtoj. En ĉi tiu kazo, vi devas scii, kiu kodado estas uzata por la ŝnuro:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Ĉi-foje, la programo presas `12`. Rimarku, ke la dua linio havas du metodvokojn en ĉeno.

## Longeco en kodpunktoj

Por kompletigi la bildon, jen ankoraŭ unu utila metodo, kiu rilatas al la longeco de ŝnuro: `codes`. Ĝi redonas la nombron de kodpunktoj en la ŝnuro, post kiam la ŝnuro estas normaligita. En multaj kazoj, `codes` kaj `chars` redonas la saman nombron. Sed en kelkaj maloftaj kazoj, la du metodoj donas malsamajn rezultojn. Ekzemple, vi povas konstrui ‘neeblan’ karakteron. Ne ekzistas unu sola kodpunkto por ĝi en la tuta Unikoda spaco.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Ĉi tiu karaktero, `x̨`, ne havas propran kodpunkton. Oni povas konstrui ĝin nur el du partoj. Ili estas la minuskla litero `x` kaj la kombina karaktero `0x0328`. Do, estas ankoraŭ unu karaktero, sed estas du kodpunktoj. Tial la programo presas:

    1
    2

{% include nav.html %}
