---
title: Quiz — Ternärer Operator
---

{% include menu.html %}

Füllen Sie die Lücken im Programm:

{:.quiz-code}
. | my $color = prompt &apos;Welche Farbe hat es? &apos;;
?? | say $color eq &apos;blau&apos; ␣␣
!! | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Das ist ein Himmel!&apos; ␣␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;&apos;Ich brauche mehr Informationen.&apos;;

{% include quiz.html %}

## Kommentar

Ein Fehler beim ternären Operator in Raku kommt am häufigsten vor. Der Rakudo-Compiler hat dafür eine spezielle Fehlermeldung.

    ===SORRY!=== Fehler beim Kompilieren von /Users/ash/raku-course/t.raku
    Nicht unterstützte Verwendung von ? und : für den ternären bedingten Operator. In
    Raku bitte verwenden: ?? und !!.
    bei /Users/ash/raku-course/t.raku:2
    ------> say $color eq 'blue' ?⏏ 'This is a sky!' : 'I need more informa

{% include nav.html %}
