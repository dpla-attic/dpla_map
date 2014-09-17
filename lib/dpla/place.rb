module DPLA
  class Place < ActiveTriples::Resource
    configure :type => RDF::DPLA.Place

    validates_presence_of :name # validates_cardinality_of ... :count => 1?

    property :name, :predicate => RDF::SKOS.prefLabel
    property :city, :predicate => RDF::DPLA.city
    property :state, :predicate => RDF::DPLA.state
    property :county, :predicate => RDF::DPLA.county
    property :region, :predicate => RDF::DPLA.region
    property :country, :predicate => RDF::DPLA.country
    property :coordinates, :predicate => RDF::GEO.lat_long
  end
end
