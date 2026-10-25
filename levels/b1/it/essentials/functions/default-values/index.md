---
title: Valori predefiniti
---

{% include menu.html %}

Sia i parametri posizionali che quelli nominati possono avere valori predefiniti. Se un parametro ha un valore predefinito, puoi saltarlo nella chiamata della funzione.

## Parametri posizionali

Ecco un esempio di valore predefinito per un parametro posizionale:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

Nella prima chiamata, il nome è l'unico argomento, quindi il risultato è `Hello, Merinda!`. La seconda chiamata usa il valore predefinito e stampa `Hello, World!`.

Se una funzione ha più parametri, solo gli ultimi possono avere valori predefiniti:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # corretto
# sub f($a = 10, $b = 20, $c, $d) { . . . } # SBAGLIATO
```

## Parametri nominati

Imposti i valori predefiniti dei parametri nominati con la stessa sintassi:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

L'ordine dei parametri nominati non importa. Quindi ognuno di essi può avere un valore predefinito, anche il primo:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
