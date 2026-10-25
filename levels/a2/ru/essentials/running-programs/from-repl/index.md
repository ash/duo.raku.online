---
title: Запуск из REPL
---

{% include menu.html %}

REPL — это сокращение от _Read–eval–print loop_ (прочитать-выполнить-вывести-повторить). Это встроенный режим командной оболочки. Вы пишете инструкции. После каждой вы видите результат на экране. Вы видите состояние переменных. Ещё вы видите вывод вашей программы.

Наберите эту команду, чтобы запустить оболочку Rakudo:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
>
```

Вывод зависит от вашей версии компилятора. В выводе выше оболочка предлагает установить некоторые модули. С ними оболочкой удобнее пользоваться. Поэтому вы видите это сообщение.

В конце вы видите символ запроса `>`. Здесь вы пишете вашу программу или её части. Оболочка компилирует ваш код строка за строкой. Она делает это, когда вы нажимаете Enter.

```console
> say 'Hello, World';
Hello, World
>
```

{% assign human=1 %}
{% include nav.html %}
