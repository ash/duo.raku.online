---
title: 'Solvo: Ŝargi je rultempe'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `require` ŝargas la modulon je rultempo, ne je kompiltempo. Per si mem, ĝi importas nenion. Do Raku ne konas la nomon `hello`.

1. La listo `<&hello>` diras al `require` importi ĉi tiun unu nomon. Post ĉi tiu instrukcio, vi povas voki `hello('Sam')` rekte. Ĝi donas `Hello, Sam!`.

1. Jen *kial* ni havas `require`. Ĝi funkcias je rultempo. Do ĝi povas esti en `if`. Kun `--quiet`, la programo transsaltas ĉi tiun branĉon. Do ĝi neniam ŝargas la modulon. `use` ĉiam ŝargas la modulon. Ĝi funkcias je kompiltempo.

{% include nav.html %}
