---
title: Viktorīna — do
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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

`do` darbojas arī pirms vadības struktūrām, ne tikai pirms vienkāršiem blokiem. Šeit `do given` padara visu `given`/`when` par izteiksmi. Tēma `-3` atbilst `$_ < 0`. Tāpēc izteiksmes vērtība ir `'neg'`. Programma to saglabā mainīgajā `$s`.

</div>

{% include nav.html %}
