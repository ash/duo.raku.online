---
title: Однострочные комментарии
---

{% include menu.html %}

Самый простой вид комментария — это однострочный комментарий. Он начинается с символа `#`. Он продолжается до конца текущей строки.

```raku
my $name; # This variable is used to keep user’s name
$name = prompt 'What is your name? ';
say $name; # We see the name now
```

Посмотрите на shebang, например `#!/usr/bin/env raku`, в первой строке кода. Для Raku это тоже комментарий. Но командная оболочка может его прочитать и выполнить.

{% assign human=1 %}
{% include nav.html %}
