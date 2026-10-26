---
title: Scrivere un trait
---

{% include menu.html %}

I trait sono normali multi-subroutine con un nome speciale. Così puoi scrivere i tuoi trait. Vuoi un trait `is something`? Allora definisci una `multi sub trait_mod:<is>`. I suoi parametri dicono due cose. Dicono su cosa lavora il trait. Danno anche il nome del trait:

Questa è una delle parti più difficili di Raku. Non preoccuparti se ti sembra complicata. Puoi usare bene i trait integrati anche senza saperlo. Non devi sapere come sono fatti. Raramente dovrai scrivere un trait da solo. Questa pagina ti mostra solo come funzionano i trait dentro.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Guarda la firma. Il primo parametro è `Routine:D $r`. È la cosa che ha il trait. Qui è una subroutine. Il `:D` è uno _smiley_ di tipo. Vuole un valore **definito**. Questo è un vero oggetto routine. Non è il tipo indefinito `Routine` stesso. Ci sono altri due smiley. `:U` vuole l'oggetto tipo indefinito. `:_` accetta tutti e due. Il parametro nominato `:$traced!` è il nome del trait. Grazie a questo parametro, `is traced` chiama questa sub. I trait lavorano **durante la compilazione**. Così Raku registra `foo` e `bar` appena legge le loro dichiarazioni. Durante l'esecuzione, `@traced` ha già i due nomi. Puoi persino spostare la riga `say @traced` più in alto, sopra le due definizioni `sub`. Stampa comunque `[foo bar]`.

Questo piccolo trait registra solo dei nomi. Ma la stessa idea può fare molto di più. Per esempio, un trait può avvolgere una routine per aggiungere il logging. Può controllare un attributo. Oppure può aggiungere dei metadati, cioè dati in più sul codice. Qui il primo parametro è una `Routine`. Puoi anche renderlo un `Attribute` o una `Variable`. Allora il trait lavora con attributi o variabili. I trait tengono aperta la sintassi delle dichiarazioni in Raku. Puoi sempre aggiungere nuovi trait. Il trait integrato `is rw` e il tuo `is traced` sono fatti nello stesso modo.

{% include nav.html %}
