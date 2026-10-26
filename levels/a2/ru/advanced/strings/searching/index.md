---
title: Поиск в строках
translations_gpt:
---

{% include menu.html %}

Некоторые методы говорят, что находится внутри строки.

Метод `contains` проверяет, есть ли одна строка внутри другой. Она может быть в любом месте:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Метод `starts-with` проверяет начало строки. Метод `ends-with` проверяет конец:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Вам нужна точная позиция части строки? Тогда используйте `index`. Он возвращает позицию первого совпадения. Он считает с нуля:

```raku
say 'Raku'.index('k'); # 2
```

Иногда `index` не может найти эту часть. Тогда он возвращает `Nil`, а не число:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
