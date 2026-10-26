---
title: 'Solution: Zur Laufzeit laden'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `require` lädt das Modul zur Laufzeit, nicht zur Kompilierzeit. Allein importiert es nichts. Also kennt Raku den Namen `hello` nicht.

1. Die Liste `<&hello>` sagt `require`, dass es diesen einen Namen importieren soll. Nach dieser Anweisung kannst du `hello('Sam')` direkt aufrufen. Das ergibt `Hello, Sam!`.

1. Genau *deshalb* gibt es `require`. Es arbeitet zur Laufzeit. Also kann es in einem `if` stehen. Mit `--quiet` überspringt das Programm diesen Zweig. Also lädt es das Modul nie. Ein `use` lädt das Modul immer. Es arbeitet zur Kompilierzeit.

{% include nav.html %}
