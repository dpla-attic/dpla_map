module DPLA::Annotation
  class Body < ActiveTriples::Resource
    configure :type => RDF::CNT.ContentAsText

    property :text, :predicate => RDF::CNT.chars
    property :language, :predicate => RDF::DC.language, :class_name => 'DPLA::Language'
    property :format, :predicate => RDF::DC11.format
  end
end
