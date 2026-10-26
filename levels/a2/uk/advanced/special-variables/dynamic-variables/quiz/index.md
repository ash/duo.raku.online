---
title: 'Тест — Динамічні змінні'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Нічого
0 | Помилку

{% include quiz.html %}

<div class="extended-explanation">

`show` стоїть на верхньому рівні. Він поруч із `my $*n = 1`. Але це місце не має значення. Raku шукає динамічну змінну через *стек викликів*. Він не дивиться, де стоїть код. Тут `run` викликає `show`. А `run` знову оголошує `$*n` як `2`. Тож діє саме це значення, і програма виводить `2`.

</div>

{% include nav.html %}
