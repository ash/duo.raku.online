---
title: Quiz — Interpolando hashes
---

{% include menu.html %}

Specta hash sequentem:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Comple programmata infra, ut output imprimant quod quodque munus petit.

## 1

Imprime nomen litterae Graecae `β` ex hash. Scribe clavem sine quotationibus circa eam.

{:.quiz-code}
&lt;β&gt; | dic &quot;Littera β vocatur %letters␣␣.&quot;;

## 2

Imprime nomen litterae Graecae `β` ex hash. Scribe clavem in quotationibus simplicibus.

{:.quiz-code}
{&apos;β&apos;} | dic &quot;Littera β vocatur %letters␣␣␣␣.&quot;;

## 3

Print the letters and their names as a table.

{:.quiz-code}
litterae{ | dic &quot;Hic sunt nonnullae litterae Graecae:\n%␣␣␣␣␣}\netc.&quot;; | Nota quod output non ordinatum esse potest.

Hoc in casu, output sic videri potest:

    Hic sunt nonnullae litterae Graecae:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
