---
title: 'Тест — Об''єкт Proc'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | помилку

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` — це ціле число, яке повернула програма. Тут оболонці сказали виконати `exit 2`, тож воно дорівнює `2`. Програма не кидає винятку. Невдалий `Proc` збережено в `$proc` і перевірено через `.exitcode`. Погляд на результат вважається його обробкою. Виняток виник би, лише якби невдалий `Proc` викинули без перевірки.

</div>

{% include nav.html %}
