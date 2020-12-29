#!/bin/bash

# This file should be copied to the config directory mounted by the Docker
# container at started. Edit this file to customize the environment variables
# controlling the infrastructure that SLPDB depends on.

# Set the MongoDB IP address and port. By default uses the MongoDB Docker
# container bundled in the docker-compose.yml file.
#export db_url=mongodb://localhost:27017
export db_url=mongodb://mongodb:27017


# Set the full node IP address and port
export rpc_host=bitcoind
export rpc_port=18443
export rpc_user=alice
export rpc_pass=password

export zmq_incoming_host=bitcoind
export zmq_incoming_port=8332

# Turn off graph search
export enable_graph_search=0

# Turn off ZMQ output port
export zmq_outgoing_enable=0

# Set the telemtry name for this node
export telemetry_advertised_host=mainnet-cash-regtest

npm start
#tsc && node --max_old_space_size=8192 index run --startHeight 604260
