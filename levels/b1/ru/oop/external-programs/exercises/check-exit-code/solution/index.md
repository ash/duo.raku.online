---
title: 'Решение: Проверьте код возврата'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Исходный код можно найти в файле [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Вывод

```
4
failure
```

## Комментарии

1. `run` возвращает `Proc`. Здесь важно сохранить его в `$proc`, а затем прочитать. Если выбросить `Proc` неудачной команды, он бросит исключение. Но посмотреть на результат — значит обработать его.

1. `.exitcode` — это число, которое вернула команда: `4`. Проверка `Proc` как булева значения отвечает на более простой вопрос: сработала ли команда? Он истинен, только когда код возврата равен `0`. Здесь он ложен, поэтому программа печатает `failure`.

{% include nav.html %}
