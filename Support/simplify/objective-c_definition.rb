require ENV['TM_SUPPORT_PATH'] + "/lib/textmate"
require ENV['TM_SUPPORT_PATH'] + "/lib/ui"
require ENV['TM_SUPPORT_PATH'] + "/lib/exit_codes"

line = $stdin.read

is_instance_method = (line =~ /^-/)

method = line.dup
method.gsub!(/(-|\+)\s*/, "")
method.gsub!(/\s*\([^\)]+\)\s*/, "")

params = method.scan(/:(\w+)/).map {|o| o.first}

method.gsub!(/:(\w+)\s*/, "_")
method.chomp!("_")

puts "function #{method}(self, #{params.join(', ')})\nend\n"

