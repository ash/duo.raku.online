---
title: Quiz — Interpolation von Arrays
---

{% include menu.html %}

Sie haben das folgende Array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Vervollständigen Sie die Programme unten so, dass sie die gewünschte Ausgabe liefern.

## 1

Geben Sie das dritte Element aus, also das Element mit dem Index `2`.

{:.quiz-code}
[2] | say &quot;Das dritte Element ist @arr␣␣&quot;;

## 2

Geben Sie alle Elemente aus, ohne den Index jedes einzelnen zu schreiben.

{:.quiz-code}
arr[] | say &quot;Dieses Array enthält: @␣␣␣␣.&quot;; | Die Ausgabe ist „Dieses Array enthält: 10 9 8 3 2 1.“

## 3

Geben Sie die Größe des Arrays mit Hilfe der Methode `elems` aus.

{:.quiz-code}
{@arr.elems} | say &quot;Es gibt ␣␣␣␣␣␣␣␣ Elemente.&quot;; | Geschweifte Klammern erforderlich, um Raku-Code in einen Raku-String einzubetten.

{% include quiz.html %}

{% include nav.html %}
