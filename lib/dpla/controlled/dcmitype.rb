module DPLA::Controlled
  class DCMIType < ActiveFedora::Rdf::Resource
    include LinkedVocabs::Controlled
    use_vocabulary :dcmitype

    property :label, :predicate => RDF::RDFS.label    
    property :description, :predicate => RDF::DC.description
    property :comment, :predicate => RDF::RDFS.comment

    property :issued, :predicate => RDF::DC.issued
    property :modified, :predicate => RDF::DC.modified

    property :hasVersion, :predicate => RDF::DC.hasVersion
    property :subClassOf, :predicate => RDF::RDFS.subClassOf
    property :isDefinedBy, :predicate => RDF::RDFS.isDefinedBy
  end
end
