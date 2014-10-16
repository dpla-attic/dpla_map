require 'spec_helper'

describe DPLA::MAP::SourceResource do

  subject { build(:source_resource) }

  it 'is a dpla:SourceResource' do
    expect(subject.type).to eq [RDF::URI('http://dp.la/about/map/SourceResource')]
  end

end

