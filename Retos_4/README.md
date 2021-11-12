# Pregunta 1 (6 puntos):

## Consideraciones importantes:
- **Colocar los datos obtenidos de ejecutar el programa en un excel/pdf.**
- **Subir su solución en un excel/pdf, incluyendo la explicación correspondiente.**

Compilar y ejecutar el código `AxBpthreads.c` con los siguientes comando:
```
gcc -pthread AxBpthreads.c -o AxBpthreads
./AxBpthreads 
```
Utilizar los siguientes comandos para revisar la cantidad de threads que puede ejecutar en su PC. 
```
lscpu
```
**NOTA: La cantidad de threads será el número de cores * número de threads por core.**

Puede utilizar los siguientes comandos para obtener la misma información.
```
cat /proc/cpuinfo | grep "cores" | uniq
cat /proc/cpuinfo | grep "processor"| wc -l
```

a. Reportar en el excel/pdf las características de su computadora.

b. Para `N = 2 ... Nmax`, donde `N` es el número de threads y `Nmax` el número de threads máximo en su PC, ejecutar el código en el archivo `AxBpthreads.c`. Recordar que debe modificar la línea siguiente para cambiar el número de threads utilizados en la ejecución. 
```
#define NTHREADS 8
```

c. Si queremos evaluar el rendimiento del algoritmo implementado en función al número de threads lanzados, ¿qué métrica o métricas serían las más adecuadas? ¿qué podría concluir con cada una de ellas?