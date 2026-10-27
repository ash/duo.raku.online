---
title: 'Тест — Обектът Proc'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | грешка

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` е цялото число, което програмата е върнала. Тук обвивката получи командата `exit 2`. Затова числото е `2`. Програмата не хвърля изключение. Затова тя не спира с грешка. Програмата пази провалилия се `Proc` в `$proc`. После го разглежда с `.exitcode`. Разглеждането на резултата се брои за обработка. Получавате изключение само в един случай. Това е, когато изхвърлите провалил се `Proc` без проверка.

</div>

{% include nav.html %}
