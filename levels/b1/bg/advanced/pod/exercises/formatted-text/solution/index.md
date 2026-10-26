---
title: 'Solution: Форматиран текст'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Можете да намерите изходния код във файла [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Изход

Стартирайте с `raku --doc`:

```
Greeting

Hello, world!
```

## Коментари

1. `B<world>` маркира думата като удебелена. Когато се визуализира като обикновен текст, тя изглежда като нормален текст. Но по-богатите формати я показват удебелена.

1. `raku --doc` визуализира Pod, но не изпълнява нищо от програмния код.

1. За да *видите* наистина удебеления текст, визуализирайте Pod във формат, който има стилове. Инсталирайте форматиращ модул, например `Pod::To::HTML`, със `zef install Pod::To::HTML`. След това изпълнете `raku --doc=HTML formatted-text.raku`. Сега думата излиза вътре в HTML елемент `<b>`. Обикновеният текстов изход от `--doc` е различен. Той не може да покаже удебелен текст, когато отива във файл или в тръба.

{% include nav.html %}
