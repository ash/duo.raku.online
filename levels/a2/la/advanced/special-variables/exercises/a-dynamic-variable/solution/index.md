---
title: 'Solutio: Dynamica variabilis'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Inveni codicem fontem in archivo [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Exitus

```
running as guest
running as admin
```

## Commentarii

1. Twigil `*` `$*user` dynamicam facit. `whoami` eam numquam ut parametrum accipit. Valorem per acervum vocationum invenit. Itaque prima vocatio valorem praedefinitum ostendit, `guest`.

1. Clausula interior `$*user` iterum ut `admin` declarat. Hoc manet dum clausula currit. *Idem* `whoami` nunc `admin` videt. Quaesitio dynamica inspicit codicem qui nunc in acervo vocationum est. Variabilem dynamicam in circumscriptione superas. Tum omnis codex quem inde vocas plura iura accipit. Et `whoami` omnino non mutas.

{% include nav.html %}
