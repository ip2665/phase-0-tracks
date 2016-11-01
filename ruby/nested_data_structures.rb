celebrity = {
	name: "Brad Pitt",
	status: "Divorced",
	spouse: ["Angelina Jolie", "Jennifer Aniston"],
	year: 1963,
	work: ["actor","producer","soundtrack"],
	cinematography: {fightclub: 1999, troy: 2004, babel:2006}
}

p "Celebrity "
p "=========================="
p "Name             : "+celebrity[:name]
p "Status           : "+celebrity[:status]
p "Spouse(s)        : "+celebrity[:spouse].join(",")
p "Year Born        : "+celebrity[:year].to_s
p "Work             : "+celebrity[:work].join(",")
p "cinematography   : "
celebrity[:cinematography].each do |key,val|
p "                   #{key} year #{val}"	
	
end 

	
