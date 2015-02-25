#!/bin/bash

# Ingest.wfp-eng-stc-imodem_telemetered   CE09OSPM/D00002/imm/mmp/E*.DAT                  CE09OSPM-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CE09OSPM/D00002/imm/mmp/C*.DAT                  CE09OSPM-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CE09OSPM/D00002/imm/mmp/C*.DAT                  CE09OSPM-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CE09OSPM/D00002/imm/mmp/E*.DAT                  CE09OSPM-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CE09OSPM/D00002/imm/mmp/E*.DAT                  CE09OSPM-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CE09OSPM/D00002/imm/mmp/A*.DEC                  CE09OSPM-WFP01-01-VEL3DK000
# Ingest.cg-stc-eng-stc_telemetered       CE09OSPM/D00002/irid2shore/stc_status.*_*.txt   CE09OSPM-SBS01-00-STCENG000
# Not found:
# Ingest.mopak-o-dcl_telemetered          CE09OSPM/D00002/3dmgx3/*_*.3dmgx3.log           CE09OSPM-SBS01-01-MOPAK0000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-wfp-CE09OSPM-command.log
#INGESTLOGT=/home/developer/ingest_initial/log/com1.log
INGESTLOGT=/home/wdk/race/log/new-ingest-wfp-CE09OSPM-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting new-ingest-wfp-CE09OSPM.sh"

#files of the type
# MCI_DAT_a=/omc_data/whoi/OMC/CE09OSPM/D00002/imm/adcpt/adcpt_*_*.DAT   
MCI_DEC_A=/omc_data/whoi/OMC/CE09OSPM/D00002/imm/mmp/A*.DEC 
MCI_DAT_C=/omc_data/whoi/OMC/CE09OSPM/D00002/imm/mmp/C*.DAT  
MCI_DAT_E=/omc_data/whoi/OMC/CE09OSPM/D00002/imm/mmp/E*.DAT 

#MCI_log=/omc_data/whoi/OMC/CE09OSPM/D00002/3dmgx3/*_*.3dmgx3.log 
MCI_txt=/omc_data/whoi/OMC/CE09OSPM/D00002/irid2shore/stc_status.*_*.txt


# MCI_DAT_a_files=$(ls $MCI_DAT_a -mmin -15|head -250 )
MCI_DEC_A_files=$(ls $MCI_DEC_A |head -250 )
MCI_DAT_C_files=$(ls $MCI_DAT_C |head -250 )
MCI_DAT_E_files=$(ls $MCI_DAT_E |head -250 )

#MCI_log_files=$(ls $MCI_log |head -250 )
MCI_txt_files=$(ls $MCI_txt |head -250 )



for f_A in $MCI_DEC_A_files
do

    if  grep --quiet $f_A $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_A
	echo $INGS Ingest.vel3d-k-wfp-stc_telemetered $f_A CE09OSPM-WFP01-01-VEL3DK000 telemetered
	     $INGS Ingest.vel3d-k-wfp-stc_telemetered $f_A CE09OSPM-WFP01-01-VEL3DK000 telemetered
        sleep 3 
    fi
done

for f_C in $MCI_DAT_C_files
do
    if  grep --quiet $f_C $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_C
	echo $INGS Ingest.ctdpf-ckl-wfp_telemetered $f_C CE09OSPM-WFP01-03-CTDPFK000 telemetered
	     $INGS Ingest.ctdpf-ckl-wfp_telemetered $f_C CE09OSPM-WFP01-03-CTDPFK000 telemetered
	echo $INGS Ingest.dofst-k-wfp_telemetered $f_C CE09OSPM-WFP01-02-DOFSTK000 telemetered
	     $INGS Ingest.dofst-k-wfp_telemetered $f_C CE09OSPM-WFP01-02-DOFSTK000 telemetered
        sleep 3 
    fi
done

for f_E in $MCI_DAT_E_files
do
    if  grep --quiet $f_E $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_E
	echo $INGS Ingest.wfp-eng-stc-imodem_telemetered  $f_E CE09OSPM-WFP01-00-STCENG000 telemetered
		 $INGS Ingest.wfp-eng-stc-imodem_telemetered  $f_E CE09OSPM-WFP01-00-STCENG000 telemetered
	echo $INGS Ingest.flort-kn-stc-imodem_telemetered $f_E CE09OSPM-WFP01-04-FLORTK000 telemetered
	     $INGS Ingest.flort-kn-stc-imodem_telemetered $f_E CE09OSPM-WFP01-04-FLORTK000 telemetered
	echo $INGS Ingest.parad-k-stc-imodem_telemetered $f_E CE09OSPM-WFP01-05-PARADK000 telemetered
	     $INGS Ingest.parad-k-stc-imodem_telemetered $f_E CE09OSPM-WFP01-05-PARADK000 telemetered 
        sleep 3 
    fi
done

#for f_l in $MCI_log_files
#do
#    if  grep --quiet $f_l $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#	ls -l $f_l
#	echo $INGS Ingest.mopak-o-dcl_telemetered $f_l CE09OSPM-SBS01-01-MOPAK0000 telemetered
#	     $INGS Ingest.mopak-o-dcl_telemetered $f_l CE09OSPM-SBS01-01-MOPAK0000 telemetered
#        sleep 3 
#    fi
#done

for f_t in $MCI_txt_files
do
    if  grep --quiet $f_t $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_t
	echo $INGS Ingest.cg-stc-eng-stc_telemetered $f_t CE09OSPM-SBS01-00-STCENG000 telemetered
	     $INGS Ingest.cg-stc-eng-stc_telemetered $f_t CE09OSPM-SBS01-00-STCENG000 telemetered
        sleep 3 
    fi
done

date
echo "ended new-ingest-wfp-CE09OSPM.sh"

