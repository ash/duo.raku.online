---
title: Moduļu izveide
translations_gpt:
---

{% include menu.html %}

Laika gaitā programmas kļūst lielākas. Tad ir labi tās sadalīt gabalos. Šos gabalus jūs varat izmantot atkal. Šādu koda gabalu sauc par _moduli_. Tas atrodas savā failā. Citas programmas var to ielādēt un izmantot.

Moduļa failam ir paplašinājums `.rakumod`. Tas sākas ar `unit module` un moduļa nosaukumu. Parasti moduļa apakšprogrammas ir privātas. Tikai pats modulis var tās izmantot. Vai vēlaties apakšprogrammu kopīgot ar citu kodu? Atzīmējiet to ar iezīmi `is export`.

Šeit ir modulis failā `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Apakšprogrammai `hello` ir `is export`. Tāpēc to redz katra programma, kas izmanto moduli. Apakšprogramma bez `is export` paliek privāta. Tikai pats modulis var to izmantot.

Modulis var arī koplietot datus. Tam tas izmanto `our` mainīgos. Cits kods var tiem piekļūt caur moduļa nosaukumu. Pievienosim modulim `Greeting` versijas numuru. Mums vajag tikai vēl vienu rindu failā:

```raku
our $version = '1.0';
```

Tagad failā `Greeting.rakumod` ir šī rinda. Tāpēc vērtība ir pieejama kā `$Greeting::version`. Tas darbojas visur, kur modulis ir ielādēts.

Nākamie temati parāda, [kā programma ielādē šādu moduli](/lv/advanced/modules-basics/using-modules). Tie parāda arī, ko programma no tā iegūst.

{% include nav.html %}
