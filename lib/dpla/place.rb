module DPLA
  class Place < ActiveTriples::Resource
    configure :type => DPLA::Vocabularies::DPLA.Place

    validates_presence_of :name # validates_cardinality_of ... :count => 1?

    property :name, :predicate => RDF::SKOS.prefLabel
    property :city, :predicate => DPLA::Vocabularies::DPLA.city
    property :state, :predicate => DPLA::Vocabularies::DPLA.state
    property :county, :predicate => DPLA::Vocabularies::DPLA.county
    property :region, :predicate => DPLA::Vocabularies::DPLA.region
    property :country, :predicate => DPLA::Vocabularies::DPLA.country
    property :coordinates, :predicate => RDF::GEO.lat_long
  end
end
