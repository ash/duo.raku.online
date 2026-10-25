---
title: Запуск из командной строки
---

{% include menu.html %}

Сохраните программу в текстовом файле, например, `hello.raku`. Потом передайте путь к файлу программе командной строки `raku`. Здесь знак доллара — это начало командной строки:

```console
$ raku hello.raku
```

Если в программе нет ошибок, она сразу выполняется. Если она что-то печатает, вы видите результат в терминале:

```console
$ raku hello.raku
Hello, World!
```

В Unix-подобных системах вы можете добавить shebang. Это особая первая строка. Ещё вы можете сделать файл исполняемым:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Вот следующие шаги:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% assign human=1 %}
{% include nav.html %}
