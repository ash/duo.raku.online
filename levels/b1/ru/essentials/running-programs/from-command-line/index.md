---
title: Запуск из командной строки
---

{% include menu.html %}

Сохраните текст программы в текстовом файле, например, `hello.raku`. Затем передайте путь к нему программе командной строки `raku`. Знак доллара показывает начало командной строки:

```console
$ raku hello.raku
```

Если в программе нет ошибок, она сразу же запустится. Если есть какой-то вывод, вы увидите его в терминале:

```console
$ raku hello.raku
Hello, World!
```

В Unix-подобных системах вы можете добавить shebang и сделать файл исполняемым:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Следующие шаги:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% assign human=1 %}
{% include nav.html %}
