require "condate/version"
require 'yaml'

class Condate
  MENU = YAML.load_file(File.expand_path(File.join('..', 'data', 'menu.yml'), __FILE__))

  def initialize(genre = 'any')
    @genre = genre
  end

  def decide
    if @genre == 'any' || @any
      @genre = %w(japanese chinese western).sample
      @any = true
    end
    choice = MENU[@genre].sample
  end

end
