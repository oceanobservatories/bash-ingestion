#!/bin/bash

# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_*.mrg GP05MOAS-GL001-00-ENG000000
# Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_*.mrg GP05MOAS -GL001-01-FLORDM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_*.mrg GP05MOAS-GL001-02-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_*.mrg GP05MOAS-GL001-04-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_*.mrg GP05MOAS-GL002-00-ENG000000
# Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_*.mrg GP05MOAS-GL002-01-FLORDM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_*.mrg GP05MOAS-GL002-02-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_*.mrg GP05MOAS-GL002-04-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_*.mrg GP05MOAS-GL003-00-ENG000000
# Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_*.mrg GP05MOAS-GL003-01-FLORDM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_*.mrg GP05MOAS-GL003-02-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_*.mrg GP05MOAS-GL003-04-CTDGVM000


INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-gp-glider-command.log
#INGESTLOGT=/home/developer/ingest_initial/log/com.log
INGESTLOGT=/home/wdk/race/log/new-ingest-gp-glider-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV


EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
#echo "starting ingest-wfp-CP02PMCI.sh"
echo "starting full-ingest-gp-glider.sh"

#
GL1D2=/omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp*.mrg
#
GL2D2=/omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp*.mrg
#
GL3D3=/omc_data/whoi/OMC/GP05MOAS-GL003/D00001/merged-from-glider/unit*.mrg #previous dirctory is D000003!!!then changed to D000001, then D0000002
#

GL1D2_files=$(find $GL1D2  -print)
#
GL2D2_files=$(find $GL2D2  -print)
#
GL3D3_files=$(find $GL3D3  -print)

#define UFrame Route:
declare -x UFR=(Ingest.glider-eng-glider_telemetered
                Ingest.flord-m-glider_telemetered  
                Ingest.dosta-abcdjm-glider_telemetered 
                Ingest.ctdgv-m-glider_telemetered)

#define Glider Reference Desingnator:
declare -x GL1REFDES=(GP05MOAS-GL001-00-ENG000000
                      GP05MOAS-GL001-01-FLORDM000
                      GP05MOAS-GL001-02-DOSTAM000 
                      GP05MOAS-GL001-04-CTDGVM000) 
                
# telemetered
for g1d2 in $GL1D2_files
do
    if  grep --quiet $g1d2 $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l $g1d2
        for i in {0..3}
        do
            echo "$INGS ${UFR[i]} $g1d2 ${GL1REFDES[i]} telemetered"
                  $INGS ${UFR[i]} $g1d2 ${GL1REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g1d2 CP05MOAS-GL001-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g1d2 CP05MOAS-GL001-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g1d2 CP05MOAS-GL001-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g1d2 CP05MOAS-GL001-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g1d2 CP05MOAS-GL001-03-CTDGVM000 telemetered

declare -x GL2REFDES=(GP05MOAS-GL002-00-ENG000000
                      GP05MOAS-GL002-01-FLORDM000
                      GP05MOAS-GL002-02-DOSTAM000 
                      GP05MOAS-GL002-04-CTDGVM000) 

for g2d2 in $GL2D2_files
do
    if  grep --quiet $g2d2 $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        for i in {0..3}
        do
            echo "$INGS ${UFR[i]} $g2d2 ${GL2REFDES[i]} telemetered"
                  $INGS ${UFR[i]} $g2d2 ${GL2REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g2d2 CP05MOAS-GL002-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g2d2 CP05MOAS-GL002-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g2d2 CP05MOAS-GL002-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g2d2 CP05MOAS-GL002-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g2d2 CP05MOAS-GL002-03-CTDGVM000 telemetered

declare -x GL3REFDES=(GP05MOAS-GL003-00-ENG000000
                      GP05MOAS-GL003-01-FLORDM000
                      GP05MOAS-GL003-02-DOSTAM000 
                      GP05MOAS-GL003-04-CTDGVM000) 

for g3d3 in $GL3D3_files
do
    if  grep --quiet $g3d2 $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        for i in {0..3}
        do
            echo "$INGS ${UFR[i]} $g3d3 ${GL3REFDES[i]} telemetered"
                  $INGS ${UFR[i]} $g3d3 ${GL3REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g3d3 CP05MOAS-GL003-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g3d3 CP05MOAS-GL003-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g3d3 CP05MOAS-GL003-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g3d3 CP05MOAS-GL003-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g3d3 CP05MOAS-GL003-03-CTDGVM000 telemetered

date
#echo "starting ingest-wfp-CP02PMCI.sh"
echo "ended new-ingest-gp-glider.sh"
