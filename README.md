# dhd_affiliations
Affiliations in DHd Abstracts (2014-2022)

* original file supplied by Patrick Helling (affiliations extracted from metadata file of conference abstracts; on zenodo – supply link?)
* fixed wellformedness `<2002>` --> `<y2002>`
* run xslt to generate `distinct-values` of these strings
* looked for multi-part strings, e.g. "Universität Dortmund; Universität Wien" – separators mainly ";", but also " / "; tricky is "," (didn't split here systematically)
* generated `distinct-values` of the split affiliations; resulted in 978 (vs. originally 1322) strings

use `affiliations_distinct_distinct.xml` to continue

todo:
* maybe continue in jupyter notebook; should parse and look for country-strings; if contains "Germany/Deutschland", "Österreich/Austria", ... would provide country info for some;
* run NER and look for LOC (look for cities; maybe with controlled vocabulary); run OpenRefine reconciliation against wikidata on the cities (to get country, if not explicitly mentioned);
* maybe extract Universities and Academies "Universität + LOC" (maybe)
* or just refine manually; this would also work in OpenRefine with text filtering
