---
title: Тест — do
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

`do` работи и пред управляващи конструкции, не само пред обикновени блокове. Тук `do given` прави цялата конструкция `given`/`when` израз. Темата `-3` съвпада с `$_ < 0`. Затова стойността на израза е `'neg'`. Програмата я записва в `$s`.

</div>

{% include nav.html %}
