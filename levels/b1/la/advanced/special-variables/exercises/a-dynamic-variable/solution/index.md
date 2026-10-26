---
title: 'Solutio: Dynamica variabilis'
translations_gpt:
---

{% include menu.html %}

Ecce una solutio possibilis.

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

1. Twigil `*` `$*user` dynamicam facit. `whoami` eam numquam ut parametrum accipit. Potius valorem invenit foras per acervum vocationum quaerendo. Itaque prima vocatio praedefinitum ostendit, `guest`.

1. Clausula interior `$*user` iterum ut `admin` declarat, et hoc manet dum clausula currit. *Idem* `whoami` nunc `admin` videt. Causa est quod quaesitio dynamica eum sequitur quicumque nunc in acervo est. Si variabilem dynamicam in circumscriptione superas, omnibus inde vocatis plura iura das. Et `whoami` omnino mutare non debes.

{% include nav.html %}
