---
title: 'Solution: Fase della vita dall''età'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Puoi trovare il codice sorgente nel file [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Output

```
adult
```

## Commenti

1. Questa soluzione ha due tipi di `when`. Il primo è una *condizione*, `$_ < 0`. Qui `$_` è il topic di `given`. Questa condizione cattura le età che non hanno senso. Gli altri blocchi `when` sono *intervalli*. Mettono le età corrette nelle fasi della vita.

1. L'ordine è importante. Il controllo per un'età negativa viene per primo. Così parte prima di tutti gli intervalli. Il valore `30` è in `20..64`. Così il programma stampa `adult`.

1. Il blocco `default` è per ogni età da 65 in su. Nessuno degli intervalli della lista ha queste età.

C'è anche un altro modo. Lascia che `default` prenda l'input *non valido*. Elenca ogni fase conosciuta. Scrivi `senior` come la condizione `$_ >= 65`. Tutto il resto non è valido, per esempio un'età negativa:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Qui `default` vuol dire davvero “nessuna delle precedenti”. Quale versione è migliore? Puoi scegliere tu. Il caso non valido è raro? Allora metti il controllo per primo. Elenchi in modo chiaro tutte le fasi valide? Allora fai del caso non valido il `default`.

{% include nav.html %}
