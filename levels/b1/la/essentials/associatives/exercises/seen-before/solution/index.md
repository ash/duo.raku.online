---
title: 'Solutio: Visus prius?'
---

{% include menu.html %}

Hoc munus est exemplum classicum, ubi tabula res iam visas notat. Ante circulum, programma tabulam `%seen` creat. Intra circulum, verbum insertum `$word` ut clavis tabulae adhibetur.

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

Constructum `%seen{$word}++` non solum valori 1 addit. Etiam valorem creat, si antea non erat. Valorem hoc modo creare _autovivificatio_ vocatur. Nota quod valorem tantum _legere_, ut in condicione `if %seen{$word}`, eum non creat.

{% include nav.html %}
