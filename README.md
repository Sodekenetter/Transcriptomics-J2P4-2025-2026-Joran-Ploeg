# 🧬 Transcriptomische analyse van reumatoïde artritis: identificatie van differentieel tot expressie komende genen en betrokkenheid van de IL-17-signaleringsroute

## 📖 Inleiding

Reumatoïde artritis (RA) is een chronische auto-immuunziekte die ongeveer 0,5–1% van de wereldbevolking treft en wordt gekenmerkt door aanhoudende ontsteking van het synoviale membraan. Deze ontsteking kan leiden tot kraakbeen- en botafbraak, pijn en blijvende gewrichtsschade. Hoewel de exacte oorzaak van RA nog niet volledig bekend is, spelen ontregelde immuunreacties een centrale rol in de pathogenese ([Smolen 2016 Rheumatoid Arthritis](Referenties/Smolen_2016_Rheumatoid_Arthritis.pdf)).

Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken met behulp van RNA-sequencing en differentiële expressieanalyse en betrokken biologische processen te identificeren ([Love 2014 DESeq2](Referenties/Love_2014_DESeq2.pdf)). Eerdere studies hebben aangetoond dat ontstekingsroutes, waaronder IL-17-signalering, bijdragen aan de ontwikkeling en instandhouding van RA ([Lubberts 2015 IL17 RA](Referenties/Lubberts_2015_IL17_RA.pdf)). Het is echter niet altijd duidelijk welke genen en biologische processen binnen een specifieke dataset het sterkst bijdragen aan de ziekte.

Het doel van dit onderzoek was daarom het identificeren van differentieel geëxpresseerde genen tussen RA-patiënten en gezonde controles, gevolgd door Gene Ontology (GO)- en KEGG-verrijkingsanalyses om betrokken biologische processen en signaalroutes in kaart te brengen.

Hoofdvraag: Welke genexpressieveranderingen en biologische processen onderscheiden RA-patiënten van gezonde controles?

---

## ⚙️ Methode

RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier RA-patiënten werden geanalyseerd. De gebruikte invoerbestanden zijn opgenomen als [Count matrix](Data/count_matrix.txt) en [Metadata](Data/metadata.csv).

De analyse werd uitgevoerd volgens de volgende workflow:

Count matrix + metadata -> Differentiële genexpressieanalyse (DESeq2) -> Selectie significante genen -> GO-verrijkingsanalyse (goseq) -> KEGG pathway-analyse (clusterProfiler) -> Visualisatie IL-17 pathway (pathview)

Differentiële genexpressie werd bepaald met DESeq2 ([Love 2014 DESeq2](Referenties/Love_2014_DESeq2.pdf)). Genen werden als significant beschouwd bij een adjusted p-waarde < 0,05. De resultaten zijn opgeslagen in [DESeq2 resultaten](Resultaten/02_DESeq2_results.csv) en [Significante genen](Resultaten/04_significante_genen.csv).

De lijst met significante genen werd vervolgens gebruikt voor een GO-verrijkingsanalyse met goseq ([Young 2010 GOseq](Referenties/Young_2010_GOseq.pdf)). De resultaten zijn beschikbaar in [GO resultaten](Resultaten/06_GO_results.csv).

Daarnaast werd een KEGG pathway-analyse uitgevoerd met clusterProfiler. Verrijkte pathways werden opgeslagen in [KEGG resultaten](Resultaten/07_KEGG_results.csv). De IL-17-signaleringsroute (hsa04657) werd geselecteerd voor visualisatie met pathview ([Luo 2013 Pathview](Referenties/Luo_2013_Pathview.pdf)) en opgeslagen als [IL17 pathway](Resultaten/08_IL17_pathway.png).

De analyse werd uitgevoerd in R met behulp van Rsubread (v2.26.0), Rsamtools (v2.28.0), DESeq2 (v1.52.0), goseq (v1.64.0), geneLenDataBase (v1.48.0), org.Hs.eg.db (v3.23.1), AnnotationDbi (v1.74.0), clusterProfiler (v4.20.0), KEGGREST (v1.52.0), pathview (v1.52.0), EnhancedVolcano (v1.30.0) en ggplot2 (v4.0.3). Het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF_000001405.40) werd gebruikt voor genannotatie.

---

## 📈 Resultaten

**Differentiële genexpressie**

Om genen te identificeren die verschillen tussen RA-patiënten en gezonde controles werd een differentiële genexpressieanalyse uitgevoerd. In totaal werden 4572 significante genen geïdentificeerd (adjusted p < 0,05), waarvan 2085 opgereguleerd en 2487 neergereguleerd waren. Een overzicht van deze resultaten is weergegeven in [Significante genen](Resultaten/04_significante_genen.csv) en de [VulcanoplotRA](Figuren/VolcanoplotRA.png).

**GO-verrijkingsanalyse**

Om betrokken biologische processen te identificeren werd een GO-verrijkingsanalyse uitgevoerd. De sterkst verrijkte termen betroffen onder andere adaptive immune response, immune response, B cell mediated immunity en immunoglobulin complex. Deze resultaten wijzen op een belangrijke rol van het adaptieve immuunsysteem bij RA. Een overzicht van de verrijkte termen is opgenomen in [GO resultaten](Resultaten/06_GO_results.csv) en [Top 10 verrijkte GO-termen](Resultaten/05_Top_10_verrijkte_GO-termen.png).

**KEGG pathway-analyse**

De KEGG-analyse identificeerde meerdere ontstekingsgerelateerde pathways. Binnen de geselecteerde IL-17-signaleringsroute waren de chemokines CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 opgereguleerd. Deze genen spelen een rol bij de recrutering van immuuncellen naar ontstoken weefsels. De pathwayvisualisatie is weergegeven in [IL17 pathway](Resultaten/08_IL17_pathway.png).

---

## 🎓 Conclusie

Dit onderzoek laat zien dat RA gepaard gaat met omvangrijke veranderingen in genexpressie binnen synoviaal weefsel. De differentiële genexpressieanalyse identificeerde een groot aantal genen die verschillen tussen RA-patiënten en gezonde controles.

De GO-verrijkingsanalyse toont aan dat vooral processen gerelateerd aan immuunactivatie en adaptieve afweer zijn verrijkt. Daarnaast identificeerde de KEGG-analyse meerdere ontstekingsgerelateerde pathways, waaronder de IL-17-signaleringsroute. De opregulatie van CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 suggereert dat IL-17-gemedieerde recrutering van immuuncellen kan bijdragen aan het in stand houden van chronische ontsteking.

Daarmee beantwoorden de resultaten de hoofdvraag: RA-patiënten onderscheiden zich van gezonde controles door veranderingen in genexpressie die voornamelijk samenhangen met immuun- en ontstekingsprocessen, waarbij de IL-17-signaleringsroute een belangrijke rol lijkt te spelen.

---
