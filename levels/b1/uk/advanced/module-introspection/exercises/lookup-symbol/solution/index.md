---
title: 'Розв''язання: Знайдіть символ'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

Програма `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Обидва файли з вихідним кодом можна знайти в каталозі [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Вивід

```console
$ raku -I. lookup.raku
3.14
```

## Коментарі

1. `Circle::` — це stash модуля. Ім'я як ключ, як-от `Circle::{'$pi'}`, дає значення, збережене під ним. Ключ має містити сигіл, так само як перелічені імена.

1. Це дає те саме значення, що й кваліфіковане `$Circle::pi`. Але тут ім'я — звичайний рядок. Тож його можна скласти під час виконання. Його не треба виписувати у вихідному коді.

{% include nav.html %}
