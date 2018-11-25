

sample :ambi_lunar_land, attack: 4, release: 3, amp: 5
sleep 4.2

s = 0.8

define :basicS do
  n = [71,64,67,65,64,71,69,65,64,67,65,64,64,71,71,64,67,65,64,71,62,62,60,69,60,71,65,67,64,71,64,67,65,64,71]
  i = 0
  j = 0
  k = 0
  l = 0
  with_fx :echo do
    n.length.times do
      if j % 4 == 0
        if l % 3 == 0
          sample :drum_bass_hard, amp: 8
        else
          sample :bd_klub, amp: 6
        end
      end
      if j % 12 == 0
        sample :ambi_lunar_land, attack: 3, release: 2, amp: s
      end
      if j > n.length / 4 and k % 6 == 0
        sample :ambi_choir, amp: 2, release: 5
      end
      
      sample :ambi_swoosh
      sample :bass_thick_c
      play n[i]
      i = i+1
      l = l+1
      k = k+1
      j = j+1
      sleep s
    end
  end
end

basicS

with_fx :reverb do
  sleep 1
  g = 2
  h = 2
  4.times do
    sample :drum_bass_soft, amp: 2
    sleep g
    g = g-0.5
    h = h+1
  end
  
  sample :drum_bass_soft, amp: 6
  sleep 0.25
  
  sample :drum_bass_soft, amp: 7
  sleep 0.125
  8.times do
    sample :drum_bass_hard, amp: 8
    sleep 0.125
  end
end
s=0.5
basicS
