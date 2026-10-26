---
title: Tipa objekti un instances
translations_gpt:
---

{% include menu.html %}

Jūs varat rakstīt klases nosaukumu, piemēram, `Dog`. Šis nosaukums nozīmē klases _tipa objektu_. Tipa objekts apzīmē pašu tipu. Tas nav viens no šī tipa objektiem. Bet _instance_ ir kas cits. Jūs to veidojat ar `new`. Tā ir īsts objekts.

Raku redz atšķirību starp tiem. Metode `defined` tipa objektam atgriež `False`. Instancei tā atgriež `True`:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Tipa objektam nav īstu datu. Tas tikai apraksta tipu. Tāpēc Raku saka, ka tas ir _nedefinēts_. Instance ir īsts objekts. Tāpēc tā ir _definēta_.

`WHAT` abiem rāda vienu un to pašu tipu. Jūs redzējāt `WHAT` [sadaļā par konteineriem](/lv/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku rāda tipu apaļās iekavās, piemēram, `(Dog)`. Tātad `Dog` un `Dog.new` tips ir viens un tas pats, `Dog`. Bet tās ir dažādas lietas. `Dog` ir pats tips. `Dog.new` ir šī tipa objekts.

{% include nav.html %}
