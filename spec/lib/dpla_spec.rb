require 'spec_helper'

describe DPLA::MAP::SourceResource do

  subject { build(:source_resource) }

  it 'is a dpla:SourceResource' do
    expect(subject.type).to eq [RDF::URI('http://dp.la/about/map/SourceResource')]
  end

  it 'has an edm:hasType that is a DPLA::MAP::Controlled::Genre' do
    expect(subject.genre).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::Genre))
  end

  it 'has a dcterms:language that is a DPLA::MAP::Controlled::Language' do
    expect(subject.language).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::Language))
  end

  it 'has a dcterms:subject that is a DPLA::MAP::Concept' do
    expect(subject.subject).to contain_exactly(an_instance_of(DPLA::MAP::Concept))
  end

  it 'has a dcterms:type that is a DPLA::MAP::Controlled::DCMIType' do
    expect(subject.dctype).to contain_exactly(an_instance_of(DPLA::MAP::Controlled::DCMIType))
  end
end