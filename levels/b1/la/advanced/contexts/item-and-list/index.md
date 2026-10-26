---
title: Elementalis et listae contextus
---

{% include menu.html %}

Duo alii contextus decernunt utrum aliquid sit **lista** an unum **item**. Lista plures valores habet. Sigilla `@` et `$` in hac differentia nituntur.

In _contextu listae_ ordo in elementa sua expanditur. Ansa `for` argumentum suum in contextum listae ponit, itaque per singula elementa it:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for @a;
say $count; # 3
```

In _contextu item_ idem ordo ut unus valor agit. Contextualiser `$( … )` contextum item ponit. Itaque nunc ansa unam tantum rem videt et semel currit:

```raku
my @a = 1, 2, 3;

my $count = 0;
$count++ for $(@a);
say $count; # 1
```

Hoc explicat quid fiat cum ordinem scalari assignas. Ordo in unum item componitur, et elementa eius non copiantur. Causa est quod `my $x = @a` ordinem `@a` in contextum item ponit. Nota hoc unum item posse esse alium container cum multis itemis in eo:

```raku
my @a = 1, 2, 3;

my $var = @a;
say $var;      # [1 2 3]
say $var.WHAT; # (Array)
```

Variabilis `$var` est container scalaris, itaque nunc unum obiectum tenet. Hoc obiectum est `Array`. Hoc facile probare potes. Adhibe `$var` ut genus referentiae ordinis, ut aliae linguae id vocant:

```raku
say $var[1]; # 2
```

Socius eius, contextualiser `@( … )`, contrarium facit et contextum listae ponit.

Est etiam _contextus sink_. Est contextus enuntiati cuius valor abicitur. Exempli gratia, linea ibi esse potest solum propter effectum lateralem. Interdum valor in contextu sink nihil utile facit. Tum Raku monere potest de "useless use". Hoc est utile indicium te oblitum esse resultatum adhibere.

Cum sigillum eligis, `$` vel `@`, revera contextum eligis. Ubi opus est, contextualisers `$( )` et `@( )` tibi permittunt eum mutare.

{% include nav.html %}
