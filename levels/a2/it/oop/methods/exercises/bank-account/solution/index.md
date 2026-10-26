---
title: 'Soluzione: Un robot che cammina'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Trova il programma nel file [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Output

```
8
```

## Commenti

1. L'attributo `position` ha `is rw`. Così il metodo lo può cambiare. Il suo valore predefinito è `0`, quindi un nuovo robot parte dall'origine.

1. Il metodo `move` dà al suo parametro un valore predefinito: `$steps = 1`. Così `$r.move` senza argomenti sposta il robot di un passo. `$r.move(5)` e `$r.move(2)` lo spostano del numero dato. Le tre chiamate sommano `5 + 1 + 2`. Quindi l'ultima posizione è `8`.

{% include nav.html %}
