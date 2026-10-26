---
title: Moduļu izveide
translations_gpt:
---

{% include menu.html %}

Kad programmas kļūst lielākas, noder tās sadalīt atkārtoti izmantojamos gabalos. Koda vienību, kas glabājas savā failā, sauc par _moduli_. Citas programmas var to ielādēt un izmantot.

Moduļa failam ir paplašinājums `.rakumod`. Tas sākas ar `unit module`, kas dod modulim nosaukumu. Apakšprogrammas tajā pēc noklusējuma ir privātas. Lai kādu no tām kopīgotu ar kodu, kas izmanto moduli, atzīmējiet to ar iezīmi `is export`.

Lūk, modulis failā ar nosaukumu `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

Apakšprogrammai `hello` ir `is export`, tāpēc to var redzēt jebkura programma, kas izmanto moduli. Bez `is export` apakšprogramma paliktu modulim privāta.

Modulis var koplietot arī datus, izmantojot `our` mainīgos. Cits kods tiem var piekļūt caur moduļa nosaukumu. Lai modulim `Greeting` pievienotu versijas numuru, pietiek ar vēl vienu rindu failā:

```raku
our $version = '1.0';
```

Kad šī rinda ir failā `Greeting.rakumod`, vērtība ir pieejama kā `$Greeting::version`. Tas darbojas visur, kur modulis ir ielādēts.

Nākamie temati parāda, [kā programma ielādē šādu moduli](/lv/advanced/modules-basics/using-modules). Tie arī izskaidro, ko tieši programma no tā iegūst.

{% include nav.html %}
