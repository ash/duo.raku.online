---
title: 'Решение: Два типа изключения'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Намерете програмата във файла [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Изход

```
small
big
```

## Коментари

1. Цикълът хвърля `TooSmall` в първата обиколка и `TooBig` във втората. Всяко изключение се хвърля вътре в собствен блок, който има свой `CATCH`.

1. Фазерът `CATCH` има клон `when` за всеки тип изключение. Във всяка обиколка се изпълнява само клонът, който съвпада с хвърления тип. Затова първата обиколка отпечатва `small`, а втората — `big`. Ето как един набор от обработчици реагира различно на всеки вид грешка.

{% include nav.html %}
