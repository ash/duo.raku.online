---
title: 'Тест — Переменные окружения'
translations_gpt:
---

{% include menu.html %}

В какой переменной хранятся переменные окружения программы?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` — это динамический хеш переменных окружения. Вы читаете переменную по её имени, как в `%*ENV<HOME>`. А в `@*ARGS` хранятся аргументы командной строки.

</div>

{% include nav.html %}
