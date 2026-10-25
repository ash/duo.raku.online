---
title: Однострочные комментарии
---

{% include menu.html %}

Самый простой комментарий — это однострочный комментарий. Он начинается с символа `#`. Он идёт до конца строки.

```raku
my $name; # This variable is used to keep user’s name
$name = prompt 'What is your name? ';
say $name; # We see the name now
```

Shebang — это первая строка, например `#!/usr/bin/env raku`. Для Raku это тоже комментарий. Но командная оболочка может его прочитать и выполнить.

{% assign human=1 %}
{% include nav.html %}
