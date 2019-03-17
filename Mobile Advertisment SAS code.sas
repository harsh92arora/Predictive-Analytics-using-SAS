LIBNAME SASDATA "C:\Users\hxa170730\Desktop\SAS\Project 2\SASDATA";


PROC FREQ DATA = SASDATA.Mobileadstraining;
TABLES INSTALL * device_make /NOROW NOCOL NOPERCENT MISSING;
RUN;

PROC FREQ DATA = SASDATA.Mobileadstraining;
TABLES INSTALL * device_platform /NOROW NOCOL NOPERCENT MISSING;
RUN;

PROC FREQ DATA = SASDATA.Mobileadstraining;
TABLES INSTALL * wifi /NOROW NOCOL NOPERCENT MISSING;
RUN;

PROC FREQ DATA = SASDATA.Mobileadstraining;
TABLES publisher_id * install /NOROW NOCOL NOPERCENT MISSING;
RUN;

PROC FREQ DATA = SASDATA.Mobileadstraining;
TABLES device_os * install /NOROW NOCOL NOPERCENT MISSING;
RUN;


PROC FREQ DATA= SASDATA.MOBILEADSTRAINING ORDER=FREQ;
 TABLES DEVICE_PLATFORM;
 TABLES DEVICE_OS;
 TABLES LANGUAGE;
 TABLES DEVICE_MAKE;
 TABLES RESOLUTION;
 TABLES DEVICE_VOLUME;
 TABLES INSTALL;
RUN;


DATA MOBILEADSTRAINING;
 SET SASDATA.MOBILEADSTRAINING;

 PLATFORM = DEVICE_PLATFORM IN ('iOS'); 

 DEV_OS_7 = DEVICE_OS IN ('7','7.1','7.0.2','7.0.3','7.0.4','7.0.6','7.1.1','7.1.2');
 DEV_OS_8 = DEVICE_OS IN ('8','8.1','8.2','8.3','8.4','8.0.2','8.1.1','8.1.2','8.1.3','8.4.1');
 DEV_OS_9 = DEVICE_OS IN ('9','9.1','9.2','9.3','9.0.1','9.0.2','9.2.1','9.3.1','9.3.2','9.3.3','9.3.4','9.3.5');
 DEV_OS_10 = DEVICE_OS IN ('10','10.1','10.2','10.0.1','10.0.2','10.0.3','10.1.1');
 DEV_OS_4 = DEVICE_OS IN ('4.4.1','4.4.2','4.4.3','4.4.4');
 DEV_OS_5 = DEVICE_OS IN ('5.0.1','5.0.2','5.1.1','5.5.5');

 APPLE = DEVICE_MAKE IN ('iPhone9','iPhone8','iPhone7','iPhone6','iPhone5','iPhone4','iPhone3','iPad2','iPad3',
'iPad4','iPad5','iPad6','iPod5','iPod7');
 IPHONE = DEVICE_MAKE IN ('iPhone9','iPhone8','iPhone7','iPhone6','iPhone5','iPhone4','iPhone3');
 IPAD = DEVICE_MAKE IN ('iPad2','iPad3','iPad4','iPad5','iPad6');
 IPOD = DEVICE_MAKE IN ('iPod5','iPod7');

 GIONEE = DEVICE_MAKE IN ('GIONEE','GiONEE');
 HIPSTREE = DEVICE_MAKE IN ('hipstree','Hipstree');
 MYPHONE = DEVICE_MAKE IN ('MyPhone','MyPhoneM');
 HP = DEVICE_MAKE IN ('HP','Hewlett-');
 MITO = DEVICE_MAKE IN ('MITO','MITO_T81');
 ACER = DEVICE_MAKE IN ('Acer','acer');
 ASUS = DEVICE_MAKE IN ('asus','ASUSTek');
 CHERRY = DEVICE_MAKE IN ('Cherry','Cherry M','Cherry_M');
 HTC = DEVICE_MAKE IN ('HTC','htc');
 HUAWEI = DEVICE_MAKE IN ('HUAWEI','Huawei');
 LENOVO = DEVICE_MAKE IN ('LENOVO','Lenovo');
 LG = DEVICE_MAKE IN ('LG Elect','LGE');
 MOTOROLA = DEVICE_MAKE IN ('motorola','Motorola');
 ONEPLUS = DEVICE_MAKE IN ('OnePlus','Oplus');
 SAMSUNG = DEVICE_MAKE IN ('samsung','Samsung');
 SPA = DEVICE_MAKE IN ('SPA Cond','SPA_COND');
 TCL = DEVICE_MAKE IN ('TCL','TCL ALCA');
 ZTE = DEVICE_MAKE IN ('ZTE','zte');

