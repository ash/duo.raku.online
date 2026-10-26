---
title: Quiz — do
translations_gpt:
---

{% include menu.html %}

Wat print het volgende programma?

```raku
my $s = do given -3 {
    when $_ < 0 { 'neg' }
    default     { 'nonneg' }
};
say $s;
```

{:.quiz}
1 | neg
0 | nonneg
0 | -3
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`do` werkt vóór besturingsstructuren, niet alleen vóór gewone blokken. Hier verandert `do given` de hele `given`/`when` in een expressie. Het onderwerp `-3` komt overeen met `$_ < 0`, dus de expressie geeft `'neg'`. Deze waarde wordt opgeslagen in `$s`.

</div>

{% include nav.html %}
