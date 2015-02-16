#!/bin/bash
#Ingest.ctdmo-ghqr_recovered          /omc_data/whoi/OMC/GP02HYPM/R00001/mc/SBE37*.hex         GP02HYPM-RIS01-01-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered      /omc_data/whoi/OMC/GP02HYPM/R00001/ctdmo/CTD*.DAT        GP02HYPM-RIS01-01-CTDMOG000
#Ingest.sio-eng-sio_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/SIOC/status/STA*.DAT  GP02HYPM-GP001-00-ENG000000

#Ingest.ctdpf-ckl-wfp_recovered       /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/C*.DAT      GP02HYPM-WFP02-04-CTDPFL000
#Ingest.dosta-ln-wfp_recovered        /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-03-DOSTAL000
#Ingest.flord-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-01-FLORDL000
#Ingest.vel3d-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/A*.DAT      GP02HYPM-WFP02-05-VEL3DL000
#Ingest.wfp-eng-stc-imodem_recovered  /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-00-ENG000000

#Ingest.ctdpf-ckl-wfp_recovered       /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/C*.DAT      GP02HYPM-WFP03-04-CTDPFL000
#Ingest.dosta-ln-wfp_recovered        /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP03-03-DOSTAL000
#Ingest.flord-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP03-01-FLORDL000
#Ingest.vel3d-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/A*.DAT      GP02HYPM-WFP03-05-VEL3DL000
#Ingest.wfp-eng-stc-imodem_recovered  /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP03-00-ENG000000    


INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/wfp-CP02PMCO-rcvr-command.log
INGESTLOGT=/home/wdk/race/log/wfp-CP02PMCO-rcvr-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting wfp-CP02PMCO-rcvr.sh"

#files of the type:
DAT_A_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/A*.DAT
DAT_C_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/C*.DAT
DAT_E_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT

DAT_A_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/A*.DAT
DAT_C_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/C*.DAT
DAT_E_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT

DAT_CTD=/omc_data/whoi/OMC/GP02HYPM/R00001/ctdmo/CTD*.DAT
DAT_STA=/omc_data/whoi/OMC/GP02HYPM/R00001/SIOC/status/STA*.DAT
HEX_SBE=/omc_data/whoi/OMC/GP02HYPM/R00001/mc/SBE37*.hex

#Pick up the files:
DAT_A_12936_files=$(find $DAT_A_12936 -print)
DAT_C_12936_files=$(find $DAT_C_12936 -print)
DAT_E_12936_files=$(find $DAT_E_12936 -print)

DAT_A_12774_files=$(find $DAT_A_12774 -print)
DAT_C_12774_files=$(find $DAT_C_12774 -print)
DAT_E_12774_files=$(find $DAT_E_12774 -print)

DAT_CTD_files=$(find $DAT_CTD -print)
DAT_STA_files=$(find $DAT_STA -print)
HEX_SBE_files=$(find $HEX_SB -print)

#Command generation:
























      
