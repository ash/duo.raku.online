---
title: Порівняння рядків
---

{% include menu.html %}

Рядки мають свої оператори для порівняння:

`eq` | Дорівнює
`ne` | Не дорівнює
`gt` | Більше
`ge` | Більше або дорівнює
`lt` | Менше
`le` | Менше або дорівнює

## Приклади

Ось кілька прикладів. Кожен порівнює два рядки:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
