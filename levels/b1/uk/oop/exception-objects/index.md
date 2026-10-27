---
title: Об'єкти винятків
translations_gpt:
---

{% include menu.html %}

Виняток — це об'єкт, як і будь-який інший об'єкт у Raku. Коли ви пишете `die 'something failed'`, Raku кладе ваше повідомлення в об'єкт винятку. Цей об'єкт має тип `X::AdHoc`.

Усередині `CATCH` цей об'єкт можна дослідити. Його тип ви отримуєте через `.^name`, а текст — через `.message`:

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

Коли ви знаєте тип, ви можете по-різному поводитися з різними помилками. Вбудовані винятки в Raku мають власні типи, і їхні імена починаються з `X::`. З цими типами можна зіставлятися через `when`. Це працює так само, як зіставлення значень у блоці `given`/`when`:

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

Це виводить `an ad-hoc error: something failed`. Це тому, що виняток збігся з типом `X::AdHoc`. Зіставлення за типом — основний спосіб обробляти конкретні помилки. Розділ про [власні винятки](/uk/oop/custom-exceptions) будується на цій ідеї.

{% include nav.html %}
