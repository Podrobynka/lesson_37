f = File.open 'file.txt', 'r'

@hh = {}

def add_to_hash(word)
  unless word.empty?
    word.downcase!

    cnt = @hh[word].to_i
    cnt+=1
    @hh[word] = cnt
  end
end

f.each_line do |line|
  arr = line.split(/[\s,.;:\n]/)
  arr.each { |word| add_to_hash(word) }
end

f.close
hh = @hh.sort {|a1,a2| a2[1]<=>a1[1]}
hh.each do |h|
  puts "#{h[1]} #{h[0]}"
end

