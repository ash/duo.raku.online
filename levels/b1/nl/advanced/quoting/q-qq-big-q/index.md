---
title: q, qq en Q
translations_gpt:
---

{% include menu.html %}

Er zijn drie basis-quotingoperatoren. Het verschil is hoeveel ze de tekst erin verwerken:

* `q` — als enkele aanhalingstekens: bijna alles blijft zoals het is
* `qq` — als dubbele aanhalingstekens: variabelen en escapes worden geïnterpoleerd
* `Q` — de meest letterlijke van allemaal: **niets** wordt verwerkt

Elk ervan neemt de tekst tussen twee scheidingstekens. Het bekende `'…'` is gewoon een korte manier om `q` te schrijven. Op dezelfde manier is `"…"` kort voor `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` laat `$name` zoals het is, maar `qq` interpoleert het. Backslash-escapes zoals `\n` werken op dezelfde manier. Alleen `qq` (en `"…"`) maakt van `\n` een echte nieuwe regel. Zowel `q` als `Q` laten het staan als twee tekens, `\` en `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Waarin verschillen `q` en `Q` dan? Net als enkele aanhalingstekens verwerkt `q` nog steeds een *klein* aantal escapes. Een dubbele backslash `\\` wordt er één, en je kunt het afsluitende scheidingsteken escapen. De gewone `Q`-vorm verwerkt echter helemaal **niets**:

```raku
say q{a\\b}; # a\b   — q klapt de ge-escapete backslash samen
say Q{a\\b}; # a\\b  — Q behoudt beide tekens
```

Je kunt elk scheidingsteken gebruiken, zoals `q{…}`, `q[…]`, `q/…/` of `q!…!`. Dat is handig als de tekst zelf aanhalingstekens bevat. De drie operatoren zijn de basis. Het volgende onderwerp laat zien hoe je met [_bijwoorden_](/nl/advanced/quoting/adverbs) precies kiest welke functies aan staan.

{% include nav.html %}
