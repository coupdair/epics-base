#!/bin/bash

#RedPitayaEPICS acquisition (enlight onboard LED)

#all LED OFF
for((i=0;i<8;++i)); do ./caput SR00RPA01:LED${i}_STATE_CMD 0; done

#LED ON
./caput SR00RPA01:LED0_STATE_CMD 1

# Reset acquisition config. This sets trigger source to DISABLED
./caput SR00RPA01:RESET_ACQ_CMD 1
# Start continuous acquisition
./caput SR00RPA01:START_CONT_ACQ_CMD 1
# Manually fire off a soft internal trigger
./caput SR00RPA01:ACQ_TRIGGER_SRC_CMD NOW
# Plot the data somehow by reading the waveform
./caget SR00RPA01:IN1_DATA_MONITOR
# Stop acquisition
./caput SR00RPA01:STOP_ACQ_CMD 1

#LED OFF
./caput SR00RPA01:LED0_STATE_CMD 0

