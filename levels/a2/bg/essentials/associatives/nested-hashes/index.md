---
title: Вложени хешове
---

{% include menu.html %}

Правите вложени хешове по същия начин като [вложените масиви](/bg/essentials/positionals/nested-arrays). Сложете фигурни скоби около всеки вътрешен хеш.

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

Забележете, че запетая след последния елемент също е правилна:

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

Запетаята е полезна. Тя помага, когато променяте структурата с копиране и поставяне.

За да вземете елемент от вътрешен хеш, използвайте два ключа. Пишете ги един след друг.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
