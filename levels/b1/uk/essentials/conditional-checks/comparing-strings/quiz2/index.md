---
title: Тест 2 — умова в `if`*
---

{% include menu.html %}

Спочатку виправте програму, а потім дайте відповідь на запитання.

{:.quiz-code .fill}
. | my $password = prompt 'Enter your password: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Що робить ця програма, коли в перевірці стоїть `=`?

{:.quiz-select}
Завжди виводить ‘Correct’ | Ваша відповідь:&nbsp; (: Завжди виводить ‘Correct’, Завжди виводить ’Incorrect’, Виводить ’Correct’ для правильних паролів і ‘Incorrect’ для неправильних, Виводить ’Incorrect’ для правильних паролів і ’Correct’ для неправильних :)

<div class="extended-explanation">Програма завжди виводить ‘Correct’, тому що <code>$password = '*&(#&$#Y'</code> — це присвоєння. Воно дає змінній <code>$password</code> нове значення. Це значення не є ні нулем, ні порожнім рядком, тому воно вважається <code>True</code>. У цьому випадку пароль користувача ніколи не перевіряється.<br/><br/>Якщо ви наберете <code>==</code>, програма зламається. Вона пробує перетворити обидва рядки на числа, і це не вдається. Ці два рядки — пароль користувача і правильний пароль.</div>

{% include quiz.html %}

{% include nav.html %}
