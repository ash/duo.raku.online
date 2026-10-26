---
title: Kongruado de intervaloj, tipoj kaj kondiĉoj
translations_gpt:
---

{% include menu.html %}

Bloko `when` ne nur kontrolas, ĉu du valoroj estas egalaj. Ĝi faras _saĝan kongruadon_ inter la temo kaj la valoro, kiun vi donas al ĝi. Do vi povas kongrui kun intervaloj, tipoj kaj kondiĉoj, ne nur kun unuopaj valoroj.

## Intervaloj

Intervalo kongruas, kiam la temo estas ene de ĝi. Tial `given`/`when` estas natura elekto por dividi nombrojn en grupojn:

```raku
my $score = 75;

given $score {
    when 90..100 { say 'A' }
    when 80..89  { say 'B' }
    when 70..79  { say 'C' }
    default      { say 'F' }
}
```

La valoro `75` estas en la intervalo `70..79`, do la programo presas:

```
C
```

## Tipoj

Tipo kongruas, kiam la temo estas de tiu tipo. Do la programo povas elekti branĉon laŭ la speco de valoro, kiun ĝi havas:

```raku
my $value = 'Raku';

given $value {
    when Int { say 'an integer' }
    when Str { say 'a string' }
}
```

`$value` enhavas ĉenon, do la programo presas:

```
a string
```

## Kondiĉoj

Vi ankaŭ povas skribi komparon rekte. Ene de la `when`, vi povas uzi la temon kiel `$_`. Do kondiĉo kiel `$_ < 0` kongruas, kiam ĝi estas vera:

```raku
my $n = -7;

given $n {
    when $_ < 0 { say 'negative' }
    when 0      { say 'zero' }
    default     { say 'positive' }
}
```

Ĉi tie la unua `when` kongruas, kaj la programo presas:

```
negative
```

{% include nav.html %}
