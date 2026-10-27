---
title: Mantošanas ķēde
translations_gpt:
---

{% include menu.html %}

Ja klase manto no citas, jūs varat pajautāt visu tās tipu ķēdi. Metametode `.^mro` atgriež šo ķēdi. Nosaukums ir saīsinājums no _method resolution order_ jeb metožu atrisināšanas secības. Tā ir secība, kādā Raku meklē metodi.

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^mro; # ((Dog) (Animal) (Any) (Mu))
```

Lasiet sarakstu no kreisās puses. `Dog` vispirms ir pats `Dog`, tad `Animal` (tā vecākklase) un tad `Any` un `Mu`. Šie divi tipi ir pašā augšā, un katrs Raku objekts manto no tiem. Metodes izsaukumam uz `Dog` Raku pārmeklē šo sarakstu no kreisās uz labo. Tas izmanto pirmo atbilstošo metodi, ko atrod. Tieši tāpēc bērnklases metode pārraksta vecākklases metodi. Bērnklase ķēdē nāk agrāk.

Ja klasei nav vecākklases, ko jūs norādāt paši, ķēde ir īsāka. Tajā ir tikai pati klase, kurai seko `Any` un `Mu`.

{% include nav.html %}
