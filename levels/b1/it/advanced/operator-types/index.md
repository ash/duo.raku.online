---
title: Tipi di operatori Raku
---

{% include menu.html %}

Hai già usato molti operatori, come `+`, `~` e `++`. Gli operandi sono i valori su cui lavora un operatore. In Raku, gli operatori sono divisi in categorie in base a _dove_ stanno rispetto ai loro operandi. Conoscere le categorie ti aiuterà più avanti, quando creerai i tuoi operatori.

## `prefix`

Un operatore prefisso viene _prima_ del suo unico operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Qui `-` cambia il segno del numero. L'operatore `?` trasforma un valore nel suo valore Booleano.

## `infix`

Un operatore infisso sta _tra_ due operandi. La maggior parte degli operatori aritmetici e di stringa che conosci funziona così:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Un operatore infisso non deve per forza essere un simbolo. Può anche essere una parola. Per esempio, l'operatore `gcd` della sezione sugli [interi](/it/advanced/integers) è un operatore infisso. È un nome che scrivi tra i suoi due operandi:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Un operatore postfisso viene _dopo_ il suo unico operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` e `postcircumfix`

Un operatore circumfisso va _intorno_ al suo operando. Le parentesi quadre che creano un array sono un esempio:

```raku
my @a = [1, 2, 3];
```

Anche un operatore postcircumfisso va intorno a qualcosa, ma viene dopo un termine. Un'indicizzazione, come il `[1]` dopo `@a`, è un operatore postcircumfisso:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Questi sono i nomi delle categorie: `prefix`, `infix`, `postfix`, `circumfix` e `postcircumfix`. Come vedrai più avanti, Raku usa le stesse parole per [dichiarare un nuovo operatore](/it/advanced/user-defined-operators).

{% include nav.html %}
