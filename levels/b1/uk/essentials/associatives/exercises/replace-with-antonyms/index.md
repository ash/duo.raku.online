---
title: Замінити антонімами
---

{% include menu.html %}

## Завдання

Напишіть програму, яка замінює всі слова з командного рядка на їхні антоніми. Антоніми — це слова з протилежним значенням. Якщо слова немає в словнику, виведіть його без змін.

Зберігайте словник антонімів у хеші, прямо в коді програми. Щоб було простіше, ось готовий список приблизно з 200 пар: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Ви можете просто скопіювати його і вставити у свою програму. Усі пари є там в обох напрямках, наприклад:

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

Зробіть програму якомога простішою і виводьте слова по одному на рядок.

## Приклад

Запустіть програму з кількома словами як аргументами. Перевірте, що хоча б деякі з них є в словнику.

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

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
