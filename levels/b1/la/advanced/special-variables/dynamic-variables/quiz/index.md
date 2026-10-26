---
title: Quiz — Dynamicae variabiles
translations_gpt:
---

{% include menu.html %}

Quid haec programma imprimit?

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

`show` in gradu summo scriptum est, iuxta `my $*n = 1`. Sed hic locus nihil refert. Raku variabilem dynamicam per *acervum vocationum* quaerit. Ubi codex sedet non magni momenti est. Hic `show` ex `run` vocatur, quod `$*n` iterum ut `2` declaravit. Itaque hic valor viget, et programma `2` imprimit.

</div>

{% include nav.html %}
