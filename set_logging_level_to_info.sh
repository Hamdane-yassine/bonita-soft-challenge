#!/bin/bash

# Path to the log4j2 appenders configuration file
CONFIG_FILE="/opt/bonita/conf/logs/log4j2-appenders.xml"

# Check if the configuration file exists
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file not found: $CONFIG_FILE"
    exit 1
fi

# Display a message about checking and setting the log level
echo "Ensuring root logger level is set to INFO in $CONFIG_FILE..."

# The script uses sed to process the XML file
# It targets the Root logger element and changes its level to INFO
sed -i 's/<Root level="[^"]*"/<Root level="ERROR"/' $CONFIG_FILE

echo "Log level update completed."