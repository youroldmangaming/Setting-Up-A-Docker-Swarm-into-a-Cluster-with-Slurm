#!/bin/bash  
#SBATCH --job-name=swarm-join       # Name of the job
#SBATCH --ntasks=1                  # Number of tasks per node
#SBATCH --nodes=4                   # Number of nodes to run on
#SBATCH --time=00:10:00             # Time limit for the job

# Docker Swarm join command with token and manager IP
SWARM_MANAGER_IP="192.168.192.12"
SWARM_PORT="2377"
SWARM_TOKEN="SWMTKN-1-5lr4dop44bf3qv6zte06ypcqi5dy75mwibjslu6bjl2ombik3s-3r5ff8p7a2h1ms1gakh987z7q"

# Command to join the swarm
docker swarm join --token $SWARM_TOKEN $SWARM_MANAGER_IP:$SWARM_PORT
