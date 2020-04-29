import urllib.request
import json

def download_tfstate(url):
    urllib.request.urlretrieve(url, 'terraform.tfstate')

def parse_tfstate():
    with open("terraform.tfstate", "r") as tfstate:
        data = json.load(tfstate)
        create_inventory(data)

def create_inventory(data):
    inventory_file = open("../inventory", "w+")
    inventory_file.write("[master]\n")
    inventory_file.write(data['outputs']['id_geth_master']['value'] + " ansible_host=")
    inventory_file.write(data['outputs']['ip_geth_master']['value'] + "\n")
    inventory_file.write("\n")
    inventory_file.write("[slaves]\n")

    slaves_arr = []
    slaves_ip_arr = []
    if isinstance(data['outputs']['id_geth_slave']['value'], str):
        slaves_arr.append(data['outputs']['id_geth_slave']['value'])
        slaves_ip_arr.append(data['outputs']['ip_geth_slave']['value'])
    else:
        slaves_arr = slaves_arr + data['outputs']['id_geth_slave']['value']
        slaves_ip_arr = slaves_ip_arr + data['outputs']['ip_geth_slave']['value']

    for i in range(len(slaves_arr)):
        inventory_file.write(slaves_arr[i] + " ansible_host=")
        inventory_file.write(slaves_ip_arr[i] + "\n")


if __name__ == "__main__":
    download_tfstate('https://storage.cloud.google.com/tfstate-storage/infra/terraform.tfstate')
    parse_tfstate()
