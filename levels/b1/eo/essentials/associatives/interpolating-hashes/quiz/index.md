---
title: Kvizo — Interpolante haketmapojn
---

{% include menu.html %}

Rigardu la jenan haketon:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Kompletigu la programojn sube, por ke ili presu la eligon, kiun ĉiu tasko petas.

## 1

Presu la nomon de la greka litero `β`, uzante la haketon. Skribu la ŝlosilon sen citiloj ĉirkaŭ ĝi.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Presu la nomon de la greka litero `β`, uzante la haketon. Skribu la ŝlosilon en unuoblaj citiloj.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Print the letters and their names as a table.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

En ĉi tiu kazo, la eligo povas aspekti tiel:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
