---
title: Klases
translations_gpt:
---

{% include menu.html %}

Līdz šim visi datu tipi, ko jūs lietojāt, bija Raku iebūvēti. Tie bija skaitļi, virknes, masīvi un tā tālāk. Ar _objektorientēto programmēšanu_ jūs varat definēt savus tipus, ko sauc par _klasēm_. Jūs varat arī radīt šo tipu vērtības, ko sauc par _objektiem_.

Lai definētu klasi, rakstiet atslēgvārdu `class`, pēc tam nosaukumu un bloku:

```raku
class Dog {
}
```

Šī klase `Dog` vēl ir tukša, bet tā jau ir jauns tips. Klases objektu sauc arī par _instanci_. Lai to radītu, izsauciet uz klases nosaukuma metodi `new`:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Tagad `$rex` satur `Dog` objektu. Katru reizi, kad jūs izsaucat `new`, jūs iegūstat jaunu, atsevišķu objektu:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` un `$fido` ir divi dažādi suņi, lai gan klase vēl ir tukša. Nākamajās sadaļās jūs dosiet klasei savus datus, ko sauc par _atribūtiem_. Jūs dosiet tai arī savu uzvedību, ko sauc par _metodēm_. Pirmais temats tuvāk aplūko, kā klase atšķiras no savām instancēm.

{% include nav.html %}
