---
title: Roloj
translations_gpt:
---

{% include menu.html %}

_Rolo_ estas aro de metodoj. Foje ĝi ankaŭ havas datumojn. Pluraj klasoj povas kunhavi unu rolon. Heredo diras, ke klaso _estas_ speco de alia klaso. Rolo estas malsama. Ĝi priskribas ion, kion klaso _povas fari_.

Vi faras rolon per la ŝlosilvorto `role`. Ĝi aspektas tre simile al klaso. Por doni rolon al klaso, uzu la trajton `does`:

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

Nun la klaso `Person` havas la metodon `hello` el la rolo. Ĝi funkcias same kiel metodo en la klaso mem:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Klaso povas fari rolon. Tiam Raku scias, ke la klaso havas ĉi tiun rolon:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Rigardu la metodon `hello` en la rolo. Ĝi uzas `self.name`. Sed la rolo mem ne havas atributon `name`. Tio ne estas problemo. La metodo ruliĝas kiel parto de la klaso, kiu kunmetas la rolon. Kunmeti rolon signifas preni ĝin en la klason. Kaj tiu klaso havas la atributon `name`. La sekva temo montras pli. Klaso povas havi pli ol unu rolon samtempe.

{% include nav.html %}
