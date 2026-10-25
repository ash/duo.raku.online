---
title: Conversione dei tipi con operatori prefissi
---

{% include menu.html %}

Puoi anche cambiare il tipo di un oggetto con gli operatori prefissi. Ognuno di questi operatori è un solo carattere. Lo metti subito prima di un valore o di una variabile.

`~` | Converte in una stringa
`+` | Converte in un numero
`?` | Converte in un valore Booleano

Ecco un esempio. Crea un valore Booleano da un intero:

```raku
say ?42; # True
```

La conversione in stringa funziona allo stesso modo:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, poiché "-30" ha 3 caratteri
```

Nota una cosa sulla conversione in numero. Il tipo del risultato può essere diverso. Dipende dal numero. Confronta queste conversioni da stringhe:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Per convertire in un valore Booleano, puoi usare anche `so`. Puoi usarlo come operatore prefisso. Oppure puoi usarlo come metodo:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
