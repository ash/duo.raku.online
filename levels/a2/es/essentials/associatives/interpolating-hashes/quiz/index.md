---
title: Quiz — Interpolar hashes
---

{% include menu.html %}

Aquí tienes un hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Termina los programas de abajo. Cada uno debe imprimir la salida de su tarea.

## 1

Imprime el nombre de la letra griega `β`. Tómalo del hash. No pongas comillas alrededor de la clave.

{:.quiz-code}
&lt;β&gt; | say &quot;La letra β se llama %letters␣␣.&quot;;

## 2

Imprime el nombre de la letra griega `β`. Tómalo del hash. Pon la clave entre comillas simples.

{:.quiz-code}
{&apos;β&apos;} | say &quot;La letra β se llama %letters␣␣␣␣.&quot;;

## 3

Imprime una tabla con las letras y sus nombres.

{:.quiz-code}
letters{ | say &quot;Aquí hay algunas letras griegas:\n%␣␣␣␣␣}\netc.&quot;; | Nota que la salida puede no estar ordenada.

El programa puede imprimir esto:

    Aquí hay algunas letras griegas:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
