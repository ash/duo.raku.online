---
title: Valori predefiniti
---

{% include menu.html %}

I parametri posizionali e nominati possono avere valori predefiniti. Un parametro con un valore predefinito non è obbligatorio. Puoi saltarlo quando chiami la funzione. Allora il parametro prende il suo valore predefinito.

## Parametri posizionali

Ecco un esempio. La funzione ha un parametro posizionale con un valore predefinito:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

La prima chiamata passa un nome come unico argomento. Così stampa `Hello, Merinda!`. La seconda chiamata usa il valore predefinito. Stampa `Hello, World!`.

A volte una funzione ha più di un parametro. Allora i valori predefiniti devono stare alla fine dell'elenco:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # corretto
# sub f($a = 10, $b = 20, $c, $d) { . . . } # SBAGLIATO
```

## Parametri nominati

I parametri nominati prendono i valori predefiniti nello stesso modo:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

L'ordine dei parametri nominati non importa. Così ognuno di loro può avere un valore predefinito. Anche il primo dell'elenco può averlo:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
