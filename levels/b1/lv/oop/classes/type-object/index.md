---
title: Tipa objekti un instances
translations_gpt:
---

{% include menu.html %}

Klases nosaukums, piemēram, `Dog`, nozīmē klases _tipa objektu_. Tipa objekts apzīmē pašu tipu. Tas nav neviens konkrēts šī tipa objekts. Bet _instance_, ko jūs radāt ar `new`, ir īsts objekts.

Raku spēj redzēt atšķirību starp abiem. Metode `defined` tipa objektam atgriež `False`, bet instancei `True`:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Tipa objekts skaitās _nedefinēts_, jo tas nesatur īstus datus. Tas tikai apraksta tipu. Instance ir _definēta_, jo tā ir īsts objekts.

Ar `WHAT` abi rāda vienu un to pašu tipu. Jūs jau iepazināties ar `WHAT` [sadaļā par konteineriem](/lv/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku rāda tipu iekavās, kā `(Dog)`. Tātad `Dog` un `Dog.new` tips ir viens un tas pats, `Dog`. Bet starp tiem ir atšķirība. `Dog` ir pats tips, bet `Dog.new` ir šī tipa objekts.

{% include nav.html %}
