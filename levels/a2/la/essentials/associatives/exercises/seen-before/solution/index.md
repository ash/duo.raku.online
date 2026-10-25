---
title: 'Solutio: Visus prius?'
---

{% include menu.html %}

Hoc est munus classicum pro tabula. Tabula res priores memoria tenet. Ante circulum, programma tabulam `%seen` creat. In circulo, usor verbum inserit, `$word`. Programma hoc verbum ut clavem tabulae adhibet.

## Codex

Hic est solutio:

```raku
my %seen;
loop {
    my $word = prompt 'Verbum: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Visum!' !! say "Visum %seen{$word} vicibus!";
    }
    %seen{$word}++;
}
```

🦋 Inveni codicem fontem in archivo [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Exitus

```console
$ raku exercises/associatives/seen-before.raku
Verbum: Ego
Verbum: numquam
Verbum: vidi
Verbum: a
Verbum: vidi
Visum!
Verbum: quod
Verbum: vidi
Visum 2 vicibus!
Verum
Verbum: ut
Verbum: quod
Visum!
Verbum: vidi
Visum 3 vicibus!
Verum
Verbum: serravit
Verbum: ^C
```

## Commentarium

Codex `%seen{$word}++` valori 1 addit. Si valor nondum est, codex eum etiam creat. Talem creationem valoris _autovivificationem_ vocamus. Nota: si valorem tantum _legis_, hoc non fit. Exempli gratia, hoc non fit in condicione `if %seen{$word}`.

{% include nav.html %}
