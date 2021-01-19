#!/bin/bash

#RedPitayaEPICS for onboard LEDs

#each LED ON/OFF once
#for((i=0;i<8;++i)); do for s in 1 0; do ./caput SR00RPA01:LED${i}_STATE_CMD $s; sleep 0.5; done; done;

#each LED ON/OFF forever
for((;;)); do for((i=0;i<8;++i)); do for s in 1 0; do ./caput SR00RPA01:LED${i}_STATE_CMD $s; sleep 0.5; done; done; done
