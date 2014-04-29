module DPLA
  class SourceResource < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::DPLA.SourceResource

    property :collection, :predicate => RDF::DC.isPartOf, :class_name => 'DPLA::Collection'
    property :contributor, :predicate => RDF::DC11.contributor
    property :creator, :predicate => RDF::DC11.creator
    property :description, :predicate => RDF::DC.description
    property :date, :predicate => RDF::DC11.date, :class_name => 'DPLA::TimeSpan'
    property :extent, :predicate => RDF::DC.extent
    property :identifier, :predicate => RDF::DC11.identifier
    property :currentLocation, :predicate => DPLA::Vocabularies::EDM.currentLocation, :class_name => 'DPLA::Controlled::ISO_3166'
    property :format, :predicate => RDF::DC11.format
    property :place, :predicate => RDF::DC.spatial, :class_name => 'DPLA::Place'
    property :publisher, :predicate => RDF::DC11.publisher
    property :relation, :predicate => RDF::DC11.relation
    property :subject, :predicate => RDF::DC11.subject
    property :temporal, :predicate => RDF::DC.temporal
    property :title, :predicate => RDF::DC11.title # any real reason not to use dcterms here? RDF::DC.title

    # thinking about formal rights statements ala Europeana & Oregon Digital
    property :rights, :predicate => RDF::DC11.rights
    # property :rights, :predicate => RDF::DC.rights, :class_name => 'DPLA::RightsStatement'
    
    # I fussed with languages a bit for better handling of the controlled vocab
    property :languageCode, :predicate => RDF::DC11.language 
    property :language, :predicate => RDF::DC.language, :class_name => 'DPLA::Controlled::Language'

    # Better handling of the controlled vocab on type, too
    property :typeName, :predicate => RDF::DC11.type
    property :dcmitype, :predicate => RDF::DC.type, :class_name => 'DPLA::Controlled::DCMIType'
  end
end
