#!/bin/bash

# After the qpidd crash, GL311 and GL386 both had ingestion issues. The data for the corresponding reference designators was purged and must be reingested.

# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg CE05MOAS-GL311-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg CE05MOAS-GL311-01-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg CE05MOAS-GL311-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg CE05MOAS-GL311-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg CE05MOAS-GL311-05-CTDGVM000

# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg CE05MOAS-GL386-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg CE05MOAS-GL386-01-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg CE05MOAS-GL386-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg CE05MOAS-GL386-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg CE05MOAS-GL386-05-CTDGVM000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-gp-glider-command.log
#INGESTLOGT=/home/developer/ingest_initial/log/com.log
INGESTLOGT=/home/wdk/race/log/new-ingest-gp-glider-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV


EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
#echo "starting ingest-ce-glider.sh"
echo "starting full-ingest-ce-glider-after-crash-1.sh"

GL311=/omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_*.mrg
#
GL386=/omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_*.mrg
#

GL311_files=$(find $GL311  -print)
#
GL386_files=$(find $GL386  -print)
#

#define UFrame Route:
declare -x UFR=(Ingest.glider-eng-glider_telemetered
                Ingest.parad-m-glider_telemetered
                Ingest.flord-m-glider_telemetered
                Ingest.dosta-abcdjm-glider_telemetered
                Ingest.ctdgv-m-glider_telemetered)


#G311:
#define Glider Reference Desingnator:
declare -x GL1REFDES=(CE05MOAS-GL311-00-ENG000000
                      CE05MOAS-GL311-01-PARADM000
                      CE05MOAS-GL311-02-FLORTM000
                      CE05MOAS-GL311-04-DOSTAM000
                      CE05MOAS-GL311-05-CTDGVM000)

for file in $GL311_files
do
    if  grep --quiet $file $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $file
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $file ${GL1REFDES[i]} telemetered"
                  $INGS ${UFR[i]} $file ${GL1REFDES[i]} telemetered
        done
        sleep 3
    fi
done

#G386:
#define Glider Reference Desingnator:
declare -x GL1REFDES=(CE05MOAS-GL386-00-ENG000000
                      CE05MOAS-GL386-01-PARADM000
                      CE05MOAS-GL386-02-FLORTM000
                      CE05MOAS-GL386-04-DOSTAM000
                      CE05MOAS-GL386-05-CTDGVM000)

for file in $GL386_files
do
    if  grep --quiet $file $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $file
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $file ${GL1REFDES[i]} telemetered"
                  $INGS ${UFR[i]} $file ${GL1REFDES[i]} telemetered
        done
        sleep 3
    fi
done


date
echo "end of full-ingest-ce-glider-after-crash-1.sh"
