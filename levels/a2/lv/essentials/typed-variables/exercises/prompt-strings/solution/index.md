---
title: 'Risinājums: Izpētiet `prompt` rezultātu — Virknes'
---

{% include menu.html %}

## Kods

Šeit ir pilna programma. Tā izdara darbu. Tā izdrukā virkni, ko jūs ievadāt, un tās tipu.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 Jūs varat atrast pirmkodu failā [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Testa izpildes

Palaidiet programmu divas vai trīs reizes. Ievadiet dažādus vārdus. Programma vēlreiz izdrukā jūsu ievadi. Tā arī pasaka, ka mainīgais satur virkni. Citiem vārdiem, tas ir `Str` tipa objekts.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Tagad palaidiet programmu vēlreiz. Vārda vietā ievadiet dažas atstarpes. Tad nospiediet Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

Mēs neredzam izvadi. Bet mēs redzam mainīgā tipu. Tas joprojām ir `Str`.

{% include nav.html %}
