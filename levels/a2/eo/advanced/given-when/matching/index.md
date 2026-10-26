---
title: Kongruado de intervaloj, tipoj kaj kondiĉoj
translations_gpt:
---

{% include menu.html %}

Bloko `when` faras pli ol kontroli, ĉu du valoroj estas egalaj. Ĝi faras _saĝan kongruadon_. Ĝi komparas la temon kun la valoro, kiun vi donas. Do vi povas kongrui kun intervaloj, tipoj kaj kondiĉoj. Vi ne devas uzi nur unuopajn valorojn.

## Intervaloj

Intervalo kongruas, kiam la temo estas en ĝi. Do `given`/`when` estas bona por meti nombrojn en grupojn:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

La valoro `75` estas en la intervalo `70..79`. Do la programo presas:

```
C
```

## Tipoj

Tipo kongruas, kiam la temo havas ĉi tiun tipon. Do vi povas elekti, kion fari, laŭ la speco de valoro:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` havas ĉenon. Do la programo presas:

```
a string
```

## Kondiĉoj

Vi ankaŭ povas skribi komparon rekte. Ene de `when`, la temo estas `$_`. Do kondiĉo kiel `$_ < 0` kongruas, kiam ĝi estas vera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Ĉi tie la unua `when` kongruas. La programo presas:

```
negative
```

{% include nav.html %}
