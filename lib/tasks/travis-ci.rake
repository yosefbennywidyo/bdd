# https://docs.travis-ci.com/user/gui-and-headless-browsers/#ruby
task :travis do
  ["rake cucumber"].each do |cmd|
    puts "Starting to run #{cmd}..."
    system("export DISPLAY=:99.0 && bundle exec #{cmd}")
    raise "#{cmd} failed!" unless $?.exitstatus == 0
  end
end