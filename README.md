# 🧬 Transcriptomics-J2P4-2025-2026-Joran-Ploeg



### 📖 Inleiding

Reumatoïde artritis (RA) is een chronische auto-immuunziekte die wordt gekenmerkt door ontsteking van het synoviale membraan van gewrichten. Deze ontsteking kan leiden tot kraakbeen- en botafbraak en uiteindelijk tot blijvende gewrichtsschade. Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken en betrokken biologische processen en signaalroutes te identificeren.



In deze casus werden RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier patiënten met vastgestelde RA geanalyseerd. De gebruikte invoerbestanden komen uit de map [Data](Data/), dit zijn de count matrix, de metadata en dataset. Het doel van de analyse was het identificeren van differentieel tot expressie komende genen, gevolgd door GO- en KEGG-verrijkingsanalyses. Speciale aandacht werd besteed aan de IL-17-signaleringsroute vanwege de bekende rol van IL-17 bij ontstekingsprocessen in RA. Achtergrondinformatie over RA en IL-17 is opgenomen in referenties/Smolen\_2016\_Rheumatoid\_Arthritis.pdf en referenties/Lubberts\_2015\_IL17\_RA.pdf.



### ⚙️ Methode

De analyse werd uitgevoerd in R met behulp van Rsubread (v2.26.0), Rsamtools (v2.28.0), DESeq2 (v1.52.0), goseq (v1.64.0), geneLenDataBase (v1.48.0), org.Hs.eg.db (v3.23.1), AnnotationDbi (v1.74.0), clusterProfiler (v4.20.0), KEGGREST (v1.52.0), pathview (v1.52.0), EnhancedVolcano (v1.30.0) en ggplot2 (v4.0.3). Het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF\_000001405.40) werd gebruikt voor genannotatie.



Differentiële genexpressieanalyse werd uitgevoerd met DESeq2. De resultaten zijn opgeslagen in resultaten/02\_DESeq2\_results.csv. Significante genen zijn opgenomen in resultaten/04\_significante\_genen.csv. Methodologische informatie over DESeq2 is beschikbaar in referenties/Love\_2014\_DESeq2.pdf.



GO-verrijkingsanalyse werd uitgevoerd met goseq. De resultaten zijn opgeslagen in resultaten/07\_GO\_results.csv, terwijl de top 10 verrijkte termen zijn opgenomen in resultaten/05\_top10\_GO.csv. De bijbehorende methodologische referentie is opgenomen in referenties/Young\_2010\_GOseq.pdf.



KEGG pathway-analyse werd uitgevoerd met clusterProfiler, KEGGREST en pathview. De resultaten zijn opgeslagen in resultaten/08\_KEGG\_results.csv. De visualisatie van de IL-17-signaleringsroute is opgeslagen in resultaten/09\_IL17\_pathway.png en figuren/IL-17 pathway.PNG. Achtergrondinformatie over pathwayvisualisatie is opgenomen in referenties/Luo\_2013\_Pathview.pdf.



### 📈 Resultaten

De differentiële genexpressieanalyse (resultaten/02\_DESeq2\_results.csv) identificeerde een groot aantal genen die significant verschillend tot expressie kwamen tussen RA-patiënten en controles. De vulcanoplot (resultaten/03\_Vulcanoplot.PNG) toont zowel opgereguleerde als neer-gereguleerde genen.



De GO-analyse (resultaten/07\_GO\_results.csv) liet een sterke verrijking zien van immuungerelateerde processen. De meest significante termen betroffen onder andere adaptive immune response, immune response, B cell mediated immunity en immunoglobulin complex. Een overzicht van de top 10 verrijkte termen is weergegeven in resultaten/05\_top10\_GO.csv en figuren/Top 10 verrijkte GO-termen.PNG.



De KEGG-analyse (resultaten/08\_KEGG\_results.csv) identificeerde meerdere ontstekingsgerelateerde pathways. Voor verdere interpretatie werd ingezoomd op de IL-17-signaleringsroute (resultaten/09\_IL17\_pathway.png). Binnen deze pathway waren de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 opgereguleerd. Deze genen zijn betrokken bij de recrutering van immuuncellen naar ontstoken weefsels. De biologische relevantie van IL-17 voor RA wordt verder beschreven in referenties/Lubberts\_2015\_IL17\_RA.pdf.



### 🎓 Conclusie



Deze transcriptomicsanalyse laat zien dat het synovium van patiënten met reumatoïde artritis wordt gekenmerkt door een sterke activatie van immuun- en ontstekingsgerelateerde processen. Zowel de GO-analyse (resultaten/07\_GO\_results.csv) als de KEGG pathway-analyse (resultaten/08\_KEGG\_results.csv) wijzen op een belangrijke rol van het adaptieve immuunsysteem bij de ziekte.



Binnen de IL-17-signaleringsroute (resultaten/09\_IL17\_pathway.png; figuren/IL-17 pathway.PNG) werd een duidelijke opregulatie waargenomen van de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7. Deze moleculen spelen een belangrijke rol bij de recrutering van immuuncellen naar ontstoken weefsels en kunnen daardoor bijdragen aan het in stand houden van chronische ontsteking. De rol van IL-17 en de bijbehorende ontstekingsprocessen bij reumatoïde artritis wordt verder beschreven in referenties/Lubberts\_2015\_IL17\_RA.pdf.



De resultaten van deze analyse ondersteunen de huidige kennis over de betrokkenheid van de IL-17-signaleringsroute bij reumatoïde artritis. Daarnaast bevestigen de verrijkte immuungerelateerde GO-termen (resultaten/05\_top10\_GO.csv; figuren/Top 10 verrijkte GO-termen.PNG) dat ontregeling van het immuunsysteem een centraal kenmerk is van de ziekte. Algemene achtergrondinformatie over de pathogenese van reumatoïde artritis is opgenomen in referenties/Smolen\_2016\_Rheumatoid\_Arthritis.pdf.



