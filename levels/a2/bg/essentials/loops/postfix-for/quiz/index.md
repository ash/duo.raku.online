---
title: Тест — Постфикс `for`*
---

{% include menu.html %}

Завършете програмата. Тя трябва да използва `for` след блока и трябва да отпечатва този текст:

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

<div class="extended-explanation">Този код използва блок код с <code>for</code> след него. Обърнете внимание, че <code>for</code> трябва да е на същия ред като затварящата къдрава скоба. Ако го поставите на нов ред, блокът вече не е част от цикъла. Тогава получавате грешка: <code>Missing block</code>. По-добре е да не използвате блокове код с постфиксни форми по този начин.</div>

{% include quiz.html %}

{% include nav.html %}
