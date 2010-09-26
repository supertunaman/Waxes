#!/usr/bin/env ruby

require 'base64'
require 'date'
require 'digest/md5'
require 'zlib'

def pack(str)
    buf = Zlib::Deflate.deflate(str,9)
    data = Base64.encode64(buf)
    return data
end

exit if ARGV[0] == nil
file = IO.readlines(ARGV[0].strip).join
file.gsub!("DATEME", Time.now.to_s)
h = Digest::MD5.hexdigest file
data = pack(file).gsub("\n", "\\n")

puts "@posts[\"#{h}\"] = \"#{data}\""
puts "@post_id.push \"#{h}\""
puts
