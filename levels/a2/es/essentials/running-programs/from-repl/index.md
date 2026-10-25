---
title: Ejecutar desde REPL
---

{% include menu.html %}

REPL es la forma corta de _Read–eval–print loop_ (bucle de leer-evaluar-imprimir). Es un modo de shell integrado. Escribes instrucciones. Después de cada una, ves el resultado en la pantalla. Ves el estado de las variables. También ves la salida de tu programa.

Escribe esto para iniciar el shell de Rakudo:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

La salida depende de tu versión del compilador. En la salida de arriba, el shell sugiere instalar algunos módulos. Con ellos, el shell es más cómodo de usar. Por eso ves este mensaje.

Al final, ves el carácter de prompt `>`. Aquí escribes tu programa o partes de él. El shell compila tu código línea por línea. Lo hace cuando presionas Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
