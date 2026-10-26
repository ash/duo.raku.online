---
title: 'Solvo: Ŝargi je rultempe'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

La programo, `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Eligo

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Komentoj

1. `require` ŝargas la modulon je rultempo anstataŭ je kompiltempo. Per si mem, ĝi importas nenion. Tial Raku ne konus simplan `hello`.

1. La listo `<&hello>` diras al `require` importi tiun unu simbolon. Do post ĉi tiu instrukcio vi povas voki `hello('Sam')` rekte, kaj ĝi donas `Hello, Sam!`.

1. Jen *por kio* `require` servas. Ĉar ĝi funkcias je rultempo, ĝi povas esti en `if`. Kiam vi donas `--quiet`, tiu branĉo estas preterlasata, kaj la modulo neniam estas ŝargata. `use` je kompiltempo ne povus eviti ŝargi ĝin.

{% include nav.html %}
