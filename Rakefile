task :environment do
  require_relative 'lib/space_invaders'
end

task :scan, [:file_path] => :environment do |_, args|
  SpaceInvaders.scan(args[:file_path])
end
