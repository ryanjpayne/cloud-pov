
# Provider Configuration
project     = "pr-***"
region      = "us-east1"

# Infrastructure Configuration
alias  = "pov"

subnet_cidr_1 = "10.0.1.0/24"
subnet_cidr_2 = "10.0.2.0/24"
subnet_cidr_3 = "10.0.3.0/24"

# GKE Configuration
cluster_name = "my-cluster"
gke_num_nodes = 1
node_os = "UBUNTU_CONTAINERD"  # Allowed Values: UBUNTU_CONTAINERD or COS_CONTAINERD
autopilot = false
# If you enable autopilot, prometheus must = false

# CrowdStrike Config
# Before apply, please run: `helm repo add kpagent-helm https://registry.crowdstrike.com/kpagent-helm && helm repo update`

sensor_type = "FalconNodeSensor"  # Allowed Values: FalconNodeSensor or FalconContainer
# If you choose autopilot = true, sensor_type must = FalconContainer

cid = "" # CID needs to be all lowercase and not include the hash, ie remove -XX
crowdstrike_cloud = "us-1"
client_id = ""
client_secret = ""
docker_token = ""

# Other Optional Features

# CrowdStrike Detection Container
detection_container = false

# Prometheus Monitoring Stack
# If prometheus = true, please run `helm repo add prometheus-community https://prometheus-community.github.io/helm-charts && helm repo update`
prometheus = false
