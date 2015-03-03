#!/bin/bash
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg CP05MOAS-GL001-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg CP05MOAS-GL001-05-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg CP05MOAS-GL001-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg CP05MOAS-GL001-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg CP05MOAS-GL001-03-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg CP05MOAS-GL002-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg CP05MOAS-GL002-05-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg CP05MOAS-GL002-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg CP05MOAS-GL002-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg CP05MOAS-GL002-03-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg CP05MOAS-GL003-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg CP05MOAS-GL003-05-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg CP05MOAS-GL003-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg CP05MOAS-GL003-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg CP05MOAS-GL003-03-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg CP05MOAS-GL003-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg CP05MOAS-GL003-05-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg CP05MOAS-GL003-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg CP05MOAS-GL003-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg CP05MOAS-GL003-03-CTDGVM000
#
# Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg CP05MOAS-GL003-00-ENG000000
# Ingest.parad-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg CP05MOAS-GL003-05-PARADM000
# Ingest.flort-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg CP05MOAS-GL003-02-FLORTM000
# Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg CP05MOAS-GL003-04-DOSTAM000
# Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg CP05MOAS-GL003-03-CTDGVM000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-cp-glider-command.log
#INGESTLOGT=/home/developer/ingest_initial/log/com.log
INGESTLOGT=/home/wdk/race/log/new-ingest-cp-glider-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)
source $EDEXSRV

date 
#echo "starting ingest-wfp-CP02PMCI.sh" 
echo "starting new-ingest-cp-glider.sh" 

#
GL1D2=/omc_data/whoi/OMC/CP05MOAS-GL001/D00002/merged-from-glider/cp_335_*.mrg
#
GL2D2=/omc_data/whoi/OMC/CP05MOAS-GL002/D00002/merged-from-glider/cp_340_*.mrg
#
GL3D2=/omc_data/whoi/OMC/CP05MOAS-GL003/D00002/merged-from-glider/cp_376_*.mrg
#
GL4D1=/omc_data/whoi/OMC/CP05MOAS-GL004/D00001/merged-from-glider/cp_380_*.mrg
#
GL5D1=/omc_data/whoi/OMC/CP05MOAS-GL005/D00001/merged-from-glider/cp_388_*.mrg
#
GL1D2_files=$(find $GL1D2  -print)
# $(find $GL1D2 -mtime -14 -print)
#
GL2D2_files=$(find $GL2D2  -print)
# $(find $GL2D2 -mtime -14 -print)
#
GL3D2_files=$(find $GL3D2  -print)
# $(find $GL3D2 -mtime -14 -print)

GL4D1_files=$(find $GL4D1  -print)
# $(find $GL4D1 -mtime -14 -print)
#
GL5D1_files=$(find $GL5D1  -print)
# $(find $GL5D1 -mtime -14 -print)
#

#define UFrame Route:
declare -x UFR=(Ingest.glider-eng-glider_telemetered
                Ingest.parad-m-glider_telemetered
                Ingest.flort-m-glider_telemetered  
                Ingest.dosta-abcdjm-glider_telemetered 
                Ingest.ctdgv-m-glider_telemetered)

#define Glider Reference Desingnator:
declare -x GL1REFDES=(CP05MOAS-GL001-00-ENG000000 
                      CP05MOAS-GL001-05-PARADM000
                      CP05MOAS-GL001-02-FLORTM000 
                      CP05MOAS-GL001-04-DOSTAM000 
                      CP05MOAS-GL001-03-CTDGVM000)

# telemetered
for g1d2 in $GL1D2_files
do

    if  grep --quiet $g1d2 $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l $g1d2
        for i in {0..4}
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

declare -x GL2REFDES=(CP05MOAS-GL002-00-ENG000000 
                      CP05MOAS-GL002-05-PARADM000
                      CP05MOAS-GL002-02-FLORTM000 
                      CP05MOAS-GL002-04-DOSTAM000 
                      CP05MOAS-GL002-03-CTDGVM000)

for g2d2 in $GL2D2_files
do
    if  grep --quiet $g2d2 $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l $g2d2
        for i in {0..4}
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

declare -x GL3REFDES=(CP05MOAS-GL003-00-ENG000000 
                      CP05MOAS-GL003-05-PARADM000
                      CP05MOAS-GL003-02-FLORTM000 
                      CP05MOAS-GL003-04-DOSTAM000 
                      CP05MOAS-GL003-03-CTDGVM000)

for g3d2 in $GL3D2_files
do
    if  grep --quiet $g3d2 $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l  $g3d2
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $g3d2 ${GL3REFDES[i]} telemetered" 
        $INGS ${UFR[i]} $g3d2 ${GL3REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g3d2 CP05MOAS-GL003-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g3d2 CP05MOAS-GL003-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g3d2 CP05MOAS-GL003-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g3d2 CP05MOAS-GL003-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g3d2 CP05MOAS-GL003-03-CTDGVM000 telemetered

declare -x GL4REFDES=(CP05MOAS-GL004-00-ENG000000 
                      CP05MOAS-GL004-05-PARADM000
                      CP05MOAS-GL004-02-FLORTM000 
                      CP05MOAS-GL004-04-DOSTAM000 
                      CP05MOAS-GL004-03-CTDGVM000)

for g4d1 in $GL4D1_files
do
    if  grep --quiet $g4d1 $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l $g4d1
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $g4d1 ${GL4REFDES[i]} telemetered" 
        $INGS ${UFR[i]} $g4d1 ${GL4REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g4d1 CP05MOAS-GL004-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g4d1 CP05MOAS-GL004-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g4d1 CP05MOAS-GL004-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g4d1 CP05MOAS-GL004-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g4d1 CP05MOAS-GL004-03-CTDGVM000 telemetered

declare -x GL5REFDES=(CP05MOAS-GL005-00-ENG000000 
                      CP05MOAS-GL005-05-PARADM000
                      CP05MOAS-GL005-02-FLORTM000 
                      CP05MOAS-GL005-04-DOSTAM000 
                      CP05MOAS-GL005-03-CTDGVM000)

for g5d1 in $GL5D1_files
do
    if  grep --quiet $g5d1 $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l $g5d1
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $g5d1 ${GL5REFDES[i]} telemetered" 
            $INGS ${UFR[i]} $g5d1 ${GL5REFDES[i]} telemetered
        done
        sleep 3 
    fi
    
done
    # echo $INGS Ingest.glider-eng-glider_telemetered $g5d1 CP05MOAS-GL005-00-ENG000000 telemetered
    # echo $INGS Ingest.parad-m-glider_telemetered $g5d1 CP05MOAS-GL005-05-PARADM000 telemetered
    # echo $INGS Ingest.flort-m-glider_telemetered $g5d1 CP05MOAS-GL005-02-FLORTM000 telemetered
    # echo $INGS Ingest.dosta-abcdjm-glider_telemetered $g5d1 CP05MOAS-GL005-04-DOSTAM000 telemetered
    # echo $INGS Ingest.ctdgv-m-glider_telemetered $g5d1 CP05MOAS-GL005-03-CTDGVM000 telemetered

date 
echo "ended new-ingest-cp-glider.sh" 
