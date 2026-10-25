---
title: 'Solutio: Convertendo usoris initus ad numerum'
---

{% include menu.html %}

Programma tam simplex esse potest:

## Codex

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Codicem fontis invenire potes in fasciculo [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Exemplum

Exsequere id et integrum insere, qui positivus vel negativus esse potest:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Commentarii

Ut [vidimus](/la/essentials/typed-variables/allomorphs), `prompt` hic valorem `IntStr` reddit. Eum variabili `Int` sine ulla coactione assignare potes.

Nota tamen: quaedam chordae in integrum converti non possunt. Si talem chordam inseris, programma cum exceptione desinit.

{% include nav.html %}
