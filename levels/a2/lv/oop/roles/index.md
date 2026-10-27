---
title: Lomas
translations_gpt:
---

{% include menu.html %}

_Loma_ ir metožu kopa. Dažreiz tajā ir arī dati. Vairākas klases var kopīgi lietot vienu lomu. Mantošana saka, ka klase _ir_ citas klases veids. Loma ir citāda. Tā apraksta kaut ko, ko klase _prot darīt_.

Lomu jūs izveidojat ar atslēgvārdu `role`. Tā izskatās gandrīz kā klase. Lai dotu lomu klasei, lietojiet iezīmi `does`:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

Tagad klasei `Person` ir metode `hello` no lomas. Tā strādā tāpat kā metode pašā klasē:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Klase var darīt lomu. Tad Raku zina, ka klasei ir šī loma:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Apskatiet metodi `hello` lomā. Tā lieto `self.name`. Bet pašai lomai nav atribūta `name`. Tā nav problēma. Metode izpildās kā daļa no klases, kas komponē lomu. Komponēt lomu nozīmē ņemt to klasē iekšā. Un šai klasei ir atribūts `name`. Nākamais temats parāda vairāk. Klasei var būt vairāk nekā viena loma reizē.

{% include nav.html %}
