---
title: 'Solution: Оператор за повдигане в квадрат'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Можете да намерите пълния код във файла [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Резултат

```
25
```

## Коментари

1. Декларираме оператора като `postfix:<²>`. Символът му е малка цифра 2, написана по-високо. Пишете го след операнда му, както в `5²`.

1. Тялото повдига операнда на степен две. Така `5²` дава `25`. Можете свободно да използвате Unicode символ. Той може да изглежда точно като в математиката.

{% include nav.html %}
