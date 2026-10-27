---
title: Metožu pārrakstīšana
translations_gpt:
---

{% include menu.html %}

Bērnklasei var būt sava versija metodei, ko tā manto. To sauc par _pārrakstīšanu_. Bērnklases objektam metodes izsaukums izpilda bērnklases versiju. Vecākklases versija neizpildās.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` un `Cat` katra pārraksta `speak`. Metode `intro` nāk no `Animal` bez izmaiņām. Tā izsauc `self.speak`, un šis izsaukums izmanto to `speak`, kas pieder īstajam objektam:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Tātad viena un tā pati mantotā `intro` dod dažādus rezultātus, jo katram objektam ir savs `speak`. Šī ir viena no objektorientētās programmēšanas centrālajām idejām. Kopīgs kods maina savu uzvedību, lai derētu katram objekta veidam.

{% include nav.html %}
