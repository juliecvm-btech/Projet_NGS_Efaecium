#!/bin/sh


#  Path to Canu.

bin="/home/julievm/miniconda3/envs/ngs_efaecium/bin"

#  Report paths.

echo ""
echo "Found perl:"
echo "  " `which perl`
echo "  " `perl --version | grep version`
echo ""
echo "Found java:"
echo "  " `which /home/julievm/miniconda3/envs/ngs_efaecium/lib/jvm/bin/java`
echo "  " `/home/julievm/miniconda3/envs/ngs_efaecium/lib/jvm/bin/java -showversion 2>&1 | head -n 1`
echo ""
echo "Found canu:"
echo "  " $bin/canu
echo "  " `$bin/canu -version`
echo ""


#  Environment for any object storage.

export CANU_OBJECT_STORE_CLIENT=
export CANU_OBJECT_STORE_CLIENT_UA=
export CANU_OBJECT_STORE_CLIENT_DA=
export CANU_OBJECT_STORE_NAMESPACE=
export CANU_OBJECT_STORE_PROJECT=





/home/julievm/miniconda3/envs/ngs_efaecium/bin/sqStoreCreate \
  -o ./efaecium.seqStore.BUILDING \
  -minlength 1000 \
  -genomesize 2800000 \
  -coverage   200 \
  -bias       0 \
  -raw -pacbio E745.Pl1 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl1.fastq.gz \
  -raw -pacbio E745.Pl2 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl2.fastq.gz \
  -raw -pacbio E745.Pl3 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl3.fastq.gz \
  -raw -pacbio E745.Pl4 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl4.fastq.gz \
  -raw -pacbio E745.Pl5 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl5.fastq.gz \
  -raw -pacbio E745.Pl6 /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E745.Pl6.fastq.gz \
  -raw -pacbio E754.CHR /mnt/c/Users/julie/NGS_project/Projet_Genomique_Efaecium/data/raw/pacbio/E754.CHR.fastq.gz \
&& \
mv ./efaecium.seqStore.BUILDING ./efaecium.seqStore \
&& \
exit 0

exit 1
