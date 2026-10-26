---
title: Pakotnes un moduļi
translations_gpt:
---

{% include menu.html %}

Atslēgvārds `package` izveido vārdtelpu. Viss, kas tajā deklarēts ar `our`, kļūst par šīs vārdtelpas daļu. No ārpuses jūs varat sasniegt šos nosaukumus caur pakotnes nosaukumu un `::` atdalītāju:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Mainīgajam jūs piekļūstat kā `$Maths::pi`. Tajā ir sigils, tad pakotnes nosaukums, tad mainīgā nosaukums. Apakšprogrammu izsauc kā `Maths::double(...)`.

Gan `package`, gan `module` izveido vārdtelpu, bet tie atšķiras ar to, ko vēl tie dara. `module` ir parastā izvēle atkārtoti lietojamam kodam. Vienkāršs `package` ir tikai vārdtelpa bez papildinājumiem. Arī `class`, ar kuru iepazīsieties [nākamajā daļā](/lv/oop), izveido vārdtelpu. Papildus tam klase pievieno visu, kas vajadzīgs objektorientētajai programmēšanai.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Tātad `module` jums dod to pašu vārdtelpu, ko dod vienkāršs `package`. Kuru no tiem izvēlēties, lielākoties ir atkarīgs no tā, ko vēlaties darīt. Izmantojiet `module` bibliotēkām un `package` vienkāršai vārdtelpai. Vēlāk, kad nonāksiet līdz objektiem, izmantojiet `class` tipiem.

{% include nav.html %}
