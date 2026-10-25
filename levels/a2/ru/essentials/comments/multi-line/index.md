---
title: Многострочные комментарии
---

{% include menu.html %}

Иногда комментарий длиннее одной строки. Тогда у вас есть два варианта. Вы можете написать несколько однострочных комментариев. Или вы можете написать один многострочный комментарий.

Многострочный комментарий начинается с двух символов: ``#` ``. Потом идёт пара скобок: `( )`, `{ }`, `[ ]` или `< >`. Вы также можете их повторить: `(( ))`, `[[[ ]]]` и так далее.

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
