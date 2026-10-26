---
title: Вправа «Прочитайте сталу»
translations_gpt:
---

{% include menu.html %}

## Завдання

У вас є модуль у файлі `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Напишіть програму, яка завантажує цей модуль через `need`, а не `use`. Вона має вивести значення `$pi`. Пам'ятайте, що `need` не імпортує імен. Тож до змінної ви дістаєтеся через ім'я модуля.

## Приклад

```console
$ raku -I. read-pi.raku
3.14
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
