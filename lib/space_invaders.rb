Dir[File.expand_path('../space_invaders/**/*.rb', __FILE__)].each { |f| require f }
require 'colorize'

module SpaceInvaders
  def self.scan(file_path)
    # TODO: Validate whether the file is valid or not. The instructions didn't specify any formal documentation,
    # however, it would be highly advisable to check if the file contains any strange/unsupported token.
    lines = File.readlines(file_path)
    areas = Radar.scan(lines)
    puts Highlighter.highlight(lines, areas).join('')
  end
end
