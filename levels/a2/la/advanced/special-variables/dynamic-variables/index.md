---
title: Dynamicae variabiles
translations_gpt:
---

{% include menu.html %}

Variabilis _dynamica_ twigil `*` habet. Variabilis vulgaris, lexica, solum in sua clausula visibilis est. Eam in hac clausula declaras. Variabilis dynamica aliter se habet. Raku eam **per acervum vocationum** quaerit. Codicem inspicit qui codicem praesentem vocavit. Deinde unum gradum retro it, et sic porro. Locus codicis praesentis nihil refert.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Subprogramma `greet` variabilem `$*greeting` non declarat. Eam ut argumentum non accipit. Sed tamen eam videre potest. Variabilis dynamica est. Et variabilis visibilis est ubi programma `greet` vocat.

Hoc exemplum etiam cum simplici variabili globali scalari `$greeting` operatur. Exemplum sequens ostendit rem specialem in variabilibus dynamicis.

Raku variabilem per acervum vocationum quaerit. Itaque declaratio propior remotiorem **superat**. Hoc significat: Raku propiorem adhibet. Hoc manet dum clausula eius currit:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

Idem `show` prima vice `outer` imprimit. Secunda vice `inner` imprimit. Hac vice programma `show` ex clausula vocat. Haec clausula `$*level` iterum declarat. Haec est _circumscriptio dynamica_. Variabiles inbuiltae Raku `$*OUT`, `$*IN` et `$*ERR` hoc modo operantur. Exempli gratia, `$*OUT` in clausula iterum declarare potes. Tum exitus ad tempus ad novum locum it. Omnis procedura quam in clausula vocas novum valorem videt. Variabiles dynamicae optimae sunt pro informatione quam codex vocatus requirit. Hanc informationem ut argumentum tradere non debes.

{% include nav.html %}
