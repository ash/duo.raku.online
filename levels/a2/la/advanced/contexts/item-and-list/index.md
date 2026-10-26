---
title: Elementalis et listae contextus
---

{% include menu.html %}

Sunt duo alii contextus. Unam rem decernunt. Estne valor **lista** plurium valorum? An est unum **item**? Sigilla `@` et `$` hanc differentiam ostendunt.

In _contextu listae_ ordo in elementa sua singula se dividit. Ansa `for` argumentum suum in contextum listae ponit. Itaque ansa per singula elementa it:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _contextu item_ idem ordo est unus valor. Contextualiser `$( … )` contextum item ponit. Nunc ansa unam tantum rem videt. Itaque semel currit:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Contextus item etiam hoc explicat. Ordinem scalari assignas. Scalaris totum ordinem ut unum item accipit. Elementa non copiat. Causa est haec: `my $x = @a` ordinem `@a` in contextum item ponit. Nota: hoc unum item potest esse alius container. Et hic container multa itema in se habere potest:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

`$var` est container scalaris. Itaque nunc unum obiectum tenet. Hoc obiectum est `Array`. Hoc facile probare potes. Adhibe `$var` ut genus referentiae ordinis. Sic aliae linguae id vocant:

```raku
say $var[1]; # 2
```

Contextualiser `@( … )` contrarium facit. Contextum listae ponit.

Est etiam _contextus sink_. In contextu sink nemo valorem enuntiati adhibet. Raku valorem simpliciter abicit. Exempli gratia, linea ibi esse potest solum propter effectum lateralem. Effectus lateralis est alia actio codicis, ut impressio. Interdum valor in contextu sink nihil utile facit. Tum Raku te monere potest de "useless use". Hoc est utile indicium. Fortasse oblitus es resultatum adhibere.

Sigillum, `$` vel `@`, revera est electio contextus. Interdum alium contextum requiris. Tum contextualisers `$( )` et `@( )` eum mutant.

{% include nav.html %}
