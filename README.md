# 🧬 Transcriptomische analyse van reumatoïde artritis: identificatie van differentieel tot expressie komende genen en betrokkenheid van de IL-17-signaleringsroute

## 📖 Inleiding

Reumatoïde artritis (RA) is een chronische auto-immuunziekte die ongeveer 0,5–1% van de wereldbevolking treft en wordt gekenmerkt door aanhoudende ontsteking van het synoviale membraan. Deze ontsteking kan leiden tot kraakbeen- en botafbraak, pijn en blijvende gewrichtsschade. Hoewel de exacte oorzaak van RA nog niet volledig bekend is, spelen ontregelde immuunreacties een centrale rol in de pathogenese ([Smolen 2016 Rheumatoid Arthritis](Referenties/Smolen_2016_Rheumatoid_Arthritis.pdf)).

Transcriptomics maakt het mogelijk om verschillen in genexpressie tussen gezonde en zieke weefsels te onderzoeken met behulp van RNA-sequencing en differentiële expressieanalyse en betrokken biologische processen te identificeren ([Love 2014 DESeq2](Referenties/Love_2014_DESeq2.pdf)). Eerdere studies hebben aangetoond dat ontstekingsroutes, waaronder IL-17-signalering, bijdragen aan de ontwikkeling en instandhouding van RA ([Lubberts 2015 IL17 RA](Referenties/Lubberts_2015_IL17_RA.pdf)). Het is echter niet altijd duidelijk welke genen en biologische processen binnen een specifieke dataset het sterkst bijdragen aan de ziekte.

Het doel van dit onderzoek was daarom het identificeren van differentieel geëxpresseerde genen tussen RA-patiënten en gezonde controles, gevolgd door Gene Ontology (GO)- en KEGG-verrijkingsanalyses om betrokken biologische processen en signaalroutes in kaart te brengen.

Hoofdvraag: Welke genexpressieveranderingen en biologische processen onderscheiden RA-patiënten van gezonde controles?

---

## ⚙️ Methode

RNA-sequencinggegevens van synoviumbiopten van vier gezonde controles en vier RA-patiënten werden geanalyseerd. De gebruikte invoerbestanden zijn opgenomen als [Count matrix](Data/count_matrix_RA.txt) en [Metadata](Resultaten/01_metadata.csv).

De analyse werd uitgevoerd volgens de workflow van figuur 1:
<img width="1101" height="500" alt="Transcriptomics stroomschema 7" src="https://github.com/user-attachments/assets/350a8356-77d2-48cd-8fd8-0104f304f239" />
Figuur 1: 


Het indexeren en het aligneren van de RNA-sequencingdata werd uitgevoerd met Rsubread (v2.26.0) hiervoor werd het humane referentiegenoom GRCh38.p14 (NCBI Assembly GCF_000001405.40) gebruikt. Differentiële genexpressie werd bepaald met DESeq2 (v1.52.0) ([Love 2014 DESeq2](Referenties/Love_2014_DESeq2.pdf)). Hiervan is een Vulcanoplot gemaakt met EnhancedVolcano (v1.30.0) en ggplot2 (v4.0.3). Genen werden als significant beschouwd bij een adjusted p-waarde < 0,01. De lijst met significante genen werd vervolgens gebruikt voor een GO-verrijkingsanalyse met goseq (v1.64.0), geneLenDataBase (v1.48.0) en AnnotationDbi (v1.74.0) ([Young 2010 GOseq](Referenties/Young_2010_GOseq.pdf)). Vervolgens zijn deze resultaten gefilterd met de Bonferroni-correctie. Voor de GO-analyse werden genen met een adjusted p-waarde < 0,01 en |log2FC| > 1 als differentieel geëxpresseerd beschouwd. Daarnaast werd een KEGG pathway-analyse uitgevoerd met clusterProfiler (v4.20.0) en org.Hs.eg.db (v3.23.1).  De IL-17-signaleringsroute (hsa04657) werd geselecteerd voor visualisatie met pathview (v1.52.0) ([Luo 2013 Pathview](Referenties/Luo_2013_Pathview.pdf)).

