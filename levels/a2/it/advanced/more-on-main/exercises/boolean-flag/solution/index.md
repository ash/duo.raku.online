---
title: 'Solution: Un flag da riga di comando'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Un parametro con nome di tipo `Bool` diventa un flag. Con `--shout`, `$shout` vale `True`. Senza questa opzione, `$shout` mantiene il valore predefinito, `False`.

1. Poi l'operatore ternario stampa `HELLO` o `hello`. Un'opzione `--nome=valore` ha un valore. Un flag non ha valore. Conta solo una cosa: il flag c'è o manca?

{% include nav.html %}
