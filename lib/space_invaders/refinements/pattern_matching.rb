module SpaceInvaders
  module Refinements
    module PatternMatching
      refine(String) do
        def indexes(substring)
          # NOTE: Code stolen from Stack Overflow. *wink wink*
          # https://stackoverflow.com/questions/43329481/find-all-indices-of-a-substring-within-a-string
          enum_for(:scan, /#{substring}/).map { Regexp.last_match.offset(0).first }
        end
      end
    end
  end
end
