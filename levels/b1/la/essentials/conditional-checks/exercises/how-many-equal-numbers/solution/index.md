---
title: 'Solutio: Quot numeri sunt aequales?'
---

{% include menu.html %}

Programma numeros paucis vicibus comparare debet. Cum usor tres numeros intrat, tantum tres casus possibiles sunt:

1. Omnes tres numeri aequales sunt,
1. Tantum duo numeri aequales sunt, et
1. Omnes numeri diversi sunt.

## Codex

Hic est solutio cum omnibus comparationibus plene scriptis.

```raku
my $n1 = prompt 'Numerum 1 inserere: ';
my $n2 = prompt 'Numerum 2 inserere: ';
my $n3 = prompt 'Numerum 3 inserere: ';

if $n1 == $n2 == $n3 {
    say 3;
}
elsif $n1 == $n2 || $n2 == $n3 || $n1 == $n3 {
    say 2;
}
else {
    say 0;
}
```

🦋 Invenire programmatum in archivo [quot-numeri-aequales-sunt.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/how-many-equal-numbers.raku).

## Exitus

```console
$ raku exercises/conditional-checks/how-many-equal-numbers.raku 0 0 0
Numerum 1 inserere: 14
Numerum 2 inserere: 8
Numerum 3 inserere: 8
2

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Numerum 1 inserere: 15
Numerum 2 inserere: 15
Numerum 3 inserere: 15
3

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Numerum 1 inserere: 4
Numerum 2 inserere: 6
Numerum 3 inserere: 8
0
```

## Commentarii

1. Nota quod tres numeros in una expressione comparare potes: `$n1 == $n2 == $n3`.
1. Postquam de operatore reductionis didiceris, redi et hoc munus iterum solve.

{% include nav.html %}
