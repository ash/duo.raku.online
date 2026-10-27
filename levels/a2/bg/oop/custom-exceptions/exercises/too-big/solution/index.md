---
title: 'Решение: Твърде голямо'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Намерете програмата във файла [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Изход

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Коментари

1. `TooBig is Exception` прави класа изключение. Можете да го хвърлите. Той пази две парчета данни, `value` и `limit`. Неговият метод `message` слага и двете в текста.

1. `.throw` хвърля изключението. `when TooBig` го съпоставя по неговия тип. Кодът в `when TooBig` е обработчикът. Той не само отпечатва съобщението. Той чете и атрибута `limit` от прихванатия обект. С него обработчикът дава полезна подсказка. Ето защо собственото изключение е по-добро от обикновен низ. Обработчикът получава данни в ясна форма. Той може да действа според тези данни.

1. Изключението се хвърля **само** когато `$value > $limit`. За `30` няма изключение. Тялото на цикъла се изпълнява до края. Неговото `say` отпечатва, че стойността не е над границата. За `99` и `60` се случва `throw`. Затова програмата пропуска това `say`. Вместо това `CATCH` обработва изключението. Тук `CATCH` е направо в тялото на цикъла `for`. Затова прихванатото изключение спира само текущата обиколка. После цикълът просто продължава към следващата стойност.

{% include nav.html %}
