# cybercore &middot; [![Build Status](https://travis-ci.org/0exp/cybercore.svg?branch=master)](https://travis-ci.org/0exp/cybercore)

> my development environments and system configurations

> ansible@2.9.2

- [Macbook Setup](#macbook-setup)
- [Daily Tasks](#daily-tasks)
- [Crazy Tips](#crazy-tips)
- [(CI) Build Script](#ci-build-script)
- ([dotfiles](dotfiles))

---

- **ruby** (2.6.5)
- **rust** (1.40.0)
- **python** (3.8.0) / **python** (2.7.16)
- **nodejs** (latest) / **yarn** (1.21.1)
- **elixir** (1.9.4) / **erlang** (22.2)

---

### Macbook Setup

**(ansible)** macOS roles:
  - `macos_config` - apply basic macOS configs;
  - `macos_pyton_env` - setup **Python** environment;
  - `macos_js_env` - setup **JavaScript** environment;
  - `macos_ruby_env` - setup **Ruby** environment;
  - `macos_rust_env` - setup **Rust** environment;
  - `macos_elixir_env` - setup **Elixir** environment;
  - `macos_soft` - install neccessary sofwtare;
  - `macos_post_config` - apply post macOS configs (copy dotfiles, setup system fonts, clone projects, etc);

**(ansible)** setup macOS:
```shell
ansible-playbook macbook_setup.yml -v
```

- [sublime package list](dotfiles/sublime/packages.md)
- [dotfiles](dotfiles)

---

### Daily Tasks

```shell
ansible-playbook macbook_daily.yml --list-tasks
```

- **Environment**:
  - actualzie **dotfiles**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_dotfiles
    ````
  - actualize custom fonts
    ```shell
    ansible-playbook macbook_daily.yml --tags update_fonts
    ```
  - actualize **solargraph**
    ```shell
    ansible-playbook macbook_daily.yml --tags update_solargraph
    ```
  - update **spaceship-prompt**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_spaceship
    ```
  - update language environments:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_languages
    ```
- **Programming languages**:
  - update **rbenv**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_rbenv
    ```
  - update **pyenv**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_pyenv
    ```
  - update **rust**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_rust
    ```
  - update **js** (updates `nvm`, `node` and `yarn`):
    ```shell
    ansible-playbook macbook_daily.yml --tags update_js
    ```
  - update **elixir**:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_elixir
    ```
- **Software**:
  - update soft:
    ```shell
    ansible-playbook macbook_daily.yml --tags update_soft
    ```

---

### Crazy Tips

- open dahsdoc documentation about Ruby's `attr_reader` or `Kernel` module:
  ```shell
    rubydash attr_reader
  ```
  ```shell
    rubydash Kernel
  ```

- open dashdoc documentation for Docker:
  ```shell
    dashdoc docker:
  ```

---

### (CI) Build Script

```shell
pip3 install -r requirements.txt
yamllint --strict $(git ls-files '*.yaml' '*.yml')
ansible-lint *.yml
```

---

### TODO:

- move credential prompts to ansible-vault;
- clone sublime packages (and use `Package Control: Satisfy Dependencies`)
