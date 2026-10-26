---
title: 'Решение: Оптовая цена'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Исходный код можно найти в файле [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Вывод

```
normal price
bulk price
```

## Комментарии

1. У первого кандидата есть конструкция `where`, которая принимает только количество от 10 и больше. Поэтому вызов `price(25)` попадает к нему.

1. У второго кандидата нет условия, поэтому он перехватывает все остальные вызовы. Вот почему `price(3)` попадает туда.

{% include nav.html %}
