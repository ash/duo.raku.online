---
title: 'Решение: Два типа изключения'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. В първата обиколка цикълът хвърля `TooSmall`. Във втората обиколка той хвърля `TooBig`. Всяко изключение се хвърля в свой собствен блок. Всеки блок има свой `CATCH`.

1. Фазерът `CATCH` има клон `when` за всеки тип изключение. Във всяка обиколка се изпълнява само един клон. Това е клонът за типа на хвърленото изключение. Затова първата обиколка отпечатва `small`, а втората отпечатва `big`. Всеки клон `when` е обработчик за един тип. Така един набор от обработчици може да третира всеки вид грешка различно.

{% include nav.html %}
