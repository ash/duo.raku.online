---
title: Сравнение строк
---

{% include menu.html %}

Чтобы сравнивать строки, Raku использует отдельный набор операторов:

`eq` | Равно
`ne` | Не равно
`gt` | Больше
`ge` | Больше или равно
`lt` | Меньше
`le` | Меньше или равно

## Примеры

Посмотрите на эти примеры, которые сравнивают две строки:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% assign human=1 %}
{% include nav.html %}
