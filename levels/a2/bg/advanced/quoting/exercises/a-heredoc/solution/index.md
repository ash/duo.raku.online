---
title: 'Solution: Heredoc'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Heredoc-ът започва с `qq:to`, а не с `q:to`. Затова той интерполира. Работи като низ с `qq`. Попълва скаларите `$name`, `$count` и `$item`. Той *също* изпълнява код в текста. Блокът `{$count * $price}` изчислява `3 * 25`. Затова общата сума `75` се появява в текста.

1. Вижте двойните кавички в `"$item"`. Тук те са просто обикновени символи. В heredoc кавичките не са разделители. Затова не им трябва обратна наклонена черта. Raku отпечатва кавичките без промяна. Но все пак интерполира `$item`.

1. Тялото и затварящият `END` имат по четири интервала отпред. Raku премахва отстъпа на терминатора от всеки ред. Затова тези четири интервала никога не влизат в низа. Изходът започва от левия край.

1. Heredoc-ът вече завършва с нов ред. Затова програмата използва `print`, а не `say`. `say` добавя още един нов ред. Така се получава излишен празен ред.

{% include nav.html %}
