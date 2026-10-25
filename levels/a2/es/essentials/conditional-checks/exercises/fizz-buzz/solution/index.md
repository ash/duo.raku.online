---
title: 'Solution: FizzBuzz'
---

{% include menu.html %}

Esta es una tarea clásica en las entrevistas de trabajo. Comprueba una cosa. ¿Piensas en el caso en que las dos condiciones son `True`? A veces un número se divide entre 3 y entre 5 y no sobra nada. Entonces el programa debe imprimir `FizzBuzz`.

## Código

Aquí está la solución:

```raku
my $n = prompt 'Enter a number: ';

print 'Fizz' if $n %% 3;
print 'Buzz' if $n %% 5;
print "\n";
```

🦋 Encuentra el programa en el archivo [fizz-buzz.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/fizz-buzz.raku).

## Ejemplo

Prueba el programa con algunos grupos de números:

* Números que se dividen entre 3, por ejemplo: 3, 6, 9, 12.
* Números que se dividen entre 5, por ejemplo: 5, 10, 15, 20.
* Números que se dividen entre 3 y entre 5, por ejemplo: 15, 30, 45.
* Números que no se dividen entre 3 ni entre 5, por ejemplo: 4, 7, 11.

```console
$ raku exercises/conditional-checks/fizz-buzz.raku 
Enter a number: 3
Fizz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 10
Buzz

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 7

$ raku exercises/conditional-checks/fizz-buzz.raku
Enter a number: 30
FizzBuzz
```

{% include nav.html %}
