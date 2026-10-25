---
title: Замяна с антоними
---

{% include menu.html %}

## Проблем

Напишете програма, която заменя всички думи от командния ред с техните антоними. Антонимите са думи с обратно значение. Ако дадена дума не е в речника, отпечатайте я без промяна.

Пазете речника с антоними в хеш, направо в кода на програмата. За да ви е по-лесно, ето готов списък с около 200 двойки: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Можете да го копирате и поставите направо във вашата програма. Всички двойки са там в двете посоки, например:

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

Направете програмата възможно най-проста и отпечатайте думите по една на ред.

## Пример

Стартирайте програмата с няколко думи като аргументи. Проверете дали поне някои от тях са в речника.

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

✅ [Вижте решението](solution)

{% include nav.html %}
