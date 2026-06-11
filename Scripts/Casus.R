#Werkplek
setwd("C:/Users/joran/Documents/Ik/School/NHL/BML/Jaar 3/Periode 4 J2/Transcriptomics/Casus/R data file")
getwd()


  #Packages
#install.packages('BiocManager')
#BiocManager::install('Rsubread')
#BiocManager::install('Rsamtools')
#BiocManager::install("DESeq2")
#BiocManager::install("KEGGREST")
#BiocManager::install("EnhancedVolcano")
#BiocManager::install("pathview")
#BiocManager::install("goseq")
#BiocManager::install("geneLenDataBase")
#BiocManager::install("org.Hs.eg.db")
#BiocManager::install("clusterProfiler")
library(Rsubread)
library(Rsamtools)
library(DESeq2)
library(KEGGREST)
library(EnhancedVolcano)
library(pathview)
library(goseq)
library(geneLenDataBase)
library(org.Hs.eg.db)
library(clusterProfiler)

  #Indexeren
#buildindex(
#  basename = 'ref_human',
#  reference = 'GCF_000001405.40_GRCh38.p14_genomic.fna',
#  memory = 4000,
#  indexSplit = TRUE)


  #Mappen
#align.control1 <- align(index = "ref_human",
#                    readfile1 = "SRR4785819_1_subset40k.fastq",
#                    readfile2 = "SRR4785819_2_subset40k.fastq",
#                    output_file = "control1.BAM")
#align.control2 <- align(index = "ref_human",
#                    readfile1 = "SRR4785820_1_subset40k.fastq",
#                    readfile2 = "SRR4785820_2_subset40k.fastq",
#                    output_file = "control2.BAM")
#align.control3 <- align(index = "ref_human",
#                    readfile1 = "SRR4785828_1_subset40k.fastq",
#                    readfile2 = "SRR4785828_2_subset40k.fastq",
#                    output_file = "control3.BAM")
#align.control4 <- align(index = "ref_human",
#                    readfile1 = "SRR4785831_1_subset40k.fastq",
#                    readfile2 = "SRR4785831_2_subset40k.fastq",
#                    output_file = "control4.BAM")
#align.reuma1 <- align(index = "ref_human",
#                    readfile1 = "SRR4785979_1_subset40k.fastq",
#                    readfile2 = "SRR4785979_2_subset40k.fastq",
#                    output_file = "reuma1.BAM")
#align.reuma2 <- align(index = "ref_human",
#                    readfile1 = "SRR4785980_1_subset40k.fastq",
#                    readfile2 = "SRR4785980_2_subset40k.fastq",
#                    output_file = "reuma2.BAM")
#align.reuma3 <- align(index = "ref_human",
#                    readfile1 = "SRR4785986_1_subset40k.fastq",
#                    readfile2 = "SRR4785986_2_subset40k.fastq",
#                    output_file = "reuma3.BAM")
#align.reuma4 <- align(index = "ref_human",
#                    readfile1 = "SRR4785988_1_subset40k.fastq",
#                    readfile2 = "SRR4785988_2_subset40k.fastq",
#                    output_file = "reuma4.BAM")


  #Countmatrix
countsRA <- read.delim("count_matrix_RA.txt", header = TRUE, row.names = 1)
head(countsRA)
str(countsRA)


  #Metadata
treatment <- c("control", "control", "control", "control", "reuma", "reuma", "reuma", "reuma")
treatment_table <- data.frame(treatment)
head(treatment_table, 8)

rownames(treatment_table) <- c('control1', 'control2', 'control3', 'control4', 'reuma1', 'reuma2', 'reuma3', 'reuma4')
head(treatment_table, 8)

colnames(countsRA) <- c('control1', 'control2', 'control3', 'control4', 'reuma1', 'reuma2', 'reuma3', 'reuma4')
head(countsRA, 8)


  #Statestiek
