---
title: 'Тест 2: Условие в `if`'
---

{% include menu.html %}

Исправьте программу. Потом ответьте на вопрос.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

Теперь напишите `=` в проверке. Что делает программа?

{:.quiz-select}
Всегда выводит ‘Correct’ | Ваш ответ:&nbsp; (: Всегда выводит ‘Correct’, Всегда выводит ’Incorrect’, Выводит ’Correct’ для правильных паролей и ‘Incorrect’ для неправильных, Выводит ’Incorrect’ для правильных паролей ’Correct’ для неправильных :)

<div class="extended-explanation">Программа всегда выводит ‘Correct’. Здесь <code>$password = '*&(#&$#Y'</code> — это присваивание. Оно даёт переменной <code>$password</code> новое значение. Это значение не ноль, и это не пустая строка. Поэтому Raku считает его равным <code>True</code>. Здесь программа никогда не проверяет пароль пользователя.<br/><br/>А если вы напишете <code>==</code>? Тогда программа ломается. Она пытается превратить обе строки в числа. Это пароль от пользователя и правильный пароль. Это не работает, и программа выдаёт ошибку.</div>

{% include quiz.html %}

{% assign human=1 %}
{% include nav.html %}
