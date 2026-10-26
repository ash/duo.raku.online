---
title: 'Тест — do'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

`do` працює і перед керівними конструкціями, а не лише перед простими блоками. Тут `do given` робить увесь `given`/`when` виразом. Топік `-3` збігається з `$_ < 0`. Тож значення виразу — `'neg'`. Програма зберігає його в `$s`.

</div>

{% include nav.html %}
