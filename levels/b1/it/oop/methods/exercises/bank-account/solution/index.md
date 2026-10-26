---
title: 'Soluzione: Un robot che cammina'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'attributo `position` ha `is rw`, quindi il metodo può cambiarlo. Il suo valore predefinito è `0`, così un nuovo robot parte dall'origine.

1. Il metodo `move` dà al suo parametro un valore predefinito, `$steps = 1`. Così la chiamata `$r.move` senza argomenti sposta di un passo. Ma `$r.move(5)` e `$r.move(2)` spostano del numero di passi indicato. Le tre chiamate sommano `5 + 1 + 2`, quindi la posizione finale è `8`.

{% include nav.html %}
