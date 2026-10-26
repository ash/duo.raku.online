---
title: Trait integrati
---

{% include menu.html %}

Un _trait_ si aggiunge con la parola chiave `is` subito dopo una dichiarazione. Viene eseguito in fase di compilazione. Cambia una proprietà fissa della cosa a cui appartiene. Raku offre molti trait, e ne hai già usati alcuni.

Di default, i parametri di una subroutine sono **in sola lettura**. Non puoi assegnare loro un valore dentro la routine. Il trait `is copy` ti dà una copia privata dell'argomento, che puoi cambiare. Il cambiamento non tocca il chiamante:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Il trait `is rw` va oltre. Lega il parametro alla variabile del chiamante. Così un cambiamento dentro la routine è visibile anche fuori:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Senza uno di questi trait, `$n++` causerebbe un errore. Il parametro sarebbe in sola lettura.

Un altro trait comune imposta un valore predefinito:

```raku
my $port is default(8080);
say $port; # 8080
```

Qui `is default` dà alla variabile un valore da usare quando non ce n'è un altro. Ci sono molti trait integrati, come `is rw`, `is copy` e `is default`. Ognuno aggiunge un comportamento specifico a una dichiarazione in fase di compilazione. Il prossimo argomento mostra che l'insieme dei trait non è chiuso. [Puoi definire i tuoi](/it/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
