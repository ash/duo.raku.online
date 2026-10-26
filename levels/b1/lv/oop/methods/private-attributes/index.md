---
title: Privāti atribūti
translations_gpt:
---

{% include menu.html %}

[Sadaļā par atribūtiem](/lv/oop/attributes) mēs deklarējām katru atribūtu ar `$.`. Tas izveido publisku piekļuves metodi. Ja jūs tā vietā deklarējat atribūtu ar `$!`, tas ir _privāts_. Tam nav piekļuves metodes, un no objekta ārpuses jūs to nevarat redzēt. Tikai klases pašas metodes var to sasniegt. Tur jūs to rakstāt kā `$!name`.

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

Slepenais `$!code` glabājas objekta iekšā, bet tas nekad netiek parādīts ārpusē. Piekļuves metodes `.code` nav. Tāpēc jūs varat ar to strādāt tikai caur metodi `unlocks`. Klase pati izvēlas piedāvāt šo metodi. Ja jūs mēģināt nolasīt `$safe.code` vai `$safe!code`, tas vienkārši neizdodas.

Privāti atribūti noder iekšējām detaļām. Pārējai programmai nevajadzētu strādāt ar šīm detaļām tieši.

{% include nav.html %}
