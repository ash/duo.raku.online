---
title: 'Решение: Съпоставете типа'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. В Raku `1 / 0` не се срива веднага. Той дава мързелив `Failure`. `Failure` е стойност с грешка вътре. Той чака, докато го използвате. Raku хвърля изключението едва когато *използваме* стойността. Тук се опитваме да я отпечатаме със `say`.

1. Хвърленото изключение е от вградения тип `X::Numeric::DivideByZero`. Клонът `when X::Numeric::DivideByZero` съвпада точно с този тип. Тук съпоставяте един определен тип. Не прихващате всичко с `default`. Така можете да обработвате всеки вид грешка по свой начин.

{% include nav.html %}
