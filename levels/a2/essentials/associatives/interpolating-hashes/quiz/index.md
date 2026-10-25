---
title: Quiz — Interpolating hashes
---

{% include menu.html %}

Here is a hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Finish the programs below. Each one must print the output from its task.

## 1

Print the name of the Greek letter `β`. Take it from the hash. Do not put quotes around the key.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Print the name of the Greek letter `β`. Take it from the hash. Put the key in single quotes.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Print a table with the letters and their names.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

The program can print this:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
