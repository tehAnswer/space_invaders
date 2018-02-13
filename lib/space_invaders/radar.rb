module SpaceInvaders
  # Radar identifies well known text-based shapes. Given
  # a board, line by line, it returns an array of Areas matching
  # those aforementioned shapes.
  module Radar
    # NOTE: It adds the method `indexes` to a String which
    # returns all the starting indexes for all the coincidences
    # of a given substring on the callee string.
    using SpaceInvaders::Refinements::PatternMatching

    def self.scan(board_lines)
      board_lines.each_with_index.map do |line, index|
        heads = detect_heads(line, index)
        next if heads.empty?
        heads.map { |head| detect_shape(board_lines, head) }
      end.flatten.compact
    end

    private

    def self.detect_heads(line, line_num)
      SpaceInvaders::Heads.map do |name, head|
        indexes = line.indexes(head)
        next if indexes.empty?
        indexes.map do |index|
          { shape: name, line: line_num, character: index }
        end
      end.flatten.compact
    end

    def self.detect_shape(board_lines, character:, line:, shape:)
      invader = SpaceInvaders::Bodies[shape]
      height  = invader.length
      width   = invader.first.length
      body    = crop_board(board_lines, height: height, width: width, line: line, character: character)
      # NOTE: Plus one in the height because we need to count also the head.
      # NOTE: Body needs to be exactly as the model declared in Bodies. Otherwise,
      # the alien is not an alien.
      { character: character, height: height + 1, width: width, line: line } if body == invader
    end

    def self.crop_board(board_lines, height:, width:, line:, character:)
      board_lines.drop(line + 1).take(height).map { |l| l[character..(character + width - 1)] }
    end
  end
end
