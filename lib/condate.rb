require "condate/version"
require 'yaml'

class Condate
  MENU = YAML.load_file(File.expand_path(File.join('..', 'data', 'menu.yml'), __FILE__))

  def initialize(genre)
    @genre = genre
  end

  def decide
    if @genre == 'any' || @any == 1
      @genre = %w(japanese chinese western).sample
      @any = 1
    end
    choice = MENU[@genre].sample
  end

end
