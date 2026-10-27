---
title: 'Solvo: Rulu komandon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `run` lanĉas `echo` rekte. Ĝi transdonas ĉiun ĉenon kiel apartan argumenton. Ne estas `:out`. Do la eligo de la programo iras rekte al la ekrano.

1. La argumento venas al `echo` ĝuste tiel, kiel vi skribis ĝin. Do `$HOME` aperas tiel, kiel ĝi estas. Nenio anstataŭigas ĝin per via hejma dosierujo. Tio estas, ĉar ne estas ŝelo. Ŝelo anstataŭigus ĝin. Tial `run` estas la sekura defaŭlta elekto. Kun `shell`, la sama komando povas funkcii tre alie.

1. Ĉu vi vere volas presi la hejman dosierujon? Tiam lasu ŝelon anstataŭigi la variablon. `shell 'echo home: $HOME'` presas ion kiel `home: /home/anna`. Tenu ankaŭ la unuoblajn citilojn en la Raku-kodo. Kun duoblaj citiloj, `"$HOME"`, estas problemo. Raku mem provas enmeti sian propran variablon `$HOME` en la ĉenon. Tio okazas eĉ antaŭ ol `echo` ruliĝas.

{% include nav.html %}
