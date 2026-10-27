---
title: Обекти на изключенията
translations_gpt:
---

{% include menu.html %}

Изключението описва грешка в програмата. В Raku то е обект, като всеки друг обект. Вие пишете `die 'something failed'`. Тогава Raku слага вашето съобщение в обект на изключение. Типът на този обект е `X::AdHoc`.

Блокът `CATCH` прихваща изключението. Вътре в него можете да разгледате този обект. `.^name` дава типа му. `.message` дава текста му:

```raku
{
    die 'something failed';

    CATCH {
        default {
            say .^name;   # X::AdHoc
            say .message; # something failed
        }
    }
}
```

Типът е полезен. С него можете да третирате всяка грешка по свой начин. Всяко вградено изключение в Raku има свой тип. Имената на тези типове започват с `X::`. Можете да съпоставяте тези типове с `when`. Правихте същото със стойности в блок `given`/`when`:

```raku
{
    die 'something failed';

    CATCH {
        when X::AdHoc {
            say 'an ad-hoc error: ' ~ .message;
        }
        default {
            say 'some other error';
        }
    }
}
```

Това отпечатва `an ad-hoc error: something failed`. Това става, защото изключението съвпада с типа `X::AdHoc`. За да обработите определен вид грешка, съпоставяте нейния тип. Това е основната идея. Разделът за [собствените изключения](/bg/oop/custom-exceptions) се основава на нея.

{% include nav.html %}
