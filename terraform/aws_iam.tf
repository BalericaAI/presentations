users = {
  "student.alice" = {
    display_name   = "Alice Student"
    email          = "alice@example.com"
    team           = "Cloud"
    console_access = true
    groups         = ["students", "readonly"]
  }

  "student.bob" = {
    display_name   = "Bob Student"
    email          = "bob@example.com"
    team           = "Security"
    console_access = false
    groups         = ["students"]
  }
}

default_tags = {
  Environment = "training"
  Project     = "resume-labs"
}
