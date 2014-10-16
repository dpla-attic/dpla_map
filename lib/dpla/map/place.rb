module DPLA::MAP
  class Place < ActiveTriples::Resource
    configure :type => RDF::EDM.Place

    validates_presence_of :name # validates_cardinality_of ... :count => 1?

    property :name, :predicate => RDF::SKOS.prefLabel
    property :latitude, :predicate => RDF::GEO.lat
    property :longitude, :predicate => RDF::GEO.long
    property :altitude, :predicate => RDF::GEO.alt
    property :parentFeature, :predicate => RDF::GN.parentFeature
    property :parentCountry, :predicate => RDF::GN.countryCode
    property :sameAs, :predicate => RDF::OWL.sameAs
    
  end
end
