---
title: Изпълнение от REPL
---

{% include menu.html %}

REPL означава _Read–eval–print loop_ (Чети-изпълнявай-печатай цикъл). Това е вграден режим на обвивката. Вие въвеждате инструкции, а екранът показва резултата от всяка стъпка. Това включва състоянието на променливите и изхода на вашата програма.

За да стартирате Rakudo обвивката, просто въведете:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Изходът може да зависи от версията на компилатора, която имате. Тук обвивката препоръчва да инсталирате някои модули за по-удобна работа. Затова виждате това съобщение.

Накрая има символ за подканяне, `>`. Тук можете да въведете вашата програма или части от нея. Обвивката я компилира ред по ред веднага щом натиснете Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
