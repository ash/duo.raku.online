---
title: Тест — do
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

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

`do` работает и перед управляющими конструкциями, а не только перед обычными блоками. Здесь `do given` делает всю конструкцию `given`/`when` выражением. Топик `-3` подходит под условие `$_ < 0`. Поэтому значение выражения — `'neg'`. Программа сохраняет его в `$s`.

</div>

{% include nav.html %}
