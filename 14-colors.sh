#!/bin/bash

# Define colors
RED='\033[0;31m'         # Regular Red Text
GREEN='\033[0;32m'       # Regular Green Text
NC='\033[0m'             # No Color / Reset formatting

# Print colored text
echo -e "${RED}This text is red.${NC}"
echo -e "${GREEN}This text is green, and the next part is normal.${NC}"

# Combine colors
echo -e "${RED}Red text, ${GREEN}then green text, ${NC}then back to normal."
