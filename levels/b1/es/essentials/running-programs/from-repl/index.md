---
title: Ejecutar desde REPL
---

{% include menu.html %}

REPL significa _Read–eval–print loop_ (bucle de leer-evaluar-imprimir). Es un modo de shell integrado. Escribes instrucciones, y la pantalla muestra el resultado de cada paso. Esto incluye el estado de las variables y la salida de tu programa.

Para iniciar el shell de Rakudo, simplemente escribe:

```console
$ raku
Welcome to 𝐑𝐚𝐤𝐮𝐝𝐨™ v2020.10.
Implementing the 𝐑𝐚𝐤𝐮™ programming language v6.d.
Built on MoarVM version 2020.10.

You may want to `zef install Readline` or `zef install Linenoise` or use rlwrap for a line editor

To exit type 'exit' or '^D'
> 
```

La salida puede depender de la versión del compilador que tienes. Aquí, el shell recomienda instalar algunos módulos para una mejor experiencia de usuario. Por eso ves este mensaje.

Al final, hay un carácter de prompt, `>`. Aquí puedes escribir tu programa o partes de él. El shell lo compila línea por línea en cuanto presionas Enter.

    > say 'Hello, World';
    Hello, World
    > 

{% include nav.html %}
