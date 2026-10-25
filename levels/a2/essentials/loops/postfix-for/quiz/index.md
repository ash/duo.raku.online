---
title: Quiz — Postfix for
---

{% include menu.html %}

Finish the program. Put `for` after the block. The program must print this text:

    A
    A
    B
    B
    C
    C

Here is the start of the code:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Here, a block of code has <code>for</code> after it. The word <code>for</code> must be on the same line as the <code>}</code>. If <code>for</code> is on a new line, the loop has no block. Then Raku shows an error before the program runs: <code>Missing block</code>. Try not to use blocks in this way.</div>

{% include quiz.html %}

{% include nav.html %}
