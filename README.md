# PROYECTO FINAL BIOINFORMÁTICA

## Nectar Spur en Orchidaceae

Este proyecto tiene como objetivo reconstruir una filogenia molecular del género Epidendrum utilizando secuencias del gen cloroplástico matK, ampliamente usado en estudios filogenéticos de plantas. A partir de esta filogenia, se mapeará la presencia o ausencia de nectar spurs en las especies incluidas, con el fin de inferir patrones evolutivos asociados a esta característica floral. El análisis permitirá explorar posibles eventos de ganancia o pérdida del espolón en el grupo, aportando a la comprensión de la diversificación morfológica dentro del género.

### Autor
Karen Maribel Buenaño Barreno, Biología, Pontificia Universidad Católica del Ecuador.

### Antecedentes
Los espolones de nectar son unas características que presentan innovación en las plantas (Hodges, 1997), confiriéndolas complejas relaciones con polinizadores (Hodges, 1995).

El género Epidendrum es uno de los más diversos dentro de las orquídeas neotropicales, con una alta concentración de especies en los Andes, particularmente en Ecuador, uno de los países con mayor biodiversidad del mundo. A pesar de esta riqueza, muchas especies ecuatorianas siguen poco estudiadas, especialmente en términos de sus relaciones evolutivas y características morfológicas especializadas como el nectar spur (Stpiczyńska, et al., 2018).

La presencia o ausencia de spurs tiene implicaciones ecológicas importantes, ya que esta estructura puede influir en la interacción con polinizadores y en la diversificación floral. Sin embargo, aún se desconoce cómo ha evolucionado este carácter dentro del grupo. Por ello, este proyecto busca reconstruir una filogenia basada en el gen matK, ampliamente usado en estudios evolutivos de plantas, para mapear la evolución del spur en especies de Epidendrum ecuatorianas y explorar posibles patrones de convergencia, pérdida o ganancia independiente.

### Metodología
1. Descarga de secuencias

Se recolectaron secuencias del gen matK desde NCBI correspondientes a especies del género Epidendrum presentes en Ecuador.

Se incluyeron tanto especies con spur (cunículo) como sin él, según registros botánicos y literatura especializada.



2. Alineamiento de secuencias

Las secuencias fueron alineadas utilizando el programa MUSCLE, ejecutado desde Git Bash.

El alineamiento se hizo en formato FASTA y se verificó manualmente para asegurar calidad y homología.



3. Reconstrucción filogenética

Se construyó un árbol filogenético utilizando IQ-TREE, también desde la línea de comandos.

Se aplicó un modelo evolutivo adecuado y se incluyó bootstrap para evaluar soporte de nodos.



4. Codificación del carácter “spur”

Se creó un script en Bash para marcar las especies que presentan spur con un #1 y las que no con un #0, generando un archivo de caracteres binarios.

Este archivo fue usado para mapear la presencia/ausencia del spur en la filogenia.




5. Visualización del árbol

El árbol resultante fue editado en FigTree, donde se anotó la presencia del spur en las ramas correspondientes.

Se analizó visualmente el patrón evolutivo del carácter y se interpretaron posibles eventos de ganancia o pérdida.


### Objetivos
* Objetivo principal
Reconstruir una filogenia molecular del género Epidendrum a partir de secuencias del gen matK, con el fin de analizar la evolución del nectar spur (cunículo) en especies presentes en Ecuador.

* Objetivos específicos
1. Recolectar y alinear secuencias del gen matK de especies ecuatorianas de Epidendrum con y sin spur, obtenidas de bases de datos públicas como NCBI.


2. Construir un árbol filogenético a partir del alineamiento de las secuencias usando herramientas bioinformáticas como MUSCLE e IQ-TREE.


3. Mapear la presencia o ausencia del nectar spur en la filogenia resultante para identificar posibles patrones evolutivos de este carácter floral.


### Programas a usar
* MUSCLE
* ATOM
* ASTRAL
* IQTREE
* FIGTREE
* GIT BASH


### Referencias Bibliográficas
* Hodges, S. A. (1997). Floral nectar spurs and diversification. International Journal of Plant Sciences, 158(6 SUPPL. 1). https://doi.org/10.1086/297508
* Hodges, S. A., & Arnold, M. L. (1995). Spurring plant diversification: Are floral nectar spurs a key innovation? Proceedings of the Royal Society B: Biological Sciences, 262(1365). https://doi.org/10.1098/rspb.1995.0215
* Stpiczyńska, M., Kamińska, M., Davies, K. L., & Pansarin, E. R. (2018). Nectar-secreting and nectarless Epidendrum: Structure of the inner floral spur. Frontiers in Plant Science, 9. https://doi.org/10.3389/fpls.2018.00840, M., Kamińska, M., Davies, K. L., & Pansarin, E. R. (2018). Nectar-secreting and nectarless Epidendrum: Structure of the inner floral spur. Frontiers in Plant Science, 9. https://doi.org/10.3389/fpls.2018.00840


Fotografía de Epidendrum trydactylum, especie que tiene nectar spur:
![alt text](https://upload.wikimedia.org/wikipedia/commons/3/3a/Amblostoma_tridactylum.jpg)
