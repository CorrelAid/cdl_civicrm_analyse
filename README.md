This repo contains IaC code to set up a 
### Setup

1. Install [OpenTofu](https://opentofu.org/docs/intro/install/), [TFlint](https://github.com/terraform-linters/tflint) and [uv](https://docs.astral.sh/uv/getting-started/installation/)

2. Set up pre-commit
    ```
    uv run pre-commit install
    ```

3. Install ansible requirements
    ```
    uv run ansible-galaxy install -r ansible/requirements.yml
    ```

4. Setup [Netbird](https://docs.netbird.io/how-to/installation) and ask an admin to be added to the CorrelAid organisation.

5. Set Environment Variables with copy pasting the script in the bitwarden collection belonging to this project.

### Run OpenTofu

```
tofu apply
```

### Run Ansible

```
uv run ansible-playbook ansible/playbook.yml 
```