module DPLA::MAP
  class WebResource
    include ActiveTriples::RDFSource

    configure :type => RDF::EDM.WebResource

    property :dcformat,        :predicate => RDF::Vocab::DC11.format
    property :rights,          :predicate => RDF::Vocab::DC11.rights

    property :rightsStatement, :predicate => RDF::EDM.rights,
             :class_name => 'DPLA::MAP::RightsStatement'
  end
end
