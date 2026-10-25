---
title: Quiz — Interpolation von Hashes
---

{% include menu.html %}

Hier ist ein Hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Schreiben Sie die Programme unten zu Ende. Jedes muss die Ausgabe aus seiner Aufgabe zeigen.

## 1

Geben Sie den Namen des griechischen Buchstabens `β` aus. Nehmen Sie ihn aus dem Hash. Setzen Sie den Schlüssel nicht in Anführungszeichen.

{:.quiz-code}
&lt;β&gt; | say &quot;The letter β is called %letters␣␣.&quot;;

## 2

Geben Sie den Namen des griechischen Buchstabens `β` aus. Nehmen Sie ihn aus dem Hash. Setzen Sie den Schlüssel in einfache Anführungszeichen.

{:.quiz-code}
{&apos;β&apos;} | say &quot;The letter β is called %letters␣␣␣␣.&quot;;

## 3

Geben Sie eine Tabelle mit den Buchstaben und ihren Namen aus.

{:.quiz-code}
letters{ | say &quot;Here are some Greek letters:\n%␣␣␣␣␣}\netc.&quot;; | Note that the output may be not sorted.

Das Programm kann das hier ausgeben:

    Here are some Greek letters:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
