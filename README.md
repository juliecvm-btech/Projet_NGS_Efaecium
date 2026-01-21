# Analyse Génomique et Transcriptomique d'*Enterococcus faecium* E745

## Accès au Rapport Complet (Wiki)
L'intégralité de l'analyse, incluant les scripts détaillés, les figures et les interprétations biologiques, est disponible dans le Wiki du projet :

**[RAPPORT WIKI](../../wiki)**

---

## Contributeurs
**Étudiantes en cycle ingénieur (Biologie & Biotechnologie / E-santé) - ESTBB :**
* Julie Van Meer
* Alix Badoix
* Nourine Faiz

**Année :** 2025-2026

---

## Project Overview
Ce projet vise à reproduire et approfondir l'analyse génomique de la souche clinique *Enterococcus faecium* E745 (VRE). L'objectif est de comprendre, via une approche couplant assemblage *de novo* et RNA-seq, comment cette bactérie s'adapte à l'environnement hostile du sérum humain.

Le pipeline bio-informatique a permis de :
1.  **Reconstruire le génome complet** (structure hybride : chromosome + plasmides).
2.  **Comparer l'expression génique** entre une condition de croissance optimale (BHI) et une condition de stress (Sérum).

---

## Données Utilisées
Les données brutes de séquençage proviennent de l'étude de référence. Il s'agit d'une stratégie de séquençage hybride :
* **Illumina**
* **PacBio**
* **Nanopore** 

---

## Résultats Principaux
* **Architecture Génomique :** Validation d'un assemblage comprenant 1 chromosome circulaire (2.7 Mb) et 6 plasmides.
* **Adaptation Métabolique :** Le sérum induit une activation massive des opérons de biosynthèse des purines (*purD, purH*) et des pyrimidines (*pyr*).
* **Virulence et Résistance :** Identification et validation de la surexpression du gène de résistance à la vancomycine (*vanA*) sur le Plasmide 2 en condition sérique.

---

## Logiciels et Environnement
Le projet a été réalisé sous environnement Linux (Ubuntu) et RStudio.

**Contrôle Qualité** : FastQC/Multiqc [v0.12.1]/[v1.18]  
**Nettoyage** : Trimmomatic [v0.39]   
**Alignement (Polishing)** : BWA (bwa-mem) [v0.7.17 -r1188]   
**Correction** : Pilon [v1.24]  
**Assemblage** : SPAdes [v3.15.5]   
**Qualité Assemblage** : QUAST [v5.2.0]  
**Annotation** : Prokka [v1.13]  
**Visualisation** : SnapGene Viewer [v8.2.2]  
**Alignement (RNA-seq)** : Bowtie2 [v2.5.4]   
**Manipulation BAM** : Samtools [v1.19.2]   
**Comptage** : FeatureCounts (Subread) [v2.1.1]   
**Analyse Stat.** : R (DESeq2) [v1.50.2] 

---

## Source
Ce projet se base sur les données et la démarche scientifique de l'article suivant :
> **Zhang et al.**, "RNA-seq and Tn-seq reveal fitness determinants of vancomycin-resistant *Enterococcus faecium* during growth in human serum", *BMC Genomics*, 2017.
