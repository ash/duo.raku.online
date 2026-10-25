---
title: Quiz — Interpolating hashes
---

{% include menu.html %}

Look at the following hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Complete the programs below so that they print the output that each task asks for.

## 1

Print the name of the Greek letter `β`, using the hash. Write the key without quotes around it.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Print the name of the Greek letter `β`, using the hash. Write the key in single quotes.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Print the letters and their names as a table.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

In this case, the output may look like this:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
