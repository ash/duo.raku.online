---
title: Pakotnes un moduļi
translations_gpt:
---

{% include menu.html %}

Atslēgvārds `package` izveido vārdtelpu. Tajā jūs varat izveidot lietas ar `our`. Tās kļūst par vārdtelpas daļu. Jūs varat tām piekļūt no ārpuses. Izmantojiet pakotnes nosaukumu un atdalītāju `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Mainīgo jūs iegūstat kā `$Maths::pi`. Vispirms ir sigils, tad pakotnes nosaukums, tad mainīgā nosaukums. Apakšprogrammu jūs izsaucat kā `Maths::double(...)`.

Gan `package`, gan `module` izveido vārdtelpu. Bet tie dara arī dažādas lietas. `module` ir parastā izvēle kodam, ko izmantojat atkārtoti. Vienkāršs `package` ir tikai vārdtelpa, bez nekā vairāk. Arī `class` izveido vārdtelpu. Par klasēm jūs uzzināsiet [nākamajā daļā](/lv/oop). Klase pievieno arī rīkus objektiem.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Tātad `module` jums dod vārdtelpu. Arī `package` viens pats dod tādu pašu vārdtelpu. Izvēlieties starp tiem pēc tā, ko vēlaties darīt. Izmantojiet `module` bibliotēkām. Izmantojiet `package` tikai vārdtelpai. Vēlāk, ar objektiem, izmantojiet `class` tipiem.

{% include nav.html %}