#dds <- DESeqDataSetFromMatrix(countData = countsRA, colData = treatment_table, design = ~ treatment)
#dds <- DESeq(dds)
#resultaten <- results(dds)
head(resultaten)

resultatenRA <- as.data.frame(resultaten)
head(resultatenRA)

sum(resultatenRA$padj < 0.05 & resultatenRA$log2FoldChange > 1, na.rm = TRUE)
sum(resultatenRA$padj < 0.05 & resultatenRA$log2FoldChange < -1, na.rm = TRUE)

hoogste_fold_change <- resultatenRA[order(resultatenRA$log2FoldChange, decreasing = TRUE), ]
laagste_fold_change <- resultatenRA[order(resultatenRA$log2FoldChange, decreasing = FALSE), ]
laagste_p_waarde <- resultatenRA[order(resultatenRA$padj, decreasing = FALSE), ]

head(hoogste_fold_change)
head(laagste_fold_change)
head(laagste_p_waarde)


  #Vulcanoplot
#EnhancedVolcano(resultatenRA, lab = rownames(resultatenRA), x = 'log2FoldChange', y = 'padj')
#dev.copy(png, 'VolcanoplotWC.png', width = 8, height = 10, units = 'in', res = 500)
#dev.off()


  #Go-analyse
keep <- rowSums(countsRA) > 0

countsRA_filt <- countsRA[keep, ]
resultatenRA_filt <- resultatenRA[keep, ]

significante_genen <- as.integer(!is.na(resultatenRA_filt$padj) & !is.na(resultatenRA_filt$log2FoldChange) & resultatenRA_filt$padj < 0.05 & abs(resultatenRA_filt$log2FoldChange) > 1)

names(significante_genen) <- rownames(resultatenRA_filt)

pwf <- nullp(significante_genen, bias.data = rowSums(countsRA_filt), plot.fit = FALSE)

#GO.wall <- goseq(pwf, genome = "hg38", id = "geneSymbol")

GO.wall$padj_BH <- p.adjust(GO.wall$over_represented_pvalue, method = "BH")

significante_GO <- GO.wall[GO.wall$padj_BH < 0.01 & GO.wall$numDEInCat >= 15,]

significante_GO <- significante_GO[order(significante_GO$padj_BH),]

write.csv(significante_GO, "GO_analyse_resultaat.csv", row.names = FALSE)
GO_analyse_resultaat <- read.csv("GO_analyse_resultaat.csv")
head(GO_analyse_resultaat, 20)


  #Pathway-analyse
significante_genen <- rownames(resultatenRA[resultatenRA$padj < 0.05 & abs(resultatenRA$log2FoldChange) > 1,])

entrez <- mapIds(org.Hs.eg.db, keys = significante_genen, column = "ENTREZID", keytype = "SYMBOL", multiVals = "first")

entrez <- na.omit(entrez)
head(entrez)

kegg <- enrichKEGG(gene = entrez, organism = "hsa", pvalueCutoff = 0.05)
head(as.data.frame(kegg))

fc <- resultatenRA$log2FoldChange
names(fc) <- rownames(resultatenRA)

fc_entrez <- mapIds(org.Hs.eg.db, keys = names(fc), column = "ENTREZID", keytype = "SYMBOL", multiVals = "first")

gene.data <- fc
names(gene.data) <- fc_entrez

gene.data <- gene.data[!is.na(names(gene.data))]

pathview(gene.data = gene.data, pathway.id = "05323", species = "hsa", gene.idtype = "KEGG", limit = list(gene = 10)) # RA pathway
pathview(gene.data = gene.data, pathway.id = "04657", species = "hsa", gene.idtype = "KEGG", limit = list(gene = 10)) # IL-17
pathview(gene.data = gene.data, pathway.id = "04668", species = "hsa", gene.idtype = "KEGG", limit = list(gene = 10)) # TNF
pathview(gene.data = gene.data, pathway.id = "04064", species = "hsa", gene.idtype = "KEGG", limit = list(gene = 10)) # NF-kappa B
