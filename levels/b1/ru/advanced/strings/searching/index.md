---
title: Поиск в строках
translations_gpt:
---

{% include menu.html %}

Несколько методов сообщают, что содержится в строке.

Метод `contains` проверяет, есть ли одна строка где-нибудь внутри другой:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Методы `starts-with` и `ends-with` проверяют, как строка начинается и чем заканчивается:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Чтобы найти точную позицию подстроки, используйте `index`. Он возвращает позицию первого совпадения, считая с нуля:

```raku
say 'Raku'.index('k'); # 2
```

Если `index` не находит подстроку, он возвращает `Nil` вместо числа:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
