---
title: 'Quiz: `if`, `elsif`, et `else`'
---

{% include menu.html %}

Comple programma sequens. Est simplex probatio tesserae. Imple partes quae desunt. Nota: hoc tantum exercitium est.

{:.quiz-code}
. | my $password = prompt 'Enter your password: ';
if | ␣␣␣␣␣ $password aequum est '12345' {
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Serio?';
. | }
elsif | ␣␣␣␣␣ $password.characteres minus quam 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Nimis brevis';
. | }
elsif | ␣␣␣␣␣ $password aequum est '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Recta tessera';
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Tessera falsa est';
. | }

{% include quiz.html %}

{% include nav.html %}
