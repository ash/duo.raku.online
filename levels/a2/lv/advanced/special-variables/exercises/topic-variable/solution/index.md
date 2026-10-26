---
title: 'Risinājums: Tēmas mainīgais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Atrodiet programmu failā [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Izvade

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Komentāri

1. Ciklā `for` tēmas mainīgais `$_` saņem katru elementu pa vienam. Tāpēc bloks izpildās trīs reizes. Vispirms `$_` ir `'apple'`, tad `'fig'`, tad `'cherry'`.

1. Virknē `$_` ieliek tekstā pašreizējo vārdu. Izsaukums `.chars` dod vārda garumu. Tas ir saīsinājums no `$_.chars`. Abi izmanto to pašu tēmu. Tāpēc skaitlis vienmēr atbilst vārdam rindā.

{% include nav.html %}
