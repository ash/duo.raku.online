---
title: Scrivere un trait
---

{% include menu.html %}

I trait sono normali multi-subroutine con un nome speciale, quindi puoi scrivere i tuoi. Per aggiungere un trait chiamato `is something`, definisci una `multi sub trait_mod:<is>`. I suoi parametri dicono a cosa si applica il trait e gli danno il suo nome:

Questa è una delle parti più avanzate di Raku. Non preoccuparti se ti sembra complicata. Puoi usare benissimo i trait integrati senza sapere come sono fatti. Raramente avrai bisogno di scriverne uno tu stesso. Quindi prendi questa pagina come uno sguardo a come funzionano le cose dentro.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Leggi la firma. Il primo parametro, `Routine:D $r`, è la cosa a cui è associato il trait. Qui è una subroutine. Il `:D` è uno _smiley_ di tipo che richiede un valore **definito**. Significa un vero oggetto routine, non il tipo indefinito `Routine` stesso. I suoi compagni sono `:U`, che richiede l'oggetto tipo indefinito, e `:_`, che accetta entrambi. Il parametro nominato `:$traced!` è il nome del trait stesso. Siccome c'è questo parametro, `is traced` chiama questa sub. I trait vengono eseguiti in **fase di compilazione**. Così `foo` e `bar` vengono registrati appena vengono dichiarati. Quando il programma è in esecuzione, `@traced` li elenca già. Potresti persino spostare la riga `say @traced` sopra le due definizioni `sub`. Stamperebbe comunque `[foo bar]`.

Questo piccolo trait registra solo dei nomi, ma la stessa idea può fare molto di più. Può avvolgere una routine per aggiungere il logging, controllare un attributo o aggiungere metadati. Il primo parametro può anche essere un `Attribute` o una `Variable` invece di una `Routine`. Allora il trait si applica ad attributi o variabili. I trait sono il modo in cui Raku tiene aperta la sintassi delle dichiarazioni. Il trait integrato `is rw` e il tuo `is traced` sono fatti nello stesso modo.

{% include nav.html %}
