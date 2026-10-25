---
title: Quiz — Interpolar hashes
---

{% include menu.html %}

Mira el siguiente hash:

```raku
my %letters = α => 'Alpha', β => 'Beta', γ => 'Gamma';
```

Completa los programas de abajo para que impriman la salida que pide cada tarea.

## 1

Imprime el nombre de la letra griega `β` usando el hash. Escribe la clave sin comillas.

{:.quiz-code}
&lt;β&gt; | say &quot;La letra β se llama %letters␣␣.&quot;;

## 2

Imprime el nombre de la letra griega `β` usando el hash. Escribe la clave entre comillas simples.

{:.quiz-code}
{&apos;β&apos;} | say &quot;La letra β se llama %letters␣␣␣␣.&quot;;

## 3

Imprime las letras y sus nombres como una tabla.

{:.quiz-code}
letters{ | say &quot;Aquí hay algunas letras griegas:\n%␣␣␣␣␣}\netc.&quot;; | Nota que la salida puede no estar ordenada.

En este caso, la salida puede verse así:

    Aquí hay algunas letras griegas:
    α	Alpha
    β	Beta
    γ	Gamma
    etc.

{% include quiz.html %}

{% include nav.html %}
