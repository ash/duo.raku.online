---
title: Objektu introspekcija
translations_gpt:
---

{% include menu.html %}

[Sadaļā par konteineriem](/lv/advanced/containers) jūs izmantojāt `.^name`, lai pajautātu vērtībai tās tipu. Ar tiem pašiem `.^` metaizsaukumiem jūs varat ieskatīties klasē un tās objektos. Jūs varat redzēt to nosaukumus, atribūtus un vietu klašu hierarhijā.

Metametode `.^name` atgriež klases nosaukumu:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Metametode `.^attributes` uzskaita klases atribūtus. Jūs redzat katru no tiem ar tā tipu un iekšējo privāto nosaukumu. Tā ir `$!` forma, ar ko jūs iepazināties pie [privātiem atribūtiem](/lv/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspekcija noder rīkiem, kas strādā ar jebkura veida objektiem. Piemēram, šāds rīks var izdrukāt katru objekta atribūtu. Tam nav iepriekš jāzina klase. Nākamais temats parāda, kā apskatīt klases mantošanas ķēdi.

{% include nav.html %}
