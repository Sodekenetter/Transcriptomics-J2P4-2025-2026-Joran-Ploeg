# Transcriptomics-J2P4-2025-2026-Joran-Ploeg



### **Inleiding**

Reumatoïde artritis (RA) is een chronische auto-immuunziekte die wordt gekenmerkt door ontsteking van het synoviale membraan van gewrichten. Deze ontsteking leidt uiteindelijk tot kraakbeen- en botafbraak, wat kan resulteren in blijvende gewrichtsschade. Hoewel de exacte oorzaak van RA nog niet volledig bekend is, spelen genetische factoren, omgevingsfactoren en ontregeling van het immuunsysteem een belangrijke rol.



Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken. Hierdoor kunnen biologische processen en signaalroutes worden geïdentificeerd die bijdragen aan ziekteontwikkeling. In deze casus werden RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier patiënten met vastgestelde RA geanalyseerd.



Het doel van dit onderzoek was het identificeren van differentieel tot expressie komende genen tussen RA-patiënten en controles. Daarnaast werden Gene Ontology (GO)- en KEGG-pathway-analyses uitgevoerd om biologische processen en signaalroutes te identificeren die betrokken zijn bij de ziekte. Speciale aandacht werd besteed aan de IL-17 signaling pathway, omdat deze pathway een centrale rol speelt bij ontstekingsprocessen en de recrutering van immuuncellen naar ontstoken gewrichten.



### **Methode**

RNA-sequencingdata van vier controlepersonen en vier patiënten met reumatoïde artritis werden geanalyseerd in R. De ruwe sequencingreads werden verwerkt met Rsamtools (v2.28.0) en gemapt tegen het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF\_000001405.40) met behulp van Rsubread (v2.26.0). Vervolgens werd een countmatrix gegenereerd waarin het aantal reads per gen voor iedere sample werd vastgelegd.



Differentiële genexpressie werd bepaald met DESeq2 (v1.52.0). Genen werden als significant beschouwd wanneer de gecorrigeerde p-waarde (padj) kleiner was dan 0,05 en de absolute log2 fold change groter was dan 1. De resultaten werden gevisualiseerd met EnhancedVolcano (v1.30.0) en aanvullende figuren werden gemaakt met ggplot2 (v4.0.3).



Om inzicht te verkrijgen in de biologische betekenis van de differentieel tot expressie komende genen werd een Gene Ontology-analyse uitgevoerd met goseq (v1.64.0). Hierbij werd gecorrigeerd voor genlengtebias met behulp van geneLenDataBase (v1.48.0). Genannotaties werden verkregen via org.Hs.eg.db (v3.23.1) en AnnotationDbi (v1.74.0). Significant verrijkte GO-termen werden geselecteerd met een Benjamini-Hochberg gecorrigeerde p-waarde kleiner dan 0,05.



Daarnaast werd een KEGG pathway-analyse uitgevoerd met clusterProfiler (v4.20.0) en KEGGREST (v1.52.0). De gevonden pathways werden gevisualiseerd met pathview (v1.52.0), waarbij genexpressieveranderingen direct op de pathwaykaart werden weergegeven. De IL-17 signaling pathway werd geselecteerd voor verdere interpretatie vanwege de bekende betrokkenheid bij ontstekingsreacties en reumatoïde artritis.



### **Resultaten**

De differentiële genexpressieanalyse identificeerde een groot aantal genen die significant verschillend tot expressie kwamen tussen RA-patiënten en controles. De vulcanoplot liet zien dat zowel opgereguleerde als neer-gereguleerde genen aanwezig waren.



De GO-analyse toonde een sterke verrijking van immuun-gerelateerde processen. De meest significante termen waren onder andere adaptive immune response, immune response, B cell mediated immunity en immunoglobulin complex. Deze resultaten wijzen op een verhoogde activiteit van het adaptieve immuunsysteem in RA-synovium.



De KEGG-analyse identificeerde meerdere ontstekingsgerelateerde pathways, waaronder de IL-17 signaling pathway. Binnen deze pathway waren verschillende chemokines verhoogd tot expressie gebracht, waaronder CXCL1, CXCL2, CXCL5, CXCL8, CXCL10 en CCL7. Deze genen vormen een belangrijk onderdeel van de ontstekingscascade doordat zij immuuncellen aantrekken naar ontstoken weefsels.



De Pathview-visualisatie liet zien dat deze chemokines zich bevinden aan het einde van de IL-17-signaleringsroute, downstream van transcriptiefactoren zoals AP-1 en NF-κB. De verhoogde expressie van deze genen suggereert dat IL-17-gemedieerde ontstekingssignalen actief zijn in het synovium van patiënten met reumatoïde artritis.



### **Conclusie**

Deze transcriptomicsanalyse laat zien dat het synovium van patiënten met reumatoïde artritis wordt gekenmerkt door een sterke activatie van immuun- en ontstekingsgerelateerde processen. Zowel de GO-analyse als de KEGG pathway analyse wijzen op een centrale rol van het adaptieve immuunsysteem bij de ziekte.



Binnen de IL-17 signaling pathway werd een duidelijke opregulatie gevonden van meerdere chemokines, waaronder CXCL1, CXCL2, CXCL5, CXCL8, CXCL10 en CCL7. Deze moleculen spelen een belangrijke rol bij het aantrekken van neutrofielen, monocyten en andere immuuncellen naar ontstoken gewrichten. Hierdoor kunnen zij bijdragen aan het in stand houden van chronische ontsteking en gewrichtsschade.



De resultaten sluiten aan bij de huidige kennis over de rol van IL-17 in reumatoïde artritis en ondersteunen het idee dat deze pathway een belangrijk therapeutisch aangrijpingspunt vormt. Toekomstig onderzoek zou kunnen onderzoeken welke van de geïdentificeerde chemokines het sterkst bijdragen aan ziekteprogressie en of deze gebruikt kunnen worden als biomarker voor ziekteactiviteit of behandelingsrespons.

