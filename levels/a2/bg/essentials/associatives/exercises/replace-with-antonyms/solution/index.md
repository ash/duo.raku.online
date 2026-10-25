---
title: 'Solution: Замяна с антоними'
---

{% include menu.html %}

Първо вземаме съдържанието на файла [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Копираме го във файла с решението [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). След това един цикъл минава през входните аргументи. Цикълът търси всяка дума в речника. Ако думата е там, цикълът взема нейния антоним. Ако не е там, програмата използва оригиналната дума.

## Код

Ето решението. То показва само част от речника.

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

🦋 Намерете програмата във файла [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Изход

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Коментари

1. Операторът `//` е [операторът defined-or](/bg/essentials/scalar-variables/defined-or-operator). Той връща първия операнд, който е дефиниран.
1. Всички ключове в хеша са думи. Те изглеждат като идентификатори. Затова не ви трябват кавички около тях. Можете да напишете хеша и така:

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
