puts html_head(:window_title => "FA", :page_title => "FA", :sub_title => 'GOOEY')

$stdout.flush

$stdin.each_line do |line|
  puts line
end #each_line