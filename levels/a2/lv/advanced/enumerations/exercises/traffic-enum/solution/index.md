---
title: 'Risinājums: Luksofora gaismas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `my Light $current` ir parasts mainīgais. Jūs varat mainīt tā vērtību. Bet tas var glabāt tikai `Light`. Piešķiriet nākamo konstanti, un gaisma pārslēdzas. Katru reizi skaitlis mainās kopā ar nosaukumu: `0`, `1`, `2`.

1. Izskatās, ka `$current++` pats pāriet uz nākamo gaismu. Bet tas dod tipa pārbaudes kļūdu. `++` redz konstanti tikai kā tās skaitli. Tas atgriež `Int`: `red` kļūst par `1`. Bet `Int` nav `Light`. Tāpēc, lai pārslēgtu gaismu, piešķiriet nākamo konstanti, kā augstāk.

1. Raku pārbauda tipu katrā piešķiršanā, ne tikai pirmajā. `$current` pieņem `red`, `amber` vai `green`. Tas nepieņem citas vērtības, piemēram, skaitli vai virkni. Tās nav `Light`. Šāda piešķiršana dod tipa pārbaudes kļūdu.

{% include nav.html %}
