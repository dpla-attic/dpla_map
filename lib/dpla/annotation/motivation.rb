module DPLA::Annotation
  class Motivation < ActiveTriples::Resource
    configure :base_uri => 'http://www.w3.org/ns/oa#', :type => RDF::OA.Motivation
    
    #TODO: validate scheme memebership

    property :name, :predicate => RDF::SKOS.prefLabel
    property :comment, :predicate => RDF::RDFS.comment
  end
end
