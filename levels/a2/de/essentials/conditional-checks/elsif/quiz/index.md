---
title: 'Quiz: `if`, `elsif` und `else`'
---

{% include menu.html %}

Schreiben Sie dieses Programm zu Ende. Es prüft ein Passwort. Füllen Sie die fehlenden Teile aus. Das ist nur eine Übung.

{:.quiz-code}
. | my $password = prompt &apos;Geben Sie Ihr Passwort ein: &apos;;
if | ␣␣␣␣␣ $password eq &apos;12345&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Wirklich?&apos;;
. | }
elsif | ␣␣␣␣␣ $password.chars &lt; 3 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Zu kurz&apos;;
. | }
elsif | ␣␣␣␣␣ $password eq &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Korrektes Passwort&apos;;
. | }
else | ␣␣␣␣␣ {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Passwort ist falsch&apos;;
. | }

{% include quiz.html %}

{% include nav.html %}
