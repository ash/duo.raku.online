---
title: 'Quiz: `if`, `elsif`, e `else`'
---

{% include menu.html %}

Completa il seguente programma. Questo è un semplice controllo della password. Riempi le parti mancanti. Nota che è solo un esercizio.

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
