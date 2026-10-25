---
title: Изпълнение от REPL
---

{% include menu.html %}

REPL е съкращение от _Read–eval–print loop_ (Чети-изпълнявай-печатай цикъл). Това е вграден режим на обвивката. Вие пишете инструкции. След всяка от тях виждате резултата на екрана. Виждате състоянието на променливите. Виждате и изхода на вашата програма.

Въведете това, за да стартирате обвивката на Rakudo:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Изходът зависи от вашата версия на компилатора. В изхода по-горе обвивката предлага да инсталирате някои модули. С тях обвивката е по-удобна. Затова виждате това съобщение.

Накрая виждате символа за подканяне `>`. Тук пишете вашата програма или части от нея. Обвивката компилира кода ви ред по ред. Тя прави това, когато натиснете Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
