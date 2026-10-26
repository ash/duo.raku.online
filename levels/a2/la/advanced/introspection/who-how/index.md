---
title: '`WHO` et `HOW`'
translations_gpt: '`WHO` et `HOW`'
---

{% include menu.html %}

Duo alia instrumenta introspectionis sunt `HOW` et `WHO`. Seriem complent.

## `HOW`

Omnis valor in Raku _metaobiectum_ post se habet. Metaobiectum est obiectum. Operationem typi valoris novit. `HOW` est abbreviatio pro _Higher Order Workings_. Metaobiectum reddit:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Metaobiecto iam uteris. Fortasse id non animadvertisti. `.^` in `.^name` est vocatio methodi. Haec vocatio per `HOW` it. Hae duae lineae idem faciunt:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Itaque `$x.^name` est tantum forma brevis pro `$x.HOW.name($x)`. Nota: obiectum iterum ut argumentum intrat. Cur? Omnes valores typi unum metaobiectum *communicant*. Methodi metaobiecti sunt meta-methodi. Meta-methodus scire debet de quo obiecto interroges. Forma `.^` obiectum pro te transmittit. Pro `name` Raku hoc argumentum non adhibet. Sed modus rectus et generalis est id transmittere. Quaedam meta-methodi id adhibent.

Hoc etiam de aliis meta-methodis verum est. Unum exemplum est `.^methods`. Indicem methodorum dat. Has methodos in valore vocare potes.

## `WHO`

`WHO` _fasciculum_ nominis reddit. Est tabula nominum, sive symbolorum, in illo spatio nominum:

```raku
say Int.WHO.^name; # Stash
```

`Stash` est hash pro tabula symbolorum. Cum modulis utile est. Per id nomina moduli quaerere potes. Ad id redimus in [sectione de modulis](/la/advanced/module-introspection). Nunc hoc tantum memento: `WHO` exsistit. Memento etiam id quod reddit.

{% include nav.html %}
