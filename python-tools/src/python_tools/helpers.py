import yaml
from infisical_sdk import InfisicalSDKClient
import os
from dotenv import load_dotenv
load_dotenv()

def get_yaml_var(var, file_path):
    with open(file_path, "r") as stream:
        data = yaml.safe_load(stream)
    var = data[var]
    return var


def create_infisical_client():
    secret = os.getenv("TF_VAR_infisical_client_secret")
    assert secret is not None
    client = InfisicalSDKClient(host="https://app.infisical.com")
    client.auth.universal_auth.login(
        "5fd72230-4272-4738-851f-17c1f83b0e31",
        os.getenv("TF_VAR_infisical_client_secret"),
    )
    return client


def get_secret(name):
    inf_client = create_infisical_client()
    project_id = get_yaml_var("project_id", "../ansible/group_vars/unmanaged.yml")
    secret = inf_client.secrets.get_secret_by_name(
        environment_slug="prod", project_id=project_id, secret_name=name,   secret_path="/"
    ).secretValue
    assert secret is not None
    assert secret != ""
    return secret
