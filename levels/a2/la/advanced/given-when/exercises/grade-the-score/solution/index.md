---
title: 'Solutio: Stadium vitae ex aetate'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Haec solutio duo genera `when` habet. Primum est *condicio*, `$_ < 0`. Hic `$_` est topicum ex `given`. Haec condicio aetates capit quae sensum non habent. Ceterae copiae `when` sunt *intervalla*. Aetates rectas in stadia ponunt.

1. Ordo magni momenti est. Probatio aetatis negativae prima venit. Itaque ante omnia intervalla currit. Valor `30` in `20..64` est. Itaque programma `adult` imprimit.

1. Copia `default` est pro omni aetate 65 vel maiore. Nullum intervallum in indice has aetates habet.

Est etiam alius modus. Permitte `default` inputum *invalidum* capere. Enumera omne stadium notum. Scribe `senior` ut condicionem `$_ >= 65`. Omnia alia invalida sunt, exempli gratia aetas negativa:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Hic `default` vere significat “nihil ex supra dictis”. Quae versio melior est? Tu eligere potes. Estne casus invalidus rarus? Tum probationem primam pone. Enumerasne omnia stadia valida clare? Tum casum invalidum `default` fac.

{% include nav.html %}
