---
title: Matching op bereiken, typen en voorwaarden
translations_gpt: true
---

{% include menu.html %}

Een `when`-blok doet meer dan kijken of twee waarden gelijk zijn. Het doet een _smart match_. Het vergelijkt het topic met de waarde die je geeft. Zo kun je matchen op bereiken, typen en voorwaarden. Je zit niet vast aan losse waarden.

## Bereiken

Een bereik matcht als het topic erin zit. Daarom is `given`/`when` goed om getallen in groepen te verdelen:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

De waarde `75` zit in het bereik `70..79`. Daarom drukt het programma af:

```
C
```

## Typen

Een type matcht als het topic dit type heeft. Zo kies je wat je doet aan de hand van het soort waarde:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` bevat een string. Daarom drukt het programma af:

```
a string
```

## Voorwaarden

Je kunt ook direct een vergelijking schrijven. Binnen `when` is het topic `$_`. Een voorwaarde zoals `$_ < 0` matcht dus als die waar is:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Hier matcht de eerste `when`. Het programma drukt af:

```
negative
```

{% include nav.html %}
