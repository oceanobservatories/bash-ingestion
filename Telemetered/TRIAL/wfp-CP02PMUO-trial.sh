#!/bin/bash

# Ingest.wfp-eng-stc-imodem_telemetered   CP02PMCI/D00002/imm/mmp/E*.DAT                  CP02PMCI-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CP02PMCI/D00002/imm/mmp/C*.DAT                  CP02PMCI-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CP02PMCI/D00002/imm/mmp/C*.DAT                  CP02PMCI-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CP02PMCI/D00002/imm/mmp/E*.DAT                  CP02PMCI-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CP02PMCI/D00002/imm/mmp/E*.DAT                  CP02PMCI-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CP02PMCI/D00002/imm/mmp/A*.DEC                  CP02PMCI-WFP01-01-VEL3DK000
# Ingest.adcps-jln-stc_telemetered        CP02PMCI/D00002/imm/adcpt/adcpt_*_*.DAT         CP02PMCI-RII01-01-ADCPTG000
# Ingest.cg-stc-eng-stc_telemetered       CP02PMCI/D00002/irid2shore/stc_status.*_*.txt   CP02PMCI-SBS01-00-STCENG000
# Ingest.mopak-o-dcl_telemetered          CP02PMCI/D00002/3dmgx3/*_*.3dmgx3.log           CP02PMCI-SBS01-01-MOPAK0000
#
# Ingest.wfp-eng-stc-imodem_telemetered   CP02PMCO/D00002/imm/mmp/E*.DAT                  CP02PMCO-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CP02PMCO/D00002/imm/mmp/C*.DAT                  CP02PMCO-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CP02PMCO/D00002/imm/mmp/C*.DAT                  CP02PMCO-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CP02PMCO/D00002/imm/mmp/E*.DAT                  CP02PMCO-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CP02PMCO/D00002/imm/mmp/E*.DAT                  CP02PMCO-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CP02PMCO/D00002/imm/mmp/A*.DEC                  CP02PMCO-WFP01-01-VEL3DK000
# Ingest.adcps-jln-stc_telemetered        CP02PMCO/D00002/imm/adcpt/adcpt_*_*.DAT         CP02PMCO-RII01-01-ADCPTG000
# Ingest.cg-stc-eng-stc_telemetered       CP02PMCO/D00002/irid2shore/stc_status.*_*.txt   CP02PMCO-SBS01-00-STCENG000
# Ingest.mopak-o-dcl_telemetered          CP02PMCO/D00002/3dmgx3/*_*.3dmgx3.log           CP02PMCO-SBS01-01-MOPAK0000
#
# Ingest.wfp-eng-stc-imodem_telemetered   CP02PMUI/D00003/imm/mmp/E*.DAT                  CP02PMUI-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CP02PMUI/D00003/imm/mmp/C*.DAT                  CP02PMUI-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CP02PMUI/D00003/imm/mmp/C*.DAT                  CP02PMUI-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CP02PMUI/D00003/imm/mmp/E*.DAT                  CP02PMUI-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CP02PMUI/D00003/imm/mmp/E*.DAT                  CP02PMUI-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CP02PMUI/D00003/imm/mmp/A*.DEC                  CP02PMUI-WFP01-01-VEL3DK000
# Ingest.adcps-jln-stc_telemetered        CP02PMUI/D00003/imm/adcpt/adcpt_*_*.DAT         CP02PMUI-RII01-01-ADCPTG000
# Ingest.cg-stc-eng-stc_telemetered       CP02PMUI/D00003/irid2shore/stc_status.*_*.txt   CP02PMUI-SBS01-00-STCENG000
# Ingest.mopak-o-dcl_telemetered          CP02PMUI/D00003/3dmgx3/*_*.3dmgx3.log           CP02PMUI-SBS01-01-MOPAK0000
# #
# Ingest.wfp-eng-stc-imodem_telemetered   CP02PMUO/D00003/imm/mmp/E*.DAT                  CP02PMUO-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CP02PMUO/D00003/imm/mmp/C*.DAT                  CP02PMUO-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CP02PMUO/D00003/imm/mmp/C*.DAT                  CP02PMUO-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CP02PMUO/D00003/imm/mmp/E*.DAT                  CP02PMUO-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CP02PMUO/D00003/imm/mmp/E*.DAT                  CP02PMUO-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CP02PMUO/D00003/imm/mmp/A*.DEC                  CP02PMUO-WFP01-01-VEL3DK000
# Ingest.adcps-jln-stc_telemetered        CP02PMUO/D00003/imm/adcp/adcps_*_*.DAT          CP02PMUO-RII01-01-ADCPSL000
# Ingest.cg-stc-eng-stc_telemetered       CP02PMUO/D00003/irid2shore/stc_status.*_*.txt   CP02PMUO-SBS01-00-STCENG000
# 

# Ingest.wfp-eng-stc-imodem_telemetered   CP04OSPM/D00002/imm/mmp/E*.DAT                  CP04OSPM-WFP01-00-STCENG000
# Ingest.ctdpf-ckl-wfp_telemetered        CP04OSPM/D00002/imm/mmp/C*.DAT                  CP04OSPM-WFP01-03-CTDPFK000
# Ingest.dofst-k-wfp_telemetered          CP04OSPM/D00002/imm/mmp/C*.DAT                  CP04OSPM-WFP01-02-DOFSTK000
# Ingest.flort-kn-stc-imodem_telemetered  CP04OSPM/D00002/imm/mmp/E*.DAT                  CP04OSPM-WFP01-04-FLORTK000
# Ingest.parad-k-stc-imodem_telemetered   CP04OSPM/D00002/imm/mmp/E*.DAT                  CP04OSPM-WFP01-05-PARADK000
# Ingest.vel3d-k-wfp-stc_telemetered      CP04OSPM/D00002/imm/mmp/A*.DEC                  CP04OSPM-WFP01-01-VEL3DK000
# Ingest.cg-stc-eng-stc_telemetered       CP04OSPM/D00002/irid2shore/stc_status.*_*.txt   CP04OSPM-SBS01-00-STCENG000
# Ingest.mopak-o-dcl_telemetered          CP04OSPM/D00002/3dmgx3/*_*.3dmgx3.log           CP04OSPM-SBS01-01-MOPAK0000

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-wfp-CP02PMUO-command.log
#INGESTLOGT=/home/developer/ingest_initial/log/com1.log
INGESTLOGT=/home/wdk/race/log/new-ingest-wfp-CP02PMUO-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV

EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting new-ingest-wfp-CP02PMUO.sh"

#files of the type
MCI_DAT_a=/omc_data/whoi/OMC/CP02PMUO/D00003/imm/adcp/adcps_*_*.DAT 
MCI_DEC_A=/omc_data/whoi/OMC/CP02PMUO/D00003/imm/mmp/A*.DEC 
MCI_DAT_C=/omc_data/whoi/OMC/CP02PMUO/D00003/imm/mmp/C*.DAT  
MCI_DAT_E=/omc_data/whoi/OMC/CP02PMUO/D00003/imm/mmp/E*.DAT 

MCI_log=/omc_data/whoi/OMC/CP02PMUO/D00003/3dmgx3/*_*.3dmgx3.log 
MCI_txt=/omc_data/whoi/OMC/CP02PMUO/D00003/irid2shore/stc_status.*_*.txt


MCI_DAT_a_files=$(find $MCI_DAT_a -newermt 20141211 \! -newermt 20141226 -print)
MCI_DEC_A_files=$(find $MCI_DEC_A -newermt 20141211 \! -newermt 20141226 -print)
MCI_DAT_C_files=$(find $MCI_DAT_C -newermt 20141211 \! -newermt 20141226 -print)
MCI_DAT_E_files=$(find $MCI_DAT_E -newermt 20141211 \! -newermt 20141226 -print)

MCI_log_files=$(find $MCI_log -newermt 20141211 \! -newermt 20141226 -print)
MCI_txt_files=$(find $MCI_txt -newermt 20141211 \! -newermt 20141226 -print)

for f_a in $MCI_DAT_a_files
do
    if  grep --quiet $f_a $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_a
	echo $INGS Ingest.adcps-jln-stc_telemetered $f_a CP02PMUO-RII01-01-ADCPSL000 telemetered
	     $INGS Ingest.adcps-jln-stc_telemetered $f_a CP02PMUO-RII01-01-ADCPSL000 telemetered 
    fi
done

for f_A in $MCI_DEC_A_files
do
    if  grep --quiet $f_A $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_A
	echo $INGS Ingest.vel3d-k-wfp-stc_telemetered $f_A CP02PMUO-WFP01-01-VEL3DK000 telemetered
	     $INGS Ingest.vel3d-k-wfp-stc_telemetered $f_A CP02PMUO-WFP01-01-VEL3DK000 telemetered
    fi
done

for f_C in $MCI_DAT_C_files
do
    if  grep --quiet $f_C $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_C
	echo $INGS Ingest.ctdpf-ckl-wfp_telemetered $f_C CP02PMUO-WFP01-03-CTDPFK000 telemetered
	     $INGS Ingest.ctdpf-ckl-wfp_telemetered $f_C CP02PMUO-WFP01-03-CTDPFK000 telemetered
	echo $INGS Ingest.dofst-k-wfp_telemetered $f_C CP02PMUO-WFP01-02-DOFSTK000 telemetered
	     $INGS Ingest.dofst-k-wfp_telemetered $f_C CP02PMUO-WFP01-02-DOFSTK000 telemetered
    fi
done

for f_E in $MCI_DAT_E_files
do
    if  grep --quiet $f_E $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_E
	echo $INGS Ingest.wfp-eng-stc-imodem_telemetered $f_E CP02PMUO-WFP01-00-STCENG000 telemetered
             $INGS Ingest.wfp-eng-stc-imodem_telemetered $f_E CP02PMUO-WFP01-00-STCENG000 telemetered
	echo $INGS Ingest.flort-kn-stc-imodem_telemetered $f_E CP02PMUO-WFP01-04-FLORTK000 telemetered
	     $INGS Ingest.flort-kn-stc-imodem_telemetered $f_E CP02PMUO-WFP01-04-FLORTK000 telemetered
	echo $INGS Ingest.parad-k-stc-imodem_telemetered $f_E CP02PMUO-WFP01-05-PARADK000 telemetered
	     $INGS Ingest.parad-k-stc-imodem_telemetered $f_E CP02PMUO-WFP01-05-PARADK000 telemetered 
    fi
done


for f_l in $MCI_log_files
do
    if  grep --quiet $f_l $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_l
 	echo $INGS Ingest.mopak-o-dcl_telemetered $f_l CP02PMUO-SBS01-01-MOPAK0000 telemetered
	     $INGS Ingest.mopak-o-dcl_telemetered $f_l CP02PMUO-SBS01-01-MOPAK0000 telemetered
    fi
done

for f_t in $MCI_txt_files
do
    if  grep --quiet $f_t $EDEXLOGFILES; then
        echo "move on" > /dev/null
    else
	ls -l $f_t
	echo $INGS Ingest.cg-stc-eng-stc_telemetered $f_t CP02PMUO-SBS01-00-STCENG000 telemetered
	     $INGS Ingest.cg-stc-eng-stc_telemetered $f_t CP02PMUO-SBS01-00-STCENG000 telemetered
    fi
done

date
echo "ended new-ingest-wfp-CP02PMUO.sh"
