---
title: Вложени хешове
---

{% include menu.html %}

Създавате вложени хешове подобно на [вложените масиви](/bg/essentials/positionals/nested-arrays). Използвайте фигурни скоби около вътрешните хешове.

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

Забележете, че запетаята в края (запетая след последния елемент) е правилен синтаксис:

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

С тази запетая е по-лесно да променяте структурата, като копирате и поставяте редове.

Използвайте два ключа един след друг, за да вземете елементите на вътрешните хешове.

```raku
say %people<John><city>; # Madrid
say %people<Alla><city>; # Tokyo
```

{% include nav.html %}
