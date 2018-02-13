RSpec.shared_context 'all_in' do
  def all_in(str, color)
    str.split('').map(&color).join('')
  end
end
