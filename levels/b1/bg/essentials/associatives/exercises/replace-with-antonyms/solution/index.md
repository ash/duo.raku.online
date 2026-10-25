---
title: 'Solution: Замяна с антоними'
---

{% include menu.html %}

Файлът с решението, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), започва с копие на [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). След това един цикъл минава през входните аргументи. Той се опитва да намери всяка дума в речника. Ако успее, взема антонима. Ако такава дума няма в речника, програмата използва оригиналната дума.

## Код

Решението е по-долу, но тук е показана само част от речника.

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
1. Всички ключове в хеша са думи, които изглеждат като идентификатори. Затова не е нужно да ги слагате в кавички. Това означава, че можете да създадете хеша и така:

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
