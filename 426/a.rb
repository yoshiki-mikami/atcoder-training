x, y = gets.split

os_list = {
    "Ocelot" => 1,
    "Serval" => 2,
    "Lynx" => 3
}

puts os_list[x] >= os_list[y] ? "Yes" : "No"