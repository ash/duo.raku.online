---
title: Сравнение строк
---

{% include menu.html %}

У строк есть свои операторы для сравнения:

`eq` | Равно
`ne` | Не равно
`gt` | Больше
`ge` | Больше или равно
`lt` | Меньше
`le` | Меньше или равно

## Примеры

Вот несколько примеров. Каждый сравнивает две строки:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% assign human=1 %}
{% include nav.html %}
