---
title: 'Решение: Назовете грешката'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Намерете програмата във файла [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Изход

```
X::AdHoc
sub failed
```

## Коментари

1. `die` се случва вътре в `risky`. Но изключението отива нагоре към извикващия. Извикващият е кодът, който е извикал `risky`. Тук това е блокът. `CATCH` в този блок обработва изключението. Така обикновено работи обработката на грешки. Кодът, който обработва грешката, е неин обработчик. Грешката и нейният обработчик може да са в различни процедури.

1. Обикновен `die` с низ създава изключение `X::AdHoc`. `.^name` показва този тип. `.message` връща текста, който дадохме на `die`.

{% include nav.html %}
