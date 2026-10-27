---
title: 'Розв''язання: Перехопіть помилку'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Коли блок виконується без помилки, `try` просто дає значення блоку. Тож `$ok` містить `42`.

1. `die` у другому блоці кидає виняток. Тож цей блок дає невизначене значення, а `$bad.defined` дає `False`.

1. Перехоплений виняток зберігається в спеціальній змінній `$!`. `$!.message` повертає текст, який йому дали, — `broken`.

{% include nav.html %}
