resource "local_file" "mt-foo" {
  content  = "Version3"
  filename = "/home/vagrant/hello_world.txt"
}

resource "local_file" "mt-heal" {
  content  = "Heal the world"
  filename = "/home/vagrant/healtheworld.txt"
}


