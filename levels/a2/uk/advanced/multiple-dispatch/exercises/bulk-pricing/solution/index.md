---
title: 'Розв''язання: Оптова ціна'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Вихідний код можна знайти у файлі [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Вивід

```
normal price
bulk price
```

## Коментарі

1. Перший кандидат має речення `where`. Воно приймає лише кількості від 10 і більше. Тож виклик `price(25)` іде до цього кандидата.

1. Другий кандидат не має умови. Він бере всі інші виклики. Тож `price(3)` іде туди.

{% include nav.html %}
