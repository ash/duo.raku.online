---
title: 'Solution: Редът на END'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. И двата phaser-а `END` се изпълняват след основния код. Затова програмата отпечатва първо `body`.

1. Няколко phaser-а `END` се изпълняват в реда „последен влязъл, пръв излязъл“. `second END` идва по-късно в кода. Но той се изпълнява преди `first END`. Това прилича на почистването в истинските програми. Обикновено трябва първо да отмените най-новата настройка.

{% include nav.html %}
