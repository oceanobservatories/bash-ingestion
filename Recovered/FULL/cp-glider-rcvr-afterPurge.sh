#!/bin/bash
#Ingest.glider-eng-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/merged	cp_374_*.full.mrg	CP05MOAS-GL001-00-ENG000000
#Ingest.parad-m-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/merged	cp_374_*.full.mrg	CP05MOAS-GL001-05-PARADM000
#Ingest.flort-m-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/merged	cp_374_*.full.mrg	CP05MOAS-GL001-02-FLORTM000
#Ingest.dosta-abcdjm-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/merged	cp_374_*.full.mrg	CP05MOAS-GL001-04-DOSTAM000
#Ingest.ctdgv-m-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/merged	cp_374_*.full.mrg	CP05MOAS-GL001-03-CTDGVM000
#Ingest.adcpa-m-glider_recovered	/omc_data/CP05MOAS-GL001/R00001/dvl	*.PD0	                CP05MOAS-GL001-01-ADCPAM000
#Ingest.glider-eng-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/merged	cp_379_*.full.mrg	CP05MOAS-GL002-00-ENG000000
#Ingest.parad-m-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/merged	cp_379_*.full.mrg	CP05MOAS-GL002-05-PARADM000
#Ingest.flort-m-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/merged	cp_379_*.full.mrg	CP05MOAS-GL002-02-FLORTM000
#Ingest.dosta-abcdjm-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/merged	cp_379_*.full.mrg	CP05MOAS-GL002-04-DOSTAM000
#Ingest.ctdgv-m-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/merged	cp_379_*.full.mrg	CP05MOAS-GL002-03-CTDGVM000
#Ingest.adcpa-m-glider_recovered	/omc_data/CP05MOAS-GL002/R00001/dvl	*.PD0	                CP05MOAS-GL002-01-ADCPAM000
#Ingest.glider-eng-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/merged	cp_387_*.full.mrg	CP05MOAS-GL003-00-ENG000000
#Ingest.parad-m-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/merged	cp_387_*.full.mrg	CP05MOAS-GL003-05-PARADM000
#Ingest.flort-m-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/merged	cp_387_*.full.mrg	CP05MOAS-GL003-02-FLORTM000
#Ingest.dosta-abcdjm-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/merged	cp_387_*.full.mrg	CP05MOAS-GL003-04-DOSTAM000
#Ingest.ctdgv-m-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/merged	cp_387_*.full.mrg	CP05MOAS-GL003-03-CTDGVM000
#Ingest.adcpa-m-glider_recovered	/omc_data/CP05MOAS-GL003/R00001/dvl	*.PD0	                CP05MOAS-GL003-01-ADCPAM000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/cp-glider-rcvr-command.log
INGESTLOGT=/home/wdk/race/log/cp-glider-rcvr-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)
source $EDEXSRV

date 
echo "start cp-glider-rcvr-afterPurge.sh" 

