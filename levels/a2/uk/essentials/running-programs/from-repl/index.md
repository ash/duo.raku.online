---
title: Запуск з REPL
---

{% include menu.html %}

REPL — це скорочення від _Read–eval–print loop_ (цикл читання-оцінки-друку). Це вбудований режим оболонки. Ви вводите інструкції. Після кожної ви бачите результат на екрані. Ви бачите стан змінних. Ви також бачите вивід вашої програми.

Введіть це, щоб запустити оболонку Rakudo:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

Вивід залежить від вашої версії компілятора. У виводі вище оболонка радить встановити деякі модулі. З ними оболонкою зручніше користуватися. Тому ви бачите це повідомлення.

У кінці ви бачите символ запиту `>`. Тут ви вводите свою програму або її частини. Оболонка компілює ваш код рядок за рядком. Вона робить це, коли ви натискаєте Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
