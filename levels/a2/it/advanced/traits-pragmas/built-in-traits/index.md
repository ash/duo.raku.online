---
title: Trait integrati
---

{% include menu.html %}

Aggiungi un _trait_ con la parola chiave `is`, subito dopo una dichiarazione. Un trait lavora durante la compilazione. Cambia una proprietà fissa della cosa che ha il trait. Raku ha molti trait. Ne hai già usati alcuni.

Normalmente i parametri di una subroutine sono **in sola lettura**. Dentro la routine non puoi assegnare nuovi valori ai parametri. Il trait `is copy` ti dà una tua copia dell'argomento. Puoi cambiare questa copia. Il cambiamento resta dentro la routine. La variabile del chiamante resta uguale:

```raku
sub greet($name is copy) {
    $name = "dear $name";
    say "Hello, $name!";
}

my $who = 'Anna';
greet($who); # Hello, dear Anna!
say $who;    # Anna — the caller's own variable is untouched
```

Il trait `is rw` va oltre. Collega il parametro alla variabile del chiamante. Cambi il parametro dentro la routine. Allora il cambiamento si vede anche fuori:

```raku
sub bump($n is rw) {
    $n++;
}

my $x = 10;
bump($x);
say $x; # 11
```

Senza uno di questi trait, `$n++` dà un errore. Questo perché il parametro è in sola lettura.

Un altro trait comune imposta un valore predefinito:

```raku
my $port is default(8080);
say $port; # 8080
```

Qui `is default` dà alla variabile un valore predefinito. La variabile ha questo valore quando non contiene nient'altro. Ci sono molti trait integrati: `is rw`, `is copy`, `is default` e altri. Ognuno aggiunge un comportamento speciale a una dichiarazione. Questo succede durante la compilazione. Il prossimo argomento mostra che la lista dei trait non è chiusa. [Puoi creare i tuoi trait](/it/advanced/traits-pragmas/writing-a-trait).

{% include nav.html %}
