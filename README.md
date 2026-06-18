# 🧬 Transcriptomics-J2P4-2025-2026-Joran-Ploeg

# 📖 Inleiding

# 

# Reumatoïde artritis (RA) is een chronische auto-immuunziekte die wordt gekenmerkt door ontsteking van het synoviale membraan van gewrichten. Deze ontsteking kan leiden tot kraakbeen- en botafbraak en uiteindelijk tot blijvende gewrichtsschade. Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken en betrokken biologische processen en signaalroutes te identificeren.

# 

# In deze casus werden RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier patiënten met vastgestelde RA geanalyseerd. De gebruikte invoerbestanden zijn opgenomen in de map Data (count\_matrix\_RA.txt en metadata.csv). Het doel van de analyse was het identificeren van differentieel tot expressie komende genen, gevolgd door GO- en KEGG-verrijkingsanalyses.

# 

# 🎯 Speciale aandacht werd besteed aan de IL-17-signaleringsroute vanwege de bekende rol van IL-17 bij ontstekingsprocessen in RA.

# 

# 📚 Achtergrondinformatie over RA en IL-17 is opgenomen in:

# 

# referenties/Smolen\_2016\_Rheumatoid\_Arthritis.pdf

# referenties/Lubberts\_2015\_IL17\_RA.pdf

# ⚙️ Methode

# 

# De analyse werd uitgevoerd in R met behulp van:

# 

# Rsubread (v2.26.0)

# Rsamtools (v2.28.0)

# DESeq2 (v1.52.0)

# goseq (v1.64.0)

# geneLenDataBase (v1.48.0)

# org.Hs.eg.db (v3.23.1)

# AnnotationDbi (v1.74.0)

# clusterProfiler (v4.20.0)

# KEGGREST (v1.52.0)

# pathview (v1.52.0)

# EnhancedVolcano (v1.30.0)

# ggplot2 (v4.0.3)

# 

# 🧬 Het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF\_000001405.40) werd gebruikt voor genannotatie.

# 

# 📊 Differentiële genexpressie

# 

# Uitgevoerd met DESeq2.

# 

# Bestanden:

# 

# resultaten/02\_DESeq2\_results.csv

# resultaten/04\_significante\_genen.csv

# 

# 📚 Methodologische referentie:

# 

# referenties/Love\_2014\_DESeq2.pdf

# 🧩 GO-verrijkingsanalyse

# 

# Uitgevoerd met goseq.

# 

# Bestanden:

# 

# resultaten/07\_GO\_results.csv

# resultaten/05\_top10\_GO.csv

# 

# 📚 Methodologische referentie:

# 

# referenties/Young\_2010\_GOseq.pdf

# 🛤️ KEGG pathway-analyse

# 

# Uitgevoerd met clusterProfiler, KEGGREST en pathview.

# 

# Bestanden:

# 

# resultaten/08\_KEGG\_results.csv

# resultaten/09\_IL17\_pathway.png

# figuren/IL-17 pathway.PNG

# 

# 📚 Achtergrondinformatie:

# 

# referenties/Luo\_2013\_Pathview.pdf

# 📈 Resultaten

# 🧬 Differentiële genexpressie

# 

# De differentiële genexpressieanalyse (resultaten/02\_DESeq2\_results.csv) identificeerde een groot aantal genen die significant verschillend tot expressie kwamen tussen RA-patiënten en controles.

# 

# 📉 De vulcanoplot (resultaten/03\_Vulcanoplot.PNG) toont zowel opgereguleerde als neer-gereguleerde genen.

# 

# 🧩 GO-verrijkingsanalyse

# 

# De GO-analyse (resultaten/07\_GO\_results.csv) liet een sterke verrijking zien van immuungerelateerde processen.

# 

# Belangrijke verrijkte termen:

# 

# adaptive immune response

# immune response

# B cell mediated immunity

# immunoglobulin complex

# 

# 📊 Overzicht:

# 

# resultaten/05\_top10\_GO.csv

# figuren/Top 10 verrijkte GO-termen.PNG

# 🔥 IL-17 pathway

# 

# De KEGG-analyse (resultaten/08\_KEGG\_results.csv) identificeerde meerdere ontstekingsgerelateerde pathways.

# 

# Voor verdere interpretatie werd ingezoomd op de IL-17-signaleringsroute (resultaten/09\_IL17\_pathway.png).

# 

# ⬆️ Opreguleerde genen binnen deze pathway:

# 

# CXCL1

# CXCL2

# CXCL5

# CXCL8

# CCL7

# 

# Deze genen zijn betrokken bij de recrutering van immuuncellen naar ontstoken weefsels.

# 

# 📚 Verdere biologische achtergrond:

# 

# referenties/Lubberts\_2015\_IL17\_RA.pdf

# 🎓 Conclusie

# 

# Deze transcriptomicsanalyse laat zien dat het synovium van patiënten met reumatoïde artritis wordt gekenmerkt door een sterke activatie van immuun- en ontstekingsgerelateerde processen.

# 

# ✅ De GO-analyse (resultaten/07\_GO\_results.csv) en de KEGG pathway-analyse (resultaten/08\_KEGG\_results.csv) wijzen beide op een belangrijke rol van het adaptieve immuunsysteem bij de ziekte.

# 

# 🔥 Binnen de IL-17-signaleringsroute (resultaten/09\_IL17\_pathway.png; figuren/IL-17 pathway.PNG) werd een duidelijke opregulatie waargenomen van:

# 

# CXCL1

# CXCL2

# CXCL5

# CXCL8

# CCL7

# 

# Deze chemokines spelen een belangrijke rol bij de recrutering van immuuncellen naar ontstoken weefsels en kunnen bijdragen aan het in stand houden van chronische ontsteking.

# 

# 📚 De rol van IL-17 bij reumatoïde artritis wordt verder beschreven in:

# 

# referenties/Lubberts\_2015\_IL17\_RA.pdf

# 

# 🧠 De resultaten ondersteunen de huidige kennis over de betrokkenheid van de IL-17-signaleringsroute bij reumatoïde artritis.

# 

# 📊 Daarnaast bevestigen de verrijkte immuungerelateerde GO-termen (resultaten/05\_top10\_GO.csv; figuren/Top 10 verrijkte GO-termen.PNG) dat ontregeling van het immuunsysteem een centraal kenmerk is van de ziekte.

# 

# 📚 Algemene achtergrondinformatie over de pathogenese van reumatoïde artritis is opgenomen in:

# 

# referenties/Smolen\_2016\_Rheumatoid\_Arthritis.

