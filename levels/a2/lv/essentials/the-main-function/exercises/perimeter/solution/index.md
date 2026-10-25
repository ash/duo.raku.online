---
title: 'Risinājums: Taisnstūra perimetrs'
---

{% include menu.html %}

Šai programmai jāstrādā ar vienu vai diviem komandrindas argumentiem. Risinājums parāda jaunu triku. Otrajam mainīgajam ir noklusējuma vērtība. Tā ir pirmā mainīgā vērtība: `sub MAIN($a, $b = $a)`. Tāpēc mēs neveidojam divas multi-funkcijas. Tā vietā mums ir viena vispārēja funkcija. Kvadrātam šī funkcija iestata otrās malas izmēru.

## Kods

Šeit ir risinājums:

```raku
sub MAIN($a, $b = $a) {
    my $perimeter = 2 * ($a + $b);

    my $shape = $a == $b ?? 'square' !! 'rectangle';
    say "The perimeter of a $shape is $perimeter.";
}
```

🦋 Atrodiet programmu failā [perimeter.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/perimeter.raku).

## Izvade

Izmēģiniet dažādas ievades vērtības. Pārbaudiet gan kvadrātus, gan taisnstūrus.

```console
$ raku exercises/the-main-function/perimeter.raku 1    
The perimeter of a square is 4.

$ raku exercises/the-main-function/perimeter.raku 1 2
The perimeter of a rectangle is 6.
```

Ir arī trešais gadījums. Arī to vajag pārbaudīt. Nododiet divus vienādus skaitļus. Programmai joprojām jāsaprot, ka tas ir kvadrāts:

```console
$ raku exercises/the-main-function/perimeter.raku 2 2
The perimeter of a square is 8.
```

{% include nav.html %}