# grep $(find /omc_data/whoi/OMC/CP05MOAS-GL002/R00001/merged/cp_379_*.full.mrg) $(ls /home/developer/uframes/ooi/uframe-1.0/edex/logs/edex-ooi*.log)
# grep $(find /omc_data/whoi/OMC/CP05MOAS-GL002/R00001/dvl/*.PD0) $(ls /home/developer/uframes/ooi/uframe-1.0/edex/logs/edex-ooi*.log)
#
#GL1R1=/omc_data/whoi/OMC/CP05MOAS-GL001/R00001/merged/cp_374_*.full.mrg
#
GL2R1=/omc_data/whoi/OMC/CP05MOAS-GL002/R00001/merged/cp_379_*.full.mrg
#
#GL3R1=/omc_data/whoi/OMC/CP05MOAS-GL003/R00001/merged/cp_387_*.full.mrg
#
#GL4R1=/omc_data/whoi/OMC/CP05MOAS-GL004/R00001/merged/cp_*.full.mrg
#
#GL1Dv=/omc_data/whoi/OMC/CP05MOAS-GL001/R00001/dvl/*.PD0
#
GL2Dv=/omc_data/whoi/OMC/CP05MOAS-GL002/R00001/dvl/*.PD0
#
#GL3Dv=/omc_data/whoi/OMC/CP05MOAS-GL003/R00001/dvl/*.pd0
#
#GL4Dv=/omc_data/whoi/OMC/CP05MOAS-GL004/R00001/dvl/*.PD0

#GL1R1_files=$(find $GL1R1 -print)
#
GL2R1_files=$(find $GL2R1 -print)
#
#GL3R1_files=$(find $GL3R1 -print)
#
#GL4R1_files=$(find $GL4R1 -print)
#
#GL1Rv_files=$(find $GL1Dv -print)
#
GL2Rv_files=$(find $GL2Dv -print)
#
#GL3Rv_files=$(find $GL3Dv -print)
#
#GL4Rv_files=$(find $GL4Dv -print)

#define UFrame Route:
declare -x UFR=(Ingest.glider-eng-glider_recovered
                Ingest.parad-m-glider_recovered
                Ingest.flort-m-glider_recovered  
                Ingest.dosta-abcdjm-glider_recovered 
                Ingest.ctdgv-m-glider_recovered)


######################## glider no.1 #################################
#define Glider Reference Desingnator:
#declare -x GL1REFDES=(CP05MOAS-GL001-00-ENG000000 
#                      CP05MOAS-GL001-05-PARADM000
#                      CP05MOAS-GL001-02-FLORTM000 
#                      CP05MOAS-GL001-04-DOSTAM000 
#                      CP05MOAS-GL001-03-CTDGVM000)
#
##recovered:
#for file in $GL1R1_files
#do
#
#    if  grep --quiet $file $EDEXLOGFILES; then
#	echo "move on" > /dev/null
#    else
#        ls -l $file
#        for i in {0..4}
#        do
#            echo "$INGS ${UFR[i]} $file ${GL1REFDES[i]} recovered" 
#                  $INGS ${UFR[i]} $file ${GL1REFDES[i]} recovered
#        done
#        sleep 3 
#    fi
##    
#done

######################## glider no.2 #################################
declare -x GL2REFDES=(CP05MOAS-GL002-00-ENG000000 
                      CP05MOAS-GL002-05-PARADM000
                      CP05MOAS-GL002-02-FLORTM000 
                      CP05MOAS-GL002-04-DOSTAM000 
                      CP05MOAS-GL002-03-CTDGVM000)

#recovered:
for file in $GL2R1_files
do
    if  grep --quiet $file $EDEXLOGFILES; then
	echo "move on" > /dev/null
    else
        ls -l $file
        for i in {0..4}
        do
            echo "$INGS ${UFR[i]} $file ${GL2REFDES[i]} recovered" 
                  $INGS ${UFR[i]} $file ${GL2REFDES[i]} recovered
        done
        sleep 3 
    fi
    
done


######################   glider no.3 #################################
#declare -x GL3REFDES=(CP05MOAS-GL003-00-ENG000000 
#                      CP05MOAS-GL003-05-PARADM000
#                      CP05MOAS-GL003-02-FLORTM000 
#                      CP05MOAS-GL003-04-DOSTAM000 
#                      CP05MOAS-GL003-03-CTDGVM000)
#
#for file in $GL3R1_files
#do
#    if  grep --quiet $file $EDEXLOGFILES; then
#	echo "move on" > /dev/null
#    else
#        ls -l  $file
#        for i in {0..4}
#        do
#            echo "$INGS ${UFR[i]} $file ${GL3REFDES[i]} recovered" 
#                  $INGS ${UFR[i]} $file ${GL3REFDES[i]} recovered
#        done
#        sleep 3 
#    fi
#    
#done

######################## glider no.4 #################################
#declare -x GL4REFDES=(CP05MOAS-GL004-00-ENG000000
#                      CP05MOAS-GL004-05-PARADM000
#                      CP05MOAS-GL004-02-FLORTM000
#                      CP05MOAS-GL004-04-DOSTAM000
#                      CP05MOAS-GL004-03-CTDGVM000)
#
##recovered:
#for file in $GL4R1_files
#do
#    if  grep --quiet $file $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l $file
#        for i in {0..4}
#        do
#            echo "$INGS ${UFR[i]} $file ${GL4REFDES[i]} recovered"
#                  $INGS ${UFR[i]} $file ${GL4REFDES[i]} recovered
#        done
#        sleep 3 
#    fi
#    
#done


######################## for 3 PD0 files #############################
#for file in $GL1Rv_files
#do
#    if  grep --quiet $file $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l  $file
#        echo "$INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL001-01-ADCPAM000 recovered"
#              $INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL001-01-ADCPAM000 recovered
#        sleep 3 
#    fi
#    
#done


for file in $GL2Rv_files
do
    if  grep --quiet $file $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
        ls -l  $file
        echo "$INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL002-01-ADCPAM000 recovered"
              $INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL002-01-ADCPAM000 recovered
        sleep 3 
    fi
    
done

#for file in $GL3Rv_files
#do
#    if  grep --quiet $file $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l  $file
#        echo "$INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL003-01-ADCPAM000 recovered"
#              $INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL003-01-ADCPAM000 recovered
#        sleep 3 
#    fi
#    
#done

#for file in $GL4Rv_files
#do
#    if  grep --quiet $file $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#        ls -l  $file
#        echo "$INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL004-01-ADCPAM000 recovered"
#              $INGS Ingest.adcpa-m-glider_recovered $file CP05MOAS-GL004-01-ADCPAM000 recovered
#        sleep 3 
#    fi
#    
#done

date 
echo "ended cp-glider-rcvr-afterPurge.sh" 
