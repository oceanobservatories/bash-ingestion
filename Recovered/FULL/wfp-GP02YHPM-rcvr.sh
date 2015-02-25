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
echo "starting wfp-GP02HYPM-rcvr.sh"

#Files of the type:
DAT_A_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/A*.DAT
DAT_C_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/C*.DAT
DAT_E_12936=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT

DAT_A_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/A*.DAT
DAT_C_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/C*.DAT
DAT_E_12774=/omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT

#DAT_CTD=/omc_data/whoi/OMC/GP02HYPM/R00001/ctdmo/CTD*.DAT          no files or even folder yet!!!!!!
DAT_STA=/omc_data/whoi/OMC/GP02HYPM/R00001/SIOC/status/STA*.DAT
#HEX_SBE=/omc_data/whoi/OMC/GP02HYPM/R00001/mc/SBE37*.hex           no info about which folder to take!!!!!!!!!

#Pick up the files:
DAT_A_12936_files=$(find $DAT_A_12936 -print)
DAT_C_12936_files=$(find $DAT_C_12936 -print)
DAT_E_12936_files=$(find $DAT_E_12936 -print)

DAT_A_12774_files=$(find $DAT_A_12774 -print)
DAT_C_12774_files=$(find $DAT_C_12774 -print)
DAT_E_12774_files=$(find $DAT_E_12774 -print)

#DAT_CTD_files=$(find $DAT_CTD -print)
DAT_STA_files=$(find $DAT_STA -print)
#HEX_SBE_files=$(find $HEX_SBE -print)

#Command generation:

#########################################              12936            ##################################################

#Ingest.vel3d-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/A*.DAT      GP02HYPM-WFP02-05-VEL3DL000
for files in $DAT_A_12936_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.vel3d-l-wfp_recovered $files GP02HYPM-WFP02-05-VEL3DL000 recovered
             $INGS Ingest.vel3d-l-wfp_recovered $files GP02HYPM-WFP02-05-VEL3DL000 recovered
        sleep 3
    fi
done

#Ingest.ctdpf-ckl-wfp_recovered       /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/C*.DAT      GP02HYPM-WFP02-04-CTDPFL000
for files in $DAT_C_12936_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.ctdpf-ckl-wfp_recovered $files GP02HYPM-WFP02-04-CTDPFL000 recovered
             $INGS Ingest.ctdpf-ckl-wfp_recovered $files GP02HYPM-WFP02-04-CTDPFL000 recovered
        sleep 3
    fi
done

#Ingest.dosta-ln-wfp_recovered        /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-03-DOSTAL000
#Ingest.flord-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-01-FLORDL000
#Ingest.wfp-eng-stc-imodem_recovered  /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12936/E*.DAT      GP02HYPM-WFP02-00-ENG000000
for files in $DAT_E_12936_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.dosta-ln-wfp_recovered $files GP02HYPM-WFP02-03-DOSTAL000 recovered
             $INGS Ingest.dosta-ln-wfp_recovered $files GP02HYPM-WFP02-03-DOSTAL000 recovered
        sleep 3
        echo $INGS Ingest.flord-l-wfp_recovered $files GP02HYPM-WFP02-01-FLORDL000 recovered
             $INGS Ingest.flord-l-wfp_recovered $files GP02HYPM-WFP02-01-FLORDL000 recovered
        sleep 3
        echo $INGS Ingest.wfp-eng-stc-imodem_recovered $files GP02HYPM-WFP02-00-ENG000000 recovered
             $INGS Ingest.wfp-eng-stc-imodem_recovered $files GP02HYPM-WFP02-00-ENG000000 recovered
        sleep 3
    fi
done


######################################                   12774                    ########################################

#Ingest.vel3d-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/A*.DAT      GP02HYPM-WFP02-05-VEL3DL000
for files in $DAT_A_12774_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.vel3d-l-wfp_recovered $files GP02HYPM-WFP02-05-VEL3DL000 recovered
             $INGS Ingest.vel3d-l-wfp_recovered $files GP02HYPM-WFP02-05-VEL3DL000 recovered
        sleep 3
    fi
done

#Ingest.ctdpf-ckl-wfp_recovered       /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/C*.DAT      GP02HYPM-WFP02-04-CTDPFL000
for files in $DAT_C_12774_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.ctdpf-ckl-wfp_recovered $files GP02HYPM-WFP02-04-CTDPFL000 recovered
             $INGS Ingest.ctdpf-ckl-wfp_recovered $files GP02HYPM-WFP02-04-CTDPFL000 recovered
        sleep 3
    fi
done

#Ingest.dosta-ln-wfp_recovered        /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP02-03-DOSTAL000
#Ingest.flord-l-wfp_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP02-01-FLORDL000
#Ingest.wfp-eng-stc-imodem_recovered  /omc_data/whoi/OMC/GP02HYPM/R00001/wfp_12774/E*.DAT      GP02HYPM-WFP02-00-ENG000000
for files in $DAT_E_12774_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.dosta-ln-wfp_recovered $files GP02HYPM-WFP02-03-DOSTAL000 recovered
             $INGS Ingest.dosta-ln-wfp_recovered $files GP02HYPM-WFP02-03-DOSTAL000 recovered
        sleep 3
        echo $INGS Ingest.flord-l-wfp_recovered $files GP02HYPM-WFP02-01-FLORDL000 recovered
             $INGS Ingest.flord-l-wfp_recovered $files GP02HYPM-WFP02-01-FLORDL000 recovered
        sleep 3
        echo $INGS Ingest.wfp-eng-stc-imodem_recovered $files GP02HYPM-WFP02-00-ENG000000 recovered
             $INGS Ingest.wfp-eng-stc-imodem_recovered $files GP02HYPM-WFP02-00-ENG000000 recovered
        sleep 3
    fi
done

#*************************************************************************************************************************

#Ingest.ctdmo-ghqr-sio_recovered      /omc_data/whoi/OMC/GP02HYPM/R00001/ctdmo/CTD*.DAT        GP02HYPM-RIS01-01-CTDMOG000
#for files in $DAT_CTD_files
#do
#    if  grep --quiet $files $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l $files
#        echo $INGS Ingest.ctdmo-ghqr-sio_recovered $files GP02HYPM-RIS01-01-CTDMOG000 recovered
#             $INGS Ingest.ctdmo-ghqr-sio_recovered $files GP02HYPM-RIS01-01-CTDMOG000 recovered
#        sleep 3
#    fi
#done

#Ingest.sio-eng-sio_recovered         /omc_data/whoi/OMC/GP02HYPM/R00001/SIOC/status/STA*.DAT  GP02HYPM-GP001-00-ENG000000
for files in $DAT_STA_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.sio-eng-sio_recovered $files GP02HYPM-GP001-00-ENG000000 recovered
             $INGS Ingest.sio-eng-sio_recovered $files GP02HYPM-GP001-00-ENG000000 recovered
        sleep 3
    fi
done

#Ingest.ctdmo-ghqr_recovered          /omc_data/whoi/OMC/GP02HYPM/R00001/mc/SBE37*.hex         GP02HYPM-RIS01-01-CTDMOG000
#for files in $HEX_SBE_files
#do
#    if  grep --quiet $files $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l $files
#        echo $INGS Ingest.ctdmo-ghqr_recovered $files GP02HYPM-RIS01-01-CTDMOG000 recovered
#             $INGS Ingest.ctdmo-ghqr_recovered $files GP02HYPM-RIS01-01-CTDMOG000 recovered
#        sleep 3
#    fi
#done

date
echo "ended GP02HYPM.sh"
















     
