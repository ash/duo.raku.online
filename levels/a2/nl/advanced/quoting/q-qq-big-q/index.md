---
title: q, qq en Q
translations_gpt:
---

{% include menu.html %}

Er zijn drie basis-quotingoperatoren. Ze veranderen de tekst erin niet even veel:

* `q` — als enkele aanhalingstekens: bijna alle tekst blijft zoals hij is
* `qq` — als dubbele aanhalingstekens: Raku interpoleert variabelen en escapes
* `Q` — de meest letterlijke: Raku verandert **niets**

Ze nemen elk de tekst tussen twee scheidingstekens. Scheidingstekens zijn de tekens rond de tekst. Je kent `'…'` al. Het is een korte vorm van `q`. En `"…"` is een korte vorm van `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` verandert `$name` niet. `qq` interpoleert het. Backslash-escapes zoals `\n` werken op dezelfde manier. Alleen `qq` en `"…"` maken van `\n` een echte nieuwe regel. `q` en `Q` houden het allebei als twee tekens: `\` en `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Wat is dan het verschil tussen `q` en `Q`? `q` is als enkele aanhalingstekens. Hij verwerkt nog steeds een *kleine* groep escapes. Een dubbele backslash `\\` wordt één backslash. Je kunt ook het afsluitende scheidingsteken escapen met een backslash. Maar de gewone `Q`-vorm verandert helemaal **niets**:

```raku
say q{a\\b}; # a\b   — q klapt de ge-escapete backslash samen
say Q{a\\b}; # a\\b  — Q behoudt beide tekens
```

Je kunt elk scheidingsteken gebruiken: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Dat helpt als de tekst zelf aanhalingstekens bevat. Deze drie operatoren zijn de basis. Het volgende onderwerp laat [_bijwoorden_](/nl/advanced/quoting/adverbs) zien. Daarmee kies je precies welke functies aan staan.

{% include nav.html %}
