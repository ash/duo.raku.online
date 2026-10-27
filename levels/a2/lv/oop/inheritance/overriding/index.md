---
title: Metožu pārrakstīšana
translations_gpt:
---

{% include menu.html %}

Bērnklase manto metodes no savas vecākklases. Bet tai var būt arī sava šādas metodes versija. To sauc par _pārrakstīšanu_. Jūs izsaucat metodi uz bērnklases objekta. Tad izpildās bērnklases versija. Vecākklases versija neizpildās.

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

`Dog` un `Cat` abas pārraksta `speak`. Tās manto metodi `intro` no `Animal` un to nemaina. Šī metode izsauc `self.speak`. Šis izsaukums izmanto paša objekta `speak`:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

Tātad viena un tā pati mantotā `intro` dod dažādus rezultātus. Tas ir tāpēc, ka katram objektam ir savs `speak`. Šī ir viena no objektorientētās programmēšanas galvenajām idejām. Kods ir kopīgs. Bet katram objekta veidam tas strādā citādi.

{% include nav.html %}
