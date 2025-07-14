# PROYECTO FINAL BIOINFORMÁTICA 

## Filogenia molecular del género *Tapirus* (Tapires)
Este proyecto tiene como objetivo reconstruir una filogenia molecular del género *Tapirus* utilizando secuencias de los genes mitocondriales *coi* y *cytb*, ampliamente empleados en estudios filogenéticos de mamíferos. Para enraizar el árbol, se incluyó como grupo externo a *Diceros bicornis* (rinoceronte negro), ya que no existen géneros hermanos extantes de *Tapirus*, y Rinocerotidae es el clado vivo más próximo dentro del orden Perissodactyla (Simpson, 1945). Este análisis busca aportar a la comprensión de las relaciones evolutivas dentro del género y visualizar cómo se agrupan sus especies actuales.
### Autor
*Karen Maribel Buenaño Barreno, Biología, Pontificia Universidad Católica del Ecuador.*
### Antecedentes
El género *Tapirus* pertenece a la familia Tapiridae, un linaje antiguo de perisodáctilos caracterizado por su morfología robusta y trompa corta. Actualmente es el único género vivo de la familia, mientras que su grupo hermano, la familia Rhinocerotidae, conserva varias especies extantes como *Diceros bicornis* y *Ceratotherium simum* (Simpson, 1945).  
A pesar de ser considerados “fósiles vivientes”, los tapires presentan una historia evolutiva diversa que puede explorarse mediante secuencias mitocondriales, que tienen una tasa de mutación relativamente alta y resultan útiles para resolver relaciones recientes entre especies (Gutiérrez et al., 2023). Dado que no existen géneros hermanos extantes de *Tapirus*, se utilizó como outgroup a un rinoceronte para poder enraizar el árbol y contextualizar las relaciones internas.

### Metodología
1. **Descarga de secuencias**  
Se recolectaron secuencias de los genes mitocondriales *coi* y *cytb* desde NCBI para especies del género *Tapirus* y para el grupo externo *Diceros bicornis*.
2. **Edición de secuencias**  
Los encabezados (*headers*) de las secuencias fueron editados usando ATOM, dejando únicamente el nombre de la especie y el número de voucher para facilitar la identificación y el alineamiento posterior.
3. **Alineamiento de secuencias**  
Las secuencias fueron alineadas utilizando el programa MUSCLE desde la terminal (Git Bash).
4. **Reconstrucción filogenética**  
Se construyeron árboles génicos individuales para *coi* y *cytb*. Posteriormente, se utilizó **ASTRAL** para inferir un árbol especie combinando la información de ambos genes.  
Finalmente, se calculó el **Gene Concordance Factor (GCF)** con **IQ-TREE**, usando el árbol especie obtenido con ASTRAL y los árboles de genes individuales, para evaluar cuántos de los genes apoyan cada nodo del árbol.
5. **Visualización del árbol**  
El árbol final se visualizó y editó en FigTree para analizar las relaciones internas del género *Tapirus*.

### Objetivos
#### Objetivo principal
Reconstruir una filogenia molecular del género *Tapirus* a partir de los genes mitocondriales *coi* y *cytb*.
#### Objetivos específicos
1. Recolectar y alinear secuencias de los genes *coi* y *cytb* de especies de *Tapirus* y del grupo externo *Diceros bicornis*.
2. Construir árboles génicos individuales y un árbol especie mediante ASTRAL.
3. Evaluar la congruencia entre genes en la filogenia resultante mediante el Gene Concordance Factor (GCF) con IQ-TREE.

### Programas a usar
* MUSCLE
* ATOM
* ASTRAL
* IQTREE
* FIGTREE
* GIT BASH

### Conclusiones
Se generaron tres filogenias: la primera, llamada Tapirus_tree, corresponde a una filogenia combinada construida a partir de las secuencias de los genes coi y cytb.
Se puede observar que aparecen dos topologías repetidas, una en la parte superior y otra en la parte inferior del árbol. Esto se debe a que algunos individuos de la especie *T. indicus* no están representados en ambos genes; por esta razón, muchos de sus individuos solo se agrupan en una de las ramas del árbol combinado.

El valor de GCF (gene concordance factor) se calculó, pero solo aplica para las especies *T. terrestris, T. pinchaque* y *T. bairdii*, que sí cuentan con secuencias disponibles de ambos genes.

Por este motivo, también se realizaron filogenias individuales para cada gen, con el objetivo de observar mejor las relaciones entre las especies:

* En la filogenia basada en el gen coi, se observa que *T. terrestris, T. pinchaque* y *T. bairdii* forman un clado, lo que indica que estas especies, que habitan respectivamente la Amazonía, los Andes y la Mesoamérica, derivarían de un ancestro común. Por otro lado, *T. indicus* aparece separado, y además se observa que un individuo identificado como *T. terrestris* se agrupa dentro del clado de *T. indicus*, lo que probablemente se deba a un error de identificación.

* En la filogenia del gen cytb se mantienen relaciones similares entre *T. terrestris, T. pinchaque* y *T. bairdii*, pero en este caso sí están representados todos los individuos de *T. indicus*. Esto explica que, en la filogenia combinada (Tapirus_tree), esos individuos no aparezcan representados en ambos genes y por eso se genera la duplicación de topologías.

### Bibliografía
Gutiérrez, E. G., Ortega, J., Savoie, A., & Baeza, J. A. (2023). The mitochondrial genome of the mountain woolly tapir, *Tapirus pinchaque*, and a formal test of the effect of altitude on the adaptive evolution of mitochondrial protein coding genes in odd-toed ungulates. *BMC Genomics, 24*, 527. https://doi.org/10.1186/s12864-023-09596-8

Simpson, G. G. (1945). *The principles of classification and a classification of mammals* (Vol. 85). Bulletin of the American Museum of Natural History. https://digitallibrary.amnh.org/handle/2246/1104

Fotografía de *Tapirus pinchaque*  
![alt text](https://wildexpedition.com/wp-content/uploads/2023/11/Andean-Tapir-Tapirus-pinchaque-689x517.jpg)

