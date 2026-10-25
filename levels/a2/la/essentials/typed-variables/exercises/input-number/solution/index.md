---
title: 'Solutio: Convertendo usoris initus ad numerum'
---

{% include menu.html %}

Programma valde simplex esse potest:

## Codex

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Codicem fontis invenire potes in fasciculo [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Exemplum

Exsequere id et integrum insere. Positivus vel negativus esse potest:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Commentarii

[Antea vidimus](/la/essentials/typed-variables/allomorphs): `prompt` valorem `IntStr` reddit. Hunc valorem variabili `Int` assignare potes. Eum convertere non necesse est.

Sed cave. Interdum chordam inseris quam Raku in integrum convertere non potest. Tum programma cum exceptione desinit.

{% include nav.html %}
