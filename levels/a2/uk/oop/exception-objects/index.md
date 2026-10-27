---
title: Об'єкти винятків
translations_gpt:
---

{% include menu.html %}

Виняток описує помилку в програмі. У Raku це об'єкт, як і кожен інший об'єкт. Ви пишете `die 'something failed'`. Тоді Raku кладе ваше повідомлення в об'єкт винятку. Тип цього об'єкта — `X::AdHoc`.

Блок `CATCH` перехоплює виняток. Усередині нього можна подивитися на цей об'єкт. `.^name` дає його тип. `.message` дає його текст:

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

Тип корисний. З ним ви можете поводитися з кожною помилкою по-своєму. Кожен вбудований виняток у Raku має свій тип. Імена цих типів починаються з `X::`. Ці типи можна зіставляти через `when`. Те саме ви робили зі значеннями в блоці `given`/`when`:

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

Це виводить `an ad-hoc error: something failed`. Так стається, бо виняток збігається з типом `X::AdHoc`. Щоб обробити певний вид помилки, ви зіставляєте його тип. Це основна ідея. Розділ про [власні винятки](/uk/oop/custom-exceptions) будується на ній.

{% include nav.html %}
