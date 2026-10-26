---
title: '`WHO` et `HOW`'
translations_gpt: '`WHO` et `HOW`'
---

{% include menu.html %}

Ultima duo instrumenta introspectionis in serie sunt `HOW` et `WHO`.

## `HOW`

Post omnem valorem in Raku est _metaobiectum_. Hoc est obiectum quod scit quomodo typus valoris operetur. `HOW`, quod est abbreviatio pro _Higher Order Workings_, hoc metaobiectum reddit:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Re vera metaobiecto semper usus es, fortasse sine animadversione. `.^` in `.^name` est vocatio methodi quae per `HOW` it. Hae duae lineae idem faciunt:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Itaque `$x.^name` est tantum brevior modus scribendi `$x.HOW.name($x)`. Nota obiectum iterum ut argumentum transmitti. Causa est quod omnis valor typi idem metaobiectum *communicat*. Itaque meta-methodus scire debet de quo obiecto interroges. Forma `.^` hoc pro te sponte facit. Pro `name` argumentum revera neglegitur. Sed id transmittere est forma recta et generalis, quia quaedam meta-methodi eo utuntur.

Idem verum est de aliis meta-methodis quas videre potes, ut `.^methods`. Haec methodos enumerat quas in valore vocare potes.

## `WHO`

`WHO` _fasciculum_ reddit ad quem nomen pertinet. Haec est tabula symbolorum quae in illo spatio nominum definita sunt:

```raku
say Int.WHO.^name; # Stash
```

`Stash` est hash quod tabulam symbolorum tenet. Utile fit cum modulis operaris. Tum tibi permittit nomina quae modulus definit inspicere. Ad id redibimus in [sectione de modulis](/la/advanced/module-introspection). Nunc satis est scire `WHO` exsistere et quid reddat.

{% include nav.html %}
