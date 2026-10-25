---
title: 'Quiz: `if`, `elsif` en `else`'
---

{% include menu.html %}

Maak het volgende programma af. Het is een eenvoudige wachtwoordcontrole. Vul de ontbrekende delen in. Let op dat het alleen een oefening is.

{:.quiz-code}
. | my $password = prompt 'Voer je wachtwoord in: ';
if | ␣␣␣␣␣ $password eq '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Echt?';
. | }
elsif | ␣␣␣␣␣ $password.chars < 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Te kort';
. | }
elsif | ␣␣␣␣␣ $password eq '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct wachtwoord';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Wachtwoord is fout';
. | }

{% include quiz.html %}

{% include nav.html %}
