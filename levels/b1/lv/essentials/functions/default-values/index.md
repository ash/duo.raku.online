---
title: Noklusējuma vērtības
---

{% include menu.html %}

Gan pozicionālajiem, gan nosauktajiem parametriem var būt noklusējuma vērtības. Ja parametram ir noklusējuma vērtība, jūs varat to izlaist funkcijas izsaukumā.

## Pozicionālie parametri

Lūk, noklusējuma vērtības piemērs pozicionālam parametram:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

Pirmajā izsaukumā vārds ir vienīgais arguments, tāpēc rezultāts ir `Hello, Merinda!`. Otrais izsaukums izmanto noklusējuma vērtību un izdrukā `Hello, World!`.

Ja funkcijai ir vairāki parametri, noklusējuma vērtības var būt tikai pēdējiem:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # pareizi
# sub f($a = 10, $b = 20, $c, $d) { . . . } # NEPAREIZI
```

## Nosauktie parametri

Nosauktajiem parametriem jūs iestatāt noklusējuma vērtības ar to pašu sintaksi:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

Nosaukto parametru secība nav svarīga. Tāpēc jebkuram no tiem var būt noklusējuma vērtība, pat pirmajam:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
