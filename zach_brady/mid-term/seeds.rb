vb = Client.new("Valerie Brady", 59, ["Lucy Liu", "Bettina", "Jimmy", "Lily"])
mf = Client.new("Melissa Fan", 23, ["Dogen"])

miss_kitty = Animal.new("Miss Kitty", "cat", [])
tg = Animal.new("Tuxedo Girl", "cat", [])
henry = Animal.new("Henry Miller", "cat", ["tin foil", "scratch pad"])
lucy = Animal.new("Lucy Liu", "cat", [])
betty = Animal.new("Battina", "cat", [])
jimmy = Animal.new("Jimmy", "cat", [])
lily = Animal.new("Lily", "cat", [])
dogen = Animal.new("Dogen", "dog", [])

$happitails = Shelter.new("Happitails", [miss_kitty, tg, henry], [vb, mf])
