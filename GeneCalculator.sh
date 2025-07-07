# Para alinear las seciencias
cd Fasta
for x in *.fasta; do ../Scripts/muscle3.8.31_i86linux64 -in $x -out musscle_$x; done

# Cargar iqtree
module load iqtree/2.2.2.6

# Para hacer filogenias
iqtree2 -s musscle_matK_Habenaria_sin_sp_chloroplast.fasta

# Ordenar los archivos en carpetas independientes
cd ..
mkdir Muscle/ Iqtree/
mv Fasta/*.treefile Iqtree/
mv Fasta/musscle_* Muscle/
