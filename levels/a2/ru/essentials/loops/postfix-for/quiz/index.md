---
title: 'Тест: Постфиксный `for`*'
---

{% include menu.html %}

Допишите программу. Поставьте `for` после блока. Программа должна напечатать этот текст:

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

<div class="extended-explanation">Здесь после блока кода стоит <code>for</code>. Слово <code>for</code> должно стоять на той же строке, что и <code>}</code>. Если <code>for</code> стоит на новой строке, у цикла нет блока. Тогда Raku показывает ошибку ещё до запуска программы: <code>Missing block</code>. Старайтесь не использовать блоки таким образом.</div>

{% include quiz.html %}

{% include nav.html %}
