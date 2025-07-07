# Crear directorio de salida
mkdir Fasta

# Descarga los genes de la dataset mitocondiales del NCBI
mitogen=("matK")
organisms=("Habenaria")
for mito in "${mitogen[@]}"
do
for org in "${organisms[@]}"
do
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/esearch -db nuccore -query "$mito[Gene] AND $org[Organism]" | \
    /u/scratch/d/dechavez/Bioinformatica-PUCE/MastBio/edirect/efetch -format fasta > "Fasta/${mito}_${org}.fasta"
done
done

# Unificar secunecias en un solo archivo
for x in *_*.fasta; do
    gen="${file%%_*}"
    cat "${gen}_"*.fasta > "${gen}.fasta"
done
