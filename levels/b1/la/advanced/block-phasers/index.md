---
title: Phaseres blocorum
translations_gpt:
---

{% include menu.html %}

Raku phaseres pro toto programmate habet, sed etiam alios habet. Hi phaseres ad vitam singulae copiae vel ansae pertinent.

## Intrare et relinquere copiam

Phaser `ENTER` currit quotiens programma copiam intrat. Phaser `LEAVE` currit quotiens copiam relinquit. Non refert in qua linea eos scribas:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Output ostendit: `ENTER` primus currit, et `LEAVE` ultimus. Corpus copiae inter eos currit:

```
before block
entering
inside
leaving
after block
```

`LEAVE` praecipue utilis est, quia currit etiam si copia mature finitur. Ideo locus fidus est ad rem liberandam.

Phaser plenam copiam `{ }` loco unius sententiae accipere potest. Etiam plures eorum habere potes. Cum copia plus quam unum `LEAVE` habet, ordine inverso currunt. Qui ultimus constitutus est, primus currit. Itaque copia sicut cumulus operatur, a summo deorsum:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Programma rem `A` primam aperit et ultimam claudit:

```
open A
open B
work
close B
close A
done
```

Hic ordo “ultimum intrat, primum exit” est exacte quod ad purgationem requiris. Quod ultimum constituis, primum removetur. Phaser `END` totius programmatis eodem modo operatur. Plures copiae `END` etiam ordine inverso scripturae currunt.

## Phaseres ansarum

Intra ansas sunt tres alii phaseres pro stadiis ansae. `FIRST` semel ante primum transitum currit, et `LAST` semel post ultimum currit. `NEXT` in fine cuiusque transitus currit:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Hoc est output ansae:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Sicut alii phaseres, `FIRST`, `NEXT` et `LAST` ubicumque in codice esse possunt. Quisque suo momento currit.

{% include nav.html %}
