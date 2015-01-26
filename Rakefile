#!/usr/bin/env rake

require 'dpla/map'

desc "Generate Vocabularies"

task :gen_vocabs do
  LinkedVocabs.vocabularies.each_key do |name|
    puts "Generating vocabulary at lib/rdf/#{name}.rb"
    begin
      LinkedVocabs.load_vocabulary(name)
    rescue
      puts "Failed to load #{name}: #{$!.message}"
      puts $!.backtrace
    end
  end
end
