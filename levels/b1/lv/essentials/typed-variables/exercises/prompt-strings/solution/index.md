---
title: 'Risinājums: Izpētiet `prompt` rezultātu — Virknes'
---

{% include menu.html %}

## Kods

Šeit ir pilna programma. Tā paveic uzdevumu un izdrukā gan ievadīto virkni, gan tās tipu.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Jūs varat atrast pirmkodu failā [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testa izpildes

Palaidiet programmu pāris reizes ar dažādiem vārdiem. Programma atkārto ievadi. Tā arī paziņo, ka mainīgais satur virkni. Citiem vārdiem sakot, tas ir `Str` tipa objekts.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Tagad palaidiet programmu vēlreiz. Ievadiet dažas atstarpes vārda vietā un nospiediet Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Mēs neredzam izvadi. Bet mēs varam redzēt, ka mainīgajam joprojām ir tips `Str`.

{% include nav.html %}
