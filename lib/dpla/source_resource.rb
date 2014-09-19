module DPLA
  class SourceResource < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/items/', :type => RDF::DPLA.SourceResource

    validates_presence_of :rights, :title
    validates_vocabulary_of :dctype, :genre, :language

    property :alternateTitle, :predicate => RDF::DC.alternative
    property :collection, :predicate => RDF::DC.isPartOf, :class_name => 'DPLA::Collection'
    property :contributor, :predicate => RDF::DC11.contributor, :class_name => 'DPLA::Agent'  # literal and/or URI
    property :creator, :predicate => RDF::DC11.creator, :class_name => 'DPLA::Agent' # literal and/or URI
    property :date, :predicate => RDF::DC11.date, :class_name => 'DPLA::TimeSpan'
    property :description, :predicate => RDF::DC11.description # any reason not to use dcterms here? RDF::DC.description
    property :extent, :predicate => RDF::DC.extent
    property :format, :predicate => RDF::DC11.format # literal and/or URI
    property :identifier, :predicate => RDF::DC11.identifier # literal and/or URI
    property :language, :predicate => RDF::DC.language, :class_name => DPLA::Controlled::Language
    property :place, :predicate => RDF::DC.spatial, :class_name => 'DPLA::Place' # literal and/or URI
    property :publisher, :predicate => RDF::DC11.publisher # literal and/or URI
    property :relation, :predicate => RDF::DC11.relation # literal and/or URI
    property :replacedBy, :predicate => RDF::DC.isReplacedBy # literal and/or URI
    property :replaces, :predicate => RDF::DC.replaces # literal and/or URI
    property :rights, :predicate => RDF::DC11.rights
    property :genre, :predicate => RDF::EDM.hasType, :class_name => 'DPLA::Controlled::Genre'
    property :subject, :predicate => RDF::DC.subject, :class_name => 'DPLA::Concept'
    property :temporalCoverage, :predicate => RDF::DC.temporal # literal and/or URI
    property :title, :predicate => RDF::DC11.title # any reason not to use dcterms here? RDF::DC.title
    property :dctype, :predicate => RDF::DC11.type, :class_name => 'DPLA::Controlled::DCMIType'

    # formal rights statements
    # property :rights, :predicate => RDF::DC.rights, :class_name => 'DPLA::RightsStatement'
    
    # languages w/ better handling of the controlled vocab?
    # property :languageControlled, :predicate => RDF::DC.language, :class_name => 'DPLA::Controlled::Language'

    # controlled vocab on type
    # property :dcmitype, :predicate => RDF::DC.type, :class_name => 'DPLA::Controlled::DCMIType'
  end
end
