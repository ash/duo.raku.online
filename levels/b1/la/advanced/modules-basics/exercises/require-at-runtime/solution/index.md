---
title: 'Solutio: Tempore exsecutionis onerare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `require-import.raku`:

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

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime) invenies.

## Exitus

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Commentarii

1. `require` modulum tempore exsecutionis potius quam tempore compilationis onerat. Per se nihil importat. Ideo Raku simplex `hello` non agnosceret.

1. Index `<&hello>` iubet `require` illud unum symbolum importare. Itaque post hoc enuntiatum `hello('Sam')` directe vocare potes, et id `Hello, Sam!` dat.

1. Ad hoc `require` *servit*. Quia tempore exsecutionis operatur, intra `if` esse potest. Cum `--quiet` das, ille ramus praetermittitur et modulus numquam oneratur. `use` tempore compilationis eum semper oneraret, nec hoc vitare posset.

{% include nav.html %}
