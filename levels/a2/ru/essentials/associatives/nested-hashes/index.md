---
title: Вложенные словари
---

{% include menu.html %}

Вы создаёте вложенные хэши так же, как [вложенные массивы](/ru/essentials/positionals/nested-arrays). Поставьте фигурные скобки вокруг каждого внутреннего хэша.

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

Обратите внимание: запятая после последнего элемента — это тоже правильно:

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

Эта запятая полезна. Она помогает, когда вы меняете структуру копированием и вставкой.

Чтобы получить элемент внутреннего хэша, используйте два ключа. Пишите их один за другим.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
