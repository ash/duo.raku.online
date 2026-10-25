---
title: Uso di `unless`
---

{% include menu.html %}

L'operatore [`!`](/it/essentials/booleans/operations#negation) cambia facilmente qualsiasi condizione booleana nel suo contrario. Ma a volte questo `!` rende l'espressione più complessa. Allora è più difficile da leggere. In questi casi, `unless` può aiutare.

La condizione di `unless` deve essere `False`. Allora Raku esegue il blocco.

```raku
my $broken = False;

# ...Qualcosa può impostare $broken su True qui...
    
unless $broken {
    say "Non preoccuparti!";
    say "Sii felice!";
}
```

Ecco due versioni dello stesso programma. Confrontale:

Con `if` e `!`:

```raku
if !$broken { . . . }
```

Con `unless`:

```raku
unless $broken { . . . }
```

Quindi puoi scegliere. In ogni situazione, scegli quello che ti sembra meglio.

Dopo `unless` non puoi mettere un blocco `else` o `elsif`. Per questo devi usare `if`.

{% include nav.html %}
