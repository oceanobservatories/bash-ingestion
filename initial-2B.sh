#!/bin/bash

INGS=/home/developer/uframes/ooi/bin/ingestsender
INGESTLOG=/home/wdk/race/log/new-ingest-gp-glider-command.log
INGESTLOGT=/home/wdk/race/log/new-ingest-gp-glider-command.log-T
EDEXSRV=/home/developer/uframes/ooi/bin/edex-server
source $EDEXSRV


EDEXLOGDIR=/home/developer/uframes/ooi/uframe-1.0/edex/logs
EDEXLOGFILES=$(ls $EDEXLOGDIR/edex-ooi*.log)

date
echo "starting 2B-Initial.sh"

# Recovered data:
# CE-glider:
$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/CE05MOAS-GL311/R00001/merged/ce_311_2014_278_0_0.full.mrg CE05MOAS-GL311-00-ENG000000
$INGS Ingest.parad-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL311/R00001/merged/ce_311_2014_278_0_0.full.mrg CE05MOAS-GL311-01-PARADM000
$INGS Ingest.flort-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL311/R00001/merged/ce_311_2014_278_0_0.full.mrg CE05MOAS-GL311-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/CE05MOAS-GL311/R00001/merged/ce_311_2014_278_0_0.full.mrg CE05MOAS-GL311-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL311/R00001/merged/ce_311_2014_278_0_0.full.mrg CE05MOAS-GL311-05-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/CE05MOAS-GL312/R00001/merged/ce_312_2014_110_0_0.full.mrg CE05MOAS-GL312-00-ENG000000
$INGS Ingest.parad-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL312/R00001/merged/ce_312_2014_110_0_0.full.mrg CE05MOAS-GL312-01-PARADM000
$INGS Ingest.flort-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL312/R00001/merged/ce_312_2014_110_0_0.full.mrg CE05MOAS-GL312-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/CE05MOAS-GL312/R00001/merged/ce_312_2014_110_0_0.full.mrg CE05MOAS-GL312-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL312/R00001/merged/ce_312_2014_110_0_0.full.mrg CE05MOAS-GL312-05-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/CE05MOAS-GL319/R00001/merged/ce_319_2014_109_0_0.full.mrg CE05MOAS-GL319-00-ENG000000
$INGS Ingest.parad-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL319/R00001/merged/ce_319_2014_109_0_0.full.mrg CE05MOAS-GL319-01-PARADM000
$INGS Ingest.flort-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL319/R00001/merged/ce_319_2014_109_0_0.full.mrg CE05MOAS-GL319-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/CE05MOAS-GL319/R00001/merged/ce_319_2014_109_0_0.full.mrg CE05MOAS-GL319-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL319/R00001/merged/ce_319_2014_109_0_0.full.mrg CE05MOAS-GL319-05-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/CE05MOAS-GL320/R00001/merged/ce_320_2014_267_0_0.full.mrg CE05MOAS-GL320-00-ENG000000
$INGS Ingest.parad-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL320/R00001/merged/ce_320_2014_267_0_0.full.mrg CE05MOAS-GL320-01-PARADM000
$INGS Ingest.flort-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL320/R00001/merged/ce_320_2014_267_0_0.full.mrg CE05MOAS-GL320-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/CE05MOAS-GL320/R00001/merged/ce_320_2014_267_0_0.full.mrg CE05MOAS-GL320-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL320/R00001/merged/ce_320_2014_267_0_0.full.mrg CE05MOAS-GL320-05-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/CE05MOAS-GL386/R00001/merged/ce_386_2014_109_2_0.full.mrg CE05MOAS-GL386-00-ENG000000
$INGS Ingest.parad-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL386/R00001/merged/ce_386_2014_109_2_0.full.mrg CE05MOAS-GL386-01-PARADM000
$INGS Ingest.flort-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL386/R00001/merged/ce_386_2014_109_2_0.full.mrg CE05MOAS-GL386-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/CE05MOAS-GL386/R00001/merged/ce_386_2014_109_2_0.full.mrg CE05MOAS-GL386-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/CE05MOAS-GL386/R00001/merged/ce_386_2014_109_2_0.full.mrg CE05MOAS-GL386-05-CTDGVM000

