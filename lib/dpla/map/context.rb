module DPLA::MAP
  CONTEXT = JSON.parse('
  {
    "@context": {
      "aat": "http://vocab.getty.edu/aat/",
      "dc": "http://purl.org/dc/terms/",
      "dc11": "http://purl.org/dc/elements/1.1/",
      "dcmitype": "http://purl.org/dc/dcmitype/",
      "dpla": "http://dp.la/about/map/",
      "edm": "http://www.europeana.eu/schemas/edm/",
      "iso_639_3": "http://lexvo.org/id/iso639-3/",
      "ore": "http://www.openarchives.org/ore/terms/",
      "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
      "skos": "http://www.w3.org/2004/02/skos/core#",
      "xsd": "http://www.w3.org/2001/XMLSchema#",
      "alternative": "dc:alternative",
      "collection": "dc:isPartOf",
      "creator": "dc:creator",
      "contributor": "dc:contributor",
      "description": "dc:description",
      "language": "dc:language",
      "spatial": "dc:spatial",
      "title": "dc:title",
      "publisher": "dc:publisher",
      "extent": "dc:extent",
      "type": "dc:type",
      "temporal": "dc:temporal",
      "subject": "dc:subject",
      "date": "dc11:date",
      "identifier": "dc11:identifier",
      "format": "dc11:format",
      "rights": "dc11:rights",
      "rightsHolder": "dc:rightsHolder",
      "relation": "dc11:relation",
      "WebResource": "edm:WebResource",
      "sourceResource": "edm:aggregatedCHO",
      "dataProvider": "edm:dataProvider",
      "hasView": "edm:hasView",
      "object": "edm:object",
      "provider": "edm:provider",
      "preview": "edm:preview",
      "genre": "edm:hasType",
      "isShownAt": "edm:isShownAt",
      "begin": {
        "@id": "edm:begin",
        "@type": "xsd:date"
      },
      "end": {
        "@id": "edm:end",
        "@type": "xsd:date"
      },
      "rightsStatement": "edm:rights",
      "SourceResource": "dpla:SourceResource",
      "intermediateProvider": "dpla:intermediateProvider",
      "providedLabel": "dpla:providedLabel",
      "originalRecord": {
        "@id": "dpla:originalRecord",
        "@type": "@id"
      },
      "isReplacedBy": "dpla:isReplacedBy",
      "replaces": "dpla:replaces",
      "Aggregation": "ore:Aggregation",
      "name": "skos:prefLabel",
      "exactMatch":  {
        "@id": "skos:exactMatch",
        "@type": "@id"
      },
      "closeMatch":  {
        "@id": "skos:closeMatch",
        "@type": "@id"
      },
      "note": "skos:note",
      "inScheme": {
        "@id": "skos:inScheme",
        "@type": "@id"
      }
    }
  }')
end
