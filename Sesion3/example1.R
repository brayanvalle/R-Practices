

#Matrices

mat = matrix(c(2,3,5,7,11,13),ncol=3)

mat


mat22a = matrix(data=c(1,2,3,4) , nrow=2 , ncol=2)
mat22a

#crear matrix 4x4 de ceros
mat0 = matrix(0,4,4) 


ciudades <- c("Medellín" , "Bogotá" , "Cali")
poblacion <-c (2464000 , 8081000, 2401000)

temperatura_prom <-c(22,14,28)

dataframe_ciudades <- data.frame(ciudades,poblacion, temperatura_prom)
dataframe_ciudades
dataframe_ciudades["poblacion"]
dataframe_ciudades$poblacion

data()

data(mtcars)
mtcars
head(mtcars)


nrow(mtcars)
colMeans(mtcars)
rowMeans(mtcars)


mean(mtcars$mpg)

x = c(1,2,NA)
is.na(x)
x <-x[!is.na(x)]
x
max(x)

max(x,na.rm="TRUE")


x = 0/0
x


x <-c(1,2,3)

mean(x)
median(x)
rnorm(x)
rmnom()
rnorm()
rnorm(12)


min(x)
max(x)


which.max(x)
which.min(x)


summary(mtcars)



calculate = function(x, y){
  
  return (x*y + x - 2*y)
}

x = calculate(2,3)



n<-10

pares<-c()
impares<-c()


for(i in 1:n){
  if(i %% 2 == 0)
    pares<-c(pares,i)
  else
    impares<-c(impares,i)
}

pares
impares



x = rnorm(100)
y = rnorm(100)

plot(x,y)
plot(x,y,type="p",col="red")

plot(mtcars$mpg, mtcars$disp,col = "green" , main="Gráfico EPM", xlab = "Millas por galón", ylab="Desplazamiento")



hist(x<-rnorm(100))
plot(x,y,xlab ="Diez números al azar", ylab="Another 10 numbers" ,
     pch=21,col="red",bg="yellow", main="Grafico personalizado")



library()


library(help ="foreign")

install.packages("foreign")


library("foreign")
