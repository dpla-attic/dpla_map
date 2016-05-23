module DPLA::MAP
  class Collection
    include ActiveTriples::RDFSource

    configure :base_uri => 'http://dp.la/api/collections/',
              :type => RDF::DCMITYPE.Collection

    property :title,       :predicate => RDF::Vocab::DC.title
    property :description, :predicate => RDF::Vocab::DC.description
  end
end
