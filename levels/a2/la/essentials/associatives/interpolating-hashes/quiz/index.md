---
title: Quiz — Interpolando hashes
---

{% include menu.html %}

Ecce hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Comple programmata infra. Quodque output ex suo munere imprimere debet.

## 1

Imprime nomen litterae Graecae `β`. Id ex hash sume. Noli quotationes circa clavem ponere.

{:.quiz-code}
&lt;β&gt; | dic &quot;Littera β vocatur %letters␣␣.&quot;;

## 2

Imprime nomen litterae Graecae `β`. Id ex hash sume. Pone clavem in quotationibus simplicibus.

{:.quiz-code}
{&apos;β&apos;} | dic &quot;Littera β vocatur %letters␣␣␣␣.&quot;;

## 3

Imprime tabulam cum litteris et nominibus earum.

{:.quiz-code}
litterae{ | dic &quot;Hic sunt nonnullae litterae Graecae:\n%␣␣␣␣␣}\netc.&quot;; | Nota quod output non ordinatum esse potest.

Programma hoc imprimere potest:

    Hic sunt nonnullae litterae Graecae:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
