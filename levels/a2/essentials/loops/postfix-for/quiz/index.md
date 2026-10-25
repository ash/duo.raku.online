---
title: Quiz — Postfix for
---

{% include menu.html %}

Finish the program. It must use `for` after the block, and it must print this text:

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

<div class="extended-explanation">This code uses a code block with <code>for</code> after it. Note that <code>for</code> must be on the same line as the closing curly brace. If you put it on a new line, the block is not part of the loop any more. Then you get an error: <code>Missing block</code>. It is better not to use code blocks with postfix forms like this.</div>

{% include quiz.html %}

{% include nav.html %}
