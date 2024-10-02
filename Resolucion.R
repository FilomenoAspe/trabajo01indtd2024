source("teoriadecision_funciones_incertidumbre.R")

### Problema 1 
## Tabla de beneficios

# Una empresa que está evaluando cuatro proyectos 
# (D1, D2, D3, D4) bajo tres posibles escenarios de mercado (E1, E2, E3).
# Los valores en la tabla representan beneficios esperados en millones de euros.

# Tabla de beneficios: 
  

tabla1= crea.tablaX(c(10,8,6,
                      5,12,7,
                      8,6,9,
                      4,10,11),4,3)

## Resolucion por todos los métodos
# Pesimista
p1_pes = criterio.Wald(tabla1,T)
p1_pes
names(p1_pes$AlternativaOptima)

# Optimista
p1_opt = criterio.Optimista(tabla1,T)
names(p1_opt$AlternativaOptima)

# Hurwicz
p1_hur = criterio.Hurwicz(tabla1,T)
names(p1_hur$AlternativaOptima)

# Savage
p1_savage = criterio.Savage(tabla1,T)
names(p1_savage$AlternativaOptima)

# Laplace
p1_laplace = criterio.Laplace(tabla1,T)
names(p1_laplace$AlternativaOptima)

# Punto ideal
p1_puntoideal = criterio.PuntoIdeal(tabla1,T)
names(p1_puntoideal$AlternativaOptima)

# Resumen de todos
p1_todos = criterio.Todos(tabla1,alfa=0.5, T)
p1_todos


## CONCLUSION
# Hemos realizado todos los metodos de incertidumbre por separado y los visualizamos todos juntos
# con el criterio todos.
# Llegamos a la conclusion de que la alternativa d2 es la alternativa optima ya que 3 de los 6 metodos
# la eligen como la optima siendo todas las otras alternativas menos elegidas que d2

## Tabla de costes
tabla2=crea.tablaX(c(7,5,6,
                     3,9,5,
                     6,4,7,
                     2,6,8),4,3)

## Resolucion por todos los métodos
# Pesimista
p2_pes = criterio.Wald(tabla2,F)
names(p2_pes$AlternativaOptima)

# Optimista
p2_opt = criterio.Optimista(tabla2,F)
names(p2_opt$AlternativaOptima)

# Hurwicz
p2_hur = criterio.Hurwicz(tabla2,F)
names(p2_hur$AlternativaOptima)

# Savage
p2_savage = criterio.Savage(tabla2,F)
names(p2_savage$AlternativaOptima)

# Laplace
p2_laplace = criterio.Laplace(tabla2,F)
names(p2_laplace$AlternativaOptima)

# Punto ideal
p2_puntoideal = criterio.PuntoIdeal(tabla2,F)
names(p2_puntoideal$AlternativaOptima)

# Resumen de todos
p2_todos = criterio.Todos(tabla2,alfa=0.5, F)
p2_todos

## CONCLUSION
# Hemos realizado todos los metodos de incertidumbre por separado y los visualizamos todos juntos
# con el criterio todos.
# Llegamos a la conclusion de que la alternativa d4 es la alternativa optima ya que 5 de los 6 metodos
# la eligen como la optima.



### Problema 2
# Suponemos que un restaurante quiere decidir entre tres tipos de menú para ofrecer a sus
# clientes dependiendo de la demanda esperada para las próximas temporadas.
# Menús a elegir:
# -Menú Tradicional
# -Menú Saludable
# -Menú Vegetariano
# Escenarios de demanda:
# -Alta: Demanda elevada durante el verano.
# -Media: Demanda media durante la temporada baja.
# -Baja: Escenario en el que la demanda es baja, pero el restaurante puede atraer a clientes ofreciendo descuentos.
# Beneficios esperados (en miles de euros) para cada menú en cada escenario de demanda:
  
tabla3=crea.tablaX(c(30,20,10,
                     40,30,15,
                     50,25,5),3,3)

# Resumen de todos
p3_todos = criterio.Todos(tabla3,alfa=0.5, T)
p3_todos

## CONCLUSION
# En esta ocasion utilizamos directamente el criterio de todos, este nos muestra que para 5 de los 6, d2 es
# la mejor opcion y, para 3 de ellos, lo es d3. Por tanto, la opción idonea sera d2 que es el menú saludable
