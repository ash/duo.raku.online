---
title: Operatori definiti dall'utente
---

{% include menu.html %}

In Raku, gli operatori sono solo subroutine con nomi speciali. Così puoi creare i tuoi operatori. Per questo usi i nomi delle categorie della pagina [Tipi di operatori Raku](/it/advanced/operator-types). Sono `prefix`, `infix`, `postfix` e così via.

Per dichiarare un operatore, scrivi un `sub`. Il suo nome ha tre parti. Prima viene la categoria. Poi vengono i due punti. Poi viene il simbolo dell'operatore tra parentesi angolari. Ecco un nuovo operatore infisso. Il suo nome è `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Dopo, usi `plus` tra i suoi due operandi. Funziona proprio come un operatore infisso integrato.

Un operatore postfisso viene dopo il suo operando. Il fattoriale è un esempio tipico. Eccolo come operatore postfisso `!`. Usa il [meta-operatore di riduzione](/it/advanced/metaoperators/reduction) che conosci già:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Puoi usare anche altro, non solo lettere e punteggiatura ASCII. Il simbolo di un operatore può essere qualsiasi carattere. Questo operatore prefisso usa il segno di sezione `§`. Raddoppia un numero:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

I tuoi operatori sono uno strumento forte. Quindi usali con attenzione. Con un buon operatore, il codice somiglia alla lingua del suo campo. Un operatore strano confonde solo il prossimo lettore.

{% include nav.html %}
