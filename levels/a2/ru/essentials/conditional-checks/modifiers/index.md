---
title: '`if` и `unless` как модификаторы инструкций'
---

{% include menu.html %}

Иногда простая инструкция зависит от условия. В Raku есть очень простой способ это записать. Отдельный блок кода не нужен. Просто поставьте `if` или `unless` сразу после инструкции. В Raku их называют _модификаторами инструкций_.

```raku
say 'Good afternoon' if $hours > 12;

say 'All systems work' unless $broken;
```

{% assign human=1 %}
{% include nav.html %}
