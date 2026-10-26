---
title: Laboro kun tempo
translations_gpt:
---

{% include menu.html %}

Foje vi bezonas la daton kaj ankaŭ la horon de la tago. Tiam uzu la tipon `DateTime`. Vi faras ĝin preskaŭ kiel `Date`. Sed vi ankaŭ donas la horon, la minuton kaj la sekundon:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Defaŭlte, la teksto sekvas la normon ISO 8601. Unue venas la dato. Poste venas la litero `T` kaj la tempo. Ĉe la fino estas la litero `Z`. Ĝi signifas la horzonon UTC.

Vi jam konas la partojn de dato. `DateTime` ankaŭ havas ilin. Ĝi havas ankaŭ la partojn de la tempo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Por ricevi la tempon ĝuste nun, voku `DateTime.now`. Ni ne montras ĝian eligon ĉi tie. Ni faris same por `Date.today`. La eligo ŝanĝiĝas ĉiufoje, kiam la programo ruliĝas.

{% include nav.html %}
