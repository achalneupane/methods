##To run: sh sra.sh sra.txt
##If you run it like below, closing terminal will have no effect
##or run it as : nohup sh sra.sh sra.txt > BS_anything
#download tools from : https://github.com/ncbi/sra-tools/wiki/Downloads
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    ./fastq-dump $line --outdir fastq --split-3
done < "$1"