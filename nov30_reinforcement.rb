room = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

# For each available seat, use gets.chomp
# to prompt your user to choose whether they want to claim that spot.
# If they indicate they want to claim a seat,
# prompt them for their name and insert it into the array

room .each_with_index do |row, room|
  row.each_with_index do |seat, place|
    if seat == nil
      # puts place
      puts "Row #{room + 1} seat #{place + 1} is free. Do you want to sit there? (y/n)"
      answer = gets.chomp
      if answer == 'y'
        puts "What is your name?"
        name = gets.chomp
        row[place] = name
      else
      end
    end
  end
end

puts room
