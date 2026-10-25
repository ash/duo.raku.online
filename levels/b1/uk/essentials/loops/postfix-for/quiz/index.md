---
title: Тест — Постфікс `for`*
---

{% include menu.html %}

Спробуйте дописати програму. Вона повинна використовувати постфіксну форму `for` і виводити такий текст:

    A
    A
    B
    B
    C
    C

Ось чернетка коду:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Цей код показує блок коду з постфіксним <code>for</code>. Зверніть увагу, що <code>for</code> має стояти на тому самому рядку, що й закривна фігурна дужка. На новому рядку блок уже не є частиною циклу. Тоді ви отримаєте помилку компіляції: <code>Missing block</code>. Мабуть, краще не використовувати блоки коду з постфіксними формами таким чином.</div>

{% include quiz.html %}

{% include nav.html %}
