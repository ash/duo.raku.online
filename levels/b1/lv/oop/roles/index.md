---
title: Lomas
translations_gpt:
---

{% include menu.html %}

_Loma_ ir uzvedības gabals (dažreiz arī ar datiem), ko var kopīgi lietot vairākas klases. Mantošana saka, ka klase _ir_ citas klases paveids. Turpretī loma apraksta kaut ko, ko klase _prot darīt_.

Lomu jūs definējat ar atslēgvārdu `role`, tāpat kā klasi. Lai to dotu klasei, jūs lietojat iezīmi `does`:

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

Klasei `Person` tagad ir metode `hello` no lomas. Tā strādā tā, it kā jūs būtu to uzrakstījuši pašā klasē:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Ja klase dara lomu, Raku var redzēt, ka tai ir šī loma:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Ievērojiet, ka lomas metode `hello` lieto `self.name`. Bet pašai lomai nav atribūta `name`. Tas ir labi. Metode izpildās kā daļa no tās klases, kas komponē lomu. Un šī klase nodrošina `name`. Nākamais temats parāda, ka klasei var būt vairākas lomas reizē.

{% include nav.html %}
