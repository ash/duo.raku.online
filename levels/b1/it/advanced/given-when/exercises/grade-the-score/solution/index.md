---
title: 'Solution: Fase della vita dall''età'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Questa soluzione mescola due tipi di `when`. Il primo è una *condizione*, `$_ < 0`, dove `$_` è il topic impostato da `given`. Scarta le età non valide. Gli altri sono *intervalli*, che raggruppano le età valide nelle fasi della vita.

1. L'ordine conta. Il controllo per un'età negativa viene per primo. Quindi viene eseguito prima di provare qualsiasi intervallo. Il valore `30` è in `20..64`, quindi il programma stampa `adult`.

1. Il blocco `default` copre ogni età da 65 in su. Nessuno degli intervalli elencati cattura queste età.

Puoi anche fare il contrario e lasciare che `default` catturi invece l'input *non valido*. Elenca ogni fase conosciuta, anche `senior` come condizione `$_ >= 65`. Tratta come non valido tutto quello che resta, per esempio un'età negativa:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Qui `default` è un vero ramo “nessuna delle precedenti”. Quale versione si legge meglio è una questione di gusti. Metti il controllo per primo quando il caso non valido è un'eccezione. Oppure rendilo il `default` quando tutte le fasi valide sono elencate in modo chiaro.

{% include nav.html %}
