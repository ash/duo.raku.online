---
title: Запуск з REPL
---

{% include menu.html %}

REPL означає _Read–eval–print loop_ (цикл читання-оцінки-друку). Це вбудований режим оболонки. Ви вводите інструкції, а екран показує результат кожного кроку. Сюди входить стан змінних і вивід вашої програми.

Щоб запустити оболонку Rakudo, просто введіть:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Вивід може залежати від версії компілятора, яка у вас встановлена. Тут оболонка рекомендує встановити деякі модулі, щоб нею було зручніше користуватися. Тому ви бачите це повідомлення.

У кінці є символ запиту, `>`. Тут можна вводити свою програму або її частини. Оболонка компілює її рядок за рядком, щойно ви натискаєте Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
