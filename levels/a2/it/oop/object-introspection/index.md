---
title: Introspezione degli oggetti
translations_gpt:
---

{% include menu.html %}

Nella [sezione sui contenitori](/it/advanced/containers) hai usato `.^name`. Con questo hai chiesto a un valore il suo tipo. Le stesse metachiamate `.^` funzionano anche con classi e oggetti. Con queste puoi vedere i loro nomi e i loro attributi. Puoi anche vedere il loro posto nell'albero delle classi.

Un metametodo è un metodo che chiami con `.^`. Il metametodo `.^name` restituisce il nome della classe:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Il metametodo `.^attributes` elenca gli attributi della classe. Per ogni attributo vedi il suo tipo. Vedi anche il suo nome privato interno. È la forma `$!`. L'hai vista con gli [attributi privati](/it/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

L'introspezione vuol dire che fai domande a un oggetto su se stesso. È utile per gli strumenti che lavorano con ogni tipo di oggetto. Per esempio, uno strumento può stampare ogni attributo di un oggetto. Non deve conoscere prima la classe dell'oggetto. Il prossimo argomento parla della catena di ereditarietà di una classe. È la linea delle sue classi genitrici.

{% include nav.html %}
