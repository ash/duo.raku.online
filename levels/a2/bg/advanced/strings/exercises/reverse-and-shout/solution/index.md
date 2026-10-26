---
title: 'Solution: Обърнете и извикайте'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
say 'raku'.flip.uc;
```

🦋 Можете да намерите изходния код във файла [reverse-and-shout.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/reverse-and-shout.raku).

## Изход

```
UKAR
```

## Коментари

1. Методите работят отляво надясно. Първо `flip` превръща `'raku'` в `'ukar'`. После `uc` го превръща в `'UKAR'`.

1. Всеки метод връща нов низ. Затова можете да ги свържете във верига в един израз.

{% include nav.html %}
