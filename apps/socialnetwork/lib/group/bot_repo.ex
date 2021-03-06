defmodule Socialnetwork.Group.BotRepo do
	alias Socialnetwork.Person, as: Person

	@pantheon [
		# uniquename: nil, name: nil, birthdate: nil, interests: []
		Person.new("Selena", "Selena Marie Gomez", "1992-07-22", [
			"Selena Gomez's friend, Francia Raisa, donated a kidney to Selena in 2017 to help her lupus recovery.",
			"Although there were complications during the surgery, she made a full recovery.",
			"Health aware as she is, Selena Gomez loves burgers and indulged in a McDonald's meal before her 2015 Victoria's Secret fashion show."
			]),
		Person.new("Eliot", "Eliot Glazer", "1983-07-12", [
			"He has contributed to Funny or Die's BILLY ON THE STREET, Hulu's DIFFICULT PEOPLE and Bravo's ODD MOMS OUT.",
			"He has written for VH-1's BEST WEEK EVER and can be seen on the Nat Geo series DUCK QUACKS DON'T ECHO and the Hulu series DEADBEAT.",
			"Eliot's video, SHIT NEW YORKERS SAY went viral in January 2012 and has over four million hits on YouTube."
			]),
		Person.new("The Baltimore Bullet", "Michael Phelps", "1985-06-30", [
			"I'm the worlds most decorated olympian.",
			"The Arizona State Sun Devils are my favorite team. I volunteer there.",
			"I like to party; no else likes me partying. But I like to party."
			])  #,
		# Person.new("uniquename", "name", "birthdate", []),
		# Person.new("uniquename", "name", "birthdate", []),
		# Person.new("uniquename", "name", "birthdate", [])
	]
	def get_all(), do: @pantheon
end  # End Module


#
# 	Elon Musk	1971-06-28	I think public transport is painful. It sucks. Why do you want to get on something with a lot of other people, that doesn't leave where you want it to leave, doesn't start where you want it to start, doesn't end where you want it to end?	I think the most serious threat to the survival of the human race.	Politically, I'm somewhere in the middle, socially liberal and fiscally conservative.
# Malala	Malala Yousafzai	1997-07-12	We realize the importance of our voices only when we are silenced.	One child, one teacher, one book, one pen can change the world.	My family is Sunni Muslim of Pashtun ethnicity, belonging to the Yusufzai tribe.
# George	George Michael	1963-06-25	He was widely known for his success in the 1980s and 1990s, including Wham!	I used to sleep with women quite a lot in the Wham! days but never felt it could develop into a relationship because I knew that, emotionally, I was a gay man.	I want to make a pop album, something more upbeat than my stuff was in the '90s.
