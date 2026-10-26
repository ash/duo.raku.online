---
title: 'Розв''язання: Пакунок'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
package Temperature {
    our $freezing = 0;
    our sub fahrenheit($c) { $c * 9/5 + 32 }
}

say $Temperature::freezing;
say Temperature::fahrenheit(100);
```

🦋 Вихідний код можна знайти у файлі [a-package.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/a-package.raku).

## Вивід

```
0
212
```

## Коментарі

1. І змінна, і підпрограма мають `our`. Тож обидві є частиною простору імен `Temperature`. Код ззовні пакунка може дістатися до них.

1. Змінну ви отримуєте через `$Temperature::freezing`. Спершу йде сигіл, потім ім'я пакунка, потім ім'я змінної. Підпрограму ви викликаєте як `Temperature::fahrenheit(100)`. Для `100` вона обчислює `100 * 9/5 + 32`. Результат — `212`.

1. Простий `package` дає лише простір імен. Для бібліотеки ми взяли б натомість `module`. Бібліотеку можна використовувати знову і знову. Пізніше, з об'єктами, ми взяли б `class`. Але простір імен працює однаково в усіх цих випадках.

{% include nav.html %}
