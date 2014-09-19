module DPLA::Annotation
  class Annotation < ActiveTriples::Resource
    configure :type => RDF::OA.Annotation
    
    property :target, :predicate => RDF::OA.hasTarget, :class_name => 'DPLA::SourceResource'
    property :body, :predicate => RDF::OA.hasBody, :class_name => 'DPLA::Annotation::Body'
    property :annotator, :predicate => RDF::OA.annotatedBy, :class_name => 'DPLA::Agent'
    property :created, :predicate => RDF::OA.annotatedAt
    property :motivation, :predicate => RDF::OA.motivatedBy, :class_name => 'DPLA::Annotation::Motivation'
  end
end
