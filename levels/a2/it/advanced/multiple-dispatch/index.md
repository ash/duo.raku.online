---
title: Dispatch multiplo
translations_gpt:
---

{% include menu.html %}

Nella parte Essenziali hai conosciuto le [_multi-funzioni_](/it/essentials/more-on-functions/multi-functions). Sono più subroutine con lo stesso nome. Raku guarda i tipi degli argomenti. Poi sceglie la subroutine giusta. Questo si chiama _multiple dispatch_.

Finora Raku ha scelto in base al _tipo_ degli argomenti. Con una clausola `where` puoi fare di più. Raku può scegliere anche in base al _valore_. Scrivi `where` dopo un parametro. Contiene una condizione. Ogni variante della funzione si chiama candidato. Raku sceglie un candidato solo quando la sua condizione è vera per l'argomento:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Ogni chiamata va al candidato con una condizione vera per quel valore:

```
-5 is negative
0 is zero
7 is positive
```

Guarda i tipi. Tutti e tre i candidati hanno la stessa firma: un `Int`. Senza le clausole `where`, sono in conflitto. Raku non può scegliere tra loro. Le condizioni li rendono diversi.

## Fermare una ricorsione

Spesso si usa `where` con la ricorsione. In una ricorsione, una funzione chiama se stessa. A un certo punto deve fermarsi. Puoi mettere questo punto di arresto in un candidato separato. Ecco di nuovo il fattoriale. Ora ha due multi-sub:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Il primo candidato è il caso base. Qui la ricorsione si ferma. In questo caso, `$n` vale `1` o meno. Questo candidato restituisce semplicemente `1`. Tutti gli altri valori vanno al secondo candidato. Questo chiama di nuovo `fact` con un numero più piccolo. Dentro la funzione non c'è nessun `if`. Il dispatcher sceglie tra il caso base e il passo ricorsivo. Il dispatcher è la parte di Raku che sceglie un candidato.

{% include nav.html %}