De volledige analyse is uitgevoerd met het script [RNAseq_analysis RA.R](Script/Transcriptomics_RA.R).

---

## 📈 Resultaten

**Differentiële genexpressie**

Om genen te identificeren die verschillen tussen RA-patiënten en gezonde controles werd een differentiële genexpressieanalyse uitgevoerd. In totaal werden 3083 significante genen geïdentificeerd (adjusted p < 0,01), waarvan 1297 opgereguleerd en 1786 neergereguleerd waren. Een overzicht van deze resultaten is weergegeven in [Significante genen](Resultaten/04_significante_genen.csv) en de hieronder weergegeven [vulcanoplot](Resultaten/03_VolcanoplotRA.png) in figuur 2.
<img width="4000" height="5000" alt="03_VolcanoplotRA" src="https://github.com/user-attachments/assets/8a5b7caf-ead7-4827-8425-f16191d2867a" />
Figuur 2: 

**GO-verrijkingsanalyse**

Om betrokken biologische processen te identificeren werd een GO-verrijkingsanalyse uitgevoerd. De sterkst verrijkte termen betroffen onder andere adaptive immune response, immune response, B cell mediated immunity en immunoglobulin complex. Deze resultaten wijzen op een belangrijke rol van het adaptieve immuunsysteem bij RA. Een overzicht van de verrijkte termen is opgenomen in [GO resultaten](Resultaten/06_GO_results.csv) en de hieronder weergegeven [verrijkte GO-termen](Resultaten/05_Verrijkte_GO-termen.png) in figuur 3.
<img width="20000" height="10000" alt="05_Verrijkte_GO-termen" src="https://github.com/user-attachments/assets/084ff8fd-5f50-489c-9ba9-302ef6e5c64b" />
Figuur 3: 


**KEGG pathway-analyse**

De KEGG-analyse identificeerde meerdere ontstekingsgerelateerde pathways. Binnen de geselecteerde IL-17-signaleringsroute waren meerdere chemokines opgereguleerd, waaronder CXCL1, CXCL2, CXCL5, CXCL8 en CCL7. De opregulatie van CXCL1, CXCL2, CXCL5, CXCL8 en CCL7 wijst erop dat vooral het chemokine-gemedieerde deel van de IL-17-signaleringsroute actief is binnen deze dataset. De [pathwayvisualisatie](Resultaten/08_IL17_pathway.png) is hieronder weergegeven in figuur 4.
<img width="1556" height="1065" alt="08_IL17_pathway" src="https://github.com/user-attachments/assets/fa355160-83e4-42d4-9d86-9f730715dfdf" />
Figuur 4:

---

## 🎓 Conclusie

Dit onderzoek laat zien dat RA gepaard gaat met omvangrijke veranderingen in genexpressie binnen synoviaal weefsel. De differentiële genexpressieanalyse identificeerde een groot aantal genen die verschillen tussen RA-patiënten en gezonde controles.

In totaal werden 13 significant verrijkte GO-termen geïdentificeerd, voornamelijk gerelateerd aan immuunrespons, adaptieve immuniteit en ontstekingsprocessen. Daarnaast werden binnen de IL-17-signaleringsroute meerdere opgereguleerde chemokines aangetroffen, waaronder CXCL1, CXCL2, CXCL5, CXCL8 en CCL7. Deze bevindingen ondersteunen de bekende betrokkenheid van IL-17-gemedieerde ontstekingsprocessen bij reumatoïde artritis zoals beschreven door [Lubberts (2015) IL17 RA](Referenties/Lubberts_2015_IL17_RA.pdf).

Daarmee beantwoorden de resultaten de hoofdvraag: RA-patiënten onderscheiden zich van gezonde controles door veranderingen in genexpressie die voornamelijk samenhangen met immuun- en ontstekingsprocessen, waarbij de IL-17-signaleringsroute een belangrijke rol lijkt te spelen.

---
