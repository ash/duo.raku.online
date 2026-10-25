---
title: Вкладені хеші
---

{% include menu.html %}

Вкладені хеші ви створюєте так само, як [вкладені масиви](/uk/essentials/positionals/nested-arrays). Поставте фігурні дужки навколо кожного внутрішнього хешу.

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

Зверніть увагу, що кома після останнього елемента теж дозволена:

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

Ця кома корисна. Вона допомагає, коли ви змінюєте структуру через копіювання і вставку.

Щоб отримати елемент внутрішнього хешу, використайте два ключі. Напишіть їх один за одним.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
