---
title: Operatori definiti dall'utente
---

{% include menu.html %}

In Raku gli operatori sono in realtà solo subroutine con nomi speciali. Questo vuol dire che puoi definire i tuoi operatori. Usi i nomi delle categorie della pagina [Tipi di operatori Raku](/it/advanced/operator-types): `prefix`, `infix`, `postfix` e così via.

Per dichiarare un operatore, scrivi un `sub` con un nome speciale. Il nome è la categoria, i due punti e il simbolo dell'operatore tra parentesi angolari. Ecco un nuovo operatore infisso chiamato `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Una volta definito, `plus` va tra i suoi due operandi. È esattamente come qualsiasi operatore infisso integrato.

Un operatore postfisso viene dopo il suo operando. Il fattoriale è un esempio classico. Eccolo come operatore postfisso `!`. È costruito sul [meta-operatore di riduzione](/it/advanced/metaoperators/reduction) che hai visto prima:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Non sei limitato a lettere e punteggiatura ASCII. Il simbolo di un operatore può essere qualsiasi carattere. Questo operatore prefisso usa il segno di sezione, `§`, per raddoppiare un numero:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Definire operatori è uno strumento potente, quindi usalo con buon gusto. Con un operatore ben scelto, il codice si legge come la lingua del suo campo. Uno poco chiaro confonde solo la prossima persona che legge il codice.

{% include nav.html %}
