# Nimiq deploy scripts

## Ansible
  Ansible root folder is `ansible`

  ### Target Requirements

  - `sudo apt-get install python-apt`

  ## Ansible Orchestrator Requirements

  - `ansible-galaxy install leonidas.nvm` To install nodejs.
  - `ansible-galaxy install geerlingguy.certbot` To install certbot.

  ## Start
  - Copy files named `*.example.yml`, add your variables instead of `<PLACEHOLDERS>`, save them with the same name without `.example` in the name.
  - Do the same thing in `host_vars`, but replace `HOST` with the name of your host that you placed inside `hosts` file in the root.
  - Start with `ansible-playbook -i hosts miners.yml`