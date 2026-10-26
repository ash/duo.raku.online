---
title: Quiz — Dynamicae variabiles
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nihil
0 | Errorem

{% include quiz.html %}

<div class="extended-explanation">

`show` in gradu summo est. Iuxta `my $*n = 1` stat. Sed hic locus nihil refert. Raku variabilem dynamicam per *acervum vocationum* quaerit. Locum codicis non inspicit. Hic `run` vocat `show`. Et `run` `$*n` iterum ut `2` declarat. Itaque hic valor viget, et programma `2` imprimit.

</div>

{% include nav.html %}
