require 'unimidi'

notes = [36,40,43,48,52,60,64]
duration = 1

UniMIDI::Output.gets do |output|
  notes.each do |note|
    output.puts(0x90, note, 100) # note on message
    sleep(duration)  # wait
    output.puts(0x80, note, 100) # note off message
  end
end
