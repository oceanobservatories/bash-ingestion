#!/bin/bash
#Ingest.adcps-jln_recovered         /omc_data/whoi/OMC/GP03FLMA/R00001/adcp/*.000          GP03FLMA-RIS02-01-ADCPSL000

#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-03-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-04-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-05-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-06-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-07-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-08-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-09-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-10-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-11-CTDMOG000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-12-CTDMOH000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-13-CTDMOH000
#Ingest.ctdmo-ghqr_recovered        /omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37*.hex       GP03FLMA-RIS02-14-CTDMOH000

#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-03-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-04-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-05-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-06-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-07-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-08-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-09-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-10-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-11-CTDMOG000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-12-CTDMOH000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-13-CTDMOH000
#Ingest.ctdmo-ghqr-sio_recovered    /omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT      GP03FLMA-RIS02-14-CTDMOH000

#Ingest.dosta-abcdjm-sio_recovered  /omc_data/whoi/OMC/GP03FLMA/R00001/dosta/DOS*.DAT      GP03FLMA-RIS01-03-DOSTAD000

#Ingest.flort-dj-sio_recovered      /omc_data/whoi/OMC/GP03FLMA/R00001/flort/FLO*.DAT      GP03FLMA-RIS01-01-FLORTD000

#Ingest.phsen-abcdef_recovered      /omc_data/whoi/OMC/GP03FLMA/R00001/sami/SAMI*.txt      GP03FLMA-RIS01-02-PHSENE000

#Ingest.sio-eng-sio_recovered       /omc_data/whoi/OMC/GP03FLMA/R00001/*_SIOC/status/STA*.DAT  GP03FLMA-FM001-00-ENG000000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/wfp-CP02PMCO-rcvr-command.log
INGESTLOGT=/home/wdk/race/log/wfp-CP02PMCO-rcvr-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting wfp-GP03FLMA-rcvr.sh"

