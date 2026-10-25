---
title: 'Решение: Рекурсивный факториал'
---

{% include menu.html %}

Факториал — очень полезное упражнение, потому что его можно решить многими способами. В этот раз мы используем рекурсию, то есть функция вызывает саму себя.

## Код 1

Вот код решения. Обратите внимание, что нужно проверить условие, чтобы остановить рекурсию. Иначе она будет продолжаться бесконечно.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Найдите программу в файле [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Код 2

В таком коде постфиксная форма `if` часто лучше. С ней можно сразу вернуться из функции. Это делает код чище и убирает много отступов и пунктуации.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Найдите обновленную программу в файле [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Пример

Запустите программу и проверьте результат. Кстати, вы знали, что в шести неделях ровно _10!_ секунд?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
