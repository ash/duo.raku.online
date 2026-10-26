---
title: 'Risinājums: Luksofora gaismas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Atrodiet programmu failā [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Izvade

```
red is 0
amber is 1
green is 2
```

## Komentāri

1. `my Light $current` ir parasts mainīgais, un jūs varat to mainīt. Vienīgais ierobežojums ir tas, ka tajā jābūt `Light`. Kad piešķirat nākamo konstanti, gaisma pārslēdzas. Skaitlis katru reizi seko nosaukumam: `0`, `1`, `2`.

1. Izskatās, ka `$current++` vajadzētu pašam pāriet uz nākamo gaismu. Bet tas beidzas ar tipa pārbaudes kļūdu. `++` izmanto konstanti kā vienkāršu skaitli un atgriež `Int` (`red` kļūst par `1`). Bet `Int` neder tipam `Light`. Tāpēc gaismu pārslēdz, piešķirot nākamo konstanti, kā augstāk.

1. Tipa pārbaude darbojas katrai piešķiršanai, ne tikai pirmajai. `$current` pieņem `red`, `amber` vai `green`. Kaut kas, kas nav `Light`, dod tipa pārbaudes kļūdu. Tā tas ir, piemēram, ar vienkāršu skaitli vai virkni.

{% include nav.html %}
