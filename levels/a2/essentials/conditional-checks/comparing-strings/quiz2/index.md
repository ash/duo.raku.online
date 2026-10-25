---
title: Quiz 2 — the condition in if
---

{% include menu.html %}

Fix the program. Then answer the question.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

Now put `=` in the test. What does the program do?

{:.quiz-select}
Always prints ‘Correct’ | Your answer:&nbsp; (: Always prints ‘Correct’, Always prints ’Incorrect’, Prints ’Correct’ for correct passwords and ‘Incorrect’ for incorrect ones, Prints ’Incorrect’ for correct passwords and ’Correct’ for incorrect ones :)

<div class="extended-explanation">The program always prints ‘Correct’. Here, <code>$password = '*&(#&$#Y'</code> is an assignment. It gives the variable <code>$password</code> a new value. This value is not zero, and it is not an empty string. So Raku sees it as <code>True</code>. The program never checks the user’s password here.<br/><br/>What if you type <code>==</code>? Then the program breaks. It tries to change both strings into numbers. These are the password from the user and the correct password. This does not work, and the program fails.</div>

{% include quiz.html %}

{% include nav.html %}
