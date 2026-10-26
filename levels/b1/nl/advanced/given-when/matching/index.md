---
title: Matching op bereiken, typen en voorwaarden
translations_gpt: true
---

{% include menu.html %}

Een `when`-blok kijkt niet alleen of twee waarden gelijk zijn. Het doet een _smart match_ tussen het topic en de waarde die je opgeeft. Zo kun je matchen op bereiken, typen en voorwaarden, niet alleen op losse waarden.

## Bereiken

Een bereik matcht als het topic erin valt. Daardoor is `given`/`when` een logische keuze om getallen in groepen te verdelen:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

De waarde `75` valt in het bereik `70..79`, dus het programma drukt af:

```
C
```

## Typen

Een type matcht als het topic van dat type is. Zo kan het programma een tak kiezen op basis van het soort waarde dat het heeft:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` bevat een string, dus het programma drukt af:

```
a string
```

## Voorwaarden

Je kunt ook direct een vergelijking schrijven. Binnen de `when` kun je het topic gebruiken als `$_`. Een voorwaarde zoals `$_ < 0` matcht dus als die waar is:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hier matcht de eerste `when`, en het programma drukt af:

```
negative
```

{% include nav.html %}
