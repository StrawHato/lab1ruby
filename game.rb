if ARGV.length != 2
  puts "Введіть два предмети (камінь, ножиці або папір) як аргументи командного рядка."
  exit
end

player_choice = ARGV[0].downcase
computer_choice = ARGV[1].downcase

valid_choices = ["камінь", "ножиці", "папір"]

# Перевірка чи введені предмети є допустимими
unless valid_choices.include?(player_choice) && valid_choices.include?(computer_choice)
  puts "Введені недопустимі предмети. Допустимі предмети: камінь, ножиці, папір."
  exit
end

if player_choice == computer_choice
  puts "Нічия! Ви обрали #{player_choice}, комп'ютер обрав #{computer_choice}."
elsif (player_choice == "камінь" && computer_choice == "ножиці") ||
  (player_choice == "ножиці" && computer_choice == "папір") ||
  (player_choice == "папір" && computer_choice == "камінь")
  puts "Ви виграли! Ви обрали #{player_choice}, комп'ютер обрав #{computer_choice}."
else
  puts "Ви програли! Ви обрали #{player_choice}, комп'ютер обрав #{computer_choice}."
end