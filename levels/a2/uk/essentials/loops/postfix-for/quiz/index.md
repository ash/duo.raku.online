---
title: Тест — Постфікс `for`*
---

{% include menu.html %}

Допишіть програму. Поставте `for` після блоку. Програма повинна вивести такий текст:

    A
    A
    B
    B
    C
    C

Ось початок коду:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Тут після блоку коду стоїть <code>for</code>. Слово <code>for</code> має стояти на тому самому рядку, що й <code>}</code>. Якщо <code>for</code> стоїть на новому рядку, цикл не має блоку. Тоді Raku показує помилку ще до запуску програми: <code>Missing block</code>. Намагайтеся не використовувати блоки таким чином.</div>

{% include quiz.html %}

{% include nav.html %}
