---
title: 'Solution: Форматиран текст'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Можете да намерите изходния код във файла [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Изход

Стартирайте го с `raku --doc`:

```
Greeting

Hello, world!
```

## Коментари

1. `B<world>` прави думата удебелена. В обикновен текст тя изглежда като нормален текст. Но по-богатите формати я показват удебелена.

1. `raku --doc` показва Pod като текст. Той не изпълнява никакъв код от програмата.

1. Искате ли наистина да *видите* удебеления текст? Тогава превърнете Pod във формат със стилове. Първо инсталирайте форматиращ модул, например `Pod::To::HTML`. За това използвайте `zef install Pod::To::HTML`. След това изпълнете `raku --doc=HTML formatted-text.raku`. Сега думата е вътре в HTML елемент `<b>`. Обикновеният текст от `--doc` е различен. Той не може да покаже удебелен текст във файл или в тръба.

{% include nav.html %}