/* AR = LANGUAGE IN ('ar','ar-AE','ar-AW','ar-AZ','ar-CA','ar-EG','ar-GB','ar-IQ','ar-KW','ar-QA','ar-SA','ar-US','ar-YE');*/
/* CS = LANGUAGE IN ('cs-GB','cs-US');*/
/* DA = LANGUAGE IN ('da-DK','da-US');*/
/* DE = LANGUAGE IN ('de','de-DE','de-US');*/
/* EL = LANGUAGE IN ('el'	'el-GR'	'el-US');*/
 EN = LANGUAGE IN ('en','en-AD','en-AE','en-AF','en-AG','en-AL','en-AM','en-AO','en-AR','en-AS','en-AT','en-AU','en-AW','en-AX','en-BB','en-BH','en-BM','en-BR','en-CA','en-CD','en-CG','en-CM','en-CN','en-CO','en-CW','en-DE','en-DJ','en-DO','en-DZ','en-EG','en-ES','en-ET','en-FR','en-GB','en-GD','en-GE','en-GH','en-GR','en-GY','en-HK','en-IC','en-ID','en-IE','en-IL','en-IM','en-IN','en-IQ','en-IT','en-JE','en-JM','en-JO','en-JP','en-KE','en-KN','en-KR','en-LC','en-LR','en-MD','en-MH','en-MK','en-MX','en-MY','en-NG','en-NI','en-NL','en-NO','en-NP','en-NZ','en-PE','en-PH','en-PK','en-PR','en-QA','en-RO','en-RU','en-SA','en-SC','en-SE','en-SG','en-SV','en-SX','en-TH','en-TL','en-TT','en-TW','en-UA','en-UG','en-UM','en-US','en-VE','en-VI','en-VN','en-WF','en-YE','en-ZA','en-ZM','en-ZW');
/* ES = LANGUAGE IN ('es','es-41','es-DO','es-EC','es-ES','es-GT','es-MX','es-PR','es-US','es-VE');*/
/* FA = LANGUAGE IN ('fa','fa-US');*/
/* FIL = LANGUAGE IN ('fil-P','fil-U');*/
/* FR = LANGUAGE IN ('fr','fr-CA','fr-FR');*/
/* HE = LANGUAGE IN ('he','he-IL','he-US');*/
/* HU = LANGUAGE IN ('hu','hu-HU','hu-US');*/
/* ID = LANGUAGE IN ('id'	'id-US');*/
/* IT = LANGUAGE IN ('it','it-ES','it-IT','it-US');*/
/* JA = LANGUAGE IN ('ja','ja-CA','ja-JP','ja-US');*/
/* KO = LANGUAGE IN ('ko','ko-KR','ko-US');*/
/* NB = LANGUAGE IN ('nb'	'nb-NO');*/
/* NL = LANGUAGE IN ('nl','nl-BE','nl-NL','nl-US');*/
/* PL = LANGUAGE IN ('pl','pl-PL','pl-US');*/
/* PT = LANGUAGE IN ('pt','pt-BR','pt-PT','pt-US');*/
/* RO = LANGUAGE IN ('ro','ro-RO','ro-US');*/
/* RU = LANGUAGE IN ('ru','ru-AM','ru-FR','ru-GB','ru-IT','ru-KZ','ru-MX','ru-RU','ru-US');*/
/* SV = LANGUAGE IN ('sv','sv-CN','sv-SE','sv-US');*/
/* TH = LANGUAGE IN ('th','th-TH','th-US');*/
/* UK = LANGUAGE IN ('uk','uk-US');*/
/* VI = LANGUAGE IN ('vi','vi-US','vi-VN');*/
/* ZH = LANGUAGE IN ('zh','zh-Ha','zh-HK','zh-TW');*/

 RES = RESOLUTION IN ('0.727039993','1.000499964','3.145728111','2.742336035','0.786432028','0.614400029','2.251125097','1.635840058','2.073600054','0.921599984');
 DEV_VOL = DEVICE_VOLUME IN ('1','0.310000002','0.25','0.370000005','0.439999998','0.5','0.059999999','0.189999998','0.119999997','0.560000002','0.620000005','0.689999998','0.75','0.810000002','0.870000005','0.939999998');

 IF DEVICE_WIDTH > DEVICE_HEIGHT THEN LANDSCAPE=1;
 ELSE LANDSCAPE=0;
 
 RUN;

 DATA MOBILEADSTEST;
 SET SASDATA.MOBILEADSTEST;

 PLATFORM = DEVICE_PLATFORM IN ('iOS'); 

 DEV_OS_7 = DEVICE_OS IN ('7','7.1','7.0.2','7.0.3','7.0.4','7.0.6','7.1.1','7.1.2');
 DEV_OS_8 = DEVICE_OS IN ('8','8.1','8.2','8.3','8.4','8.0.2','8.1.1','8.1.2','8.1.3','8.4.1');
 DEV_OS_9 = DEVICE_OS IN ('9','9.1','9.2','9.3','9.0.1','9.0.2','9.2.1','9.3.1','9.3.2','9.3.3','9.3.4','9.3.5');
 DEV_OS_10 = DEVICE_OS IN ('10','10.1','10.2','10.0.1','10.0.2','10.0.3','10.1.1');
 DEV_OS_4 = DEVICE_OS IN ('4.4.1','4.4.2','4.4.3','4.4.4');
 DEV_OS_5 = DEVICE_OS IN ('5.0.1','5.0.2','5.1.1','5.5.5');

 APPLE = DEVICE_MAKE IN ('iPhone9','iPhone8','iPhone7','iPhone6','iPhone5','iPhone4','iPhone3','iPad2','iPad3',
'iPad4','iPad5','iPad6','iPod5','iPod7');
 
 IPHONE = DEVICE_MAKE IN ('iPhone9','iPhone8','iPhone7','iPhone6','iPhone5','iPhone4','iPhone3');
 IPAD = DEVICE_MAKE IN ('iPad2','iPad3','iPad4','iPad5','iPad6');
 IPOD = DEVICE_MAKE IN ('iPod5','iPod7');

 GIONEE = DEVICE_MAKE IN ('GIONEE','GiONEE');
 HIPSTREE = DEVICE_MAKE IN ('hipstree','Hipstree');
 MYPHONE = DEVICE_MAKE IN ('MyPhone','MyPhoneM');
 HP = DEVICE_MAKE IN ('HP','Hewlett-');
 MITO = DEVICE_MAKE IN ('MITO','MITO_T81');
 ACER = DEVICE_MAKE IN ('Acer','acer');
 ASUS = DEVICE_MAKE IN ('asus','ASUSTek');
 CHERRY = DEVICE_MAKE IN ('Cherry','Cherry M','Cherry_M');
 HTC = DEVICE_MAKE IN ('HTC','htc');
 HUAWEI = DEVICE_MAKE IN ('HUAWEI','Huawei');
 LENOVO = DEVICE_MAKE IN ('LENOVO','Lenovo');
 LG = DEVICE_MAKE IN ('LG Elect','LGE');
 MOTOROLA = DEVICE_MAKE IN ('motorola','Motorola');
 ONEPLUS = DEVICE_MAKE IN ('OnePlus','Oplus');
 SAMSUNG = DEVICE_MAKE IN ('samsung','Samsung');
 SPA = DEVICE_MAKE IN ('SPA Cond','SPA_COND');
 TCL = DEVICE_MAKE IN ('TCL','TCL ALCA');
 ZTE = DEVICE_MAKE IN ('ZTE','zte');

