module DPLA::MAP
  class WebResource < ActiveTriples::Resource
    configure :type => RDF::EDM.WebResource

    property :dcformat, :predicate => RDF::DC11.format
    property :rights, :predicate => RDF::DC11.rights
    property :rightsStatement, :predicate => RDF::EDM.rights, :class_name => 'DPLA::MAP::RightsStatement'
  end
end
