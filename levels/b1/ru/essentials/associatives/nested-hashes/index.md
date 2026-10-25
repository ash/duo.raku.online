---
title: Вложенные словари
---

{% include menu.html %}

Вложенные хэши создаются примерно так же, как [вложенные массивы](/ru/essentials/positionals/nested-arrays). Используйте фигурные скобки вокруг внутренних хэшей.

```raku
my %people =
    John => {
        age => 20,
        city => 'Madrid'
    },
    Alla => {
        age => 21,
        city => 'Tokyo'
    };
```

Обратите внимание, что завершающая запятая (запятая после последнего элемента) — это правильный синтаксис:

```raku
my %people =
    John => {
        age => 20,
        city => 'Madrid',
    },
    Alla => {
        age => 21,
        city => 'Tokyo',
    };
```

С этой запятой проще менять структуру, когда вы копируете и вставляете строки.

Чтобы получить элементы внутренних хэшей, используйте два ключа подряд.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
