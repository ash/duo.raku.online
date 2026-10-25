---
title: Тест — Постфикс `for`*
---

{% include menu.html %}

Завършете програмата. Поставете `for` след блока. Програмата трябва да отпечатва този текст:

    A
    A
    B
    B
    C
    C

Ето началото на кода:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Тук след един блок код има <code>for</code>. Думата <code>for</code> трябва да е на същия ред като <code>}</code>. Ако <code>for</code> е на нов ред, цикълът няма блок. Тогава Raku показва грешка, преди програмата да започне: <code>Missing block</code>. Опитайте да не използвате блокове по този начин.</div>

{% include quiz.html %}

{% include nav.html %}
