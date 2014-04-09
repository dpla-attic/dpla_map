module DPLA
  class WebResource < ActiveFedora::Rdf::Resource
    property :format, :predicate => RDF::DC11.format
    property :rights, :predicate => RDF::DC11.rights
    # property :rights, :predicate => RDF::DC.rights, :class_name => 'DPLA::RightsStatement'
  end
end
