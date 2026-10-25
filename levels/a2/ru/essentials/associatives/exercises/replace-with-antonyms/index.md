---
title: Замена антонимами
---

{% include menu.html %}

## Задача

Напишите программу. Она берёт слова из командной строки. Она меняет каждое слово на его антоним. Антоним — это слово с противоположным значением. Некоторых слов нет в словаре. Не меняйте эти слова. Выводите их как есть.

Храните словарь антонимов в хэше. Напишите хэш прямо в коде. Чтобы помочь вам, мы сделали список примерно из 200 пар. Его можно скопировать и вставить в вашу программу: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Каждая пара есть в списке два раза, по разу в каждую сторону. Например:

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

Сделайте программу как можно проще. Выводите каждое слово на отдельной строке.

## Пример

Запустите программу и дайте ей несколько слов. Хотя бы некоторые слова должны быть в словаре.

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
