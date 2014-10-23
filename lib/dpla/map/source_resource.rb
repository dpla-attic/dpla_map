module DPLA::MAP
  class SourceResource < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/items/', :type => RDF::DPLA.SourceResource

    validates_presence_of :rights, :title
    validates_vocabulary_of :dctype, :genre, :language

    property :alternative, :predicate => RDF::DC.alternative
    property :collection, :predicate => RDF::DC.isPartOf, :class_name => 'DPLA::MAP::Collection'
    property :contributor, :predicate => RDF::DC.contributor, :class_name => 'DPLA::MAP::Agent'
    property :creator, :predicate => RDF::DC.creator, :class_name => 'DPLA::MAP::Agent'
    property :date, :predicate => RDF::DC11.date, :class_name => 'DPLA::MAP::TimeSpan'
    property :description, :predicate => RDF::DC.description
    property :extent, :predicate => RDF::DC.extent
    property :format, :predicate => RDF::DC11.format
    property :genre, :predicate => RDF::EDM.hasType, :class_name => 'DPLA::MAP::Controlled::Genre'
    property :identifier, :predicate => RDF::DC11.identifier
    property :language, :predicate => RDF::DC.language, :class_name => 'DPLA::MAP::Controlled::Language'
    property :spatial, :predicate => RDF::DC.spatial, :class_name => 'DPLA::MAP::Place'
    property :publisher, :predicate => RDF::DC.publisher, :class_name => 'DPLA::MAP::Agent'
    property :relation, :predicate => RDF::DC11.relation
    property :isReplacedBy, :predicate => RDF::DPLA.isReplacedBy
    property :replaces, :predicate => RDF::DPLA.replaces
    property :rights, :predicate => RDF::DC11.rights
    property :subject, :predicate => RDF::DC.subject, :class_name => 'DPLA::MAP::Concept'
    property :temporal, :predicate => RDF::DC.temporal, :class_name => 'DPLA::MAP::TimeSpan'
    property :title, :predicate => RDF::DC.title
    property :dctype, :predicate => RDF::DC.type, :class_name => 'DPLA::MAP::Controlled::DCMIType'
  end
end
