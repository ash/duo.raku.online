---
title: Запуск из REPL
---

{% include menu.html %}

REPL означает _Read–eval–print loop_ (прочитать-выполнить-вывести-повторить). Это встроенный режим командной оболочки. Вы пишете инструкции, а экран показывает результат каждого шага. Сюда входят состояние переменных и вывод вашей программы.

Чтобы запустить командную оболочку Rakudo, просто напишите:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
>
```

Вывод может зависеть от того, какая у вас версия компилятора. Здесь оболочка рекомендует установить некоторые модули, чтобы с ней было удобнее работать. Поэтому вы видите это сообщение.

В конце стоит символ запроса, `>`. Здесь вы можете вводить свою программу или её части. Оболочка компилирует её строка за строкой, как только вы нажимаете Enter.

```console
> say 'Hello, World';
Hello, World
>
```

{% assign human=1 %}
{% include nav.html %}
