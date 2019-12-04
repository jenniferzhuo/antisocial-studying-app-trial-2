namespace(:dev) do
  desc "Hydrate the database with some dummy data to look at so that developing is easier"
  task({ :prime => :environment}) do

l = Location.new
l.name = “Teamo”
l.address = “1115 E 55th St, Chicago, IL 60615”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Pret”
l.address = “University of Chicago, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Starbucks on 55th”
l.address = “1174 E 55th St, Chicago, IL 60615”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Refectory Cafe”
l.address = “1100 E 55th St, Chicago, IL 60615”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Ex Libris Cafe”
l.address = “1100 E 55th St, Chicago, IL 60615”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Regenstein”
l.address = “1100 E 55th St, Chicago, IL 60615”
l.category = “Library”
l.save

l = Location.new
l.name = “Harper Library”
l.address = “1116 E 59th St, Chicago, IL 60637”
l.category = “Library”
l.save

l = Location.new
l.name = “Harper Cafe”
l.address = “1116 E 59th St, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “John Crerar Library”
l.address = “5730 S Ellis Ave, Chicago, IL 60637”
l.category = “Library”
l.save

l = Location.new
l.name = “Hallowed Grounds”
l.address = “1127 E 57th St, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Cobb Cafe”
l.address = “Cobb Lecture Hall, S Ellis Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Café Logan”
l.address = “Logan Center for the Arts, E 60th St, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Quantum Cafe”
l.address = “Eckhardt, 5640 S Ellis Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Starbucks at Chicago Hospital”
l.address = “5700 S Drexel Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Sky Lobby Cafe”
l.address = “5700 S Maryland Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Law Library”
l.address = “1111 E 60th St, Chicago, IL 60637”
l.category = “Library”
l.save

l = Location.new
l.name = “Keller Center”
l.address = “1307 E 60th St, Chicago, IL 60637”
l.category = “Other”
l.save

l = Location.new
l.name = “Plein Air Cafe”
l.address = “5751 S Woodlawn Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Dollop Coffee Co.”
l.address = “5500A S University Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Grounds of Being”
l.address = “Swift Hall, 1025 E 58th St, Chicago, IL 60637”
l.category = “Cafe”
l.save

l = Location.new
l.name = “Robust Coffee Lounge”
l.address = “6300 S Woodlawn Ave, Chicago, IL 60637”
l.category = “Cafe”
l.save


  end


end