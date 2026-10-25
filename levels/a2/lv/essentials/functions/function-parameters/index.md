---
title: Funkciju parametri
---

{% include menu.html %}

Tagad mēs nododam funkcijai datus. Funkcija var pieņemt parametrus. Rakstiet tos iekavās uzreiz pēc funkcijas nosaukuma.

```raku
sub greet($name) {
    say "Sveiki, $name!";
}
```

Tagad jūs varat izmantot funkciju. Jūs varat nodot tai dažādus argumentus:

```raku
greet('Alla');
greet('Karlis');
```

Mēs izsaucam to pašu funkciju divas reizes. Tagad rezultāti ir dažādi:

```console
$ raku t.raku
Sveiki, Alla!
Sveiki, Karlis!
```

%%tipblock

## Parametrs vai arguments

Cilvēki bieži lieto šos divus vārdus vienādi. Abi vārdi ir par 'to pašu lietu'. Bet tie skatās uz to no dažādām pusēm.

* Parametrs ir tas, ko funkcija gaida saņemt.
* Arguments ir tas, ko jūs nododat funkcijai.

Piemērā augstāk `$name` ir funkcijas parametrs. `'Alla'` un `'Karlis'` ir tās argumenti.

%%/tipblock

## Vairāk parametru

Funkcija var pieņemt vairāk nekā vienu parametru. Tad starp tiem lieciet komatus:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Bez parametriem

Funkcijai var arī nemaz nebūt parametru. Tad jūs varat uzrakstīt tukšu iekavu pāri. Vai arī jūs varat izlaist iekavas. Mēs tā darījām [šīs sadaļas sākumā](../).

```raku
sub greet() {
    say 'Sveiki, Pasaule!';
}

greet();
```

## Paraksts

Funkcijas parametru saraksts ir tās _paraksts_.

{% include nav.html %}
