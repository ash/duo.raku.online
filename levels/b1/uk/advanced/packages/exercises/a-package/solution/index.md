---
title: 'Розв''язання: Пакунок'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. І змінну, і підпрограму оголошено через `our`. Тож обидві стають частиною простору імен `Temperature`, і до них можна дістатися ззовні.

1. До змінної дістаються як `$Temperature::freezing`: сигіл, ім'я пакунка, потім ім'я змінної. Підпрограму викликають як `Temperature::fahrenheit(100)`. Переведення `100` дає `100 * 9/5 + 32`, тобто `212`.

1. Звичайний `package` дає вам лише простір імен. Для бібліотеки, яку можна використовувати знову, ми взяли б натомість `module`. Коли ми працюємо з об'єктами, ми взяли б `class`. Але простір імен працює однаково в кожному з цих випадків.

{% include nav.html %}
