---
title: 'Solution: Zur Laufzeit laden'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

Das Programm, `require-import.raku`:

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

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Ausgabe

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Kommentare

1. `require` lädt das Modul zur Laufzeit statt zur Kompilierzeit. Allein importiert es nichts. Deshalb würde Raku ein einfaches `hello` nicht kennen.

1. Die Liste `<&hello>` sagt `require`, dass es dieses eine Symbol importieren soll. Nach dieser Anweisung kannst du also `hello('Sam')` direkt aufrufen, und das ergibt `Hello, Sam!`.

1. Genau *dafür* ist `require` da. Weil es zur Laufzeit arbeitet, kann es in einem `if` stehen. Wenn du `--quiet` angibst, wird dieser Zweig übersprungen und das Modul nie geladen. Ein `use` zur Kompilierzeit könnte das Laden nicht vermeiden.

{% include nav.html %}
