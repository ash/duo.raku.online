---
title: 'Quiz: `if`, `elsif`, e `else`'
---

{% include menu.html %}

Completa questo programma. Controlla una password. Riempi le parti che mancano. Questo è solo un esercizio.

{:.quiz-code}
. | my $password = prompt 'Enter your password: ';
if | ␣␣␣␣␣ $password eq '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Really?';
. | }
elsif | ␣␣␣␣␣ $password.chars < 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Too short';
. | }
elsif | ␣␣␣␣␣ $password eq '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct password';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Password is wrong';
. | }

{% include quiz.html %}

{% include nav.html %}
