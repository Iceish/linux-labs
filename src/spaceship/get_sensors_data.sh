#!/bin/bash

# Sensor data arrays
sensor_names=("Temperature" "Pressure" "Humidity" "Radiation" "Acceleration" "Altitude" "Wind Speed" "CO2 Level" "Battery Level" "Solar Radiation")
sensor_units=("°C" "kPa" "%" "mSv" "m/s²" "m" "m/s" "ppm" "%" "W/m²")

# Function to generate random sensor data
generate_sensor_data() {
  local min=0
  local max=100

  # Generate random data within the specified range
  local data=$(shuf -i $min-$max -n 1)
  echo $data
}

# Function to print fancy sensor data
print_fancy_sensor_data() {
  local sensor_name=$1
  local sensor_data=$2
  local sensor_unit=$3

  # Define colors and formatting
  local bold=$(tput bold)
  local yellow=$(tput setaf 3)
  local green=$(tput setaf 2)
  local reset=$(tput sgr0)

  echo "${bold}${sensor_name}:${reset} ${yellow}${sensor_data}${reset} ${green}${sensor_unit}${reset}"
}

# Generate and print the sensor report
echo "Sensor Report:"
echo "$(date)"
echo "--------------"

for ((i=0; i<${#sensor_names[@]}; i++)); do
  sensor_name=${sensor_names[i]}
  sensor_unit=${sensor_units[i]}
  sensor_data=$(generate_sensor_data)

  print_fancy_sensor_data "$sensor_name" "$sensor_data" "$sensor_unit"
done

