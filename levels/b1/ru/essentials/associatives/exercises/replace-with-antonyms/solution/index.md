---
title: 'Решение: Замена антонимами'
---

{% include menu.html %}

Файл решения, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), начинается с копии [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). После этого цикл проходит по входным аргументам. Он пытается найти каждое слово в словаре. Если это получается, он берёт антоним. Если такого слова в словаре нет, используется исходное слово.

## Код

Решение — ниже, но словарь здесь показан только частично.

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

1. Оператор `//` — это [оператор defined-or](/ru/essentials/scalar-variables/defined-or-operator). Он возвращает первый операнд, который определён.
1. Все ключи в хэше — это слова, которые выглядят как идентификаторы. Поэтому их не нужно заключать в кавычки. Значит, хэш можно создать и так:

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
