# dhd_affiliations
Affiliations in DHd Abstracts (2014-2022)

* original file supplied by Patrick Helling (affiliations extracted from metadata file of conference abstracts; on zenodo – supply link?)
* fixed wellformedness `<2002>` --> `<y2002>`
* ran xslt to generate `distinct-values` of these strings
* looked for multi-part strings, e.g. "Universität Dortmund; Universität Wien" – separators mainly ";", but also " / "; tricky is "," (didn't split here systematically)
* generated `distinct-values` of the split affiliations; resulted in 978 (vs. originally 1322) strings
* in jupyter notebook `parse_enrich_csv.ipynb`: detected country by string-matching, tested NER with nltk (resulted in list of `GPE`, which was cleaned to contain only cities) and spacy (detects mainly `ORG`); generated `affiliations_openrefine.csv` to be cleaned manually in Open Refine
* in Open Refine: added columns `country` + `city`;  partly added normalized values of parent organizations

todo:
* just refine manually; this would also work in OpenRefine with text filtering
