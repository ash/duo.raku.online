---
title: Kvizo — do
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

`do` funkcias ankaŭ antaŭ kontrolstrukturoj, ne nur antaŭ simplaj blokoj. Ĉi tie `do given` faras el la tuta `given`/`when` esprimon. La temo `-3` kongruas kun `$_ < 0`. Do la valoro de la esprimo estas `'neg'`. La programo konservas ĝin en `$s`.

</div>

{% include nav.html %}