# GP-gliders:
$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit_363_2013_199_0_0.full.mrg GP05MOAS-GL001-00-ENG000000
$INGS Ingest.flord-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit_363_2013_199_0_0.full.mrg GP05MOAS-GL001-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit_363_2013_199_0_0.full.mrg GP05MOAS-GL001-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL001/R00001/merged/unit_363_2013_199_0_0.full.mrg GP05MOAS-GL001-04-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit_364_2013_199_0_0.full.mrg GP05MOAS-GL002-00-ENG000000
$INGS Ingest.flord-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit_364_2013_199_0_0.full.mrg GP05MOAS-GL002-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit_364_2013_199_0_0.full.mrg GP05MOAS-GL002-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL002/R00001/merged/unit_364_2013_199_0_0.full.mrg GP05MOAS-GL002-04-CTDGVM000

$INGS Ingest.glider-eng-glider_recovered   /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit_365_2013_197_0_0.full.mrg GP05MOAS-GL003-00-ENG000000
$INGS Ingest.flord-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit_365_2013_197_0_0.full.mrg GP05MOAS-GL003-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_recovered /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit_365_2013_197_0_0.full.mrg GP05MOAS-GL003-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_recovered      /omc_data/whoi/OMC/GP05MOAS-GL003/R00001/merged/unit_365_2013_197_0_0.full.mrg GP05MOAS-GL003-04-CTDGVM000


# Telemetered data:
# CE-glider:
$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_2014_278_4_0.rtime.mrg CE05MOAS-GL311-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_2014_278_4_0.rtime.mrg CE05MOAS-GL311-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_2014_278_4_0.rtime.mrg CE05MOAS-GL311-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_2014_278_4_0.rtime.mrg CE05MOAS-GL311-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL311/D00001/merged-from-glider/ce_311_2014_278_4_0.rtime.mrg CE05MOAS-GL311-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL312/D00001/merged-from-glider/ce_312_2014_110_0_0.rtime.mrg CE05MOAS-GL312-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL312/D00001/merged-from-glider/ce_312_2014_110_0_0.rtime.mrg CE05MOAS-GL312-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL312/D00001/merged-from-glider/ce_312_2014_110_0_0.rtime.mrg CE05MOAS-GL312-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL312/D00001/merged-from-glider/ce_312_2014_110_0_0.rtime.mrg CE05MOAS-GL312-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL312/D00001/merged-from-glider/ce_312_2014_110_0_0.rtime.mrg CE05MOAS-GL312-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL319/D00001/merged-from-glider/ce_319_2014_109_4_0.rtime.mrg CE05MOAS-GL319-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL319/D00001/merged-from-glider/ce_319_2014_109_4_0.rtime.mrg CE05MOAS-GL319-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL319/D00001/merged-from-glider/ce_319_2014_109_4_0.rtime.mrg CE05MOAS-GL319-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL319/D00001/merged-from-glider/ce_319_2014_109_4_0.rtime.mrg CE05MOAS-GL319-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL319/D00001/merged-from-glider/ce_319_2014_109_4_0.rtime.mrg CE05MOAS-GL319-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL320/D00001/merged-from-glider/ce_320_2014_279_3_0.rtime.mrg CE05MOAS-GL320-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL320/D00001/merged-from-glider/ce_320_2014_279_3_0.rtime.mrg CE05MOAS-GL320-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL320/D00001/merged-from-glider/ce_320_2014_279_3_0.rtime.mrg CE05MOAS-GL320-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL320/D00001/merged-from-glider/ce_320_2014_279_3_0.rtime.mrg CE05MOAS-GL320-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL320/D00001/merged-from-glider/ce_320_2014_279_3_0.rtime.mrg CE05MOAS-GL320-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL381/D00001/merged-from-glider/ce_381_2014_280_5_0.rtime.mrg CE05MOAS-GL381-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL381/D00001/merged-from-glider/ce_381_2014_280_5_0.rtime.mrg CE05MOAS-GL381-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL381/D00001/merged-from-glider/ce_381_2014_280_5_0.rtime.mrg CE05MOAS-GL381-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL381/D00001/merged-from-glider/ce_381_2014_280_5_0.rtime.mrg CE05MOAS-GL381-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL381/D00001/merged-from-glider/ce_381_2014_280_5_0.rtime.mrg CE05MOAS-GL381-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL382/D00001/merged-from-glider/ce_382_2015_020_4_0.rtime.mrg CE05MOAS-GL382-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL382/D00001/merged-from-glider/ce_382_2015_020_4_0.rtime.mrg CE05MOAS-GL382-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL382/D00001/merged-from-glider/ce_382_2015_020_4_0.rtime.mrg CE05MOAS-GL382-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL382/D00001/merged-from-glider/ce_382_2015_020_4_0.rtime.mrg CE05MOAS-GL382-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL382/D00001/merged-from-glider/ce_382_2015_020_4_0.rtime.mrg CE05MOAS-GL382-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL383/D00001/merged-from-glider/ce_383_2015_020_4_0.rtime.mrg CE05MOAS-GL383-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL383/D00001/merged-from-glider/ce_383_2015_020_4_0.rtime.mrg CE05MOAS-GL383-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL383/D00001/merged-from-glider/ce_383_2015_020_4_0.rtime.mrg CE05MOAS-GL383-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL383/D00001/merged-from-glider/ce_383_2015_020_4_0.rtime.mrg CE05MOAS-GL383-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL383/D00001/merged-from-glider/ce_383_2015_020_4_0.rtime.mrg CE05MOAS-GL383-05-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered  /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_2014_109_4_0.rtime.mrg CE05MOAS-GL386-00-ENG000000
$INGS Ingest.parad-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_2014_109_4_0.rtime.mrg CE05MOAS-GL386-01-PARADM000
$INGS Ingest.flort-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_2014_109_4_0.rtime.mrg CE05MOAS-GL386-02-FLORTM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_2014_109_4_0.rtime.mrg CE05MOAS-GL386-04-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered     /omc_data/whoi/OMC/CE05MOAS-GL386/D00001/merged-from-glider/ce_386_2014_109_4_0.rtime.mrg CE05MOAS-GL386-05-CTDGVM000

