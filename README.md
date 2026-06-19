# 🧬 Transcriptomische analyse van reumatoïde artritis: identificatie van differentieel tot expressie komende genen en betrokkenheid van de IL-17-signaleringsroute

## 📖 Inleiding

Reumatoïde artritis (RA) is een chronische auto-immuunziekte die wordt gekenmerkt door ontsteking van het synoviale membraan van gewrichten. Deze ontsteking kan leiden tot kraakbeen- en botafbraak en uiteindelijk tot blijvende gewrichtsschade. Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken en betrokken biologische processen en signaalroutes te identificeren.

In deze casus werden RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier patiënten met vastgestelde RA geanalyseerd. De gebruikte invoerbestanden zijn opgenomen in de map Data ([Count matrix](Data/count_matrix_RA.txt), [Metadata](Data/metadata.csv), controle groep en RA groep). Het doel van de analyse was het identificeren van differentieel tot expressie komende genen, gevolgd door GO- en KEGG-verrijkingsanalyses. Speciale aandacht werd besteed aan de IL-17-signaleringsroute vanwege de bekende rol van IL-17 bij ontstekingsprocessen in RA.

Achtergrondinformatie over RA en IL-17 is opgenomen in:
- [Smolen 2016 Rheumatoid Arthritis](referenties/Smolen_2016_Rheumatoid_Arthritis.pdf)
- [Lubberts 2015 IL17 RA.](referenties/Lubberts_2015_IL17_RA.pdf)

---

## ⚙️ Methode

De analyse werd uitgevoerd in R met behulp van Rsubread (v2.26.0), Rsamtools (v2.28.0), DESeq2 (v1.52.0), goseq (v1.64.0), geneLenDataBase (v1.48.0), org.Hs.eg.db (v3.23.1), AnnotationDbi (v1.74.0), clusterProfiler (v4.20.0), KEGGREST (v1.52.0), pathview (v1.52.0), EnhancedVolcano (v1.30.0) en ggplot2 (v4.0.3). Het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF_000001405.40) werd gebruikt voor genannotatie.

Differentiële genexpressieanalyse werd uitgevoerd met DESeq2. De resultaten zijn opgeslagen in [DESeq2 resultaten](resultaten/02_DESeq2_results.csv). Significante genen zijn opgenomen in [Significante genen](resultaten/04_significante_genen.csv). Methodologische informatie over DESeq2 is beschikbaar in [Love 2014 DESeq2](referenties/Love_2014_DESeq2.pdf).

GO-verrijkingsanalyse werd uitgevoerd met goseq. De resultaten zijn opgeslagen in [GO results](resultaten/07_GO_results.csv), terwijl de top 10 verrijkte termen zijn opgenomen in [Top 10 GO](resultaten/05_top10_GO.csv). De bijbehorende methodologische referentie is opgenomen in [Young 2010 GOseq](referenties/Young_2010_GOseq.pdf).

KEGG pathway-analyse werd uitgevoerd met clusterProfiler, KEGGREST en pathview. De resultaten zijn opgeslagen in [KEGG resultaten](resultaten/08_KEGG_results.csv). De visualisatie van de IL-17-signaleringsroute is opgeslagen in [IL17 pathway](resultaten/09_IL17_pathway.png) en [IL-17 pathway](figuren/IL17). Achtergrondinformatie over pathwayvisualisatie is opgenomen in [Luo 2013 Pathview](referenties/Luo_2013_Pathview.pdf).

---

## 📈 Resultaten

De differentiële genexpressieanalyse ([02_DESeq2_results.csv](resultaten/02_DESeq2_results.csv)) identificeerde een groot aantal genen die significant verschillend tot expressie kwamen tussen RA-patiënten en controles. De [03_Vulcanoplot.PNG](resultaten/03_Vulcanoplot.PNG) toont zowel opgereguleerde als neer-gereguleerde genen.

De GO-analyse ([07_GO_results.csv](resultaten/07_GO_results.csv)) liet een sterke verrijking zien van immuungerelateerde processen. De meest significante termen betroffen onder andere *adaptive immune response*, *immune response*, *B cell mediated immunity* en *immunoglobulin complex*. Een overzicht van de top 10 verrijkte termen is weergegeven in [05_top10_GO.csv](resultaten/05_top10_GO.csv) en [Top 10 verrijkte GO-termen.PNG](figuren/Top 10 verrijkte GO-termen.PNG).

De KEGG-analyse ([08_KEGG_results.csv](resultaten/08_KEGG_results.csv)) identificeerde meerdere ontstekingsgerelateerde pathways. Voor verdere interpretatie werd ingezoomd op de [09_IL17_pathway.png](resultaten/09_IL17_pathway.png). Binnen deze pathway waren de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 opgereguleerd. Deze genen zijn betrokken bij de recrutering van immuuncellen naar ontstoken weefsels. De biologische relevantie van IL-17 voor RA wordt verder beschreven in [Lubberts_2015_IL17_RA.pdf](referenties/Lubberts_2015_IL17_RA.pdf).

---

## 🎓 Conclusie

Deze transcriptomicsanalyse laat zien dat het synovium van patiënten met reumatoïde artritis wordt gekenmerkt door een sterke activatie van immuun- en ontstekingsgerelateerde processen. Zowel de [07_GO_results.csv](resultaten/07_GO_results.csv) als de [08_KEGG_results.csv](resultaten/08_KEGG_results.csv) wijzen op een belangrijke rol van het adaptieve immuunsysteem bij de ziekte.

Binnen de [09_IL17_pathway.png](resultaten/09_IL17_pathway.png) en de bijbehorende figuur [IL-17 pathway](figuren/IL17 pathway.png) werd een duidelijke opregulatie waargenomen van de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7. Deze moleculen spelen een belangrijke rol bij de recrutering van immuuncellen naar ontstoken weefsels en kunnen daardoor bijdragen aan het in stand houden van chronische ontsteking. De rol van IL-17 en de bijbehorende ontstekingsprocessen bij reumatoïde artritis wordt verder beschreven in [Lubberts_2015_IL17_RA.pdf](referenties/Lubberts_2015_IL17_RA.pdf).

De resultaten van deze analyse ondersteunen de huidige kennis over de betrokkenheid van de IL-17-signaleringsroute bij reumatoïde artritis. Daarnaast bevestigen de verrijkte immuungerelateerde GO-termen ([05_top10_GO.csv](resultaten/05_top10_GO.csv) en [Top 10 verrijkte GO-termen.PNG](figuren/Top 10 verrijkte GO-termen.PNG)) dat ontregeling van het immuunsysteem een centraal kenmerk is van de ziekte.

Algemene achtergrondinformatie over de pathogenese van reumatoïde artritis is opgenomen in [Smolen_2016_Rheumatoid_Arthritis.pdf](referenties/Smolen_2016_Rheumatoid_Arthritis.pdf).
