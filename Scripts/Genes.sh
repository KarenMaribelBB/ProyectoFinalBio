mkdir Genes/

#Descargar genes de Tapires y una especies de grupo externo
mitogen=("coi" "cytb" "rag1")
organisms=("Tapirus" "Diceros bicornis")

for mito in "${mitogen[@]}"
do
for org in "${organisms[@]}"
do
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "$mito[Gene] AND $org[Organism]" | \
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Genes/${mito}_${org}.fasta"
done
done

# Unir archivos del mismo gen
for x in *_*.fasta; do
    gen=${file%%_*}
    cat ${gen}_$x.fasta > ${gen}.fasta
done

#Poner todos los archivos de un solo gen en un solo archivo
cat cytb_*.fasta > ctyb.fasta
cat coi_*.fasta > coi.fasta

#Una vez se descargan los genes se deben modificar los headers en atom para su correcta lectura para alinear y hacer la filogenia. Dejar el nombre de la especie y el número de voucher
