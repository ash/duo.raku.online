---
title: 'Solvo: Nomu la eraron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La `die` okazas ene de `risky`, sed la escepto vojaĝas supren al la vokanto. La `CATCH` en la bloko, kiu vokis `risky`, traktas ĝin. Tiel la traktado de eraroj normale funkcias. La misfunkcio kaj ĝia traktilo ne bezonas esti en la sama rutino.

1. Simpla `die` kun ĉeno kreas escepton `X::AdHoc`, kaj `.^name` raportas ĉi tiun tipon. Poste `.message` redonas la tekston, kiu estis donita al `die`.

{% include nav.html %}
