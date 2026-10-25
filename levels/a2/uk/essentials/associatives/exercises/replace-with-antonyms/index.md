---
title: Замінити антонімами
---

{% include menu.html %}

## Завдання

Напишіть програму. Вона бере слова з командного рядка. Вона замінює кожне слово на його антонім. Антонім — це слово з протилежним значенням. Деяких слів немає в словнику. Не змінюйте ці слова. Виведіть їх без змін.

Зберігайте словник антонімів у хеші. Напишіть хеш прямо в коді. Щоб допомогти вам, ми зробили список приблизно з 200 пар. Ви можете скопіювати його і вставити у свою програму: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Кожна пара є в списку двічі, по одному разу в кожному напрямку. Наприклад:

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

Зробіть програму якомога простішою. Виведіть кожне слово в окремому рядку.

## Приклад

Запустіть програму і дайте їй кілька слів. Хоча б деякі слова мають бути в словнику.

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
