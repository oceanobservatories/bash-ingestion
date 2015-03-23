#!/bin/bash
#
# Ingest.ctdgv-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit*.mrg         GP05MOAS-GL001-04-CTDGVM000
# Ingest.dosta-abcdjm-glider_recovered    /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit*.mrg         GP05MOAS-GL001-02-DOSTAM000
# Ingest.flord-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit*.mrg         GP05MOAS-GL001-01-FLORDM000
# Ingest.glider-eng-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit*.mrg         GP05MOAS-GL001-00-ENG000000

# Ingest.ctdgv-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit*.mrg         GP05MOAS-GL002-04-CTDGVM000
# Ingest.dosta-abcdjm-glider_recovered    /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit*.mrg         GP05MOAS-GL002-02-DOSTAM000
# Ingest.flord-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit*.mrg         GP05MOAS-GL002-01-FLORDM000
# Ingest.glider-eng-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit*.mrg         GP05MOAS-GL002-00-ENG000000

# Ingest.ctdgv-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit*.mrg         GP05MOAS-GL003-04-CTDGVM000
# Ingest.dosta-abcdjm-glider_recovered    /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit*.mrg         GP05MOAS-GL003-02-DOSTAM000
# Ingest.flord-m-glider_recovered         /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit*.mrg         GP05MOAS-GL003-01-FLORDM000
# Ingest.glider-eng-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit*.mrg         GP05MOAS-GL003-00-ENG000000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-gp-glider-command.log
INGESTLOGT=/home/wdk/race/log/new-ingest-gp-glider-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting gp-glider-2-3-250.sh"

#Pick up files from folder:
GL2R1=/omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit*.mrg
GL3R1=/omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit*.mrg

GL2R1_files=$(find $GL2R1  -print|head -250)
GL3R1_files=$(find $GL3R1  -print|head -250)

#define UFrame Route:
declare -x UFR=(Ingest.glider-eng-glider_recovered
                Ingest.flord-m-glider_recovered  
                Ingest.dosta-abcdjm-glider_recovered 
                Ingest.ctdgv-m-glider_recovered)

#define Glider Reference Desingnator:
declare -x GL2REFDES=(GP05MOAS-GL002-00-ENG000000
                      GP05MOAS-GL002-01-FLORDM000
                      GP05MOAS-GL002-02-DOSTAM000 
                      GP05MOAS-GL002-04-CTDGVM000) 

declare -x GL3REFDES=(GP05MOAS-GL003-00-ENG000000
                      GP05MOAS-GL003-01-FLORDM000
                      GP05MOAS-GL003-02-DOSTAM000 
                      GP05MOAS-GL003-04-CTDGVM000) 
                
# Glider 2 recovered
for g2r1 in $GL2R1_files
do
    if  grep --quiet $g2r1 $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $g2r1
        for i in {0..3}
        do
            echo "$INGS ${UFR[i]} $g2r1 ${GL2REFDES[i]} recovered"
                  $INGS ${UFR[i]} $g2r1 ${GL2REFDES[i]} recovered
            sleep 3
        done
    fi
    
done

# Glider 3 recovered
for g3r1 in $GL3R1_files
do
    if  grep --quiet $g3r1 $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $g3r1
        for i in {0..3}
        do
            echo "$INGS ${UFR[i]} $g3r1 ${GL3REFDES[i]} recovered"
                  $INGS ${UFR[i]} $g3r1 ${GL3REFDES[i]} recovered
            sleep 3
        done
    fi
    
done

date
echo "ended gp-glider-2-3-250.sh"
