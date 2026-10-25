---
title: 'Решение: Замена антонимами'
---

{% include menu.html %}

Сначала мы берём содержимое файла [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Мы копируем его в файл решения [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Потом цикл проходит по входным аргументам. Цикл ищет каждое слово в словаре. Если слово там есть, цикл берёт его антоним. Если нет, программа берёт исходное слово.

## Код

Вот решение. В нём есть только часть словаря.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Найдите программу в файле [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Вывод

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Комментарии

1. Оператор `//` — это [оператор defined-or](/ru/essentials/scalar-variables/defined-or-operator). Он возвращает первый определённый операнд.
1. Все ключи в хэше — это слова. Они выглядят как идентификаторы. Поэтому кавычки вокруг них не нужны. Хэш можно записать и так:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
