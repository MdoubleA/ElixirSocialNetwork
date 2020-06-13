defmodule TestPersonModule do
	use ExUnit.Case
	alias Socialnetwork.Person, as: Person

	test "Person Module" do
		uniquename = "Eliot"
		name = "Eliot Glazer"
		birthdate = "1983-07-12"
		interest1 = "He has contributed to Funny or Die's BILLY ON THE STREET, Hulu's DIFFICULT PEOPLE and Bravo's ODD MOMS OUT."
		interest2 = "Eliot's video, SHIT NEW YORKERS SAY went viral in January 2012 and has over four million hits on YouTube."

		assert %Person{} == Person.new()
		assert Map.equal?(
					%Person{uniquename: uniquename, name: name, birthdate: ~D[1983-07-12], interests: [interest1]},
					Person.new(uniquename, name, birthdate, interest1)
					)
		eliot1 = Person.new(uniquename, name, birthdate, interest1)
		assert eliot1 == Person.clone(eliot1)
		eliot2 = Person.add_field(Person.new(), :uniquename, uniquename)
				|> Person.add_field(:name, name)
				|> Person.add_field(:birthdate, birthdate)
				|> Person.add_field(:interests, interest1)
		assert eliot1 == eliot2
		assert Person.equal?(eliot1, eliot2) == true
		eliot2 = Person.add_field(eliot1, :interests, interest2)
		assert eliot1 != eliot2
		assert Person.equal?(eliot1, eliot2) == false
		assert String.Chars.to_string(eliot1) == "#Person<uniquename: Eliot>"
		#IO.inspect(eliot2)
	end
end  # End TestPersonModule
