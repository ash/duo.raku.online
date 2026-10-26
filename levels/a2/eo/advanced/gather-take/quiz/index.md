---
title: 'Kvizo — `gather`'
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my @r = gather for 1..6 {
    take $_ if $_ %% 3;
};

say @r;
```

{:.quiz}
1 | [3 6]
0 | [1 2 3 4 5 6]
0 | [3]
0 | []

{% include quiz.html %}

<div class="extended-explanation">

`gather` kolektas nur la valorojn, kiuj iras al `take`. La kontrolo `$_ %% 3` estas vera nur por `3` kaj `6`. Do la kodo prenas nur ĉi tiujn du. La rezulto estas `[3 6]`.

</div>

{% include nav.html %}
