---
title: 'Utendo `unless`'
---

{% include menu.html %}

Cum [operatore `!`](/la/essentials/booleans/operations#negation) quamlibet condicionem Booleanam facile in contrarium vertere potes. Sed interdum `!` additum expressionem graviorem et difficiliorem ad legendum facit. In talibus casibus `unless` amicus tuus esse potest.

Raku clausulam `unless` exsequitur cum condicio eius `False` est.

```raku
my $broken = False;

# ...Aliquid potest $broken ad Verum hic ponere...
    
unless $broken {
    say "Noli sollicitari!";
    say "Esto laetus!";
}
```

Compara duas versiones eiusdem programmatis:

Cum `if` et negatione:

```raku
if !$broken { . . . }
```

Cum `unless`:

```raku
unless $broken { . . . }
```

Ambas optiones habes, itaque semper eligere potes quod in quoque casu melius videtur.

Nota quod clausulam `else` aut `elsif` post `unless` ponere non potes. Si una tibi opus est, sola via est `if` adhibere.

{% include nav.html %}
