---
title: 'Solvo: Rulu komandon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Vi povas trovi la fontkodon en la dosiero [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Eligo

```
home: $HOME
```

## Komentoj

1. `run` lanĉas `echo` rekte kaj transdonas ĉiun ĉenon kiel apartan argumenton. Sen `:out`, la eligo de la programo iras rekte al la ekrano.

1. La argumento atingas `echo` ĝuste tiel, kiel ĝi estas skribita. `$HOME` estas presata tiel, kiel ĝi estas, ne anstataŭigita per via hejma dosierujo. Tio estas, ĉar ne estas ŝelo, kiu anstataŭigus ĝin. Tial `run` estas la sekura defaŭlto. La sama komando, donita al `shell`, povus konduti tre alie.

1. Por vere presi la hejman dosierujon, lasu ŝelon anstataŭigi la variablon. `shell 'echo home: $HOME'` presas ion kiel `home: /home/anna`. Tenu la unuoblajn citilojn ankaŭ ĉe la Raku-flanko. Duoble citita `"$HOME"` kaŭzus problemon. Raku mem provus enmeti variablon nomatan `$HOME` en la ĉenon. Tio okazus eĉ antaŭ ol `echo` ruliĝas.

{% include nav.html %}
