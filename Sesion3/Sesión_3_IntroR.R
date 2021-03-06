#      --------------------------------------------------------------------
#          ING01216 - Aprendizaje de m�quina y Computaci�n evolutiva

#      --------------------------------------------------------------------
#Sesi�n 3
#Abril 2019
#Archivos requeridos para el laboratorio: 
#Criminalidad.csv
#Empleados.sav

#Ver el directorio de trabajo actual (working directory)
getwd()

#Cambiar el directorio de trabajo
setwd("E:/Courses/R/R Practices/Sesion3/")

print("Primera clase de R")

# Funci�n que concatena m�ltiples elementos de texto
paste("Martha", "Elena", "Garcia")

# Definici�n de variables (ej., "a") para almacenar valores (ej., n�meros, texto, etc.)
a=2

#Operaciones con los valores almacenados en las variables
a*5

a = a + 10

#VECTORES
#Creaci�n de vectores para almacenar m�ltiples valores. Se crean con la funci�n Combine (c)
vec1 = c(2,3,5,7,11)


abx = sort(vec1)

reversed = rev(sort(vec1))

vec2 = c(2:4)

vec12 = c(2,3,4)
vec13 = c(5,4,3,3)

if(length(vec12) == length(vec13)){
  res = vec12 + vec13
}else{
  
  res = "Error on sum"
}
res
#Acceder cada valor del vector usando un �ndice
vec1[5]

#Excluir el valor del tercer �ndice
vec1[-3]

#Asignar o actualizar valores en el vector usando su �ndice
vec1[3] = 13

vec1

#Algunas funciones de R permiten crear vectores definiendo sus propiedades
vec3 = c(seq(from=0, to=1, by=0.25))

#Tambi�n se puede sin la funci�n Combine (c)
vec4 = seq(from=0, to=50, by=10)

#Para imprimir el contenido de un vector en la consola s�lo se debe escribir su nombre
vec4

vec5 <- c(77, 82, 28, 11, 99)

#Ordenar el vector ascendentemente. Ser�a igual a 11 28 77 82 99
sort (vec5)

#Ordenar el vector descendentemente. Ser�a igual a 99 82 77 28 11
rev(sort(vec5)) 

#Ejecutar funciones con los vectores. 
#Ej. Ejecutar la funci�n "sum" en el vector "vec1"
sum(vec1)

#Operaciones con vectores
#Suma de vectores - Deben tener la misma longitud

#Verificar la longitud de los vectores
length (vec1)
length (vec2)
length (vec3)

#Ejemplo 1
vec1 + vec2

#Ejemplo 2
vec1 + vec3

#MATRICES
#Crear una matriz, comenzando por un vector y definiendo sus propiedades

mat22a=matrix(data=c(1,2,3,4), nrow=2, ncol=2)
mat22a

#Revisar si se trata de una matriz
is.matrix(mat22a)

# Tambi�n se puede omitir escribir data=, nrow=, y ncol= en el comando matrix():
mat22b=matrix(c(1,2,3,4),2,2)
mat22b

mat=matrix(c(2,3,5,7,11,13),ncol=3)
mat

# Por defecto, la matriz  se llena por columnas, con el par�metro byrow=TRUE, se llena por filas.
mat_porfilas=matrix(c(1,2,3,4),2,2,byrow=TRUE)
mat_porfilas

#Crea una matriz 4 � 4 de ceros.
mat0 = matrix(0,4,4)
mat0

#Crea una matriz 3 � 4 de unos (Se podr�a con cualquier n�mero)
mat1 = matrix(1,3,4)
mat1

#Asigna unos a la diagonal de la matriz mat0, es decir, la vuelve una
#matriz identidad de 4 � 4.

diag(mat0) = 1

mat0

#Acceder los valores individuales, filas y columnas en la matriz

#Acceder a todos los valores de una columna determinada
mat[,1]

#Acceder a todos los valores de una fila determinada
mat[1,]

#Revisar matriz mat 
mat

#Se a�ade una columna de ceros a mat
cbind(mat,c(0,0))

#Se a�ade una fila de ceros a mat
rbind(mat,c(0,0,0))

#DATAFRAMES
#Se pueden definir especificando un vector de tipos de objetos que contiene y vectores que contienen las propiedades de los objetos

#Definir vectores de "strings"
ciudades <- c("Medell�n", "Bogot�", "Cali")

poblacion <- c(2464000,8081000,2401000)
temperatura_prom <- c(22,14,28)


dataframe_ciudades <- data.frame(ciudades, poblacion, temperatura_prom)
#Ejemplo para ponerle nombres a las columnas
#dataframe_ciudades <- data.frame(type=ciudades, poblacion, temperatura_prom)
dataframe_ciudades

