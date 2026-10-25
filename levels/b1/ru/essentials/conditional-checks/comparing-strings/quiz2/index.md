---
title: 'Тест 2: Условие в `if`'
---

{% include menu.html %}

Сначала исправьте программу, а потом ответьте на вопрос.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

Что делает эта программа, если в проверке стоит `=`?

{:.quiz-select}
Всегда выводит ‘Correct’ | Ваш ответ:&nbsp; (: Всегда выводит ‘Correct’, Всегда выводит ’Incorrect’, Выводит ’Correct’ для правильных паролей и ‘Incorrect’ для неправильных, Выводит ’Incorrect’ для правильных паролей ’Correct’ для неправильных :)

<div class="extended-explanation">Программа всегда выводит ‘Correct’, потому что <code>$password = '*&(#&$#Y'</code> — это присваивание. Оно даёт переменной <code>$password</code> новое значение. Это значение не ноль и не пустая строка, поэтому оно считается <code>True</code>. В этом случае пароль пользователя никогда не проверяется.<br/><br/>Если вы напишете <code>==</code>, программа сломается. Она пытается привести обе строки к числам, и это не получается. Эти две строки — пароль пользователя и правильный пароль.</div>

{% include quiz.html %}

{% assign human=1 %}
{% include nav.html %}
