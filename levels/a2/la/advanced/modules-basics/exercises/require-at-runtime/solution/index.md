---
title: 'Solutio: Tempore exsecutionis onerare'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `require` modulum tempore exsecutionis onerat, non tempore compilationis. Per se nihil importat. Itaque Raku nomen `hello` non novit.

1. Index `<&hello>` iubet `require` hoc unum nomen importare. Post hoc enuntiatum `hello('Sam')` directe vocare potes. Id `Hello, Sam!` dat.

1. *Ideo* `require` habemus. Tempore exsecutionis operatur. Itaque intra `if` esse potest. Cum `--quiet`, programma hunc ramum praetermittit. Itaque modulum numquam onerat. `use` semper modulum onerat. Tempore compilationis operatur.

{% include nav.html %}
