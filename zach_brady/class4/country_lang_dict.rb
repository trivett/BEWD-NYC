country_lang_dict = [
    { "country" => "Japan",        "language" => [ "Japanese" ] },
    { "country" => "China",        "language" => [ "Mandarin", "Cantonese" ] },
    { "country" => "America",      "language" => [ "English", "French" ] },
    { "country" => "Switzerland",  "language" => [ "German", "Italian", "English", "Rumantsch" ] },
    { "country" => "Bolivia",      "language" => [ "Araona", "Aymara", "Ayoreo", "Baure", "Bésiro", "Canichana (extinct)", "Castellano",                                                     "Cavineño", "Cayubaba (extinct)", "Chácobo", "Chimán", "Chiquitano", "Ese Ejja", "Guaraní", "Guarasuawe (extinct)", "Guarayu", "Itonama", "Leco", "Machajuyai-Kallawaya", "Machineri", "Maropa", "Mojeño-Ignaciano", "Mojeño-Trinitario", "Moré", "Mosetén", "Movima", "Pacawara", "Puquina (extinct 18th century)", "Quechua", "Sirionó", "Tacana", "Tapieté", "Toromona", "Uru-Chipaya", "Weenhayek", "Yaminawa", "Yuki", "Yuracaré", "Zamuco"]}
]

country_lang_dict.each do |country|
    puts "Languages spoken in #{ country["name"] }:"
    country["languages"].each do |l|
        puts l.capitalize
    end
end
