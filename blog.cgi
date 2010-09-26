#!/usr/bin/env ruby

require 'cgi'
require 'blogposts'

cgi = CGI.new

puts cgi.header
puts <<EOF
<!DOCTYPE html>
<html>
<head>
	<title>Ruby Outside: The Ruby CGI Blog</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <style type="text/css">
        div.article-title {
            font-weight:900;
            font-size:150%;
            background-color:#999;
        }
        div.article-date {
            font-size:0.8em;
            font-style:italic;
            color:#888;
        }
    </style>
</head>
<body><p><h1>RubyOutside!</h1></p>
<p><h3>The #1 Ruby <del>Fast</del>CGI blog since 2010!</h3></p>
<br /><br />
EOF

if cgi.keys[0] == "archive"
    puts "<ul>"
    @post_id.reverse.each do |h|
        title = unpack(@posts[h]).split("\n")[0].gsub(/<\/?[^>]*>/, "")
        date = unpack(@posts[h]).split("\n")[1].gsub(/<\/?[^>]*>/, "")
        puts "<li>#{date} - <a href=\"/blog.cgi?#{h}\">#{title}</a></li>"
    end
    puts "</ul>"
elsif @post_id.include? cgi.keys[0]
    puts unpack(@posts[cgi.keys[0]])
else
    5.times do |i|
        h = @post_id.reverse[i]
        break if h == nil
        puts unpack(@posts[h])
        puts "<p><a style=\"font-size:0.8em;font-style:italic;\" href=\"/blog.cgi?#{h}\">Permalink</a></p>"
        puts "<hr />"
    end
end
puts "<br /><center><a href=\"/blog.cgi?archive\">Archive</a> | <a href=\"/blog.cgi\">Home</a></center></body></html>"

