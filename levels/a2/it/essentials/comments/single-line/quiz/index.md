---
title: 'Quiz: Commenti su una sola linea'
---

{% include menu.html %}

Scegli le righe con i commenti corretti. Forse non capisci ancora il codice Raku. Non preoccuparti per questo.

{:.quiz}
1 | `my $name = 'John'; # Impostazione del nome`
1 | `my $age = 23; ## Cambialo l'anno prossimo` | Tutto ciò che segue il primo `#` è un commento.
0 | `say $name; Stampa del nome` | Un commento deve iniziare con un `#`.
0 | `my $city = 'TBA'; // Non ancora conosciuto` | I commenti in stile C++ non sono riconosciuti in Raku.
1 | `# say $age;` | L'intera riga è stata commentata.
1 | `#say $age;`

{% include quiz.html %}

{% include nav.html %}
