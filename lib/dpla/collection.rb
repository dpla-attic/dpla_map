module DPLA
  class Collection < ActiveTriples::Resource
    configure :type => DPLA::Controlled::DCMIType.Collection

    property :collectionTitle, :predicate => RDF::DC11.title # any real reason not to use dcterms here? RDF::DC.title
    property :collectionDescription, :predicate => RDF::DC11.description # any reason not to use dcterms here? RDF::DC.description
  end
end
