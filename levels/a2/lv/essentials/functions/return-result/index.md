---
title: Rezultāta atgriešana
---

{% include menu.html %}

Bieži funkcija kaut ko dara un arī atgriež rezultātu. Funkcionālajā programmēšanā, piemēram, funkcijām nevajadzētu būt blakusparādībām. Drukāšana uz konsoles ir viena tāda blakusparādība. Bet Raku ļauj jums to darīt. Apskatīsim, kā funkcija atgriež vērtību. Mēs arī apskatīsim, kā izsaucošais kods saņem šo vērtību.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Šeit funkcija `add` pieņem divus skaitļus. Tā atgriež to summu. Funkcijas kodā ir vārds `return`. Izsaucošais kods var izmantot šo vērtību kā jebkuru citu vērtību. Programmā augstāk mēs to piešķiram mainīgajam.

## Pēdējā vērtība

Rezultāts var būt pēdējā vērtība funkcijas ķermenī. Tad Raku valodā jums nav jāraksta `return`. Tāpēc mēs varam padarīt savu funkciju `add` vienkāršāku:

```raku
sub add($x, $y) {
    $x + $y
}
```

Ievērojiet, ka rindas beigās nav semikola. Šī rinda ir pēdējā koda blokā. Tāpēc semikols tur nav vajadzīgs.

Tādas mazas un vienkāršas funkcijas bieži raksta vienā rindā. Tad kods ir īsāks:

```raku
sub add($x, $y) { $x + $y }
```

## Nav datu, ko atgriezt

Dažreiz funkcijai jāatgriežas pirms tās ķermeņa beigām. Ja funkcija neatgriež rezultātu, izmantojiet `return` bez vērtības.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x ir virs limita";
}
```

{% include nav.html %}
