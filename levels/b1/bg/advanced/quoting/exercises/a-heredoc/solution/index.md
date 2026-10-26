---
title: 'Solution: Heredoc'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Можете да намерите изходния код във файла [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Изход

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Коментари

1. Heredoc-ът започва с `qq:to` вместо с `q:to`, затова интерполира. Подобно на низ с `qq`, той попълва скаларите `$name`, `$count` и `$item`. Той *също* изпълнява код в текста: блокът `{$count * $price}` изчислява `3 * 25`. Така общата сума, `75`, се появява направо в текста.

1. Двойните кавички около `"$item"` тук са просто обикновени символи. Вътре в heredoc няма разделител, който трябва да се екранира. Затова кавичките се отпечатват както са написани, а `$item` все пак се интерполира.

1. Тялото и затварящият `END` имат еднакъв отстъп от четири интервала. Отстъпът на терминатора се премахва от всеки ред. Затова тези четири интервала никога не попадат в низа. Изходът започва от левия край.

1. Heredoc-ът вече завършва с нов ред. Затова кодът използва `print` вместо `say`. Със `say` бихте получили втори нов ред и излишен празен ред.

{% include nav.html %}
