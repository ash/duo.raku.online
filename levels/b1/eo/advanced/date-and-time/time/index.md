---
title: Laboro kun tempo
translations_gpt:
---

{% include menu.html %}

Se vi bezonas kaj la daton kaj la horon de la tago, uzu la tipon `DateTime`. Vi kreas ĝin preskaŭ kiel `Date`. Sed vi ankaŭ donas la horon, la minuton kaj la sekundon:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

La defaŭlta teksta formo sekvas la normon ISO 8601. Ĝi havas la daton, la literon `T` kaj la tempon. Ĉe la fino, `Z` signifas la horzonon UTC.

`DateTime` havas la datpartojn, kiujn vi jam konas. Ĝi ankaŭ lasas vin legi la partojn de la tempo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Por ricevi la nunan momenton, voku `DateTime.now`. Ĝia eligo ne estas montrita ĉi tie, same kiel por `Date.today`. Ĝi ŝanĝiĝas ĉiufoje, kiam vi rulas la programon.

{% include nav.html %}
