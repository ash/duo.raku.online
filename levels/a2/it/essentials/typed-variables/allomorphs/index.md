---
title: Allomorfi
---

{% include menu.html %}

Guarda questo programma. Non eseguirlo ancora. Puoi dire quali valori in input lo rompono? E a quale riga?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Il programma crea tre variabili scalari. Due di loro, `$i` e `$s`, sono variabili tipizzate. Così `$i` può contenere solo interi. E `$s` può contenere solo stringhe.

`prompt` restituisce un valore. Il suo tipo dipende dai caratteri che scriviamo. A volte la stringa in input può essere un numero intero. Allora il risultato ha il tipo `IntStr`. Questo tipo è _sia_ `Int` che `Str`. Così puoi assegnarlo a una variabile `Int`. Puoi anche assegnarlo a una variabile `Str`. Per esempio, inserisci `1234`. Allora il programma non si rompe.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Il tipo `IntStr` è un esempio di _allomorfo_. Un allomorfo è un tipo di dato fatto di due altri tipi. Ecco alcuni altri esempi.

Ora inserisci una stringa che non può essere un intero. Il programma si rompe. Succede quando assegniamo `$input` a `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

A volte la stringa in input è un numero, ma non un intero. Nota che anche allora ottieni un errore. Un contenitore intero non può contenere un numero in virgola mobile. Non può contenere neanche un numero razionale. Così ottieni un'eccezione:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Il secondo assegnamento, `$s = $input`, non si rompe mai. Una stringa può accettare qualsiasi input.

🦋 Puoi trovare il codice sorgente di questo programma nel file [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
