module DPLA
  class Collection < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/collections/', :type => RDF::DCMITYPE.Collection

    property :title, :predicate => RDF::DC11.title # any real reason not to use dcterms here? RDF::DC.title
    property :description, :predicate => RDF::DC11.description # any reason not to use dcterms here? RDF::DC.description
  end
end
