---
title: 'Тест — Середовище'
translations_gpt:
---

{% include menu.html %}

Яка змінна містить змінні середовища програми?

{:.quiz}
0 | `@*ARGS`
1 | `%*ENV`
0 | `$*ENV`
0 | `%ENV`

{% include quiz.html %}

<div class="extended-explanation">

`%*ENV` — це динамічний хеш зі змінними середовища. Ви читаєте змінну за її іменем, як-от `%*ENV<HOME>`. `@*ARGS` — це інше. Він містить аргументи командного рядка. Це значення після імені програми в команді.

</div>

{% include nav.html %}
