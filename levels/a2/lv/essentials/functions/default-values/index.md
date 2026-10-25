---
title: Noklusējuma vērtības
---

{% include menu.html %}

Pozicionālajiem un nosauktajiem parametriem var būt noklusējuma vērtības. Parametrs ar noklusējuma vērtību nav obligāts. Jūs varat to izlaist, kad izsaucat funkciju. Tad parametrs saņem savu noklusējuma vērtību.

## Pozicionālie parametri

Lūk, piemērs. Funkcijai ir pozicionāls parametrs ar noklusējuma vērtību:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

Pirmais izsaukums nodod vārdu kā vienīgo argumentu. Tāpēc tas izdrukā `Hello, Merinda!`. Otrais izsaukums izmanto noklusējuma vērtību. Tas izdrukā `Hello, World!`.

Dažreiz funkcijai ir vairāk nekā viens parametrs. Tad noklusējuma vērtībām jābūt saraksta beigās:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # pareizi
# sub f($a = 10, $b = 20, $c, $d) { . . . } # NEPAREIZI
```

## Nosauktie parametri

Nosauktie parametri saņem noklusējuma vērtības tāpat:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

Nosaukto parametru secība nav svarīga. Tāpēc jebkuram no tiem var būt noklusējuma vērtība. Tā var būt pat pirmajam sarakstā:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
