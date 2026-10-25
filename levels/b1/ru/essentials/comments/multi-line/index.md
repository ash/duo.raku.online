---
title: Многострочные комментарии
---

{% include menu.html %}

Если ваш комментарий длиннее одной строки, у вас есть выбор. Вы можете написать несколько однострочных комментариев или один многострочный.

Многострочные комментарии начинаются с двух символов: ``#` ``. После них идёт пара из открывающего и закрывающего символов: `( )`, `{ }`, `[ ]` или `< >`. Их также можно повторить, например, `(( ))`, `[[[ ]]]` и так далее.

Например:

```raku
my $name;
#`( We are going to ask the user
to enter their name first and then
save the input in a variable. )

$name = prompt 'What is your name? ';
#`{ The program now waits
until the user enters the name
and presses Enter. }

say $name; #`( And now we can print it )
```

{% assign human=1 %}
{% include nav.html %}
