Dir[File.expand_path('../space_invaders/**/*.rb', __FILE__)].each { |f| require f }
require 'colorize'

module SpaceInvaders
  def self.scan(file_path)
    # TODO: Validate whether the file is valid or not.
    lines = File.readlines(file_path)
    areas = Radar.scan(lines)
    puts Highlighter.highlight(lines, areas).join('')
  end
end
