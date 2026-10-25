---
title: Quiz — Interpolation von Arrays
---

{% include menu.html %}

Hier ist ein Array:

```raku
my @arr = 10, 9, 8, 3, 2, 1;
```

Machen Sie die Programme unten fertig. Die Programme müssen die gewünschte Ausgabe liefern.

## 1

Geben Sie das dritte Element aus. Sein Index ist `2`.

{:.quiz-code}
[2] | say &quot;Das dritte Element ist @arr␣␣&quot;;

## 2

Geben Sie alle Elemente aus. Schreiben Sie nicht für jedes Element einen Index.

{:.quiz-code}
arr[] | say &quot;Dieses Array enthält: @␣␣␣␣.&quot;; | Die Ausgabe ist „Dieses Array enthält: 10 9 8 3 2 1.“

## 3

Geben Sie die Größe des Arrays aus. Rufen Sie dafür die Methode `elems` auf.

{:.quiz-code}
{@arr.elems} | say &quot;Es gibt ␣␣␣␣␣␣␣␣ Elemente.&quot;; | Geschweifte Klammern erforderlich, um Raku-Code in einen Raku-String einzubetten.

{% include quiz.html %}

{% include nav.html %}
