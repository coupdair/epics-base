#!/bin/bash

#RedPitayaEPICS for onboard LEDs

#progressing LED bar (forever)
for((;;)); do s=1; for((i=0;i<8;++i)); do ./caput SR00RPA01:LED${i}_STATE_CMD $s; sleep 0.5; done; s=0; for((i=0;i<8;++i)); do ./caput SR00RPA01:LED${i}_STATE_CMD $s; done; done

