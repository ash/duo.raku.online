---
title: Quiz — Postfix for
---

{% include menu.html %}

Try to finish the program. It must use the postfix form of `for` and print the following text:

    A
    A
    B
    B
    C
    C

Here is a draft of the code:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">This code shows a code block with the postfix <code>for</code>. Note that <code>for</code> must be on the same line as the closing curly brace. On a new line, the block is no longer part of the loop. Then you get a compile error: <code>Missing block</code>. It is probably better not to use code blocks with postfix forms like this.</div>

{% include quiz.html %}

{% include nav.html %}
