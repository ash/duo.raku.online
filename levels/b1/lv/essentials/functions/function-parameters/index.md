---
title: Funkciju parametri
---

{% include menu.html %}

Tagad ir laiks nodot funkcijai datus. Funkcija var pieņemt parametrus, kurus jūs uzskaitāt iekavās uzreiz pēc tās nosaukuma.

```raku
sub greet($name) {
    say "Sveiki, $name!";
}
```

Tagad jūs varat izmantot funkciju un nodot tai dažādus argumentus:

```raku
greet('Alla');
greet('Karlis');
```

Tagad divi vienas funkcijas izsaukumi dod dažādus rezultātus:

```console
$ raku t.raku
Sveiki, Alla!
Sveiki, Karlis!
```

%%tipblock

## Parametrs vai arguments

Cilvēki bieži lieto šos divus terminus tā, it kā tie nozīmētu to pašu. Abi attiecas uz 'to pašu lietu', bet no dažādiem skatpunktiem.

* Parametrs ir tas, ko funkcija sagaida.
* Arguments ir tas, ko jūs tai nododat.

Iepriekšējā piemērā `$name` ir funkcijas parametrs. Tās argumenti ir `'Alla'` un `'Karlis'`.

%%/tipblock

## Vairāk parametru

Funkcija var pieņemt vairāk nekā vienu parametru. Šajā gadījumā uzskaitiet tos visus ar komatiem starp tiem:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Bez parametriem

Ir normāli, ja funkcija nepieņem nevienu parametru. Tad jūs varat vai nu pievienot tukšu iekavu pāri, vai arī tās pilnībā izlaist. Mēs tās izlaidām [šīs sadaļas sākumā](../).

```raku
sub greet() {
    say 'Sveiki, Pasaule!';
}

greet();
```

## Paraksts

Funkcijas parametru sarakstu sauc par _parakstu_.

{% include nav.html %}
