---
title: Dynamicae variabiles
translations_gpt:
---

{% include menu.html %}

Variabilis _dynamica_ twigil `*` habet. Variabilis lexica solum in clausula visibilis est ubi eam declaras. Variabilis dynamica aliter se habet: Raku eam invenit quaerendo **foras per acervum vocationum**. In codice quaerit qui codicem praesentem vocavit. Nihil refert ubi ille codex definitus sit.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Subprogramma `greet` variabilem `$*greeting` non declarat neque ut argumentum accipit. Sed tamen eam videre potest. Causa est quod variabilis dynamica est. Praeterea `greet` ex loco vocatum est ubi variabilis in circumscriptione est.

Hoc exemplum etiam cum simplici variabili globali scalari `$greeting` operaretur. Sed exemplum sequens ostendit quid variabiles dynamicas speciales faciat.

Quaesitio acervum vocationum sequitur. Itaque declaratio propior remotiorem **superat** dum clausula eius currit:

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

Idem `show` prima vice `outer` imprimit. `inner` imprimit cum ex clausula vocatur quae `$*level` iterum declaravit. Haec est _circumscriptio dynamica_. Variabiles inbuiltae Raku `$*OUT`, `$*IN` et `$*ERR` eodem modo operantur. Exitum ad tempus redirigere potes si `$*OUT` in clausula iterum declaras. Tum omnis procedura quam intra clausulam vocas novum valorem videt. Variabiles dynamicae optimae sunt ad contextum codici vocato tradendum sine argumento expresso.

{% include nav.html %}
