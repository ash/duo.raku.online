---
title: 'Розв''язання: Сирий рядок'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
say Q{$x and \n};
```

🦋 Вихідний код можна знайти у файлі [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Вивід

```
$x and \n
```

## Коментарі

1. `Q` — найбуквальніша форма цитування. Вона нічого не інтерполює. Вона також не обробляє екрановані послідовності.

1. Тож `$x` лишається текстом. А `\n` лишається двома символами: зворотною косою рискою та літерою `n`.

{% include nav.html %}
