---
title: Замена антонимами
---

{% include menu.html %}

## Задача

Напишите программу, которая заменяет все слова из командной строки на их антонимы. Антонимы — это слова с противоположным значением. Если слова нет в словаре, выведите его без изменений.

Храните словарь антонимов в хэше, прямо в коде программы. Чтобы было проще, вот готовый список примерно из 200 пар: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Его можно сразу скопировать и вставить в вашу программу. Все пары там есть в обоих направлениях, например:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Сделайте программу как можно проще и выводите слова по одному на строку.

## Пример

Запустите программу и передайте ей несколько слов как аргументы. Проверьте, что хотя бы некоторые из них есть в словаре.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Решение

✅ [См. решение](solution)

{% include nav.html %}
