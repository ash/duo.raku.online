---
title: Rezultāta atgriešana
---

{% include menu.html %}

Funkcijas bieži kaut ko dara un arī atgriež rezultātu. Piemēram, funkcionālajā programmēšanā funkcijām nevajadzētu būt blakusparādībām. Drukāšana uz konsoles ir šāda blakusparādība. Bet Raku jums netraucē to darīt. Apskatīsim, kā funkcija atgriež vērtību. Mēs arī redzēsim, kā izsaucošais kods to saņem.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Šeit funkcija `add` pieņem divus skaitļus un atgriež to summu. Tā izmanto skaidru `return`. Izsaucošais kods var izmantot atgriezto vērtību kā jebkuru citu vērtību. Programmā augstāk tā tiek piešķirta mainīgajam.

## Pēdējā aprēķinātā vērtība

Raku valodā skaidrs `return` ne vienmēr ir vajadzīgs. Jūs varat to izlaist, ja rezultāts ir pēdējā vērtība, ko funkcija aprēķina. Tāpēc mūsu `add` funkcija var būt vienkāršāka:

```raku
sub add($x, $y) {
    $x + $y
}
```

Jūs varbūt pamanījāt, ka rindas beigās nav semikola. Tas nav vajadzīgs, jo šī rinda beidz koda bloku.

Šādas mazas un vienkāršas funkcijas bieži raksta vienā rindā. Tas padara kodu kompaktāku:

```raku
sub add($x, $y) { $x + $y }
```

## Nav atgriežamo datu

Dažreiz jums jāatgriežas no funkcijas pirms tās ķermeņa beigām. Ja funkcija neatgriež nekādu rezultātu, izmantojiet `return` vienu pašu.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x ir virs limita";
}
```

{% include nav.html %}
