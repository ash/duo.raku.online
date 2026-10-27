---
title: Objektu introspekcija
translations_gpt:
---

{% include menu.html %}

[Sadaļā par konteineriem](/lv/advanced/containers) jūs lietojāt `.^name`. Ar to jūs pajautājāt vērtībai tās tipu. Tie paši `.^` metaizsaukumi strādā arī ar klasēm un objektiem. Ar tiem jūs varat redzēt to nosaukumus un atribūtus. Jūs varat redzēt arī to vietu klašu kokā.

Metametode ir metode, ko jūs izsaucat ar `.^`. Metametode `.^name` atgriež klases nosaukumu:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Metametode `.^attributes` uzskaita klases atribūtus. Katram atribūtam jūs redzat tā tipu. Jūs redzat arī tā iekšējo privāto nosaukumu. Tā ir `$!` forma. Jūs to redzējāt pie [privātiem atribūtiem](/lv/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspekcija nozīmē, ka jūs jautājat objektam, kāds tas ir. Tā noder rīkiem, kas strādā ar jebkura veida objektiem. Piemēram, rīks var izdrukāt katru objekta atribūtu. Tam nav vispirms jāzina objekta klase. Nākamais temats ir par klases mantošanas ķēdi. Tā ir tās vecākklašu līnija.

{% include nav.html %}
