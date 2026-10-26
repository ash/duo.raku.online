---
title: 'Risinājums: Tēmas mainīgais'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Cikls `for` pēc kārtas piešķir tēmas mainīgajam `$_` katru elementu. Tāpēc bloks izpildās trīs reizes, un `$_` ir `'apple'`, tad `'fig'`, tad `'cherry'`.

1. Virknes iekšienē `$_` ievieto pašreizējo vārdu. Izsaukums `.chars`, kas ir saīsinājums no `$_.chars`, dod tā garumu. Abi izmanto to pašu tēmu, tāpēc skaits vienmēr sakrīt ar vārdu rindā.

{% include nav.html %}
