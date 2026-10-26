---
title: 'Solution: Редът на END'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Можете да намерите изходния код във файла [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Изход

```
body
second END
first END
```

## Коментари

1. И двата phaser-а `END` се изпълняват след основния код, затова програмата отпечатва първо `body`.

1. Няколко phaser-а `END` се изпълняват по принципа последен влязъл, пръв излязъл. `second END` е деклариран по-късно, затова се изпълнява преди `first END`. Това прилича на почистването, което обикновено трябва първо да отмени най-новата настройка.

{% include nav.html %}
