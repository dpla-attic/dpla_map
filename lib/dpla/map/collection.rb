module DPLA::MAP
  class Collection < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/collections/', :type => RDF::DCMITYPE.Collection

    property :title, :predicate => RDF::DC.title
    property :description, :predicate => RDF::DC.description
  end
end
