---
title: Тест — Постфікс `for`*
---

{% include menu.html %}

Допишіть програму. Вона повинна використовувати `for` після блоку і повинна виводити такий текст:

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

<div class="extended-explanation">Цей код використовує блок коду з <code>for</code> після нього. Зверніть увагу, що <code>for</code> має стояти на тому самому рядку, що й закривна фігурна дужка. Якщо ви поставите його на новий рядок, блок більше не є частиною циклу. Тоді ви отримаєте помилку: <code>Missing block</code>. Краще не використовувати блоки коду з постфіксними формами таким чином.</div>

{% include quiz.html %}

{% include nav.html %}
