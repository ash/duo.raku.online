---
title: 'Solutio: Explorare resultatum `prompt` — Numeri'
---

{% include menu.html %}

## Codex

Hic est programma plenum. Problema solvit. Valorem quem inseris et genus eius imprimit.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 Codicem fontis invenire potes in archivo [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Probationes

Exsequere programma aliquoties. Insere numeros diversorum generum.

### Numeri integri

Primum integros temptemus. Tempta positivos et negativos.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

Genus eventus est `IntStr`. Raku hoc genus inbuiltum habet. Proprietates `Int` et `Str` habet.

### Numeri rationales

Nunc numerum rationalem temptemus. Memento: in Raku, numerus cum puncto decimali est `Rat`. Non est numerus fluitans.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

Hoc tempore data in `$n` genus `RatStr` habent. Hoc est genus compositum. Est et `Rat` et `Str`.

### Numeri fluitantes

Denique numerum in notatione scientifica tempta, cum littera `e`. Nunc output fortasse conicere potes.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Ita, novus valor genus `NumStr` habet.

{% include nav.html %}
