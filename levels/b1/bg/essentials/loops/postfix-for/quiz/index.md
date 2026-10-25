---
title: Тест — Постфикс `for`*
---

{% include menu.html %}

Опитайте се да завършите програмата. Тя трябва да използва постфиксната форма на `for` и да отпечатва следния текст:

    A
    A
    B
    B
    C
    C

Ето чернова на кода:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Този код показва блок код с постфикс <code>for</code>. Обърнете внимание, че <code>for</code> трябва да е на същия ред като затварящата къдрава скоба. На нов ред блокът вече не е част от цикъла. Тогава получавате грешка при компилация: <code>Missing block</code>. Вероятно е по-добре да не използвате блокове код с постфиксни форми по този начин.</div>

{% include quiz.html %}

{% include nav.html %}
