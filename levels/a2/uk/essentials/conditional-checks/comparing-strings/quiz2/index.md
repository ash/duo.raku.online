---
title: Тест 2 — умова в `if`*
---

{% include menu.html %}

Виправте програму. Потім дайте відповідь на запитання.

{:.quiz-code .fill}
. | my $password = prompt 'Enter your password: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Тепер поставте `=` у перевірку. Що робить програма?

{:.quiz-select}
Завжди виводить ‘Correct’ | Ваша відповідь:&nbsp; (: Завжди виводить ‘Correct’, Завжди виводить ’Incorrect’, Виводить ’Correct’ для правильних паролів і ‘Incorrect’ для неправильних, Виводить ’Incorrect’ для правильних паролів і ’Correct’ для неправильних :)

<div class="extended-explanation">Програма завжди виводить ‘Correct’. Тут <code>$password = '*&(#&$#Y'</code> — це присвоєння. Воно дає змінній <code>$password</code> нове значення. Це значення не нуль, і це не порожній рядок. Тому Raku бачить його як <code>True</code>. Програма тут ніколи не перевіряє пароль користувача.<br/><br/>А якщо ви наберете <code>==</code>? Тоді програма ламається. Вона пробує перетворити обидва рядки на числа. Це пароль від користувача і правильний пароль. Це не вдається, і програма зупиняється з помилкою.</div>

{% include quiz.html %}

{% include nav.html %}
