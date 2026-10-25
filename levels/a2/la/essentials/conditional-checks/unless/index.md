---
title: 'Utendo `unless`'
---

{% include menu.html %}

[Operator `!`](/la/essentials/booleans/operations#negation) quamlibet condicionem Booleanam facile in contrarium vertit. Sed interdum hoc `!` expressionem magis implicatam facit. Tum difficilius est eam legere. In talibus casibus `unless` adiuvare potest.

Condicio `unless` debet esse `False`. Tum Raku clausulam exsequitur.

```raku
my $broken = False;

# ...Aliquid potest $broken ad Verum hic ponere...
    
unless $broken {
    say "Noli sollicitari!";
    say "Esto laetus!";
}
```

Hic sunt duae versiones eiusdem programmatis. Eas compara:

Cum `if` et `!`:

```raku
if !$broken { . . . }
```

Cum `unless`:

```raku
unless $broken { . . . }
```

Itaque electionem habes. In quoque casu, elige quod tibi melius videtur.

Clausulam `else` aut `elsif` post `unless` ponere non potes. Ad hoc `if` adhibere debes.

{% include nav.html %}
