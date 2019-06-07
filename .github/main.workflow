workflow "New workflow" {
  on = "push"
  resolves = ["Docker Registry"]
}

action "Build image" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  args = "build -t jamesclick/secretlounge-ng ."
}

action "Docker Registry" {
  uses = "actions/docker/login@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Build image"]
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Push image" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["Docker Registry"]
  args = "push jamesclick/secretlounge-ng"
}
