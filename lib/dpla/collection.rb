module DPLA
  class Collection < ActiveTriples::Resource
    property :title, :predicate => RDF::DC11.title # any real reason not to use dcterms here? RDF::DC.title
    property :description, :predicate => RDF::DC.description
  end
end
