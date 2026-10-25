---
title: Замяна с антоними
---

{% include menu.html %}

## Проблем

Напишете програма. Тя взема думи от командния ред. Тя заменя всяка дума с нейния антоним. Антонимът е дума с обратно значение. Някои думи не са в речника. Не променяйте тези думи. Отпечатайте ги такива, каквито са.

Пазете речника с антоними в хеш. Напишете хеша направо в кода. За да ви помогнем, направихме списък с около 200 двойки. Можете да го копирате и поставите във вашата програма: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Всяка двойка е в списъка два пъти, по веднъж във всяка посока. Например:

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

Направете програмата колкото можете по-проста. Отпечатайте всяка дума на отделен ред.

## Пример

Стартирайте програмата и ѝ дайте няколко думи. Поне някои от думите трябва да са в речника.

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
