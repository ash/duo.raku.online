---
title: Запуск з командного рядка
---

{% include menu.html %}

Збережіть текст програми в текстовому файлі, наприклад, `hello.raku`. Потім передайте шлях до нього інструменту командного рядка `raku`. Знак долара показує запрошення оболонки:

```console
$ raku hello.raku
```

Якщо в програмі немає помилок, вона виконується одразу. Якщо є якийсь вивід, ви побачите його в терміналі:

```console
$ raku hello.raku 
Hello, World!
```

У системах на базі Unix можна додати shebang і зробити файл виконуваним:

```raku
#!/usr/bin/env raku

say 'Hello, World!';
```

Наступні кроки такі:

```console
$ chmod a+x hello.raku
$ ./hello.raku
Hello, World!
```

{% include nav.html %}
