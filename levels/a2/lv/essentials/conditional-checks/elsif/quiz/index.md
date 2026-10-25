---
title: 'Tests: `if`, `elsif` un `else`'
---

{% include menu.html %}

Pabeidziet šo programmu. Tā pārbauda paroli. Aizpildiet trūkstošās daļas. Tas ir tikai vingrinājums.

{:.quiz-code}
. | my $password = prompt 'Ievadiet savu paroli: ';
if | ␣␣␣␣␣ $password eq '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Tiešām?';
. | }
elsif | ␣␣␣␣␣ $password.chars < 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Par īsu';
. | }
elsif | ␣␣␣␣␣ $password eq '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Pareiza parole';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Parole ir nepareiza';
. | }

{% include quiz.html %}

{% include nav.html %}
