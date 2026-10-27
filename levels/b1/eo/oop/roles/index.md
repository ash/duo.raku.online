---
title: Roloj
translations_gpt:
---

{% include menu.html %}

_Rolo_ estas peco de konduto, kaj foje de datumoj, kiun pluraj klasoj povas kunhavi. Heredo diras, ke klaso _estas_ speco de alia klaso. Rolo, aliflanke, priskribas ion, kion klaso _povas fari_.

Vi difinas rolon per la ŝlosilvorto `role`, same kiel klason. Por doni ĝin al klaso, vi uzas la trajton `does`:

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

La klaso `Person` nun havas la metodon `hello` el la rolo. Ĝi funkcias, kvazaŭ vi skribus ĝin en la klaso mem:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Se klaso faras rolon, Raku povas vidi, ke ĝi havas ĉi tiun rolon:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Rimarku, ke la metodo `hello` de la rolo uzas `self.name`. Sed la rolo mem ne havas atributon `name`. Tio estas en ordo. La metodo ruliĝas kiel parto de iu ajn klaso, kiu kunmetas la rolon. Kaj tiu klaso provizas `name`. La sekva temo montras, ke klaso povas havi plurajn rolojn samtempe.

{% include nav.html %}
