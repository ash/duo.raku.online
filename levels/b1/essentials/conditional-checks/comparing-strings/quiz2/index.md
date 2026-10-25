---
title: Quiz 2 — the condition in if
---

{% include menu.html %}

Fix the program first, and then answer the question.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

What does this program do when the test uses `=`?

{:.quiz-select}
Always prints ‘Correct’ | Your answer:&nbsp; (: Always prints ‘Correct’, Always prints ’Incorrect’, Prints ’Correct’ for correct passwords and ‘Incorrect’ for incorrect ones, Prints ’Incorrect’ for correct passwords and ’Correct’ for incorrect ones :)

<div class="extended-explanation">The program always prints ‘Correct’, because <code>$password = '*&(#&$#Y'</code> is an assignment. It gives the <code>$password</code> variable a new value. This value is neither zero nor an empty string, so it counts as <code>True</code>. In this case, the user’s password is never checked.<br/><br/>If you type <code>==</code>, the program will break. It tries to convert both strings to numbers, and this fails. The two strings are the user’s password and the correct password.</div>

{% include quiz.html %}

{% include nav.html %}
