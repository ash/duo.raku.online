---
title: 'Solution: Замінити антонімами'
---

{% include menu.html %}

Спочатку ми беремо вміст файлу [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Ми копіюємо його у файл рішення [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Потім цикл проходить по вхідних аргументах. Цикл шукає кожне слово в словнику. Якщо слово там є, цикл бере його антонім. Якщо ні, програма бере початкове слово.

## Код

Ось рішення. Воно показує лише частину словника.

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

1. Оператор `//` — це [оператор defined-or](/uk/essentials/scalar-variables/defined-or-operator). Він повертає перший визначений операнд.
1. Усі ключі в хеші — це слова. Вони схожі на ідентифікатори. Тому вам не потрібні лапки навколо них. Ви також можете записати хеш так:

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
