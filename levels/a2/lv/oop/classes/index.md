---
title: Klases
translations_gpt:
---

{% include menu.html %}

Līdz šim jūs lietojāt tikai Raku iebūvētos tipus. Tie ir skaitļi, virknes, masīvi un tā tālāk. Ar _objektorientēto programmēšanu_ jūs varat veidot savus tipus. Tādu tipu sauc par _klasi_. Šī tipa vērtību sauc par _objektu_.

Lai izveidotu klasi, rakstiet atslēgvārdu `class`. Aiz tā rakstiet nosaukumu un bloku:

```raku
class Dog {
}
```

Šī klase `Dog` pagaidām ir tukša. Bet tā jau ir jauns tips. Klases objektu sauc arī par _instanci_. `new` ir metode. Lai izveidotu instanci, izsauciet to uz klases nosaukuma:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Tagad mainīgajā `$rex` ir `Dog` objekts. Katrs `new` izsaukums izveido jaunu, atsevišķu objektu:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` un `$fido` ir divi dažādi suņi. Klase vēl ir tukša, bet suņi ir dažādi. Nākamajās sadaļās jūs dodat klasei savus datus. Šos datus sauc par _atribūtiem_. Klase saņem arī savu uzvedību jeb darbības. Šīs darbības sauc par _metodēm_. Pirmais temats tuvāk aplūko klasi un tās instances. Tas parāda, kā tās atšķiras.

{% include nav.html %}
