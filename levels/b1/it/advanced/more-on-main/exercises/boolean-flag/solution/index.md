---
title: 'Solution: Un flag da riga di comando'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Puoi trovare il codice sorgente nel file [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Output

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Commenti

1. Un parametro con nome di tipo `Bool` diventa un flag. Passare `--shout` imposta `$shout` a `True`. Se non lo passi, mantiene il valore predefinito `False`.

1. L'operatore ternario stampa poi `HELLO` o `hello`, a seconda del flag. Un'opzione `--nome=valore` ha un valore, ma un flag non ce l'ha. Conta solo se il flag è presente.

{% include nav.html %}
