# Para alinear las seciencias
cd Data
for x in *.fasta; do ../Scripts/muscle3.8.31_i86linux64 -in $x -out musscle_$x; done

# Cargar iqtree
module load iqtree/2.2.2.6

# Para hacer filogenias con bootstrap
for muscle in musscle_*
do
  iqtree2 -s ${muscle} -m MFP -bb 1000 -alrt 1000 -nt AUTO
done

# Ordenar los archivos en carpetas independientes
cd ..
mv Data/*.treefile Iqtree/
mv Data/musscle_* Muscle/


