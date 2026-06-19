# 🧬 Transcriptomische analyse van reumatoïde artritis: identificatie van differentieel tot expressie komende genen en betrokkenheid van de IL-17-signaleringsroute



### 📖 Inleiding



Reumatoïde artritis (RA) is een chronische auto-immuunziekte die wordt gekenmerkt door ontsteking van het synoviale membraan van gewrichten. Deze ontsteking kan leiden tot kraakbeen- en botafbraak en uiteindelijk tot blijvende gewrichtsschade. Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken en betrokken biologische processen en signaalroutes te identificeren.



In deze casus werden RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier patiënten met vastgestelde RA geanalyseerd. De gebruikte invoerbestanden zijn opgenomen in de map Data (Countmatrix en Metadata). Het doel van de analyse was het identificeren van differentieel tot expressie komende genen, gevolgd door GO- en KEGG-verrijkingsanalyses. Speciale aandacht werd besteed aan de IL-17-signaleringsroute vanwege de bekende rol van IL-17 bij ontstekingsprocessen in RA. Achtergrondinformatie over RA en IL-17 is opgenomen in Smolen et al. (2016) en Lubberts (2015).



### ⚙️ Methode



De analyse werd uitgevoerd in R met behulp van Rsubread (v2.26.0), Rsamtools (v2.28.0), DESeq2 (v1.52.0), goseq (v1.64.0), geneLenDataBase (v1.48.0), org.Hs.eg.db (v3.23.1), AnnotationDbi (v1.74.0), clusterProfiler (v4.20.0), KEGGREST (v1.52.0), pathview (v1.52.0), EnhancedVolcano (v1.30.0) en ggplot2 (v4.0.3). Het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF\_000001405.40) werd gebruikt voor genannotatie.



Differentiële genexpressieanalyse werd uitgevoerd met DESeq2. De resultaten zijn opgeslagen in DESeq2-resultaten. Significante genen zijn opgenomen in Significante genen. Methodologische informatie over DESeq2 is beschikbaar in Love et al. (2014) - DESeq2.



GO-verrijkingsanalyse werd uitgevoerd met goseq. De resultaten zijn opgeslagen in GO-verrijkingsanalyse, terwijl de top 10 verrijkte termen zijn opgenomen in Top 10 GO-termen. De bijbehorende methodologische referentie is opgenomen in Young et al. (2010) - GOseq.



KEGG pathway-analyse werd uitgevoerd met clusterProfiler, KEGGREST en pathview. De resultaten zijn opgeslagen in KEGG-resultaten. De visualisatie van de IL-17-signaleringsroute is opgeslagen in IL-17-pathway en \[IL-17 pathway figuur](figuren/IL-17 pathway.PNG). Achtergrondinformatie over pathwayvisualisatie is opgenomen in Luo et al. (2013) - Pathview.



### 📈 Resultaten



De differentiële genexpressieanalyse (DESeq2-resultaten) identificeerde een groot aantal genen die significant verschillend tot expressie kwamen tussen RA-patiënten en controles. De Vulcanoplot toont zowel opgereguleerde als neer-gereguleerde genen.



De GO-analyse (GO-verrijkingsanalyse) liet een sterke verrijking zien van immuungerelateerde processen. De meest significante termen betroffen onder andere adaptive immune response, immune response, B cell mediated immunity en immunoglobulin complex. Een overzicht van de top 10 verrijkte termen is weergegeven in Top 10 GO-termen en \[Top 10 verrijkte GO-termen](figuren/Top 10 verrijkte GO-termen.PNG).



De KEGG-analyse (KEGG-resultaten) identificeerde meerdere ontstekingsgerelateerde pathways. Voor verdere interpretatie werd ingezoomd op de IL-17-signaleringsroute. Binnen deze pathway waren de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 opgereguleerd. Deze genen zijn betrokken bij de recrutering van immuuncellen naar ontstoken weefsels. De biologische relevantie van IL-17 voor RA wordt verder beschreven in Lubberts (2015).



### 🎓 Conclusie



Deze transcriptomicsanalyse laat zien dat het synovium van patiënten met reumatoïde artritis wordt gekenmerkt door een sterke activatie van immuun- en ontstekingsgerelateerde processen. Zowel de GO-verrijkingsanalyse als de KEGG pathway-analyse wijzen op een belangrijke rol van het adaptieve immuunsysteem bij de ziekte.



Binnen de IL-17-signaleringsroute (\[figuur](figuren/IL-17 pathway.PNG)) werd een duidelijke opregulatie waargenomen van de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7. Deze moleculen spelen een belangrijke rol bij de recrutering van immuuncellen naar ontstoken weefsels en kunnen daardoor bijdragen aan het in stand houden van chronische ontsteking. De rol van IL-17 en de bijbehorende ontstekingsprocessen bij reumatoïde artritis wordt verder beschreven in Lubberts (2015).



De resultaten van deze analyse ondersteunen de huidige kennis over de betrokkenheid van de IL-17-signaleringsroute bij reumatoïde artritis. Daarnaast bevestigen de verrijkte immuungerelateerde GO-termen (Top 10 GO-termen; \[figuur](figuren/Top 10 verrijkte GO-termen.PNG)) dat ontregeling van het immuunsysteem een centraal kenmerk is van de ziekte. Algemene achtergrondinformatie over de pathogenese van reumatoïde artritis is opgenomen in Smolen et al. (2016).

