---
title: Privāti atribūti
translations_gpt:
---

{% include menu.html %}

[Sadaļā par atribūtiem](/lv/oop/attributes) katram atribūtam nosaukumā bija `$.`. `$.` izveido publisku piekļuves metodi. Visi ārpus objekta var to lietot. Bet tā vietā jūs varat rakstīt arī `$!`. Tad atribūts ir _privāts_. Tam nav piekļuves metodes. Kods ārpus objekta to neredz. Tikai klases metodes var to lietot. Tur jūs to rakstāt kā `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

Slepenais `$!code` ir objekta iekšā. Bet neviens ārpusē to neredz. Piekļuves metodes `.code` nav. Vienīgais veids, kā lietot kodu, ir metode `unlocks`. Klase dod jums šo metodi speciāli. Nolasīt `$safe.code` vai `$safe!code` vienkārši neizdodas.

Privāti atribūti ir labi detaļām objekta iekšā. Pārējai programmai nevajadzētu tām pieskarties tieši.

{% include nav.html %}
