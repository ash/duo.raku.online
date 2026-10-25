---
title: Allomorfi
---

{% include menu.html %}

Guarda il seguente programma. Prima di eseguirlo, prova a indovinare. Quali valori in input lo romperebbero, e a quale riga?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Qui il programma crea tre variabili scalari. Due di esse, `$i` e `$s`, sono variabili tipizzate. Questo vuol dire che `$i` può contenere solo interi, e `$s` può contenere solo stringhe.

Il tipo che `prompt` restituisce dipende dai caratteri che abbiamo scritto. Se la stringa in input può essere un intero, il risultato ha il tipo `IntStr`. Questo tipo è _sia_ `Int` che `Str`. Così puoi assegnarlo a una variabile `Int` o a una variabile `Str`. Per esempio, se inserisci `1234`, il programma non si rompe.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Il tipo `IntStr` è un esempio di quello che si chiama _allomorfo_. È un tipo di dato che unisce due altri tipi. Ecco alcuni altri esempi.

Se inserisci una stringa che non può essere un intero, il programma si rompe. Questo succede quando assegniamo `$input` a `$i`:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Nota che ottieni un errore anche per un numero che non è un intero. Un contenitore intero non può contenere un numero in virgola mobile o un numero razionale. Così Raku lancia un'eccezione:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

Il secondo assegnamento, `$s = $input`, non si romperà mai, perché una stringa può accettare qualsiasi input.

🦋 Puoi trovare il codice sorgente di questo programma nel file [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
