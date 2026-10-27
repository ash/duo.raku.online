---
title: Zachte mislukkingen
translations_gpt:
---

{% include menu.html %}

Een exceptie van `die` stopt alles meteen. Soms is dat te veel. Misschien kan een subroutine geen resultaat geven. Ze moet dit probleem melden. Maar de aanroeper moet beslissen of het programma stopt. De aanroeper is de code die de subroutine aanriep. Voor dit geval heeft Raku _zachte mislukkingen_. Je maakt ze met `fail`.

Een subroutine kan `fail` aanroepen. Dan werpt ze niet meteen een exceptie. In plaats daarvan geeft ze een bijzonder `Failure`-object terug aan de aanroeper. Een `Failure` is een waarde met een fout erin. Hij is ongedefinieerd. Dus kan de aanroeper er rustig op controleren:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

De eerste aanroep werkt en geeft `5` terug. De tweede aanroep mislukt. Hij geeft een `Failure` terug. Voor dit object geeft `defined` de waarde `False`. Dus kan de aanroeper het resultaat testen voordat hij het gebruikt.

Waarom heet een `Failure` _zacht_? Hij wordt maar in één geval een echte, geworpen exceptie. Dat is als je hem als waarde gebruikt zonder controle. Maar je kunt hem afhandelen, bijvoorbeeld met een test op `defined`. Dan blijft hij stil. Zo kan een subroutine een probleem melden. Het hele programma hoeft niet te stoppen.

## Dit ken je al

Dit soort mislukking wacht tot later. Niet alleen `fail` werkt zo. Eerder in dit deel zag je hetzelfde idee al twee keer.

Een **deling door nul** maakt stil een waarde. Ze werpt pas een exceptie als je de waarde echt gebruikt:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Een **mislukkend extern programma** geeft een `Proc` terug. Die werpt maar in één geval een exceptie. Dat is als je de `Proc` weggooit zonder hem af te handelen. Bewaar de `Proc` en kijk ernaar. Dan blijft hij een stille waarde:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In elk geval stopt een probleem het programma niet meteen. Het wordt een waarde. Je kunt deze waarde controleren. Ze wordt maar in twee gevallen een geworpen exceptie. Je gebruikt haar zonder controle, of je negeert haar. Het onderwerp [Niet elke fout is onmiddellijk](/nl/oop/try/deferred-errors) toont beide voorbeelden samen.

{% include nav.html %}
