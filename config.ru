require './my_404'
use My404::Hello # this comes in between
run Proc.new{|env|  [200, {"Content-Type" => "text/plain"}, ['Try accessing visiting /hello']] }
