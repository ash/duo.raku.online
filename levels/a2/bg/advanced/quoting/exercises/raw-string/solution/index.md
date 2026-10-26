---
title: 'Solution: Суров низ'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
say Q{$x and \n};
```

🦋 Можете да намерите изходния код във файла [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Изход

```
$x and \n
```

## Коментари

1. `Q` е най-буквалната форма на цитиране. Тя не интерполира нищо. Тя също не обработва екраниращи последователности.

1. Така `$x` остава като текст. А `\n` остава като два символа: обратна наклонена черта и `n`.

{% include nav.html %}
