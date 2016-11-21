#Template generated on 2016-11-21 12:00:06 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class ComparaTeam < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the ComparaTeam formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '0.1'

  depends_on 'ensembl/ensembl/exonerate22'
  depends_on 'homebrew/science/infernal'
  depends_on 'homebrew/science/hmmer'
  depends_on 'homebrew/science/hmmer2'
  depends_on 'ensembl/ensembl/blast'
  depends_on 'homebrew/science/mafft'
  depends_on 'ensembl/ensembl/t-coffee'
  depends_on 'ensembl/ensembl/hclustersg'
  depends_on 'ensembl/ensembl/treebest'
  depends_on 'ensembl/ensembl/quicktree'
  depends_on 'codemod'
  depends_on 'ensembl/ensembl/ktreedist'
  depends_on 'ensembl/ensembl/raxml-get-patterns'
  depends_on 'ensembl/ensembl/noisy'
  depends_on 'ensembl/ensembl/notung'
  depends_on 'ensembl/ensembl/notung'
  depends_on 'ensembl/ensembl/pecan'
  depends_on 'ensembl/ensembl/ortheus'
  depends_on 'ensembl/ensembl/fasttree'
  depends_on 'ensembl/ensembl/prottest3'
  depends_on 'homebrew/science/trimal'
  depends_on 'ensembl/ensembl/badirate'
  depends_on 'ensembl/ensembl/cafe'
  depends_on 'ensembl/ensembl/gerp'
  depends_on 'homebrew/science/mcl'
  depends_on 'ensembl/ensembl/prank'
  depends_on 'ensembl/ensembl/r2r'
  depends_on 'ensembl/ensembl/phast'
  depends_on 'homebrew/science/lastz'
  depends_on 'ensembl/ensembl/kent'
  depends_on 'homebrew/science/blat'
  depends_on 'ensembl/ensembl/parsimonator'

  def install
    File.open('compara-team', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara-team'
  end
end
    