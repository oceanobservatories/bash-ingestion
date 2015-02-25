#!/bin/bash

# Ingest.wfp-eng-stc-imodem_recovered   /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/E*.DAT  CE09OSPM-WFP01-00-000000000
# Ingest.ctdpf-ckl-wfp_recovered        /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/C*.DAT  CE09OSPM-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_recovered          /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/C*.DAT  CE09OSPM-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_recovered  /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/E*.DAT  CE09OSPM-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_recovered   /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/E*.DAT  CE09OSPM-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_recovered      /omc_data/CE09OSPM/R00001/instrmts/CWFP_sn13103-03/A*.DAT  CE09OSPM-WFP01-01-VEL3DK000
# Ingest.cg-stc-eng-stc_recovered       /omc_data/CE09OSPM/R00001/cg_data/irid2shore/stc_status.*_*.txt  CE09OSPM-SBS01-00-000000000

# Not found:
# Ingest.mopak-o-dcl_recovered          /omc_data/CE09OSPM/R00001/dcl00/cg_data/3dmgx3/*_*.3dmgx3.log  CE09OSPM-SBS01-01-MOPAK0000
# Ingest.rte-o-dcl_recovered            /omc_data/CE09OSPM/R00001/dcl00/cg_data/rte/*.rte.log   CE09OSPM-SBS01-XX-RTEXX0000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/wfp-CE09OSPM-rcvr-command.log
INGESTLOGT=/home/wdk/race/log/wfp-CE09OSPM-rcvr-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date 
echo "starting wfp-CE09OSPM-rcvr.sh" 

#files of the type
MCI_DAT_A=/omc_data/whoi/OMC/CE09OSPM/R00001/instrmts/CWFP_sn12991-03/A*.DAT
MCI_DAT_C=/omc_data/whoi/OMC/CE09OSPM/R00001/instrmts/CWFP_sn12991-03/C*.DAT
MCI_DAT_E=/omc_data/whoi/OMC/CE09OSPM/R00001/instrmts/CWFP_sn12991-03/E*.DAT
 
MCI_txt=/omc_data/whoi/OMC/CE09OSPM/R00001/cg_data/irid2shore/stc_status.*_*.txt


MCI_DAT_A_files=$(find $MCI_DAT_A -print)
MCI_DAT_C_files=$(find $MCI_DAT_C -print)
MCI_DAT_E_files=$(find $MCI_DAT_E -print)

#MCI_00_files=$(find $MCI_00 -print)
#MCI_3d_files=$(find $MCI_3d -print)
#MCI_rte_files=$(find $MCI_rte -print)
MCI_txt_files=$(find $MCI_txt -print)




for f_A in $MCI_DAT_A_files
do
    if  grep --quiet $f_A $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_A
	echo $INGS Ingest.vel3d-k-wfp-stc_recovered $f_A CE09OSPM-WFP01-01-VEL3DK000 recovered 
	     $INGS Ingest.vel3d-k-wfp-stc_recovered $f_A CE09OSPM-WFP01-01-VEL3DK000 recovered
        sleep 3 
    fi
done

for f_C in $MCI_DAT_C_files
do
    if  grep --quiet $f_C $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_C
	echo $INGS Ingest.ctdpf-ckl-wfp_recovered $f_C CE09OSPM-WFP01-03-CTDPFK000 recovered 
	     $INGS Ingest.ctdpf-ckl-wfp_recovered $f_C CE09OSPM-WFP01-03-CTDPFK000 recovered
	echo $INGS Ingest.dofst-k-wfp_recovered $f_C CE09OSPM-WFP01-02-DOFSTK000 recovered 
	     $INGS Ingest.dofst-k-wfp_recovered $f_C CE09OSPM-WFP01-02-DOFSTK000 recovered
        sleep 3 
    fi
done

for f_E in $MCI_DAT_E_files
do
    if  grep --quiet $f_E $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_E
	echo $INGS Ingest.wfp-eng-stc-imodem_recovered $f_E CE09OSPM-WFP01-00-STCENG000 recovered 
         $INGS Ingest.wfp-eng-stc-imodem_recovered $f_E CE09OSPM-WFP01-00-STCENG000 recovered
	echo $INGS Ingest.flort-kn-stc-imodem_recovered $f_E CE09OSPM-WFP01-04-FLORTK000 recovered 
	     $INGS Ingest.flort-kn-stc-imodem_recovered $f_E CE09OSPM-WFP01-04-FLORTK000 recovered
	echo $INGS Ingest.parad-k-stc-imodem_recovered $f_E CE09OSPM-WFP01-05-PARADK000 recovered 
	     $INGS Ingest.parad-k-stc-imodem_recovered $f_E CE09OSPM-WFP01-05-PARADK000 recovered 
        sleep 3 
    fi
done


#for f_l in $MCI_3d_files
#do
#    if  grep --quiet $f_l $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#	ls -l $f_l
#	echo $INGS Ingest.mopak-o-dcl_recovered $f_l CE09OSPM-SBS01-01-MOPAK0000 recovered 
#	     $INGS Ingest.mopak-o-dcl_recovered $f_l CE09OSPM-SBS01-01-MOPAK0000 recovered
##        sleep 3 
#    fi
#done


for f_t in $MCI_txt_files
do
    if  grep --quiet $f_t $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_t
	echo $INGS Ingest.cg-stc-eng-stc_recovered $f_t CE09OSPM-SBS01-00-STCENG000 recovered 
	     $INGS Ingest.cg-stc-eng-stc_recovered $f_t CE09OSPM-SBS01-00-STCENG000 recovered
        sleep 3 
    fi
done

#for f_t in $MCI_rte_files
#do
#    if  grep --quiet $f_t $EDEXLOGFILES; then
#        echo "move on" > /dev/null
#    else
#	ls -l $f_t
#	echo $INGS Ingest.rte-o-dcl_recovered $f_t CE09OSPM-SBS01-XX-RTEXX0000 recovered 
#	     $INGS Ingest.rte-o-dcl_recovered $f_t CE09OSPM-SBS01-XX-RTEXX0000 recovered
#        sleep 3 
#    fi
#done

date 
echo "ended new-ingest-wfp-CE09OSPM.sh" 
