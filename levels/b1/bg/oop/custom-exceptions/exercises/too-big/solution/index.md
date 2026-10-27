---
title: 'Решение: Твърде голямо'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. `TooBig is Exception` прави класа изключение, което можете да хвърлите. Той носи две парчета данни, `value` и `limit`. Методът му `message` слага и двете в текста, който съобщава.

1. `.throw` хвърля изключението, а `when TooBig` го съпоставя по типа му. Обработчикът не само отпечатва съобщението. Той чете атрибута `limit` направо от прихванатия обект, за да даде полезна подсказка. Ето защо собственото изключение е по-добро от обикновен низ. Обработчикът получава данни с ясна структура, според които може да действа.

1. Изключението се хвърля **само** когато `$value > $limit`. За `30` няма изключение и тялото на цикъла стига до своето `say`. То отпечатва, че стойността е в рамките на границата. За `99` и `60` се случва `throw`, така че това `say` се пропуска. Вместо това `CATCH` обработва изключението. Самото тяло на `for` е блокът, който `CATCH` пази. Затова прихванатото изключение спира само текущата обиколка. После цикълът просто продължава към следващата стойност.

{% include nav.html %}
