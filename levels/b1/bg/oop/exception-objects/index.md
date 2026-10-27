---
title: Обекти на изключенията
translations_gpt:
---

{% include menu.html %}

Изключението е обект, точно като всеки друг обект в Raku. Когато напишете `die 'something failed'`, Raku слага вашето съобщение в обект на изключение. Този обект е от типа `X::AdHoc`.

Вътре в `CATCH` можете да разгледате този обект. Типа му получавате с `.^name`, а текста му — с `.message`:

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

Когато знаете типа, можете да третирате различните грешки по различен начин. Вградените изключения в Raku имат свои типове и имената им започват с `X::`. Можете да съпоставяте тези типове с `when`. Това работи точно като съпоставянето на стойности в блок `given`/`when`:

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

Това отпечатва `an ad-hoc error: something failed`. Това е така, защото изключението съвпадна с типа `X::AdHoc`. Съпоставянето по тип е основният начин да обработвате конкретни грешки. Разделът за [собствените изключения](/bg/oop/custom-exceptions) се основава на тази идея.

{% include nav.html %}
