---
title: 'Розв''язання: Перевірте код завершення'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Вихідний код можна знайти у файлі [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Вивід

```
4
failure
```

## Коментарі

1. `run` повертає `Proc`. Тут важливо зберегти його в `$proc`, а потім прочитати. Якщо ви викинете `Proc` невдалої команди, він кине виняток. Але погляд на результат уже вважається його обробкою.

1. `.exitcode` — це число, яке повернула команда: `4`. Перевірка `Proc` як булевого значення відповідає на простіше запитання: чи спрацювала команда? Він істинний лише тоді, коли код завершення дорівнює `0`. Тут він хибний, тож програма виводить `failure`.

{% include nav.html %}
