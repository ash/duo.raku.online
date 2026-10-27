---
title: Mantošanas ķēde
translations_gpt:
---

{% include menu.html %}

Viena klase var mantot no citas klases. Tad jūs varat pajautāt visu tipu ķēdi. Klase ir uzbūvēta uz šiem tipiem. Metametode `.^mro` atgriež šo ķēdi. Nosaukums nozīmē _method resolution order_ jeb metožu atrisināšanas secību. Raku meklē metodi šādā secībā.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lasiet sarakstu no kreisās puses. Vispirms `Dog` ir pats `Dog`. Tad tas ir `Animal`, tā vecākklase. Tad tas ir `Any` un `Mu`. Katrs Raku objekts manto no šiem diviem tipiem. Tie ir pašā augšā. Kad jūs izsaucat metodi uz `Dog`, Raku pārmeklē šo sarakstu. Tas iet no kreisās puses uz labo. Tas izmanto pirmo metodi, kas der. Tas izskaidro pārrakstīšanu. Bērnklase ķēdē nāk agrāk. Tāpēc tās metode uzvar vecākklases metodi.

Dažreiz klasei nav vecākklases ar `is`. Tad ķēde ir īsāka. Tajā ir tikai pati klase un tad `Any` un `Mu`.

{% include nav.html %}
