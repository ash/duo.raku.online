---
title: Kvizo — Interpolante haketmapojn
---

{% include menu.html %}

Jen haketo:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Finu la programojn sube. Ĉiu devas presi la eligon el sia tasko.

## 1

Presu la nomon de la greka litero `β`. Prenu ĝin el la haketo. Ne metu citilojn ĉirkaŭ la ŝlosilon.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Presu la nomon de la greka litero `β`. Prenu ĝin el la haketo. Metu la ŝlosilon en unuoblajn citilojn.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Presu tabelon kun la literoj kaj iliaj nomoj.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

La programo povas presi ĉi tion:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
