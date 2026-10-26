---
title: Tipi di operatori Raku
---

{% include menu.html %}

Conosci già molti operatori, come `+`, `~` e `++`. Un operatore lavora su dei valori. Questi valori sono i suoi operandi. Raku divide gli operatori in categorie. Una categoria è un gruppo. La categoria dipende da _dove_ sta l'operatore rispetto ai suoi operandi. Più avanti creerai i tuoi operatori. Allora le categorie ti aiuteranno.

## `prefix`

Un operatore prefisso ha un solo operando. Viene _prima_ di questo operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Qui `-` cambia il segno del numero. L'operatore `?` trasforma un valore in `True` o `False`. Questo è il suo valore Booleano.

## `infix`

Un operatore infisso sta _tra_ due operandi. Conosci molti operatori per numeri e stringhe. Quasi tutti sono infissi:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Un operatore infisso non è sempre un simbolo. Può anche essere una parola. Prendi l'operatore `gcd` della sezione sugli [interi](/it/advanced/integers). È un operatore infisso. Scrivi il suo nome tra i suoi due operandi:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Un operatore postfisso ha un solo operando. Viene _dopo_ questo operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` e `postcircumfix`

Un operatore circumfisso sta _intorno_ al suo operando. Guarda le parentesi quadre che creano un array. Sono un operatore circumfisso:

```raku
my @a = [1, 2, 3];
```

Anche un operatore postcircumfisso sta intorno a qualcosa. Ma viene dopo un termine. Un termine è, per esempio, una variabile. L'indicizzazione è un operatore postcircumfisso. Qui l'indicizzazione è il `[1]` dopo `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

I nomi sono `prefix`, `infix`, `postfix`, `circumfix` e `postcircumfix`. Raku usa le stesse parole quando [dichiari un nuovo operatore](/it/advanced/user-defined-operators). Lo vedrai più avanti.

{% include nav.html %}
