---
title: 'Тест: `if`, `elsif`, та `else`'
---

{% include menu.html %}

Закінчіть цю програму. Вона перевіряє пароль. Заповніть відсутні частини. Це лише вправа.

{:.quiz-code}
. | my $password = prompt 'Введіть ваш пароль: ';
if | ␣␣␣␣␣ $password eq '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Справді?';
. | }
elsif | ␣␣␣␣␣ $password.chars < 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Занадто короткий';
. | }
elsif | ␣␣␣␣␣ $password eq '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Правильний пароль';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Пароль невірний';
. | }

{% include quiz.html %}

{% include nav.html %}
