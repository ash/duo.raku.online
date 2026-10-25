---
title: Uso di `unless`
---

{% include menu.html %}

Con l'operatore [`!`](/it/essentials/booleans/operations#negation), puoi facilmente cambiare qualsiasi condizione booleana nel suo contrario. Ma a volte il `!` in più rende l'espressione più pesante e più difficile da leggere. In questi casi, `unless` può essere un amico.

Raku esegue il blocco `unless` quando la sua condizione è `False`.

```raku
my $broken = False;

# ...Qualcosa può impostare $broken su True qui...
    
unless $broken {
    say "Non preoccuparti!";
    say "Sii felice!";
}
```

Confronta due versioni dello stesso programma:

Con `if` e negazione:

```raku
if !$broken { . . . }
```

Con `unless`:

```raku
unless $broken { . . . }
```

Hai tutte e due le possibilità, quindi puoi sempre scegliere quella che ti sembra migliore in ogni situazione.

Nota che dopo `unless` non puoi mettere un blocco `else` o `elsif`. Se ti serve, l'unico modo è usare `if`.

{% include nav.html %}
