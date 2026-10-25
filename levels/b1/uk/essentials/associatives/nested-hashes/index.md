---
title: Вкладені хеші
---

{% include menu.html %}

Ви створюєте вкладені хеші майже так само, як [вкладені масиви](/uk/essentials/positionals/nested-arrays). Використовуйте фігурні дужки навколо внутрішніх хешів.

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

Зверніть увагу, що кінцева кома (кома після останнього елемента) — це допустимий синтаксис:

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

З такою комою легше змінювати структуру, коли ви копіюєте та вставляєте рядки.

Щоб отримати елементи внутрішніх хешів, використовуйте два ключі поспіль.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