#Acceder ciertas columnas del dataframe
dataframe_ciudades["poblacion"] # Como columnas
dataframe_ciudades$poblacion    # Como vector

#Usar datasets disponibles en RStudio
#Listar todos los datasets disponibles en RStudio
data()

#Usar uno de los datasets
data(mtcars)
mtcars

#Verificar si es un data frame
is.data.frame(mtcars)

#mtcars es un dataframe con 32 registros y 11 variables.

#[, 1]	 mpg	 Miles/(US) gallon
#[, 2]	 cyl	 Number of cylinders
#[, 3]	 disp	 Displacement (cu.in.)
#[, 4]	 hp	 Gross horsepower
#[, 5]	 drat	 Rear axle ratio
#[, 6]	 wt	 Weight (1000 lbs)
#[, 7]	 qsec	 1/4 mile time
#[, 8]	 vs	 V/S
#[, 9]	 am	 Transmission (0 = automatic, 1 = manual)
#[,10]	 gear	 Number of forward gears
#[,11]	 carb	 Number of carburetors

#FUNCIONES
#Funci�n para obtener la cantidad de filas en el dataframe
nrow(mtcars)

#Funci�n para calcular la media de cada columna en el dataframe
colMeans(mtcars)

#Funci�n para calcular la media de una columna del dataframe
mean(mtcars$mpg)

#Datos faltantes NA
#Vector que contiene valores faltantes
x = c(1,2,NA)

#Indica, por cada elemento del vector, si es dato faltante o no
is.na(x)

#Actualizar Vector para que no contenga valores faltantes
x<-x[!is.na(x)]

#Imprimir el vector
x

#Funci�n para calcular el valor m�ximo en el vector
max(x)

#Funci�n para calcular el valor m�ximo, ignorando los valores nulos in el vector.
max(x, na.rm=TRUE)

#Funci�n para calcular el promedio
mean(c(1,2,3))

# Crear funciones personalizadas
fun1 = function(param1, param2)
{	w = param1 ^ 2
  return(param2 + w)
}

#Usar la funci�n personalizada
fun1(2,3)

# ESTRUCTURAS DE PROGRAMACI�N
# CICLOS Y CONDICIONALES
n<-10           # Se inicializa n 
pares<-c()      # Se crea un vector vac�o para n�meros pares 
impares<-c()    # Se crea un vector vac�o para n�meros impares
for(i in 1:n){  # Se procesan los n�meros de 1 a n 
  if(i%%2==0) pares<-c(pares,i)    # Si al dividir por 2 el resto es 0, es par
  else impares<-c(impares,i)} # Sino, es impar

# GR�FICOS 

#FUNCI�N PLOT
#La funci�n Plot permite graficar los datos. Hay muchos par�metros disponibles (Recomendaci�n: Revisar la Ayuda!)

#rnorm genera un vector de valores aleatorios

x=rnorm(100)
y=rnorm(100)
plot(x,y)

plot(x,y, type="p", col="red")

plot(rnorm(100), type="l", col="green")


#Graficar un vector aleatorio luego de aplicarle la funci�n "sort". 
#Las funciones son aplicadas de adentro hacia afuera. 
#Primero se calcula rnorm, luego se ordena con sort y luego se grafica con plot. 

plot(sort(rnorm(100)), type="p")

#Graficar los datos en un histograma
hist(x<-rnorm(100))

#Graficar datos dataset de carros 

plot(mtcars$mpg, mtcars$disp, col = "green", main = "Gr�fico EPM", xlab = "Millas por gal�n", ylab = "Desplazamiento")

#Demo con los posibles gr�ficos que se pueden hacer en R 
demo("graphics")

#PAQUETES

#Hay muchas m�s funciones disponibles en los paquetes (packages) disponibles para instalar en RStudio
#Listar los paquetes disponibles
library()

#Obtener informaci�n/ayuda sobre cierto paquete
library(help = "foreign")

#Instalar un paquete
install.packages("foreign")


#Cargar un paquete instalado. Despu�s de esto, se pueden usar las funciones disponibles.
library("foreign")


# Cargar datos desde archivos de texto y archivos de SPSS usando la librer�a foreign
# Copiar previamente los archivos a la ruta del directorio de trabajo

# Cargar datos de archivos .csv (separados por comas)
mis_datos_csv = read.csv("data/Criminalidad.csv", header = TRUE, sep = ",")
# Ver el dataset
mis_datos_csv
install.packages("memisc")
# Cargar datos de archivos .sav (SPSS Statistics)
mis_datos_spss = read.spss("data/Empleados.sav", to.data.frame=TRUE)
# See the dataset
mis_datos_spss



 

