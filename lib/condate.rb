require "condate/version"
require 'yaml'

class Condate
  MENU = YAML.load_file(File.expand_path(File.join('..', 'data', 'menu.yml'), __FILE__))

  def initialize(genre)
    @genre = genre
    @genre = %w(japanese chinese western).sample if @genre == 'any'
    decide
  end

  def decide
    choice = MENU[@genre].sample
  end

end
