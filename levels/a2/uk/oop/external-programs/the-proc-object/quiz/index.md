---
title: 'Тест — Об''єкт Proc'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

`.exitcode` — це ціле число, яке повернула програма. Тут оболонка отримала команду `exit 2`. Тож число дорівнює `2`. Програма не кидає винятку. Тож вона не зупиняється з помилкою. Програма зберігає невдалий `Proc` у `$proc`. Потім вона дивиться на нього через `.exitcode`. Погляд на результат вважається його обробкою. Виняток ви отримуєте лише в одному випадку. Це коли ви викидаєте невдалий `Proc` без перевірки.

</div>

{% include nav.html %}
