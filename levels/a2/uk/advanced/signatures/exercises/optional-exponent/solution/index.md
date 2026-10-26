---
title: 'Розв''язання: Необов''язковий показник степеня'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub power($base, $exp?) {
    $base ** ($exp // 2)
}

say power(5);
say power(5, 3);
```

🦋 Вихідний код можна знайти у файлі [optional-exponent.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/optional-exponent.raku).

## Вивід

```
25
125
```

## Коментарі

1. Знак `?` після `$exp` робить його необов'язковим. Тож `power` можна викликати лише з основою.

1. Якщо ви пропускаєте `$exp`, він невизначений. Тоді `//` дає значення `2`. Тож `power(5)` підносить основу до квадрата й отримує `25`. Тепер подивіться на `power(5, 3)`. Тут є показник. Тож код використовує його й отримує `125`.

{% include nav.html %}
