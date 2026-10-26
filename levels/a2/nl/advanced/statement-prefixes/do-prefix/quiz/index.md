---
title: Quiz — do
translations_gpt:
---

{% include menu.html %}

Wat print dit programma?

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

`do` werkt ook vóór besturingsstructuren, niet alleen vóór gewone blokken. Hier maakt `do given` van de hele `given`/`when` een expressie. Het onderwerp `-3` komt overeen met `$_ < 0`. De waarde van de expressie is dus `'neg'`. Het programma bewaart die in `$s`.

</div>

{% include nav.html %}
