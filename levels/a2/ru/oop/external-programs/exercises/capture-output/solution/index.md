---
title: 'Решение: Захватите вывод'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $proc = run 'echo', 'hello world raku', :out;
my $output = $proc.out.slurp(:close).trim;
say $output.words.elems;
```

🦋 Исходный код можно найти в файле [capture-output.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/capture-output.raku).

## Вывод

```
3
```

## Комментарии

1. `:out` отправляет вывод в `Proc`. Он не идёт на экран. `.out.slurp(:close)` читает обратно весь вывод. `.trim` убирает перевод строки в конце. Этот перевод строки добавляет `echo`.

1. Теперь вывод — это обычная строка в нашей программе. Мы работаем с ней, как с любыми другими данными. `.words.elems` разбивает строку по пробельным символам. Потом он считает части. Результат — `3`. Вот зачем мы перехватываем вывод. Внешняя программа становится частью нашей работы. Мы используем её результат в следующих шагах.

{% include nav.html %}