/* AR = LANGUAGE IN ('ar','ar-AE','ar-AW','ar-AZ','ar-CA','ar-EG','ar-GB','ar-IQ','ar-KW','ar-QA','ar-SA','ar-US','ar-YE');*/
/* CS = LANGUAGE IN ('cs-GB','cs-US');*/
/* DA = LANGUAGE IN ('da-DK','da-US');*/
/* DE = LANGUAGE IN ('de','de-DE','de-US');*/
/* EL = LANGUAGE IN ('el'	'el-GR'	'el-US');*/
EN = LANGUAGE IN ('en','en-AD','en-AE','en-AF','en-AG','en-AL','en-AM','en-AO','en-AR','en-AS','en-AT','en-AU','en-AW','en-AX','en-BB','en-BH','en-BM','en-BR','en-CA','en-CD','en-CG','en-CM','en-CN','en-CO','en-CW','en-DE','en-DJ','en-DO','en-DZ','en-EG','en-ES','en-ET','en-FR','en-GB','en-GD','en-GE','en-GH','en-GR','en-GY','en-HK','en-IC','en-ID','en-IE','en-IL','en-IM','en-IN','en-IQ','en-IT','en-JE','en-JM','en-JO','en-JP','en-KE','en-KN','en-KR','en-LC','en-LR','en-MD','en-MH','en-MK','en-MX','en-MY','en-NG','en-NI','en-NL','en-NO','en-NP','en-NZ','en-PE','en-PH','en-PK','en-PR','en-QA','en-RO','en-RU','en-SA','en-SC','en-SE','en-SG','en-SV','en-SX','en-TH','en-TL','en-TT','en-TW','en-UA','en-UG','en-UM','en-US','en-VE','en-VI','en-VN','en-WF','en-YE','en-ZA','en-ZM','en-ZW');*/
/* ES = LANGUAGE IN ('es','es-41','es-DO','es-EC','es-ES','es-GT','es-MX','es-PR','es-US','es-VE');*/
/* FA = LANGUAGE IN ('fa','fa-US');*/
/* FIL = LANGUAGE IN ('fil-P','fil-U');*/
/* FR = LANGUAGE IN ('fr','fr-CA','fr-FR');*/
/* HE = LANGUAGE IN ('he','he-IL','he-US');*/
/* HU = LANGUAGE IN ('hu','hu-HU','hu-US');*/
/* ID = LANGUAGE IN ('id'	'id-US');*/
/* IT = LANGUAGE IN ('it','it-ES','it-IT','it-US');*/
/* JA = LANGUAGE IN ('ja','ja-CA','ja-JP','ja-US');*/
/* KO = LANGUAGE IN ('ko','ko-KR','ko-US');*/
/* NB = LANGUAGE IN ('nb'	'nb-NO');*/
/* NL = LANGUAGE IN ('nl','nl-BE','nl-NL','nl-US');*/
/* PL = LANGUAGE IN ('pl','pl-PL','pl-US');*/
/* PT = LANGUAGE IN ('pt','pt-BR','pt-PT','pt-US');*/
/* RO = LANGUAGE IN ('ro','ro-RO','ro-US');*/
/* RU = LANGUAGE IN ('ru','ru-AM','ru-FR','ru-GB','ru-IT','ru-KZ','ru-MX','ru-RU','ru-US');*/
/* SV = LANGUAGE IN ('sv','sv-CN','sv-SE','sv-US');*/
/* TH = LANGUAGE IN ('th','th-TH','th-US');*/
/* UK = LANGUAGE IN ('uk','uk-US');*/
/* VI = LANGUAGE IN ('vi','vi-US','vi-VN');*/
/* ZH = LANGUAGE IN ('zh','zh-Ha','zh-HK','zh-TW');

 RES = RESOLUTION IN ('0.727039993','1.000499964','3.145728111','2.742336035','0.786432028','0.614400029','2.251125097','1.635840058','2.073600054','0.921599984');
 DEV_VOL = DEVICE_VOLUME IN ('1','0.310000002','0.25','0.370000005','0.439999998','0.5','0.059999999','0.189999998','0.119999997','0.560000002','0.620000005','0.689999998','0.75','0.810000002','0.870000005','0.939999998');
  
 IF DEVICE_WIDTH > DEVICE_HEIGHT THEN LANDSCAPE=1;
 ELSE LANDSCAPE=0;

 RUN;

DATA INSTALL NOT_INSTALLED;
SET MOBILEADSTRAINING;
IF INSTALL='1' THEN OUTPUT INSTALL;
ELSE OUTPUT NOT_INSTALLED;
RUN;

PROC SORT DATA=NOT_INSTALLED; 
BY PLATFORM  LANDSCAPE WIFI EN  DEVICE_MAKE RES DEV_VOL;
RUN;

PROC SURVEYSELECT DATA=NOT_INSTALLED
      METHOD=SRS N=6228
      SEED=1000 OUT=N_INSTALL_SAMPLE;
   STRATA PLATFORM LANDSCAPE WIFI EN  DEVICE_MAKE RES DEV_VOL  / alloc=prop;;
RUN;

DATA MOBTRAINING_FINAL;
SET INSTALL N_INSTALL_SAMPLE;
RUN;

/* LOGISTIC REGRESSION */;