# GP-glider:
$INGS Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_2014_164_0_0.mrg GP05MOAS-GL001-00-ENG000000
$INGS Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_2014_164_0_0.mrg GP05MOAS-GL001-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_2014_164_0_0.mrg GP05MOAS-GL001-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL001/D00002/merged-from-glider/gp_276_2014_164_0_0.mrg GP05MOAS-GL001-04-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_2014_241_2_0.mrg GP05MOAS-GL002-00-ENG000000
$INGS Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_2014_241_2_0.mrg GP05MOAS-GL002-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_2014_241_2_0.mrg GP05MOAS-GL002-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL002/D00002/merged-from-glider/gp_362_2014_241_2_0.mrg GP05MOAS-GL002-04-CTDGVM000

$INGS Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_2014_229_0_0.mrg GP05MOAS-GL003-00-ENG000000
$INGS Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_2014_229_0_0.mrg GP05MOAS-GL003-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_2014_229_0_0.mrg GP05MOAS-GL003-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GP05MOAS-GL003/D00003/merged-from-glider/gp_453_2014_229_0_0.mrg GP05MOAS-GL003-04-CTDGVM000

# GI-glider:
$INGS Ingest.glider-eng-glider_telemetered   /omc_data/whoi/OMC/GI05MOAS-GL002/D00001/merged-from-glider/gi_477_2014_252_3_0.mrg GI05MOAS-GL002-00-ENG000000
$INGS Ingest.flord-m-glider_telemetered      /omc_data/whoi/OMC/GI05MOAS-GL002/D00001/merged-from-glider/gi_477_2014_252_3_0.mrg GI05MOAS-GL002-01-FLORDM000
$INGS Ingest.dosta-abcdjm-glider_telemetered /omc_data/whoi/OMC/GI05MOAS-GL002/D00001/merged-from-glider/gi_477_2014_252_3_0.mrg GI05MOAS-GL002-02-DOSTAM000
$INGS Ingest.ctdgv-m-glider_telemetered      /omc_data/whoi/OMC/GI05MOAS-GL002/D00001/merged-from-glider/gi_477_2014_252_3_0.mrg GI05MOAS-GL002-04-CTDGVM000

 
