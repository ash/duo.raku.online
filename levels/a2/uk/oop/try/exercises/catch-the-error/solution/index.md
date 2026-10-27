---
title: 'Розв''язання: Перехопіть помилку'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Вихідний код можна знайти у файлі [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Вивід

```
42
False
broken
```

## Коментарі

1. Тут блок виконується без помилки. Тоді `try` просто дає значення блоку. Тож `$ok` містить `42`.

1. `die` у другому блоці кидає виняток. Тож цей блок дає невизначене значення. `$bad.defined` дає `False`.

1. Raku зберігає перехоплений виняток у спеціальній змінній `$!`. `$!.message` повертає текст винятку, `broken`.

{% include nav.html %}
