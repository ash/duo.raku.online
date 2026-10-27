---
title: 'Solvo: Nomu la eraron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Eligo

```
X::AdHoc
sub failed
```

## Komentoj

1. La `die` okazas ene de `risky`. Sed la escepto iras supren al la vokanto. La vokanto estas la kodo, kiu vokis `risky`. Ĉi tie, ĝi estas la bloko. La `CATCH` en ĉi tiu bloko traktas la escepton. Tiel la traktado de eraroj kutime funkcias. La kodo, kiu traktas eraron, estas ĝia traktilo. La eraro kaj ĝia traktilo povas esti en malsamaj rutinoj.

1. Simpla `die` kun ĉeno faras escepton `X::AdHoc`. `.^name` montras ĉi tiun tipon. `.message` redonas la tekston, kiun ni donis al `die`.

{% include nav.html %}
