RSpec.describe SpaceInvaders::Radar do
  let(:instance) { decribed_class.new }
  let(:board)    { File.read(File.expand_path(file_path, __FILE__))  }
  let(:subject)  { instance.scan(board) }

  context 'single alien' do
    let(:file_path) { '../support/alien.txt' }
    let(:area)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 8, height: 8) }

    it { is_expected.to be_an(Array)  }
    it { is_expected.to include(area) }
  end

  context 'single predator' do
    let(:file_path) { '../support/predator.txt' }
    let(:area)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 10, height: 8) }

    it { is_expected.to be_an(Array)  }
    it { is_expected.to include(area) }
  end

  context 'double alien' do
    let(:file_path) { '../support/double_alien.txt' }
    let(:area1)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 8, height: 8) }
    let(:area2)      { SpaceInvaders::Area.new(line: 0, character: 8, width: 8, height: 8) }

    it { is_expected.to be_an(Array)   }
    it { is_expected.to include(area1) }
    it { is_expected.to include(area2) }
  end

  context 'double predator' do
    let(:file_path) { '../support/double_predator.txt' }
    let(:area1)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 10, height: 8)  }
    let(:area2)      { SpaceInvaders::Area.new(line: 0, character: 19, width: 10, height: 8) }

    it { is_expected.to be_an(Array)   }
    it { is_expected.to include(area1) }
    it { is_expected.to include(area2) }
  end

  context 'predator & alien' do
    let(:file_path) { '../support/double_and_alien.txt' }
    let(:area1)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 10, height: 8) }
    let(:area2)      { SpaceInvaders::Area.new(line: 0, character: 11, width: 8, height: 8) }

    it { is_expected.to be_an(Array)   }
    it { is_expected.to include(area1) }
    it { is_expected.to include(area2) }
  end

  context 'double alien with gap' do
    let(:file_path) { '../support/double_alien_with_gap.txt' }
    let(:area1)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 8, height: 8) }
    let(:area2)      { SpaceInvaders::Area.new(line: 0, character: 19, width: 8, height: 8) }

    it { is_expected.to be_an(Array)   }
    it { is_expected.to include(area1) }
    it { is_expected.to include(area2) }
  end

  context 'unaligned UFOs' do
    let(:file_path) { '../support/predator_with_unaligned_alien.txt' }
    let(:area1)      { SpaceInvaders::Area.new(line: 0, character: 0, width: 10, height: 8) }
    let(:area2)      { SpaceInvaders::Area.new(line: 8, character: 18, width: 8, height: 8) }

    it { is_expected.to be_an(Array)   }
    it { is_expected.to include(area1) }
    it { is_expected.to include(area2) }
  end

  context 'empty radar' do
    let(:file_path) { '../support/empty_radar' }

    it { is_expected.to be_empty }
  end
end
