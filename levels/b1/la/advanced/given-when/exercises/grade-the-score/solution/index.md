---
title: 'Solutio: Stadium vitae ex aetate'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

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

🦋 Inveni codicem fontem in archivo [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Exitus

```
adult
```

## Commentarii

1. Haec solutio duo genera `when` miscet. Primum est *condicio*, `$_ < 0`, ubi `$_` est topicum a `given` positum. Aetates invalidas removet. Cetera sunt *intervalla*, quae aetates validas in stadia dividunt.

1. Ordo refert. Probatio aetatis negativae prima venit. Itaque currit antequam ullum intervallum probatur. Valor `30` in `20..64` est, itaque programma `adult` imprimit.

1. Copia `default` omnem aetatem 65 et supra tegit. Nullum ex intervallis enumeratis has aetates capit.

Hoc etiam invertere potes et sinere `default` potius inputum *invalidum* capere. Enumera omne stadium notum, etiam `senior` ut condicionem `$_ >= 65`. Tracta ut invalidum quidquid restat, sicut aetatem negativam:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hic `default` verus ramus “nihil ex supra dictis” est. Quae versio melius legitur, res gustus est. Pone probationem primam cum casus invalidus exceptio est. Aut fac eum `default` cum omnia stadia valida clare enumerata sunt.

{% include nav.html %}
