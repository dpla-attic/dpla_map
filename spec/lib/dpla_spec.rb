require 'spec_helper'

describe DPLA::SourceResource do

  subject { build(:source_resource) }

  it 'is a dpla:SourceResource' do
    expect(subject.type).to eq [RDF::URI('http://dp.la/about/map/SourceResource')]
  end

  # it 'has a type of "Image"' do
  #   expect(subject.dcmitype.first.rdf_subject).to eq 'http://purl.org/dc/dcmitype/Image'
  # end

  # it 'pries' do
  #   require 'pry'
  #   binding.pry
  # end

end

