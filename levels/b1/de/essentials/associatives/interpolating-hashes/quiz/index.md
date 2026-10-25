---
title: Quiz — Interpolation von Hashes
---

{% include menu.html %}

Sehen Sie sich den folgenden Hash an:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Vervollständigen Sie die Programme unten, damit sie die Ausgabe zeigen, die jede Aufgabe verlangt.

## 1

Geben Sie mit Hilfe des Hashes den Namen des griechischen Buchstabens `β` aus. Schreiben Sie den Schlüssel ohne Anführungszeichen.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Geben Sie mit Hilfe des Hashes den Namen des griechischen Buchstabens `β` aus. Schreiben Sie den Schlüssel in einfachen Anführungszeichen.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Print the letters and their names as a table.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

In diesem Fall kann die Ausgabe so aussehen:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
