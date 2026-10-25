---
title: Quiz — Postfix for
---

{% include menu.html %}

Try to finish the program so that it uses the postfix form of `for` and prints the following text:

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

<div class="extended-explanation">This code is an example of a code block with the postfix <code>for</code>. Note that <code>for</code> must be on the same line as the closing curly brace. If you put it on a new line, the block becomes separate from the loop, and you get a compilation error: <code>Missing block</code>. It is probably better not to use code blocks with postfix constructs like this.</div>

{% include quiz.html %}

{% include nav.html %}
