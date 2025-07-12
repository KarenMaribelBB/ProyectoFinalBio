# Para alinear las seciencias
cd Data
for x in *.fasta; do ../Scripts/muscle3.8.31_i86linux64 -in $x -out musscle_$x; done

# Cargar iqtree
module load iqtree/2.2.2.6

# Para hacer filogenias
for muscle in musscle_*
do
iqtree2 -s ${muscle}
done

#Concatenar todos los árboles de genes en uno solo
cat *.treefile > All.Trees.Tapirus.tree 

#Crear variable de astral
astral=/u/scratch/d/dechavez/Bioinformatica-PUCE/RediseBio/Astral/astral.5.7.8.jar

#Ir a directorio
cd Data/

#Tener el árbol de genes  Astral
java -jar $astral -i All.Trees.Tapirus.tree -o Astral.Trees.Tapirus.tree

#Genes concordance factor
iqtree2 -t Astral.Trees.Tapirus.tree --gcf All.Trees.Tapirus.tree --prefix GCF.concord

# Ordenar los archivos en carpetas independientes
cd ..
mkdir Muscle/ Iqtree/ Results/
mv Data/*.treefile Iqtree/
mv Data/musscle_* Muscle/
mv Data/GCF*.tree Results/