#Files of the type:
ADCP_000=/omc_data/whoi/OMC/GP03FLMA/R00001/adcp/*.000

HEX_SBE03=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710257_*.hex
HEX_SBE04=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710220_*.hex
HEX_SBE05=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710260_*.hex
HEX_SBE06=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710215_*.hex
HEX_SBE07=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710254_*.hex
HEX_SBE08=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710262_*.hex
HEX_SBE09=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710252_*.hex
HEX_SBE10=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710219_*.hex
HEX_SBE11=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710256_*.hex
HEX_SBE12=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710226_*.hex
HEX_SBE13=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710229_*.hex
HEX_SBE14=/omc_data/whoi/OMC/GP03FLMA/R00001/mc/SBE37-IM_03710267_*.hex
DAT_CTD=/omc_data/whoi/OMC/GP03FLMA/R00001/ctdmo/CTD*.DAT

DAT_DOS=/omc_data/whoi/OMC/GP03FLMA/R00001/dosta/DOS*.DAT
DAT_FLO=/omc_data/whoi/OMC/GP03FLMA/R00001/flort/FLO*.DAT
DAT_STA=/omc_data/whoi/OMC/GP03FLMA/R00001/*_SIOC/status/STA*.DAT
TXT_SAM=/omc_data/whoi/OMC/GP03FLMA/R00001/sami/SAMI*.txt


#Pick up the files:
ADCP_000_files=$(find $ADCP_000 -print | head -250)

HEX_SBE_files=$(find $HEX_SBE -print | head -250)
DAT_CTD_files=$(find $DAT_CTD -print | head -250)

DAT_DOS_files=$(find $DAT_DOS -print | head -250)
DAT_FLO_files=$(find $DAT_FLO -print | head -250)
DAT_STA_files=$(find $DAT_STA -print | head -250)
TXT_SAM_files=$(find $TXT_SAM -print | head -250)

#Command generation:

# CTDMO(G/H)

if  grep --quiet $HEX_SBE03 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE03
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE03 GP03FLMA-RIS02-03-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE03 GP03FLMA-RIS02-03-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE04 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE04
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE04 GP03FLMA-RIS02-04-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE04 GP03FLMA-RIS02-04-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE05 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE05
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE05 GP03FLMA-RIS02-05-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE05 GP03FLMA-RIS02-05-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE06 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE06
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE06 GP03FLMA-RIS02-06-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE06 GP03FLMA-RIS02-06-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE07 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE07
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE07 GP03FLMA-RIS02-07-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE07 GP03FLMA-RIS02-07-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE08 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE08
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE08 GP03FLMA-RIS02-08-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE08 GP03FLMA-RIS02-08-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE09 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE09
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE09 GP03FLMA-RIS02-09-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE09 GP03FLMA-RIS02-09-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE10 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE10
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE10 GP03FLMA-RIS02-10-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE10 GP03FLMA-RIS02-10-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE11 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE11
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE11 GP03FLMA-RIS02-11-CTDMOG000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE11 GP03FLMA-RIS02-11-CTDMOG000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE12 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE12
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE12 GP03FLMA-RIS02-12-CTDMOH000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE12 GP03FLMA-RIS02-12-CTDMOH000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE13 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE13
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE13 GP03FLMA-RIS02-13-CTDMOH000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE13 GP03FLMA-RIS02-13-CTDMOH000 recovered
	sleep 3
fi

if  grep --quiet $HEX_SBE14 $EDEXLOGFILES; then
	 echo "move on" > /dev/null
else
	ls -l $HEX_SBE14
	echo $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE14 GP03FLMA-RIS02-14-CTDMOH000 recovered
	     $INGS Ingest.ctdmo-ghqr_recovered $HEX_SBE14 GP03FLMA-RIS02-14-CTDMOH000 recovered
	sleep 3
fi


#Ingest.adcps-jln_recovered         /omc_data/whoi/OMC/GP03FLMA/R00001/adcp/*.000          GP03FLMA-RIS02-01-ADCPSL000
for files in $ADCP_000_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.adcps-jln_recovered $files GP03FLMA-RIS02-01-ADCPSL000 recovered
             $INGS Ingest.adcps-jln_recovered $files GP03FLMA-RIS02-01-ADCPSL000 recovered
        sleep 3
    fi
done

##################################################  unknown  ########################################################
#********************************************************************************************************************

#Ingest.dosta-abcdjm-sio_recovered  /omc_data/whoi/OMC/GP03FLMA/R00001/dosta/DOS*.DAT      GP03FLMA-RIS01-03-DOSTAD000
for files in $DAT_DOS_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.dosta-abcdjm-sio_recovered $files GP03FLMA-RIS01-03-DOSTAD000 recovered
             $INGS Ingest.dosta-abcdjm-sio_recovered $files GP03FLMA-RIS01-03-DOSTAD000 recovered
        sleep 3
    fi
done

#Ingest.flort-dj-sio_recovered      /omc_data/whoi/OMC/GP03FLMA/R00001/flort/FLO*.DAT            GP03FLMA-RIS01-01-FLORTD000
for files in $DAT_FLO_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.flort-dj-sio_recovered $files GP03FLMA-RIS01-01-FLORTD000 recovered
             $INGS Ingest.flort-dj-sio_recovered $files GP03FLMA-RIS01-01-FLORTD000 recovered
        sleep 3
    fi
done

#Ingest.phsen-abcdef_recovered      /omc_data/whoi/OMC/GP03FLMA/R00001/sami/SAMI*.txt      GP03FLMA-RIS01-02-PHSENE000
for files in $TXT_SAM_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.phsen-abcdef_recovered $files GP03FLMA-RIS01-02-PHSENE000 recovered
             $INGS Ingest.phsen-abcdef_recovered $files GP03FLMA-RIS01-02-PHSENE000 recovered
        sleep 3
    fi
done

#Ingest.sio-eng-sio_recovered       /omc_data/whoi/OMC/GP03FLMA/R00001/*_SIOC/status/STA*.DAT  GP03FLMA-FM001-00-ENG000000
for files in $DAT_STA_files
do
    if  grep --quiet $files $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $files
        echo $INGS Ingest.sio-eng-sio_recovered $files GP03FLMA-FM001-00-ENG000000 recovered
             $INGS Ingest.sio-eng-sio_recovered $files GP03FLMA-FM001-00-ENG000000 recovered
        sleep 3
    fi
done

date
echo "ended GP03FLMA.sh"
