---
title: Объекты исключений
translations_gpt:
---

{% include menu.html %}

Исключение описывает ошибку в программе. В Raku это объект, как и любой другой объект. Вы пишете `die 'something failed'`. Тогда Raku кладёт ваше сообщение в объект исключения. Тип этого объекта — `X::AdHoc`.

Блок `CATCH` перехватывает исключение. Внутри него можно посмотреть на этот объект. `.^name` даёт его тип. `.message` даёт его текст:

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

Знать тип полезно. С ним можно обрабатывать каждую ошибку по-своему. У каждого встроенного исключения в Raku есть свой тип. Имена этих типов начинаются с `X::`. Эти типы можно сопоставлять через `when`. Вы делали то же самое со значениями в блоке `given`/`when`:

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

Программа печатает `an ad-hoc error: something failed`. Так происходит, потому что исключение совпадает с типом `X::AdHoc`. Чтобы обработать определённый вид ошибки, вы сопоставляете его тип. Это основная идея. На ней строится раздел о [собственных исключениях](/ru/oop/custom-exceptions).

{% include nav.html %}
