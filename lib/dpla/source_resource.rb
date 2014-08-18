module DPLA
  class SourceResource < ActiveTriples::Resource
    configure :base_uri => 'http://dp.la/api/items/', :type => DPLA::Vocabularies::DPLA.SourceResource

    property :collection, :predicate => RDF::DC.isPartOf, :class_name => 'DPLA::Collection'
    property :contributor, :predicate => RDF::DC11.contributor # literal and/or URI
    property :creator, :predicate => RDF::DC11.creator # literal and/or URI
    property :date, :predicate => RDF::DC11.date, :class_name => 'DPLA::TimeSpan'
    property :description, :predicate => RDF::DC11.description # any reason not to use dcterms here? RDF::DC.description
    property :extent, :predicate => RDF::DC.extent
    property :format, :predicate => RDF::DC11.format # literal and/or URI
    property :identifier, :predicate => RDF::DC11.identifier # literal and/or URI
    property :language, :predicate => RDF::DC11.language 
    property :place, :predicate => RDF::DC.spatial, :class_name => 'DPLA::Place' # literal and/or URI
    property :publisher, :predicate => RDF::DC11.publisher # literal and/or URI
    property :relation, :predicate => RDF::DC11.relation # literal and/or URI
    property :rights, :predicate => RDF::DC11.rights
    property :genre, :predicate => DPLA::Vocabularies::EDM.hasType #, :class_name => 'DPLA::Controlled::AAT'
    property :stateLocatedIn, :predicate => DPLA::Vocabularies::EDM.currentLocation, :class_name => 'DPLA::Controlled::ISO_3166' #min: 0; max: 1
    property :subject, :predicate => RDF::DC11.subject # comply w/ JSON-LD Usage note
    property :temporalCoverage, :predicate => RDF::DC.temporal # literal and/or URI3
    property :title, :predicate => RDF::DC11.title # any reason not to use dcterms here? RDF::DC.title
    property :type, :predicate => RDF::DC11.type

    # formal rights statements
    # property :rights, :predicate => RDF::DC.rights, :class_name => 'DPLA::RightsStatement'
    
    # languages w/ better handling of the controlled vocab?
    # property :languageControlled, :predicate => RDF::DC.language, :class_name => 'DPLA::Controlled::Language'

    # controlled vocab on type
    # property :dcmitype, :predicate => RDF::DC.type, :class_name => 'DPLA::Controlled::DCMIType'
  end
end
