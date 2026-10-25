---
title: 'Тест: Постфиксный `for`*'
---

{% include menu.html %}

Допишите программу. Она должна использовать `for` после блока и печатать такой текст:

    A
    A
    B
    B
    C
    C

Вот начало кода:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Этот код использует блок кода с <code>for</code> после него. Обратите внимание: <code>for</code> должен стоять на той же строке, что и закрывающая фигурная скобка. Если вы перенесёте его на новую строку, блок больше не будет частью цикла. Тогда вы получите ошибку: <code>Missing block</code>. Лучше не использовать блоки кода с такими постфиксными формами.</div>

{% include quiz.html %}

{% include nav.html %}
