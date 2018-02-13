RSpec.describe SpaceInvaders::Highlighter do
  include_context 'all_in'

  let(:instance) { described_class }
  subject { instance.highlight(board, areas) }

  context 'highlights & lowlights' do
    let(:board) { ['-o-o', 'oooo', '----', 'o-o-o'] }
    let(:areas) do
      [
        { line: 0, character: 2, height: 2, width: 2 },
        { line: 1, character: 1, height: 2, width: 1 },
        { line: 2, character: 0, height: 2, width: 2 }
      ]
    end

    let(:expected_output) do
      [
        all_in('-o-', :light_black) + 'o'.magenta,
        'o'.light_black + all_in('ooo', :magenta),
        all_in('----', :light_black),
        'o'.magenta + all_in('-o-o', :light_black)
      ]
    end

    it { is_expected.to eq(expected_output) }
  end
end
