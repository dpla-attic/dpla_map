module DPLA
  class WebResource < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::EDM.WebResource

    property :format, :predicate => RDF::DC11.format
    property :rights, :predicate => RDF::DC11.rights
    property :rightsStatement, :predicate => DPLA::Vocabularies::EDM.rights, :class_name => 'DPLA::RightsStatement'
  end
end
