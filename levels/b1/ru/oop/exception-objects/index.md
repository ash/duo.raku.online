---
title: Объекты исключений
translations_gpt:
---

{% include menu.html %}

Исключение — это объект, точно так же, как любой другой объект в Raku. Когда вы пишете `die 'something failed'`, Raku кладёт ваше сообщение внутрь объекта исключения. Этот объект имеет тип `X::AdHoc`.

Внутри `CATCH` этот объект можно изучить. Его тип вы получаете через `.^name`, а текст — через `.message`:

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

Когда вы знаете тип, вы можете обрабатывать разные ошибки по-разному. У встроенных исключений в Raku есть свои типы, и их имена начинаются с `X::`. Эти типы можно сопоставлять через `when`. Это работает так же, как сопоставление значений в блоке `given`/`when`:

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

Программа печатает `an ad-hoc error: something failed`. Это потому, что исключение совпало с типом `X::AdHoc`. Сопоставление по типу — основной способ обрабатывать конкретные ошибки. Раздел о [собственных исключениях](/ru/oop/custom-exceptions) строится на этой идее.

{% include nav.html %}