PROC LOGISTIC DATA=MOBTRAINING_FINAL ;
LOGIT: MODEL INSTALL (EVENT='1') = RES DEV_VOL PLATFORM IPHONE IPAD IPOD ONEPLUS GIONEE HIPSTREE MYPHONE HP MITO ACER ASUS CHERRY HTC HUAWEI LENOVO LG MOTOROLA  SAMSUNG SPA TCL ZTE 
EN  PUBLISHER_ID LANDSCAPE 
DEV_OS_4 DEV_OS_5 DEV_OS_7 DEV_OS_8 DEV_OS_9 DEV_OS_10 /selection=forward;
SCORE DATA=MOBILEADSTEST OUT=MOB_LOGIT_PREDICT;
RUN;

DATA CHECK;
SET MOB_LOGIT_PREDICT;
IF P_1 > 0.5 THEN OUTPUT;
RUN;


/*ROC CURVE ON TEST DATA */
PROC LOGISTIC DATA=MOB_LOGIT_PREDICT PLOTS=ROC(ID=PROB);
 MODEL INSTALL (EVENT='1') = RES DEV_VOL PLATFORM APPLE GIONEE HIPSTREE MYPHONE HP MITO ACER ASUS CHERRY HTC HUAWEI LENOVO LG MOTOROLA ONEPLUS SAMSUNG SPA TCL ZTE 
EN  PUBLISHER_ID LANDSCAPE 
DEV_OS_4 DEV_OS_5 DEV_OS_7 DEV_OS_8 DEV_OS_9 DEV_OS_10 / NOFIT;
 ROC PRED=P_1;
RUN;
