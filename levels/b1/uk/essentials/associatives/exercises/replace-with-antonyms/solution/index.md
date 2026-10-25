---
title: 'Solution: Замінити антонімами'
---

{% include menu.html %}

Файл рішення, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), починається з копії [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Після цього цикл проходить по вхідних аргументах. Він намагається знайти кожне слово в словнику. Якщо це вдається, він бере антонім. Якщо такого слова в словнику немає, використовується початкове слово.

## Код

Рішення — нижче, але тут показано лише частину словника.

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

🦋 Знайдіть програму у файлі [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Вивід

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Коментарі

1. Оператор `//` — це [оператор defined-or](/uk/essentials/scalar-variables/defined-or-operator). Він повертає перший операнд, який визначений.
1. Усі ключі в хеші — це слова, схожі на ідентифікатори. Тому вам не потрібно брати їх у лапки. Це означає, що ви можете створити хеш і так:

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
