---
title: 'Тест — Объект Proc'
translations_gpt:
---

{% include menu.html %}

Что выведет следующая программа?

```raku
my $proc = run 'sh', '-c', 'exit 2', :out;
$proc.out.slurp(:close);
say $proc.exitcode;
```

{:.quiz}
0 | 0
1 | 2
0 | True
0 | ошибка

{% include quiz.html %}

<div class="extended-explanation">

`.exitcode` — это целое число, которое вернула программа. Здесь оболочке велели выполнить `exit 2`, поэтому оно равно `2`. Программа не бросает исключение. Неудачный `Proc` сохранён в `$proc` и проверен через `.exitcode`. Посмотреть на результат — значит обработать его. Исключение возникло бы, только если бы неудачный `Proc` выбросили без проверки.

</div>

{% include nav.html %}
