module SpaceInvaders
  module Highlighter
    def self.highlight(board_lines, areas)
      board_lines.each_with_index.map do |board_line, index|
        active_areas = areas.select { |a| index.between?(a[:line], a[:line] + a[:height] - 1) }
        highlighted_ranges = active_areas.map do |area|
          area[:character]..(area[:character] + area[:width] - 1)
        end

        board_line.split('').each_with_index.map do |token, token_index|
          next token.magenta if token != "-" && highlighted_ranges.any? { |range| range.include?(token_index) }
          token.light_black
        end.join('')
      end
    end
  end
end
