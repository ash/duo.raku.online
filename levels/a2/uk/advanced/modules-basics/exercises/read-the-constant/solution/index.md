---
title: 'Розв''язання: Прочитайте сталу'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

Програма `read-pi.raku`:

```raku
need Circle;

say $Circle::pi;
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/modules-basics/read-the-constant](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/read-the-constant).

## Вивід

```console
$ raku -I. read-pi.raku
3.14
```

## Коментарі

1. `need Circle` завантажує модуль. Але він не імпортує жодних імен. Тож Raku не знає просто `$pi`, без імені модуля.

1. До змінної `our` ви дістаєтеся через ім'я модуля. Ви пишете її як `$Circle::pi`.

{% include nav.html %}
