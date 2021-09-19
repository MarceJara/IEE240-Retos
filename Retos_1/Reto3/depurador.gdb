# Archivo para ver los resultados
set logging file output.txt
set print pretty on
# Salidas de los comandos se registran
set logging on
# Evita que gdb haga preguntas y\n
set pagination of
# Indica el archivo que se va a depurar
file palindromo
#Condicion para analizar paso a paso
set disassembly-flavor intel

#------------------------------------

# hook previo para echo
define hook-echo
echo <<<-----
end

# hook posterior para echo
define hookpost-echo
echo ----->>>\n
end

b exit

r

echo Variables
i r

#Salir del GDB
quit 
y