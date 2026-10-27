---
title: 'Решение: Съпоставете типа'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Намерете програмата във файла [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Изход

```
cannot divide by zero
```

## Коментари

1. В Raku `1 / 0` не се проваля веднага. Вместо това той дава мързелив `Failure`, който чака, докато бъде използван. Изключението се хвърля едва когато *използваме* стойността. Тук това става, когато се опитаме да я отпечатаме със `say`.

1. Хвърленото изключение е от вградения тип `X::Numeric::DivideByZero`. Клонът `when X::Numeric::DivideByZero` съвпада точно с този тип. Тук съпоставяте конкретен тип, вместо да прихващате всичко с `default`. Така можете да обработвате различните грешки по различен начин.

{% include nav.html %}
