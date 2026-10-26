---
title: 'Solution: Обърнете и извикайте'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Методите се изпълняват отляво надясно. Първо `flip` обръща `'raku'` в `'ukar'`, а след това `uc` го превръща в `'UKAR'`.

1. Всеки метод връща нов низ, затова можете да ги навържете в един израз.

{% include nav.html %}
