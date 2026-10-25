---
title: 'Solutio: Explorare resultatum `prompt` — Numeri'
---

{% include menu.html %}

## Codex

Hic est programma completum. Problema solvit et tam valorem insertum quam genus eius imprimit.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Codicem fontis invenire potes in archivo [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Probationes

Programma pluries exsequi et numeros diversorum generum intrare.

### Numeri integri

Primum integros temptemus, tam positivos quam negativos.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Eventus genus `IntStr` habet. Hoc genus inbuiltum proprietates tam `Int` quam `Str` habet.

### Numeri rationales

Nunc numerum rationalem temptemus. Memento: in Raku, si numerum cum puncto decimali scribis, numerum `Rat` accipis. Non est numerus fluitans.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Hoc tempore programma dicit data in `$n` genus `RatStr` habere. Hoc est genus compositum ex `Rat` et `Str`.

### Numeri fluitantes

Denique numerum in notatione scientifica tempta. Iam output fortasse conicere potes.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Ut exspectavimus, novus valor est generis `NumStr`.

{% include nav.html %}
