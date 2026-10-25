---
title: 'Тест: `if`, `elsif` и `else`'
---

{% include menu.html %}

Завършете тази програма. Тя проверява парола. Попълнете липсващите части. Това е само упражнение.

{:.quiz-code}
. | my $password = prompt 'Въведете вашата парола: ';
if | ␣␣␣␣␣ $password eq '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Наистина?';
. | }
elsif | ␣␣␣␣␣ $password.chars < 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Твърде къса';
. | }
elsif | ␣␣␣␣␣ $password eq '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Правилна парола';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Грешна парола';
. | }

{% include quiz.html %}

{% include nav.html %}
