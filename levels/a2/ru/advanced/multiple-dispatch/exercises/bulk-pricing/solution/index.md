---
title: 'Решение: Оптовая цена'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. У первого кандидата есть конструкция `where`. Она принимает только количество от 10 и больше. Поэтому вызов `price(25)` идёт к этому кандидату.

1. У второго кандидата нет условия. Он принимает все остальные вызовы. Поэтому `price(3)` идёт туда.

{% include nav.html %}
