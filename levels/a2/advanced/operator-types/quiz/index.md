---
title: 'Quiz — Operator categories'
---

{% include menu.html %}

Look at the expression `@a[0]`. What is the category of the subscript `[0]`?

{:.quiz}
0 | postfix
1 | postcircumfix
0 | circumfix
0 | infix

{% include quiz.html %}

<div class="extended-explanation">

A subscript has brackets around its content. It *also* comes after a term, here `@a`. So it is a postcircumfix operator. A normal postfix, like `++`, has no brackets around anything. A circumfix stands around something. But it does not come after a term. An example is `[1, 2, 3]`. It makes an array.

</div>

{% include nav.html %}
