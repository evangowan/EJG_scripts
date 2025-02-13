#!/bin/bash

# By Evan J. Gowan

# Last modified: February 13, 2025

# This script downloads the paleoceanography data that is stored on the NOAA NCEI paleo data 
# server. I created this because there is uncertainty on the long term viability of NOAA,
# and I wanted to make sure I had a copy of the ocean sediment core data stored there.

# Ultimately, it probably should be a long term goal for paleoclimate scientists to put this 
# data in a more robust database system, like SISAL did for speleothems, so that it is easier
# to apply new age models (for instance). Until that point, having a backup of the original 
# text file data in the NOAA format is a good option.

# This script uses wget to download the files. Since the folder naming scheme is not
# always consistent for the paleoceanography data (some are by name, some are in a
# large megafolder for sediment core data), I have standardized it so everything is
# sorted by name. There inevitably is some duplication in folder names, but I do not
# have time to check everything.

# The only thing that isn't downloaded is the Osman et al (2021)
# iCESM model output, which is many GB in size (by comparison, the rest of the
# files that are downloaded sums to only 370 MB). If you want to download it, you 
# will have to uncomment it.

# When I ran this script for the first time, there were some mistakes, that are hopefully
# fixed. I do not want to run it again since it still successfully downloaded all the data, 
# so please tell me if bugs are still present.

# In total, 1100 folders are created. The naming scheme goes like this:

# firstauthorYYYY_location_keyword

# Where the location is a pretty general water body where the data are from, and the keyword
# is an example of what data are contained in the folder. It is not comprehensive,
# so I suggest doing an rgrep command to do a more thorough search.

# If you have questions/comments, send me a message on social media:
#
# Mastodon: https://fediscience.org/@DrEvanGowan
# Bluesky: https://bsky.app/profile/evangowan.bsky.social

# 


#1000 Year Composite Sea Surface Temperature Record from the North Atlantic Ocean

folder=cunningham2013_North_Atlantic_SST
mkdir ${folder}
cd ${folder}
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-nor-margin.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-nor-channel.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-iceland-shelf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-malangen.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-voring.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-ranafjord.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-sunart.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-n-comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-i-comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-nena-comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cunningham2013/cunningham2013-diatom.txt

cd ..

#2.8 million years of alkenone and TEX86 data and surface and subsurface temperature in the northern South China Sea

folder=li2017_South_China_sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2017/li2017.txt

cd ..

# 2000 Year Precipitation-Based Southern Oscillation Index Reconstruction

folder=yan2011_southern_oscillation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yan2011/yan2011soipr.txt

cd ..

#2000 Year Tropical Rainfall Reconstructions

folder=lechleitner2017_2000_year_tropical_rainfall
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/lechleitner2017/lechleitner2017precip.txt

cd ..

# 231Pa/230Th Ratios in Arctic Ocean Surface Sediments

folder=kipp2020_Pa-Th_ratio_arctic
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kipp2020/kipp2020-arctic.txt

cd ..

# 340 KYr SW Pacific d18O Data and Mg/Ca-based SST Reconstruction

folder=Pahnke2005_SW_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md972120-tab.txt

cd ..

# 350 KYr Sea Level Reconstruction and Foraminifer Isotope Data

folder=Lea2002_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tr16319l-tab.txt

cd ..

#600-year Coralline Algal d15N Record from the Labrador Shelf

folder=doherty2021_d15N_Labrador_shelf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/doherty2021/doherty2021-d15n.txt
cd ..

# 860,000 Years of foraminifera-bound nitrogen isotope data from the South China Sea

folder=ren2017_Nitrogen_South_China_Sea
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ren2017/ren2017-fb-d15n.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ren2017/ren2017-d18o.txt

cd ..

# A Global Planktic Foraminifer Census data set for the Pliocene Ocean, Addendum

folder=dowsett2019_Pliocene_Planktic
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dowsett2019/dowsett2019-odp982.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dowsett2019/dowsett2019-odp999.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dowsett2019/dowsett2019-iodp1308.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dowsett2019/dowsett2019-odp662.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dowsett2019/dowsett2019-iodp1313.txt

cd ..

# Adélie Drift, East Antarctic Fatty Acid Carbon Isotope Data from 1587-1998 CE

folder=ashley2021_East_Antarctic_Carbon
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/southern_ocean/ashley2021/ashley2021-dtgc2011-fa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/southern_ocean/ashley2021/ashley2021-dtgc2011-c24-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/southern_ocean/ashley2021/ashley2021-dtgc2011-c18-d13c.txt

cd ..

# Adélie Land, East Antarctica Holocene Diatom Abundance Data

folder=crosta2007_East_Antarctica_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/crosta2007/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/crosta2007/crosta2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/crosta2007/crosta2007.xls

cd ..

# Age model, biogenic opal contents and sedimentary U/Th for the last 150 ka at sites J1002 and J1007, Chilean Margin

folder=li2022_Chilean_opal_U-Th
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition_379t_j1007_opalrecon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition379t_j1002.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition_379t_j1002_u-th.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition379t_j1007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition_379t_j1002_opalrecon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/li2022/li2022-expedition_379t_j1007_u-th.txt

cd ..

# Agulhas Bank Stable Isotope and Mg/Ca Data and SST Reconstruction During the Past 80,000 Years

folder=dyez2014_Agulhas_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2014/dyez2014.txt

cd ..

# Agulhas Plateau 360KYr Stable Isotope Data

folder=ziegler2013_Agulhas_Stable_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ziegler2013/ziegler2013-benthic.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ziegler2013/ziegler2013ther-deep.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ziegler2013/ziegler2013-plank.txt

cd ..

#Agulhas Plateau Biomarker Data and SST Reconstructions through the mid-Pleistocene Transition

folder=cartagena-sierra2021_Agulhas_SST_MPT
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cartagena-sierra2021/cartagena-sierra2021-u1475-sst.txt

cd ..

# Aharon 2003 Gulf of Mexico Deglacial Stable Isotope Data

folder=aharon2003_Gulf_Of_Mexico_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/aharon2003/aharon2003.txt

cd ..

# Aleutian Islands 225 Year Coralline Algae Growth Increment Data

folder=halfar2011_Aleutian_Coralline_Algae
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/halfar2011/halfar2011.txt

cd ..

# Alkenone SST reconstructions from the eastern tropical Pacific 0-30 ky BP

folder=koutavas2008_east_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-v19-28.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-v21-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-ect.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-v19-27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-v19-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2008/koutavas2008-rc11-238.txt

cd ..

# Alkenone paleotemperature estimates, d18O seawater data, and coarse fraction data from the Gulf of Alaska spanning the past 18,000 years

folder=praetorius2016_Gulf_Of_Alaska_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-66-d18osw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-composite-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-alkenone.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-26-d18osw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-26-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-26-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-66-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2016/praetorius2016-66-coarse.txt

cd ..

# Amazon Fan ODP942 37KYr Tetraether Lipids Data

folder=bendle2010_Amazon_lipid
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bendle2010/bendle2010.txt

cd ..

# Amchitka Island Alaska 150 Year Corraline Algae Mg/Ca Data

folder=hetzinger2011_Amchitka_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hetzinger2011/hetzinger2011.txt

cd ..

# Amchitka Island Alaska 65 Year Corraline Algae Mg/Ca Data

folder=hetzinger2009_Amchitka_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hetzinger2009/hetzinger2009.txt

cd ..

# Amundsen Sea Geochemistry, Radiocarbon, and Grain Size Data during the last 21 ka

folder=kim2023_Amundson_Sea
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/southern_ocean/kim2023/kim2023-gc02.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/southern_ocean/kim2023/kim2023-gc01.txt
cd ..

# Andaman Sea U1448 Vegetation Proxies Leaf Wax Carbon Isotopes and Alkane Chain Length during the Last 640 kyr

folder=mcgrath2023_Andaman_Sea_Leaf
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/mcgrath2023/mcgrath2023-u1448-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/mcgrath2023/mcgrath2023-u1448-alkane.txt

cd ..

# Andaman Sea, IODP Expedition 353, Stable Isotope Data over the past 3 Mya

folder=clemens2022_Andaman_Sea_isotope
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2022/clemens2022-iodp_u1448_raw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2022/clemens2022-iodp_u1448_age_model.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2022/clemens2022-iodp_u1448_avg.txt

cd ..

# Anderson and Archer 2002 Last Glacial Maximum Carbonate Ion Reconstructions

folder=anderson2002b_LGM_Carbonate
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2002b/anderson2002b.txt

cd ..

#Anderson and Prell 1993 Oman Upwelling Data Set

folder=anderson1993_Oman_upwelling
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723asusc.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723bdel.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723bflux.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723bgram.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723b_pct.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723b_pct.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/723bsusc.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/readme_anderson1993.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson1993/table2.xls

cd ..

# Anderson et al 2001 Sed. Concentrations of Phosphorus and Carbon

folder=anderson2001_P_C
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2001/appendix.txt

cd ..

# Andrews and Tedesco 1992 Labrador Sea Heinrich Event Data

folder=andrews1992_Labrador_Heinrich
mkdir ${folder}
cd ${folder} 


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1992/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1992/hu87-033-009_c14dates.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1992/hu87-033-009_isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1992/hu87-033-009_seddata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1992/readme_andrews1992.txt

cd ..

# Andrews et al 1998 Denmark Strait/SE Greenland IRD Event Data

folder=andrews1998_Greenland_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_forams.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_forams.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_grainsize.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_ird.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_isotope_ben.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_isotope_ben.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_isotope_plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_isotope_plank.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_ms_color.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/007_ms_color.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1998/readme_andrews1998.txt

cd ..

# Andrews et al. 1999 Holocene High-Res Labrador Shelf Data


folder=andrews1999_Labrador_Shelf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033-017_rockmag.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033-017_seddata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033-018_foramdata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033-018_rockmag.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033_stableisotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/87033_volms.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews1999/readme_andrews1999.txt

cd ..

# Andrews et al. 2003 North Iceland Shelf MD99-2269 Holocene Magnetic Data

folder=andrews2003_Iceland_Magnetic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2003/andrews2003.txt

cd ..

# Andrews et al. 2008 E. Greenland/Iceland Holocene Magnetic Data

folder=andrews2008_Greenland_Magnetic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2008/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2008/andrews2008.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2008/andrews2008.xls

cd ..

# Andrews et al. 2009 NW Iceland/Denmark Strait 2KYr Multiproxy Sediment Data

folder=andrews2009_Iceland_multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2009/andrews2009.txt

cd ..

# Angola-Benguela Front ODP1078C 25KYr Alkenone SST Reconstructions

folder=kim2003_Angola_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kim2003/kim2003.txt

cd ..

# Antarctic Geochemistry Data and Mean Annual Temperature Reconstruction through the Eocene-Oligocene transition

folder=passchier2017_Antarctica_Eocene-Oligocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/passchier2017/passchier2017.txt

cd ..

# Antarctic Holocene Ice and Sediment Core Isotope, Chemical, and Diatom Data

folder=mezgec2017_Antarctic_diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mezgec2017/anta99-cj5diatom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mezgec2017/bay05-20cdiatom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mezgec2017/bay05-43cdiatom.txt

cd ..

# Antarctic Intermediate Water properties since 400 ka recorded in benthic foraminifera

folder=elmore2015_Antarctic_Intermediate_Water
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/elmore2015/elmore2015-dsdp593z.txt

cd ..

# Antarctic Peninsula SHALDRIL II Eocene-Pliocene Microfossil Data

folder=bohaty2011_Antarctic_Eocene-Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bohaty2011/bohaty2011.txt

cd ..

# Arabian Sea 20KYr Carbonate and Stable Isotope Data

folder=overpeck1996_Arabian_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/overpeck1996/overpeck1996.txt
cd ..

# Arabian Sea Cores Foraminiferal Oxygen Isotope Data

folder=staubwasser2003_Arabian_foram_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/staubwasser2003/staubwasser2003.txt

cd ..

#Arabian Sea Denitrification Data

folder=altabet2002_Arabian_Denitrification
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc27-23-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc27-14-tab.txt

cd ..

# Arabian Sea Geochemical and Sedimentological Data from Core SO130-289KL tor the Last 80 kyr

folder=deplazes2014_Arabian_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/deplazes2014/deplazes2014-sed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/deplazes2014/deplazes2014-li.txt

cd ..

# Arabian Sea Holocene G. bulloides Data

folder=gupta2003_Arabian_bulloides
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/723a-g-tab.txt

cd ..

# Arabian Sea MD04-2881 750KYr Paleoproductivity Data

folder=ziegler2010_Arabian_Paleoproductivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ziegler2010/ziegler2010.txt

cd ..

# Arabian Sea NIOP905 87KYr Benthic Stable Isotope Data

folder=jung2009_Arabian_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jung2009/jung2009.txt

cd ..

# Arabian Sea ODP722 11ma Leaf Wax Stable Isotope Data

folder=huang2007_Arabian_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007soiliso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007biomarker.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007bulloides.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2007/huang2007corg.txt

cd ..

# Arabian Sea Organic Carbon, Biomarker and XRF-Br data covering the last 50 ka

folder=orsi2017_Arabian_bio
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/orsi2017/orsi2017-oc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/orsi2017/orsi2017-br.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/orsi2017/orsi2017-bio.txt

cd ..

# Arabian Sea Oxygen Minimum Zone(OMZ) during the last 225,000 year

folder=reichart1998_Arabian_OMZ
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop455-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop464-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop453-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop497-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop478-tab.txt

cd ..

# Arabian Sea Thallium Isotope Data from the past 32,000 years

folder=wang2023_Arabian_Thallium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2023/wang-2023-tn041-8pg_jpc.txt

cd ..

# Arabian Sea denitrification during the past 1 Ma

folder=altabet1999_Arabian_denitrification
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc27-61a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp722b-tab.txt

cd ..

# Arabian Sea monsoon during the past 24,000 years

folder=sirocko1993_Arabian_monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/74kl-tab.txt

cd ..

# Arctic Alaskan Margin Holocene Geomagnetic Data

folder=lise-pronovost2009_Alaska_geomag
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lise-pronovost2009/lise-pronovost2009.txt

cd ..

# Arctic Bay Coralline Algae d18O Data from 1967-2008 CE

folder=ng2016_Arctic_Bay_d18O
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ng2016/ng2016.txt

cd ..

# Arctic Holocene Proxy Climate Database

folder=sundqvist2014_Arctic_Holocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/alaska-yukon-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/arctic2014readme.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/canadian-islands-greenland-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/fennoscandia-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/mainland-canada-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/north-atlantic-iceland-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/russian-arctic-v1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/v1/tables-1-2-s1.xlsx

cd ..

# Arctic Ocean 50KYr Ostracod Mg/Ca-Sr/Ca Intermediate Water Paleotemperatures

folder=cronin2012_Arctic_Ostracod
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2012/cronin2012bwt-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2012/cronin2012mgca-ps1243-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2012/cronin2012mgca-noaa.txt

cd ..

# Arctic Ocean Foraminifera-Bound Nitrogen Isotopes since 35 ka

folder=farmer2021_Arctic_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/farmer2021/farmer2021-nitrogen.txt

cd ..

# Arctic Ocean Holocene Foraminifera Census Data

folder=ivanova2006_Arctic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bp01-624-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/asv-987-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bp00-075-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/s-17666-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/asv-858-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/asv-1200-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/nast-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/asv-880-tab.txt

cd ..

# Arctic Ocean Sediment Geochemistry, Lithology, d18O, Productivity, and Bottom Water Mg/Ca Temperature Data during Marine Isotope Stages 12 through MIS 1

folder=cronin2019_Arctic_MIS12-1
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-polycope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-mgca-bwt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-benthic-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-acetabul-composite.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-16-9pc-acetabul.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-api.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-cores.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-krithe.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2019/cronin2019-acetabul.txt

cd ..

# Arctic Ocean Spectral Reflectance Data During the Quaternary

folder=ortiz2014_Arctic_spectral
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p39-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p23-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p25-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p39.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p23.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-ar-p25.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-14jpc-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-08jpc-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-18jpc-stds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-08jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-18jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2014/ortiz2014-14jpc.txt

cd ..

# Arctic Ocean Surface Sediment Molecular Geochemistry Data

folder=stoynova2013_Arctic_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stoynova2013/stoynova2013.txt

cd ..

# Arctic Ostracode Database 2010

folder=cronin2010_Arctic_Ostracode
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010/cronin2010.txt

cd ..

# Arctic Ostracode Database 2020 (AOD2020)

folder=cronin2021_Arctic_Ostracode
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021/cronin2021-aod2020.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021/cronin2021-aod2020-tempsource.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021/cronin2021-aod2020-sampsource.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021/cronin2021-aod2020-species.txt

cd ..

# Arctic Ostracode Rabilimis Population Data during the Quaternary

folder=cronin2021b_Arctic_Ostracode_Rabilimis
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-swerus-l2-4-pc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly-bin293032.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly0503-18tc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-swerus-l2-20-31-32.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-swerus-l2-32-gc2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly1302-mc29.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-lomrog07-04.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p21.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p39.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ao16-9-pc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-coredata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-96-12-p1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-swerus-l2-32-mc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ryder19-07-pc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ryder19-12-gc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ryder19-17-gc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-swerus-l2-2-pc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly0503-6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly1302-ggc30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-hly1302-jpc32.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ryder19-14-gc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p40.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-p9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2021b/cronin2021-ryder-muc.txt

cd ..

# Arctic vegetation, temperature, and hydrology during Early Eocene transient global warming events

folder=willard2019_Arctic_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/willard2019/willard2019-brgdgt-mat.txt

cd ..

# Astronomical timescale for the lower Pleistocene

folder=shackleton1990_lower_Pleistocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp-677-tab.txt

cd ..

# Atlantic Coretop Foraminiferal Mg/Ca and d18O Calibration Data

folder=arbuszewski2010_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arbuszewski2010/arbuszewski2010.txt

cd ..

# Atlantic Deglacial Benthic Foraminifer Stable Isotope Data

folder=waelbroeck2011_Atlantic_benthic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011-3076q.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011enam.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011geob1711.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011k09.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011m35003.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011na8722.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011gpc5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2011/waelbroeck2011-2037.txt

cd ..

# Atlantic Deglacial Mg/Ca SST and d18Osw Reconstructions

folder=carlson2008_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/carlson2008/carlson2008.txt

cd ..

# Atlantic Meridional Overturning Circulation (AMOC) Reconstruction from 10,000 to 2,000 BP

folder=vincent2022_Atlantic_AMOC
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/vincent2022/amoc_recon_vincent2022.txt

cd ..

#Atlantic Ocean 23,000 Year Benthic Foraminifera Stable Isotope Data

folder=oppo2015_Atlantic_benthic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2015/oppo2015odp984.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2015/oppo2015ggc26.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2015/oppo2015ggc25.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2015/oppo2015ggc24.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2015/oppo2015ggc73.txt

cd ..

# Atlantic Ocean Core Top Trace Element and Stable Isotope Data

folder=cleroux2013_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013hirsuta.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013inflata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013trunc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013crass.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013duter.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2013/cleroux2013tumida.txt

cd ..

# Atlantic Ocean Pliocene Planktonic and Benthic d18O and Mg/Ca Data

folder=karas2017_Atlantic_pliocene_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2017/karas2017dsdp516a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2017/karas2017dsdp552a.txt

cd ..

# Atlantic Ocean Stable Isotope, Geochemistry and Cadmium Seawater Data over the last 25,000 years

folder=oppo2018_Atlantic_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s1-chem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s3-knr197-3mc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s12-knr197-3-glacial.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s13-knr140-glacial.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s14-cdw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-47.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-53.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-60.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-s15-isot.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-46.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-23.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-36.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2018/oppo2018-knr197-3-45.txt

cd ..

#Atlantic Ocean Trilobatus sacculifer Na/Ca Data for the Last 20,000 Years

folder=schmidt2021_Atlantic_Trilobatus
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2021/schmidt2021-coretop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2021/schmidt2021-26jpc.txt

cd ..

# Atlantic Oligocene/Miocene Boundary Paleoproductivity Data

folder=diester-haass2011_Atlantic_Oligocene-Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2011/diester-haass2011.txt

cd ..

# Atlantic Tropical Cyclone Reconstructions for the Past 1500 Years

folder=mann2009_Atlantic_tropical_cyclone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/PRVieques.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/TCoverwash.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/TCoverwashUnNorm.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/TCoverwashUniformPeriod.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/TCoverwashUniformWeights.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mann2009/Caribbean.dat

cd ..

# Atlantic and Pacific 800 KYr Benthic d18O Stacks

folder=lisiecki2009_800kyr_benthic_stack
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2009/lisiecki2009-noaa.txt

cd ..

# Atlantic and Pacific Ocean Benthic d13C Stacks Over the Last 800 ka

folder=lisiecki2010_d13C_benthic_stack
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2010-cp/lisiecki2010-cp-ncw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2010-cp/lisiecki2010-cp-pdw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2010-cp/lisiecki2010-cp-scw.txt

cd ..

# Atlantic and Pacific Regional 450 KYr Benthic d13C Stacks

folder=lisiecki2008_d13C_benthic_stack
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2008/lisiecki2008.txt

cd ..

# Atlantic and Pacific paleochemical records for the last 215,000 years

folder=imbrie1992_paleochemical
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc17-177-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc27-61-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-27-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-30-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/k708-1-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps21-295-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc11-120-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13-110-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13-229-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/a107-131-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/chn82-24-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/k-11-tab.txt

cd ..

# Atlantic temperature during the past 2,000 years

folder=keigwin1996_Atlantic_temperature
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bc004a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bc004d-tab.txt

cd ..

# Atmospheric CO2 20 Million Year Foraminiferal B/Ca Reconstruction

folder=tripati2011_20_Myr_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011ph.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011replicate.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011species.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011bca-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2011/tripati2011co2.txt

cd ..

# Atmospheric CO2 66 Million Year Reconstruction from Marine Archives

folder=rae2021_66_Myr_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021alkenone-co2diffusive.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021co2-alkenone.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021co2-d11b-ph.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021d11b-ph-co2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021d11b-by-study.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/rae2021/rae2021alkenone-co2anchored.txt

cd ..

# Authigenic uranium concentrations in the Deep South Atlantic during the past 470 thousand years

folder=glasscock2020_South_Atlantic_Uranium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/glasscock2020/glasscock2020-uranium.txt

cd ..

# Baffin Bay Holocene/Late Glacial Mineralogical Data

folder=andrews2011_Baffin_mineral
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2011/andrews2011.txt

cd ..

# Baffin Bay MIS2-3 Sediment Provenance Data

folder=andrews2014b_Baffin_sediment
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014b/andrews2014b.txt

cd ..

# Bahamas 1,500 Year Blue Hole Coarse Sediment Paleohurricane Data

folder=wallace2019_Bahamas_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2019/wallace2019am5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2019/wallace2019am2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2019/wallace2019am4.txt

cd ..

# Bahamas Blue Hole Grain Size Data and Paleohurricane Frequency Data

folder=winkler2020_Bahamas_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/winkler2020/winkler2020thatchpoint.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/winkler2020/winkler2020andros.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/winkler2020/winkler2020andros-freq.txt

cd ..

# Baja California Holocene Mg/Ca SST Reconstruction

folder=marchitto2010_Baja_California_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2010/marchitto2010.txt

cd ..

# Bard 2002 North-Atlantic Sea Surface Temperature Reconstruction

folder=bard2002_North_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bard2002/bard2002.txt

cd ..

# Barium accumulation in the South Atlantic during the past 190,000 years

folder=nuernberg1997_South_Atlantic_Barium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2082-1-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps1756-5-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps1768-8-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps1772-8-tab.txt

cd ..

# Barron et al. 2003 N. Coastal California High Res. Holocene/Pleistocene Oceanographic Data

folder=barron2003_California_ocean
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barron2003/barron2003.txt

cd ..

# Barron et al. 2004 High Resolution Guaymas Basin Geochemical, Diatom, and Silicoflagellate Data

folder=barron2004_Guaymas_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barron2004/barron2004.txt

cd ..


# Barron et al. 2005 High Resolution Guaymas Basin Diatom and Silicoflagellate Data

folder=barron2005_Guaymas_diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barron2005/barron2005.txt

cd ..

# Barrows et al. 2000 Southwest Pacific Faunal-Based LGM SST Estimates

folder=barrows2000_SW_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/appendix_a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/appendix_b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/barrows2000.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/readme_barrows2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/table3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/barrows2000/table4.txt

cd ..

# Bay of Bengal 1.46-million-year record of d13C and Atmospheric CO2 Data from Sedimentary Leaf Wax

folder=yamamoto2021_Bay_of_Bengal_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/yamamoto2021/yamamoto2021-u1446.txt

cd ..

# Bay of Bengal U1446 Benthic and Leaf Wax Isotopes during the Last 640 kyr

folder=mcgrath2021_Bay_of_Bengal_isotopes
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgrath2021/mcgrath2021-u1446-dD.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgrath2021/mcgrath2021-u1446-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgrath2021/mcgrath2021-u1446-d13c.txt

cd ..

# Bay of Bengal, Northeast Indian Margin Stable Isotope, Biomarker and SST Reconstructions since the Mid-Pleistocene

folder=clemens2021_Bay_of_Bengal_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-d18Osw-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-leafwax-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-benth-iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-tex86hsst-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-plank-iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-mgca-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-rbca-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2021/clemens2021-u1446-agemodel-noaa.txt

cd ..

# Bay of Plenty 32,000 Year Benthic Foraminifera Trace Element Data

folder=allen2020_Bay_of_Plenty_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/allen2020/allen2020.txt

cd ..

# Bay of Plenty Foraminiferal Data and SST Reconstruction from 16KyrBP to Present

folder=samson2005_Bay_of_Plenty_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/h214-tab.txt

cd ..

#Bay of Plenty, New Zealand Deglacial Planktonic Stable Isotope Data

folder=schiraldi2014_Bay_of_Plenty_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schiraldi2014/schiraldi2014jpc79.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schiraldi2014/schiraldi2014jpc64.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schiraldi2014/schiraldi2014jpc87.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schiraldi2014/schiraldi2014jpc125.txt

cd ..

# Beaufort Sea Foraminiferal d18O and d13C Data around the Younger Dryas

folder=schiraldi2014_Beaufort_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018-ng/keigwin2018-jpc15_27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018-ng/keigwin2018-jpc9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018-ng/keigwin2018-jpc6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018-ng/keigwin2018-jpc2.txt

cd ..

# Beechey Island, Nunavut C. compactum Growth Increment Data 1805-2015 CE

folder=leclerc2023_Beechy_compactum_growth
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/leclerc2023/leclerc2023-Beechey2b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/leclerc2023/leclerc2023-Beechey41.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/leclerc2023/leclerc2023-Beechey15.txt

cd ..

# Bengal Fan 19 Million Year Buried Wood Fragment Data

folder=lee2019_Bengal_wood
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lee2019/lee2019d2h.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lee2019/lee2019carbon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lee2019/lee2019lignin.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lee2019/lee2019plant.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lee2019/lee2019abundance.txt

cd ..

# Bengal Fan Mio-Pliocene Polycyclic Aromatic Hydrocarbon (PAH) (ODP 717 and 718)

folder=karp2021_Bengal_hydrocarbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karp2021/karp2021-concentration.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karp2021/karp2021-isotope.txt

cd ..

# Bengal Fan Miocene to Present Plant-Wax Biomarker and Isotope Data

folder=polissar2021_Bengal_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2021/polissar2021-bio-iso.txt

cd ..

# Benguela Current GeoB 1023-5 21ka Alkenone SST Reconstruction

folder=kim2002_Benguela_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb1023-5-tab.txt

cd ..

# Benguela Upwelling Region Holocene and Deglacial Mg/Ca Data

folder=farmer2005_Benguela_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1084b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/farmer2005/farmer2005.txt

cd ..

# Benguela Upwelling System Hydrogen and Carbon Isotope Data since the mid-Pliocene

folder=rubbelke2023_Benguela_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/rubbelke2023/rubbelke2023-leafwax-iso.txt

cd ..

# Benthic Foraminiferal Porosity and Isotope Data from the Arabian Sea over the Past 30,000 Years

folder=lu2023_Arabian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-tn047-6ggc_isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-tn047-6ggc_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-14_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-23_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-42_isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-42_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-61_isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-rc27-61_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-tn041-2pg_porosity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lu2023/lu2023-tn041-2pg_isotope.txt

cd ..

# Benway et al. 2006 Eastern Pacific Warm Pool ODP1242 Paleosalinity Data

folder=benway2006_Pacific_salinity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m5a-43jc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/benway2006/benway2006.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1242-tab.txt

cd ..


#Berger et al 1995 ODP Leg 130 Data Set

folder=berger1995_ODP130
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/805c.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/805c.wk1
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/806b.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/806b.wk1
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/milatemp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/milatemp.wk1
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/ojsox96s.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/ojsox96s.wk1
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1995/readme_berger1995.txt

cd ..

# Berger et al 1996 Atmospheric CO2 Recon, Milankovitch Chron

folder=berger1996_CO2
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/806isotp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/806isotp.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/barnjoux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/co2recon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/co2recon.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/co2refs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/mila1000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojc13p96.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojc13p96.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojsl96.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojsl96.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojsox96p.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/ojsox96p.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/readme_berger1996.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/sac18dat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berger1996/sac18dat.xls

cd ..

# Bering Sea 117 Year Coralline Algae Oxygen Isotope Data


folder=halfar2007_Bering_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/halfar2007/halfar2007.txt

cd ..

# Bering Sea and Western Arctic Coretop Reflectance Database

folder=nwaodua2014_Bering_reflectance
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nwaodua2014/nwaodua2014-scores.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nwaodua2014/nwaodua2014-reflect.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nwaodua2014/nwaodua2014-variance.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nwaodua2014/nwaodua2014-loadings.txt

cd ..

# Bermuda Rise High Resolution 60-25KYrBP Uranium Series Data

folder=henry2016_Bermuda_uranium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016ca-ti.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/henry2016/henry2016pa-th.txt

cd ..

# Bermuda Rise Holocene Cd/Ca and Stable Isotope Data

folder=keigwin2000_Bermuda_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2000/keigwin2000.txt

cd ..

# Bice and Norris 2005 Albian to Eocene Atlantic ODP Leg 207 Foraminiferal Stable Isotope Data

folder=bice2005_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bice2005/bice2005.txt

cd ..

# Bice et al. 1996 Arctic Ocean Paleocene Mollusc Stable Isotope Data

folder=bice1996_Arctic_mollusc
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bice1996/bice1996.txt

cd ..

# Bice et al. 2003 Falkland Plateau DSDP511 Cretaceous Foraminiferal Stable Isotope Data

folder=bice2003_Falkland_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bice2003/bice2003.txt

cd ..

# Billups and Schrag 2000 Late Holocene and LGM Planktonic Foraminiferal d18O

folder=billups2000_foram
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2000/billups2000_table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2000/billups2000_table1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2000/readme_billups2000.txt

cd ..

# Billups and Schrag 2002 Foraminiferal d18O, Mg/Ca, and Paleotemperatures for 27 Myr

folder=billups2002_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2002/billups2002.txt

cd ..

# Biogenic Silica Data from the Indian Ocean sector of the Southern Ocean during the mid-Pleistocene climate transition

folder=billups2018_Indian_ocean_silica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2018/billups2018-745b.txt

cd ..

# Biogenic Silica Measurements from ODP 745B in the Antarctic Zone of the Indian Ocean Sector of the Southern Ocean Spanning the Early Pleistocene (1.1-2.6Ma)

folder=billups2024_Indian_ocean_silica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/billups2024/billups2024-odp745b.txt

cd ..

# Biomarker and Sea Surface Temperature Data from the Pacific Ocean Over the Past 11,000 Years

folder=cheung2022_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cheung2022/cheung2022-odp1034sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cheung2022/cheung2022-mv0508-32jcalkenones.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cheung2022/cheung2022-pcm00-md022506c2-md022505.txt

cd ..

# Bismarck Sea Geochemistry Data Over the Last 350 Kyr and New Globally Distributed Sr/Ca Core-top Data

folder=lawson2024_Bismarck_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawson2024/lawson2024-srca-coretop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawson2024/lawson2024-u1486.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawson2024/lawson2024-u1487.txt
cd ..

#Black Sea Holocene Sediment Geochemical Data

folder=dean2010_Black_Sea_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2010/dean2010.txt

cd ..

#Black Sea/Red Sea Oxygen Isotope and Terrigeneous Flux Data During the Holocene.

folder=lamy2006_Black_Sea_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb7622-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb5804-4-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb7625-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lamy2006/lamy2006.txt

cd ..

#Black et al. 2004 Cariaco Basin 2000 Year Annual Foraminifer Oxygen Isotope Data

folder=black2004_Cariaco_foram
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/black2004/black2004.txt

cd ..

# Blackwood Sinkhole, Bahamas 3,000 Year Sand Content and Pollen Data

folder=vanhengstum2016_Bahamas_sand
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vanhengstum2016/vanhengstum2016.txt

cd ..

# Blair and Watkins 2009 Late Cretaceous Calcareous Nannofossils

folder=blair2009_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/blair2009/blair2009.txt

cd ..

# Blake Bahama Outer Ridge and Humber Estuary, UK Oxidizing Pre-Treatments on Amino Acids Data over the last 900ka

folder=millman2022_Humber_Amino
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/aar/millman2022/millman2022-humber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/aar/millman2022/millman2022-1062b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/aar/millman2022/millman2022-knr140-jpc37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/aar/millman2022/millman2022-1056d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/aar/millman2022/millman2022-1059a.txt

cd ..

# Blake Ridge Chemistry, Foraminifera, Stable Isotope and Radiogenic Isotope Data for the last 35,000 Years

folder=wycech2016_Blake_Ridge_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2016/wycech2016-ch15-00-pc9-pl-ben.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2016/wycech2016-ch15-00-pc9-chem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2016/wycech2016-ch15-00-pc9-forams.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2016/wycech2016-ch15-00-pc9-d18o.txt

cd ..

#Boessenkool et al. 2007 Reykjanes Ridge Sub-decadal Mean Grain Size Data

folder=boessenkool2007_Reykjanes_Ridge_grain
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/boessenkool2007/boessenkool2007.txt

cd ..

# Bohai Sea 1327KYr Grain Size Data and Reconstructed Relative Water Level

folder=yi2015_Bohai_Sea_water_level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/bohai2015gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/bohai2015mode.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/bohai2015rsl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/bohai2015foram.txt

cd ..

# Bohai Sea 135KYr Relative Sea Level Reconstruction

folder=yi2012_Bohai_Sea_water_level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/bohai2012rsl.txt

cd ..

# Bohaty and Zachos 2003 Southern Ocean Late Middle Eocene Stable Isotope Data

folder=bohaty2003_Southern_Ocean_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bohaty2003/bohaty2003.txt

cd ..

# Bollmann et al. 2002 Coccolith Abundance and Holocene Paleotemperature

folder=bollmann2002_Coccolith
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bollmann2002/bollmann2002.txt

cd ..

# Bonaire Basin Planktonic Foraminifera Mg/Ca and d18O Data spanning 50 to 21 kyr BP

folder=parker2015_Bonaire_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/parker2015/parker2015.txt

cd ..

# Bonaire Basin VM12-107 22000 Year d18O and Mg/Ca Data

folder=schmidt2012b_Bonaire_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2012b/schmidt2012b-crass-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2012b/schmidt2012b-ruber-noaa.txt

cd ..

# Bond et al. 2001 North Atlantic Holocene Drift Ice Proxy Data

folder=bond2001_North_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bond2001/bond2001.txt

cd ..

# Bradtmiller et al. 2009 Pacific SO Composition/Radionuclide Data

folder=bradtmiller2009_Pacific
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bradtmiller2009/bradtmiller2009.txt

cd ..

# Bralower et al. 1999 Mid-Cretaceous Sierra Madre Oriental Carbon Isotope Data

folder=bralower1999_Sierra_Madre_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bralower1999/bralower_1999.txt

cd ..

# Brazil Margin 22,000 Year Benthic Foraminiferal B/Ca and Carbonate Data

folder=lacerra2019_Brazil_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2019/lacerra2019ggc90b-ca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2019/lacerra2019ggc36carb.txt

cd ..

# Brazil Margin 25,000 Year Benthic Foraminiferal B/Ca and Carbonate Data

folder=lacerra2017_Brazil_foram
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2017/lacerra2017ggc33bca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2017/lacerra2017ggc78carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2017/lacerra2017ggc78bca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lacerra2017/lacerra2017ggc33carb.txt

cd ..

# Brazil Margin Benthic Foraminiferal B/Ca data from 50-150 ka

folder=garity2023_Brazil_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/garity2023/garity2023-knr159-5-42jpc_bca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/garity2023/garity2023-knr159-5-79jpc_bca.txt

cd ..

# Brazil Margin Benthic Stable Isotope Data over the last 100ka

folder=lund2015_Brazil_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc63.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc90.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015jpc17.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015jpc20.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015matrix13c-anom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015matrix13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015matrix18o-anom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015matrix18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc33.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc125.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc78.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc36.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc14.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015ggc22.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2015/lund2015jpc42.txt

cd ..

# Brazil Margin Deglacial Benthic Stable Isotope Data

folder=tessin2013_Brazil_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tessin2013/tessin2013-33ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tessin2013/tessin2013-78ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tessin2013/tessin2013-17ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tessin2013/tessin2013-30ggc.txt

cd ..

# Brazil Margin LGM and Holocene Benthic Foraminiferal Cadmium Data

folder=makou2010b_Brazil_cadmium
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/makou2010b/makou2010b.txt

cd ..

# Brazil Margin LGM-Holocene Benthic Stable Isotope Data

folder=hoffman2012_Brazil_isotope
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2012/hoffman2012ggc54-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2012/hoffman2012ggc22-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2012/hoffman2012ggc120-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2012/hoffman2012ggc125-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2012/hoffman2012jpc42-noaa.txt

cd ..

# Brazil Margin Stable Isotope Data for the Last Glacial Cycle

folder=shub2023_Brazil_isotope
mkdir ${folder}
cd ${folder} 


wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-126jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-31jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-36ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-64jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-79jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-125ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-20jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-63ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-30ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-78ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-39jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/shub2023/shub2023-42jpc.txt

cd ..

# British Columbia 2,900 Year Bivalve Sclerochronology and Sea Surface Temperature Reconstruction

folder=edge2021_British_Columbia_SST
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/edge2021/tree-nob2021width.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/edge2021/tree-nob2021sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/edge2021/tree-nob2021index.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/edge2021/tree-nob2021pith.txt

cd ..

#Brown University Foraminiferal Database

folder=prell1999_Brown_University_foram
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/brown_foram/bfd.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/brown_foram/bfd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/brown_foram/bfd.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/brown_foram/readme_brown_foram.txt

cd ..

# Bulk sediment nitrogen isotopes from the northern Peru Margin over the last 25 kyr

folder=bova2018_Peru_nitrogen
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2018/bova2018-cdh26-14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2018/bova2018-ggc43-14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2018/bova2018-cdh41-14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2018/bova2018-cdh26-d15n.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2018/bova2018-cdh23-14c.txt

cd ..

# Bulk sedimentary total organic carbon, total nitrogen and d15N in the Santa Barbara Basin for the last 2,000 Years

folder=wang2019_Santa_Barbara_nitrogen
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2019/wang2019-03kc-toc-tn.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2019/wang2019-03kc-d15n.txt

cd ..

# CLIMAP 120K Database

folder=CLIMAP_120k
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/climap/climap120/ldgo.iso
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/climap/climap120/ldgo.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/climap/climap120/ldgo.bug
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/climap/climap120/ldgo.co3
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/climap/climap120/readme_climap120.txt

cd ..

# Cacho et al. 1999 Alboran Sea MD95-2043 Uk37 Data and SST Reconstructions

folder=cacho1999_Alboran_Sea_SST
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cacho1999/cacho1999.txt

cd ..

# Cacho et al. 2001 Western Mediterranean d18O and Uk37 Data and SST Reconstructions

folder=cacho2001_Western_Mediterranean_SST
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m39-008-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bs79-38-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/bs79-33-tab.txt

cd ..

# Caissie et al. 2010 Bering Sea Deglacial-Holocene Diatom Productivity Data

folder=caissie2010_Bering_Sea_diatom
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/h2-51jpc-tab.txt

cd ..

# Calibration of a new approach to reconstruct ancient bottom water oxygen levels

folder=corliss2018_Oxygen_Levels
mkdir ${folder}
cd ${folder} 

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-knr197-azores.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-calcofi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-monterey.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-sulu.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-at18-10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-at15-44.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-at15-86.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-nh1108.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-station-m.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-t01.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/corliss2018/corliss2018-m35_1.txt

cd ..

# California Current 136KYr Alkenone Sea Surface Temperature Estimates

folder=yamamoto2007_California_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1014a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1016c-tab.txt

cd ..

# California Current Reconstruction from Benthic Isotopes and Alkenone Temperatures

folder=herbert2001_California_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/odp1020-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/lpaz21p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/lpaz21p-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1012-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/odp1012-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1020-tab.txt

cd ..

# California Current during the past 30,000 years

folder=gardner1997_California_Current
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w8709a13-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v180p3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v181g15-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p54-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f890g21-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p18-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p34-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p40-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p51-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p33-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f890g25-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/l13-g117-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/f292p29-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/l13-g138-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v180g1-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v180g22-tab.txt

cd ..

# California Margin Hydrogen and Carbon Isotope Data since the mid-Pliocene

folder=bhattacharya2022_California_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/bhattacharya2022/bhattacharya2022-odp1012.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/bhattacharya2022/bhattacharya2022-dsdp475.txt

cd ..

# California Margin ODP1018 600KYr Multiproxy Data

folder=lyle2010_California_Multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lyle2010/lyle2010.txt

cd ..

# California-Oregon Coastline, EW9504-17, Pollen Abundance Data during the last 149,000 years

folder=heusser2000_California_Pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/heusser2000/heusser2000-ew9504-17pc-pollen.txt

cd ..

# Came et al. 2003 South Atlantic Younger Dryas Cd/Ca and Cdw Data

folder=came2003_South_Atlantic_Younger_Dryas
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/came2003/came2003.txt

cd ..

# Came et al. 2008 Florida Current 27KYr Seawater Cadmium Data

folder=came2008_Florida_cadmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/knr31jpc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/came2008/came2008.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/100ggc-tab.txt

cd ..

# Cape Basin Authigenic Nd and Benthic Stable Isotope Data Over the Past 150 kyr


folder=hines2021_Cape_Basin_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2021/hines2021-361_u1479-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2021/hines2021-361_u1479-iso.txt

cd ..

# Cape Basin Authigenic Nd and Benthic Stable Isotope Data for the Mid-Pleistocene Transition

folder=hines2024_Cape_Basin_MPT
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/hines2024/hines2024-361_u1479_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/hines2024/hines2024-361_u1479_end.txt

cd ..

# Cape Basin, South Atlantic SST Over the Past 160ky

folder=sachs2003_Cape_Basin_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs2003/sachs2003-tn057-21-pc2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs2003/sachs2003-tn057-06-pc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs2003/sachs2003-odp1089.txt

cd ..

# Cariaco Basin 2000-year seasonal Mg/Ca-SST Reconstruction

folder=wurtzel2013_Cariaco_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wurtzel2013/wurtzel2013-73bc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wurtzel2013/wurtzel2013-composite.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wurtzel2013/wurtzel2013-72ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wurtzel2013/wurtzel2013-car25.txt

cd ..

# Cariaco Basin 800 Year Mg/Ca Sea Surface Temperature Reconstruction

folder=black2007_Cariaco_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pl7-73bc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/black2007/black2007.txt

cd ..

# Cariaco Basin Foraminiferal Mg/Ca and SST Reconstruction

folder=lea2003_Cariaco_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pl07-39p-tab.txt

cd ..

# Cariaco Basin G. bulloides Abundance Data

folder=black1999_Cariaco_bulloides
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pl07-71b-tab.txt

cd ..

# Cariaco Basin Marine Sediment Mg/Ca, PAGES LOTRED-SA Version

folder=black2007_Cariaco_MT-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/pages2k/lotred-sa2k/Cariaco.txt

cd ..

# Cariaco Basin Stable Isotope Data

folder=lin1997_Cariaco_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pl7-39pc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pl7-43pc-tab.txt

cd ..

# Cariaco Basin Trace Metal Data

folder=haug2001_Cariaco_trace_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1002h-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/haug2001/cariaco_ti.txt

cd ..

# Cariaco Basin and Arabian Sea Sediment Reflectance Data Over the Last 100,000 Years

folder=deplazes2013_Cariaco_Reflectance
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/deplazes2013/deplazes2013-cariaco.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/deplazes2013/deplazes2013-arabian.txt

cd ..

#Cariaco Basin climate and sedimentation during the past 578,000 years

folder=yarincik2000_Cariaco_sedimentation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1002-tab.txt

cd ..

# Cariaco Basin oxygenation and circulation over the past 578,000 years

folder=yarincik2000_Cariaco_oxygenation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1002y-tab.txt

cd ..

# Cariaco Basin, 35-55 ka Bulk Sediment and Foraminiferal Geochemistry

folder=gibson2015_Cariaco_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibson2015/gibson2015d15n-toc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibson2015/gibson2015mo-fe.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibson2015/gibson2015mg-ca-sst.txt

cd ..

# Cariaco Basin, Venezuela, 600-kyr Scanning-XRF Sedimentary Mo Data

folder=gibson2014_Cariaco_XRF
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibson2014/gibson2014-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibson2014/gibson2014-xrf.txt

cd ..

# Caribbean Foraminiferal Mg/Ca, d18OCalcite, and Paleosalinity

folder=schmidt2004_Caribbean
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm28-122-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp999a-tab.txt

cd ..

# Caribbean Sea Nitrogen Isotope Data From ODP999 Over the Last 160,000 Years

folder=straub2013_Caribbean_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/straub2013-nat/straub2013-nature.txt

cd ..

# Catubig et al 1998 Calcium Carbonate Global LGM Burial Rate Data

folder=catubig1998_Caribbean_Carbonate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/catubig1998/appendix1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/catubig1998/appendix2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/catubig1998/readme_catubig1998.txt

cd ..

# Celestun Lagoon, Yucatan 5300 Year Foraminifera Census and Geochemistry

folder=hardage2021_Yucatan_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hardage2021/hardage2021foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hardage2021/hardage2021foram2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hardage2021/hardage2021calib.txt

cd ..

# Cenozoic Global Mean Sea Level Estimates

folder=miller2020_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2020/miller2020rsl-sm-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2020/miller2020rsl-noaa.txt

cd ..

# Cenozoic High and Low Latitude Marine Benthic d18O Stacks

folder=mudelsee2014_d18O_stack
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2014/mudelsee2014highlat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2014/mudelsee2014lowlat.txt

cd ..

# Central Arctic Sedimentary 231Pa/230Th Ratios from the Past 35,000 Years

folder=hoffmann2013_Arctic_Pa-Th
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc08.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc16.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc32.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc26.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc28.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc17.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2013/hoffmann2013-bc20.txt

cd ..

# Central Arctic surface ocean environment during the past 80,000 years

folder=noergaard-pedersen1998_Arctic_surface_ocean
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2177-1-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2200-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2166-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2185-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2195-4-tab.txt

cd ..

# Central Equatorial Pacific Dust Flux Reconstruction 110-150 ka

folder=jacobel2016_Pacific_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jacobel2016/jacobel2016-37bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jacobel2016/jacobel2016-17pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jacobel2016/jacobel2016-31bb.txt

cd ..

# Central Equatorial Pacific Dust Flux, Productivity and d15N Data for 0-27ka

folder=costa2015_Pacific_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2015/costa2015-th-pa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2015/costa2015-opal.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2015/costa2015-barium.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2015/costa2015-d15n.txt

cd ..

# Central Equatorial Pacific Paleoproductivity Data over the last 27ka

folder=costa2017_Pacific_Paleoproductivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-28bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-31bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-32bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-36bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-13bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-20bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017-gbc/costa2017-gbc-25bb.txt

cd ..

# Central Pacific ODP865 d18O and Mg/Ca Analyses from the Paleocene-Eocene Thermal Maximum

folder=kozdon2013_Pacific_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2013/kozdon2013-mgsr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2013/kozdon2013-epma.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2013/kozdon2013-d18o.txt

cd ..

# Central Pacific ODP865 d18O measurements covering the Early Paleogene

folder=kozdon2011_Pacific_Paleogene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2011/kozdon2011-865.txt

cd ..

# Central Pacific age model, physical properties, stable isotope and radiocarbon data over the past 277 ka

folder=jacobel2024_Central_Pacific
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-26mc_25bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-06bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-29mc_28bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-16bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-20bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-18gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/jacobel2024/jacobel2024-35bb.txt

cd ..

# Central US Gulf Coast Holocene Relative Sea-Level Data

folder=hijma2014_Gulf_Coast_RSL
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/hijma2014rsl-summary.txt

cd ..

# Central and Southern Atlantic Ocean benthic foraminiferal Mg/Ca, DCO2-3 and BWT Data from core top samples

folder=weldeab2016_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-epsl/weldeab2016-epsl-bwt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-epsl/weldeab2016-epsl-dco23pore.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-epsl/weldeab2016-epsl-dco23-bw.txt

cd ..

# Central equatorial Pacific dissolution and export production, last 1 Ma

folder=murray2000_Pacific_dissolution
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t13pc83-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t13pc32-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t13pc72-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t13pc18-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t13pc114-tab.txt

cd ..

# Cervato and Burckle 2003 Cenozoic Diatom First and Last Appearance Data

folder=cervato2003_Cenozoic_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cervato2003/cervato2003.txt

cd ..

# Charisi and Schmitz 1997 Early Paleogene Middle East Isotope Data

folder=charisi1997_Paleogene_isotope
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/charisi1997/readme_charisi1997.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/charisi1997/table1a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/charisi1997/table1b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/charisi1997/table1c.txt

cd ..

# Charles et al. Southern Ocean RC11-83 Carbonate/Silica and Foraminferal Stable Isotope Data

folder=charles1996_Southern_Ocean_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/charles1996/charles1996.txt

cd ..

# Chatham Rise Alkenone and Foraminiferal SST Estimates

folder=sikes2002_Chatham_Rise_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w268-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/u938-s-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/u939-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r657-s-tab.txt

cd ..

# Chesapeake Bay 2400 Year Isotope-Mg/Ca Data and Temperature Estimates

folder=cronin2010b_Chesapeake_Bay_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010b/cronin2010b-md03-2661.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010b/cronin2010b-rd-2209.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010b/cronin2010b-ptmc-3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010b/cronin2010b-ptxt-2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2010b/cronin2010b-composite.txt

cd ..

# Chesapeake Bay Core MD99-2209 2,000 Year Multiproxy Susquehanna Flood Data

folder=toomey2019_Chesapeake_Bay_flood
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/toomey2019/toomey2019silt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/toomey2019/toomey2019xrf.txt

cd ..

# Chilean Margin 30KYr Redox-Sensitive Metals Data

folder=muratli2010_Chilean_redox
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/muratli2010/muratli2010.txt

cd ..

# Chilean Margin 30Kyr Sediment Provenance Geochemical Data

folder=muratli2010b_Chilean_Provenance
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/muratli2010b/muratli2010b.txt

cd ..

# Chilean Margin 33KYr Alkenone SST Reconstructions

folder=kim2002b_Chilean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kim2002b/kim2002b.txt

cd ..

# Chronostratigraphy and stable isotopes of Site U1385 (Shackleton site) on the Iberian Margin over the past 1.5 Ma

folder=hodell2015_Iberian_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385e.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-cati-spl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-splice.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-radio.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-greensyn.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-tuned.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-lr04.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-med.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-affine.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2015/hodell2015-u1385-light.txt

cd ..

# Chukchi Sea Holocene Rock Magnetic Data

folder=brachfeld2009_Chukchi_magnetic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/brachfeld2009/brachfeld2009.txt

cd ..

# Clemens 1998 Arabian Sea Sed. Trap Dust Flux, Grain Size Data

folder=clemens1998_Arabian_sed
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens1998/arabain_sea_dust_21cup.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens1998/arabian_sea_dust_13cup.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens1998/arabian_sea_dust_m5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens1998/readme_clemens1998.txt

cd ..

# Clemens and Prell 2003 Arabian Sea Summer Monsoon Proxy Data

folder=clemens2003_Arabian_summer_monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2003/clemens2003.txt

cd ..

# Clemens et al. 1996 Arabian Sea Summer Monsoon Proxy Data for the Past 3.5 Myr

folder=clemens1996_Arabian_summer_monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens1996/clemens1996.txt

cd ..

# Clemens et al. 2008 Plio-Pleistocene East Asian Monsoon Proxy Data

folder=clemens2008_Arabian_summer_monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2008/clemens2008.txt

cd ..

# Cléroux et al. 2009 W. Atlantic 12KYr G. trunc. Calcification Depth Data

folder=cleroux2009_Atlantic_calcification
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cleroux2009/cleroux2009.txt

cd ..

# Coastal Nepena Valley, Peru Modern Surf Clam Stable Isotope Data

folder=warner2022_Peru_clam
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/warner2022/warner2022.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/warner2022/warner2022month.txt

cd ..

# Coastal Northernmost California Diatom, Silicoflagellates, and Pollen Data for the last 7300 years

folder=barron2018_California_pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/TN062-0550.Barron.2018-2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/TN062-0550.Barron.2018-3.txt

cd ..

# Congo River Basin 25KYr MBT/CBT Data and Air Temperature Reconstruction

folder=weijers2007_Congo_River_Air_Temp
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weijers2007/weijers2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb6518-1-tab.txt

cd ..

# Cooke et al. 2007 Southern Tasman Sea DSDP593 Neogene Stable Isotope Data

folder=cooke2007_Tasman_Sea_Neogene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cooke2007/cooke2007.txt

cd ..

# Coral Sea MD06-3018 1543KYr Mg/Ca SST Reconstruction

folder=russon2010_Coral_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russon2010/russon2010.txt

cd ..

# Coral Sea MD06-3018 1543KYr Planktonic d18O Data

folder=russon2011_Coral_Sea_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russon2011/russon2011.txt

cd ..

# Coral Sea foram counts and sea surface temperature at the Last Glacial Maximum

folder=anderson1989_Coral_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-161-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc10-131-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-166-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-167-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-170-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc12-109-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-184-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc12-113-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-157-tab.txt

cd ..

# Core top analysis of Calcium Carbonate from the Ontong-Java Plateau

folder=subhas2019_Ontong-Java_CaCO3
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/subhas2019/subhas2019-ojp-mass.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/subhas2019/subhas2019-ojp-metals.txt

cd ..

# Core top study of stable isotopes of carbon and oxygen from fossil planktonic foraminifers shells on the Rio Grande Rise

folder=mekik2020_Rio_Grande_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mekik2020/mekik2020-rgr.txt

cd ..

# Cramer et al 1999 Paleocene Thermal Max.Data, Bass River, NJ

folder=cramer1999_New_Jersey_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/brafdemg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/brclay.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/brisotop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/brmagnet.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/brsand.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cramer1999/readme_cramer1999.txt

cd ..

# Cronin et al 1995 Arctic Ostracodes Database


folder=cronin1995_Arctic_Ostracodes
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin1995/ostarcfos.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin1995/ostarcmod.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin1995/ostarcmuc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin1995/ostarcnam.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin1995/readme_cronin1995.txt

cd ..

# Cronin et al. 2000 Chesapeake Bay Foraminifera Counts and Paleosalinity Estimates

folder=cronin2000_Chesapeake_Bay_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2000/chesapeake_paleosalinity.txt

cd ..

# Cronin et al. 2003 Late Holocene Chesapeake Bay Mg/Ca Data and Spring Temperature Reconstruction

folder=cronin2003_Chesapeake_Bay_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2003/cronin2003.txt

cd ..

# Cronin et al. 2005 Chesapeake Bay Foraminifera and Ostracode Isotope and Mg/Ca Data

folder=cronin2005_Chesapeake_Bay_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2005/cronin2005.txt

cd ..

# Cronin et al. 2005 Mid-Pliocene Atlantic Krithe Ostracode Mg/Ca Data

folder=cronin2005_Atlantic_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2005b/cronin2005b.txt

cd ..

Cronin et al. 2007 Chesapeake Bay 8.2k Sea Level Rise Data

folder=cronin2007_Chesapeake_Bay_82ka_SLR
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cronin2007/cronin2007.txt

cd ..

# Crosta et al. 2004 Southern Ocean Diatom SST-Sea Ice Recons

folder=crosta2004_Southern_Ocean_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/crosta2004/crosta2004.txt

cd ..

# Curry 1996 Benthic Foraminiferal Stable Isotopic Data from Ceara Rise

folder=curry1996_Ceara_Rise_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/ceara_rise_datafile_revised.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/ceara_rise_datafile.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc1_tim_all_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc1_tim_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc2_tim_all_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc2_tim_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc3_tim_all_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc3_tim_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc6_tim_all_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/jpc6_tim_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1996/readme_curry1996.txt

cd ..

# Curry and Oppo 1997 High Resolution Stable Isotopic Data from Ceara Rise

folder=curry1997_Ceara_Rise_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/1jpc_datafile_revised.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/1jpc_datafile.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/jpc1_cibs_all.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/jpc1_cibs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/jpc1_sac_all.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/jpc1_sac.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1997/readme_curry1997.txt

cd ..

# Curry and Oppo 2005 Western Atlantic LGM Benthic Stable Isotope Data

folder=curry2005_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry2005/curry2005.txt

cd ..

# Curry et al 1999 North Atlantic Isotopic and Trace Element Data

folder=curry1999_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cdw_103ggc_all_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cdw_103ggc_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/chapman_conference.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cibs_103ggc_all_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cibs_103ggc_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cibs_v29204_all_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/cibs_v29204_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/elegans_103ggc_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc1_cibs_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc1_cibs_all_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc1_sac_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc1_sac_all_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc2_cibs_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc2_cibs_all_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc3_cibs_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/jpc3_cibs_all_140.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/pachyl_v29204_calendar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/curry1999/readme_curry1999.txt

cd ..

# DSDP Site 219 Miocene -Recent Foraminifera Data

folder=gupta1999_Miocene_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp219-tab.txt

cd ..

# DSDP Site 502 North Atlantic Deep Water d13C Data

folder=ostermann2000_Atlantic_d13C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp502o-tab.txt

cd ..

# Dahl and Oppo 2006 Arabian Sea Surface Temperature Pattern Reconstructions

folder=dahl2006_Arabian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dahl2006/dahl2006.txt

cd ..

# Dahl et al. 2004 Cariaco Basin Younger Dryas Chlorin Steryl Ester Data

folder=dahl2004_Cariaco_ester
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dahl2004/dahl2004.txt

cd ..

# Davis Strait Sea Surface Temperature Reconstruction over the last 16,000 years


folder=gibb2015_Davis_Strait_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/CC04.Gibb.2015.txt

cd ..

# DeSoto Canyon MD02-2575 400KYr Oxygen Isotope and Geochemical Data

folder=nuernberg2008_DeSoto_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md2-2575-tab.txt

cd ..

# Dean and Arthur 1999 Atlantic DSDP L.Cretaceous CaCO3 Geochemistry Data

folder=dean1999_Atlantic_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp105geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp105geochem.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp105isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp105_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp367del13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp367geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp367geochem.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp367isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp367_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp387geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp387geochem.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp387isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp387_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp391cgeochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp391cgeochem.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp391cisotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp391c_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603b_d_a87_t3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603b_d_a87_t3.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603b_d_a87_t4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603b_d_a87_t4.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603bgeochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603bgeochem.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603bisotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/dsdp603b_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/geochemical_methods.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1999/readme_dean1999.txt

cd ..

# Dean and Gardner 1998 California Current Inorganic Component Data

folder=dean1998_California_inorganic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p03geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p03_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p18geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p18_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p18_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p29geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p29_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p29_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p33geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p33_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p33_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p34geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p34_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p34_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p51geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p51_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/f2-92-p51_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/l13-81-g138geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/l13-81-g138_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/l13-81-g138_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/methods
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/readme_dean1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/v1-81-g15geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/v1-81-g15_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/v1-81-g15_r-e-13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/w8790a-13pcgeochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/w8790a-13pc_metadata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1998/w8790a-13pc_r-e-13c.txt

cd ..

# Dean et al. 1977-1999 Atlantic DSDP Mid-Cretaceous Organic-Rich Claystone Geochemistry Data

folder=dean1986_Atlantic_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1986/dean1986.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean1986/dean1986.xls

cd ..

# Dean et al. 2004 Gulf of California Box Core Geochemical Data

folder=dean2004_Gulf_Of_California_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2004/dean2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2004/dean2004.xls

cd ..

# Dean et al. 2006 Baja California Margin Oxygen-Minimum Zone Sediment Geochemical Data

folder=dean2006_Baja_California_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/dean2006b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/dean2006.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/dean2006.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-gc13descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-gc18descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-gc31descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-gc32descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-gc48descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-pc05descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-pc08descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-pc10descr.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006/mv99-pc14descr.pdf

cd ..

# Deep Pacific 22,000 Year D14C Data and Projection Ventilation Ages

folder=lund2013_Pacific_d14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-887-proj-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-proj-age-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-proj-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-d14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-dd14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-dd14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-proj-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2489-d14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2489-proj-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-887-d14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-d14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-dd14c-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-dd14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-ttd-age-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2386-ttd-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-proj-age-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-ttd-age-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-13pc-ttd-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-2489-proj-age-err.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2013/lund2013-887-proj-age-err.txt

cd ..

# Deep South Atlantic SST Reconstruction and Uranium and d13C Data during the Last Interglacial Period

folder=hayes2014_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hayes2014/hayes2014.txt

cd ..

# Deep-sea oxygen depletion and ocean carbon sequestration during the last ice age

folder=anderson2019_deep_ocean
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-vm19-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-vm21-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-mc19.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-pc18.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-rc11-238.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-vm19-27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-pc72.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019/anderson2018-vm19-28.txt

cd ..

# Deglacial Deep Ocean B/Ca Carbonate Ion Reconstructions

folder=yu2010_carbonate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yu2010/yu2010.txt

cd ..

# Deglacial North East Pacific Radiocarbon and Boron Isotope Data from MD02-2489

folder=rae2014_Pacific_radiocarbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2014/rae2014-t1.txt

cd ..

# Demerara Rise d13C, d18O, Trace Metal and Reconstructed Bottom Water Temperature Data Over the Past 20 ka

folder=oppo2023_Demerara_Rise
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-global_h.elegans_dr_ct.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-knr197-3-25ggc_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-knr197-3-46cdh_tm_c.pachyderma.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-knr197-3-46cdh_tm_h.elegans.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-dr-ct_tm.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/oppo2023/oppo2023-knr197-3-46cdh_tm_u.peregrina.txt

cd ..

# Denmark Strait 2000 Year Multiproxy Sediment Data

folder=andrews2014_Denmark_Strait_multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014xrd-k7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014xrd-1210.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014xrd019b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014gs-1210.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014xrd-k8.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014xrd2322.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig8.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014ird-k7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014ird-k8.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig10-2322.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig10-2269.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig9-347.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2014/andrews2014fig9-2258.txt

cd ..

# Detrital fluxes in the southeast Indian Ocean during the last climatic cycles

folder=bareille1994_Indian_Ocean_detrital
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-787-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-791-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md91-972-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-769-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-770-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-772-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md84-551-tab.txt

cd ..

# Diatom Assemblages from Bering Sea and Chukchi Sea Surface Sediments

folder=nesterovich2017_Bering_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nesterovich2017/nesterovich2017-bering.txt

cd ..

# Diester-Haass 2004 Tasman Rise Neogene Paleoproductivity and Ice Rafting Data

folder=diester-haass2004b_Tasman_Rise_Neogene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2004b/diester-haass2004b.txt

cd ..

# Diester-Haass et al. 2009 Atlantic Mid Miocene Paleoproductivity Data

folder=diester-haass2009_Atlantic_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2009/diester-haass2009.txt

cd ..

# Disko Bugt, West of Greenland, Sea Surface Temperature Reconstruction during the Holocene

folder=Ouellet-Bernier2014_Disko_Bugt_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MSM343300.Ouellet-Bernier.2014.txt

cd ..

# Dry Tortugas, Florida Younger Dryas Grain Size Data

folder=toomey2017_Florida_Grain
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/toomey2017/toomey2017gs.txt

cd ..

# Dutton et al. 2002 Eocene Bivalve Isotope and Element Data

folder=dutton2002_Eocene_bivalve
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dutton2002/dutton2002.txt

cd ..

# Dwyer Unpublished mid-Pliocene Ostracode Mg/Ca Data

folder=dwyer_Pliocene_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-dsdp592-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-dsdp592-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-dsdp610-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-dsdp610-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1085-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1085-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1090-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1090-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1092-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1092-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1123-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1123-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1236-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1236-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1237-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1237-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1239-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1239-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1241-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp1241-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp661-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp661-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp754-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp754-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp804-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp804-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp805-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp805-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp806-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp806-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp928-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp928-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp929-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp929-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp959-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp959-mgca.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp982-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dwyer-unpublished/dwyer-odp982-mgca.xls

cd ..

# Early mid-Holocene SST variability and surface-ocean water balance in the southwest Pacific

folder=duprey2012_Pacfic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/duprey2012/duprey2012-t1009.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/duprey2012/duprey2012-t0208.txt

cd ..

# East Asian Monsoon during the Last Deglaciation Data

folder=wang1999_East_Asian_Monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/179401_2-tab.txt

cd ..

# East Asian Monsoon during the past 350,000 years

folder=heusser1997_East_Asian_Monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v20-120-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc14-105-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc14-99-tab.txt

cd ..

# East China Sea (IODP U1428, U1429) Geochemistry Data during the last 400 ka

folder=anderson2018_East_China_Sea_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2018/anderson2018-u1429.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2018/anderson2018-u1428.txt

cd ..

# East China Sea High-Resolution Grain Size Data

folder=xiao2005_East_China_Sea_grain
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dd2-tab.txt

cd ..

# East China Sea, Northern Okinawa Trough Trace Element Data over the Last 400,000 Years

folder=xiao2005_East_China_Sea_grain
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021/zhao2021-u1429-ngr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021/zhao2021-u1429-icp-ms.txt

cd ..

# East China Sea, northern Okinawa Trough clay mineral and mass accumulation rate data over the last 300,000 years

folder=zhao2019_East_China_Sea_accumulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2019/zhao2019-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2019/zhao2019-clay.txt

cd ..

# East China Sea, northern Okinawa Trough grain-size and mass accumulation rate data over the last 400,000 years

folder=zhao2020_East_China_Sea_accumulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2020/zhao2020-u1429.txt

cd ..

# East China Sea, offshore Yangtze River Valley d18O, d13C, and Mg/Ca Data and SST Reconstruction over the last 400,000 years

folder=clemens2018_East_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2018/clemens2018-u1429-plank-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2018/clemens2018-u1429-benth-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2018/clemens2018-u1429-mgca-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2018/clemens2018-u1429-interp-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/clemens2018/clemens2018-u1429-uk37sst-noaa.txt

cd ..

# East Greenland Margin Holocene Glacial Mineralogy Data

folder=andrews2010_East_Greenland_minerology
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2010/andrews2010.txt

cd ..

# East Greenland Shelf Sediment Data from 1850-1986 AD

folder=alonso-garcia2013_East_Greenland_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/alonso-garcia2013/alonso-garcia2013-feox.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/alonso-garcia2013/alonso-garcia2013-gkc8-biom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/alonso-garcia2013/alonso-garcia2013-gkc9-biom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/alonso-garcia2013/alonso-garcia2013-ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/alonso-garcia2013/alonso-garcia2013-sed.txt

cd ..

# Eastern Arabian Sea 4,700 Year Mg/Ca-d18O Data and SST/SSS Reconstructions

folder=tiwari2015_Arabian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tiwari2015/tiwari2015.txt

cd ..

# Eastern Atlantic Dust Flux and Geochemistry Data over the past 240,000 years

folder=skonieczny2019_Atlantic_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/skonieczny2019/skonieczny2019-md03-2705.txt

cd ..

# Eastern Coastal Adriatic 48 Year Bivalve Growth Increment Data

folder=peharda2019_Adriatic_bivalve
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peharda2019/peharda2019drace.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peharda2019/peharda2019istra.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peharda2019/peharda2019pasman.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peharda2019/peharda2019zivogosce.txt

cd ..

# Eastern Equatorial Atlantic GeoB4905-4 21KYr Mg/Ca SST, SSS, and d18Osw

folder=weldeab2005_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2005/weldeab2005.txt

cd ..

# Eastern Equatorial Atlantic Primary Productivity, Sea Surface Temperature and Salinity Reconstructions over the last 44 kyr

folder=hardy2018_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/KZAI01.Hardy.2018.txt

cd ..

# Eastern Equatorial Atlantic Quaternary Stable Isotope Data

folder=bird2002_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp668b-tab.txt

cd ..

# Eastern Equatorial Pacific 100KYr Alkenone SST Reconstructions

folder=dubois2011_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2011/dubois2011.txt

cd ..

# Eastern Equatorial Pacific 100KYr Opal Flux Data

folder=dubois2010_Pacific_opal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2010/dubois2010.txt

cd ..

# Eastern Equatorial Pacific 100Kyr Benthic d18O and SST Data

folder=dubois2014_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-43jc-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-24jc-d18O.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-24jc-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-43jc-d18O.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-27jc-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014/dubois2014-27jc-d18O.txt

cd ..

# Eastern Equatorial Pacific 150KYr d15N and Corg Data

folder=dubois2011b_Pacific_Corg
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2011b/dubois2011b.txt

cd ..

# Eastern Equatorial Pacific 30KYr Alkenone SST Reconstructions

folder=dubois2009_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2009/dubois2009.txt

cd ..

# Eastern Equatorial Pacific 35kyr Sediment Flux Data

folder=kienast2007_Pacific_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/me5-24jc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t163-31p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y69-71pk-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/p7-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t163-19p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/me5-27jc-tab.txt

cd ..

# Eastern Equatorial Pacific 40KYr Nitrogen Isotope Data

folder=robinson2009_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2009/robinson2009.txt

cd ..

# Eastern Equatorial Pacific 5 Myr Alkenone SST and Paleoproductivity Reconstruction

folder=lawrence2006_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp846l6-tab.txt

cd ..

# Eastern Equatorial Pacific Deglacial Atmospheric Dust Flux Data

folder=mcgee2007_Pacific_dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp850a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp852a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp853b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp849a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp851e-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp848b-tab.txt

cd ..

# Eastern Equatorial Pacific Early Pliocene Mg/Ca Subsurface Temperature

folder=ford2012_Pacific_Pliocene_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2012/ford2012odp853.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2012/ford2012odp849.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2012/ford2012odp848.txt

cd ..

# Eastern Equatorial Pacific Glacial Planktonic Oxygen Isotope Data

folder=koutavas2003_Pacific_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc8-102k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-29-k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-30-k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-27-k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r11-238k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-40-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-140k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-28-k-tab.txt

cd ..

# Eastern Equatorial Pacific Isotopic Ratios of Sr, Nd, and Pb and Nd Concentration Data over last 25,000 Years

folder=xie2012_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp853.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp849.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp848.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp850.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp852.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-epsl/xie2012-epsl-odp851.txt

cd ..

# Eastern Equatorial Pacific LGM-Holocene G. ruber d18O Data

folder=koutavas2012_Pacific_ruber
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2012/koutavas2012v19-28-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2012/koutavas2012v21-30-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2012/koutavas2012individuals-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/koutavas2012/koutavas2012v28-134-noaa.txt

cd ..

# Eastern Equatorial Pacific Mg/Ca and SST Data during the Pliocene

folder=white2020_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2020/white2020-mgca.txt

cd ..

# Eastern Equatorial Pacific Mg/Ca-derived Subsurface Temperatures and Trace Metal Data since the LGM

folder=glaubke2024_Pacific_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/glaubke2024/glaubke2024-09mc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/glaubke2024/glaubke2024-17jc.txt

cd ..

# Eastern Equatorial Pacific Nitrogen Data during the mid-Pleistocene Transition

folder=robinson2019_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2019/robinson2019-odp846.txt

cd ..

# Eastern Equatorial Pacific ODP849 85KYr Radionuclide and Major Element Data

folder=pichat2004_Pacific_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pichat2004/pichat2004.txt

cd ..

# Eastern Equatorial Pacific Ocean d18O, Thorium, Uranium and Barium Data over the last 178 ka

folder=marcantonio2020_Pacific_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marcantonio2020/marcantonio2020-8jc.txt

cd ..

# Eastern Equatorial Pacific Radiolaria Data

folder=pisias_1997_Eastern_Pacific_Radiolaria
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13-115-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y69-106p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y71-3-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-110p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y71-6-12-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-29p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y69-71p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vntr1-8-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y719-101-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc10-62-tab.txt

cd ..

# Eastern Equatorial Pacific SST Reconstrucition covering the last 1.5 Million Years

folder=dyez2016_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-sst-rm10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-sst-gradient.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-sst-e10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2016/dyez2016-sst-merge.txt

cd ..

# Eastern Equatorial Pacific SST and Isotope Data During Heinrich Stadial 1

folder=kienast2013_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2013/kienast2013-me24-cib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2013/kienast2013-v19-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2013/kienast2013-tr31-thor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2013/kienast2013-me24-thor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2013/kienast2013-me24-uvi.txt

cd ..

# Eastern Equatorial Pacific Stable Isotope and Alkenone Data and SST Reconstruction over the last 25Kyr

folder=bova2015_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2015/bova2015-cdh26-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2015/bova2015-cdh26-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2015/bova2015-cdh23-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2015/bova2015-cdh23-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2015/bova2015-ggc43-cdh41.txt

cd ..

# Eastern Equatorial Pacific Stable Isotope and Geochemistry Data since the Last Glacial Termination

folder=stott2019_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2019/stott2019-vm21-30.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2019/stott2019-vm21-29.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2019/stott2019-odp1242.txt

cd ..

# Eastern Equatorial Pacific Water Column Thorium Isotope Data

folder=singh2013_Pacific_thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-13.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-11.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2013/singh2013-wc-12.txt

cd ..

# Eastern Equatorial Pacific d18O and 230Th-derived Flux Data over the Past 100,000 years

folder=loveley2017_Pacific_thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/loveley2017/loveley2017-17jc.txt

cd ..

# Eastern Equatorial Pacific d18O and d13C Data from the Last Glacial Maximum

folder=ford2018_Pacific_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2018/ford2018-849-08jc-17jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2018/ford2018-synthesis.txt

cd ..

# Eastern Equatorial Pacific(MD02-2529) 90KYr SST and SSS Reconstructions

folder=leduc2007_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md2-2529-tab.txt

cd ..

# Eastern Indian Ocean Biomarker Data and Sea Surface Temperature Reconstructions from 3.5 - 1.5 Ma

folder=smith2020_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/smith2020/smith2020-diol_sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/smith2020/smith2020-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/smith2020/smith2020-gdgt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/smith2020/smith2020-tex86_sst.txt

cd ..

# Eastern Indian Ocean ODP762 Eocene Calcareous Nannofossil Data

folder=shamrock2012_Indian_Eocene_nanofossil
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shamrock2012/shamrock2012.txt

cd ..

# Eastern Labrador Sea Stable Isotope, Trace Metal and SST Data over the last 1250 Years

folder=moffa-sanchez2014_Labrador_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moffa-sanchez2014-poc/moffa-sanchez2014-poc.txt

cd ..

# Eastern Mediterranean (ODP967) Aeolian Hematite Data

folder=larrasoana2003_Mediterranean_Hematite
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp967-tab.txt

cd ..

# Eastern Pacific (ODP 1218B) Osmium isotope variations in the late Miocene interval

folder=ravizza2017_Pacific_Osmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ravizza2017/ravizza2017.txt

cd ..

# Eastern Pacific Alkenone Sea Surface Temperature Reconstruction over the past 144,000 years

folder=kumar2022_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/kumar2022/nh22p_kumar2022.txt

cd ..

# Eastern Pacific Ocean Foraminiferal Trace Metal and Isotope Data from 16.6 to 11.38 Ma

folder=hess2023_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hess2023/hess2023-odp_138_845-geochem.txt

cd ..

# Eastern Pacific Ocean TEX86 and Mg/Ca SST Reconstructions during the Holocene and Last Glacial Maximum

folder=hertzberg2016_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MV101417JC.Hertzberg.2016.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MV101407MC.Hertzberg.2016.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MV101408JC.Hertzberg.2016.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MV101409MC.Hertzberg.2016.txt

cd ..

# Eastern Pacific Pleistocene Alkenone Data and SST Reconstruction

folder=liu2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp846-l-tab.txt

cd ..

# Eastern Pacific Site NH8P 24,000 Year Alkenone Unsaturation Index Data

folder=kumar2021_Pacific_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kumar2021/kumar2021teof.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kumar2021/kumar2021uk37.txt

cd ..

# Eastern Pacific upwelling and productivity during glacial cycles

folder=ganeshram1998_Pacific_upwelling
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/nh22p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/nh8p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/nh15p-tab.txt

cd ..

# Eastern South Pacific GeoB 7139-2 70KYr d15N Data

folder=depol-holz2007_Pacific_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/depol-holz2007/depol-holz2007.txt

cd ..

# Eastern Subpolar North Atlantic Stable Isotope, Mg/Ca and SST Data During the Last Deglaciation

folder=benway2010_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/benway2010/benway2010-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/benway2010/benway2010.txt

cd ..

# Eastern Tropical Atlantic Alkenones and Sea Surface Temperatures

folder=zhao1995_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao1995/zhao1995-odp658c-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao1995/zhao1995-bofs31k-noaa.txt

cd ..

# Eastern Tropical Indian Ocean 133KYr Ocean Temperature Reconstructions

folder=mohtadi2010b_Indian_Ocean_Temp
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mohtadi2010b/mohtadi2010b.txt

cd ..

# Eastern Tropical Indian Ocean 45,000 Year d18O and SST Reconstructions

folder=mohtadi2014_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mohtadi2014/mohtadi2014-39kl-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mohtadi2014/mohtadi2014-119kl-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mohtadi2014/mohtadi2014-144kl-noaa.txt

cd ..

# Eastern Tropical Indian Ocean G. ruber Stable Isotope Data from the Late Holocene and LGM

folder=thirumalai2019_Indian_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thirumalai2019/thirumalai2019-etio.txt

cd ..

# Eastern Tropical Indian Ocean d18O, Mg/Ca and SST Reconstruction Data during the last 40,000 years

folder=setiawan2015_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/setiawan2015/setiawan2015-gb10043-3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/setiawan2015/setiawan2015-gb42-1-gb43-3-splice.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/setiawan2015/setiawan2015-gb10042-1.txt

cd ..

# Eastern Tropical Pacific 1,000 Year Foraminferal d18O and Mg/Ca SST

folder=rustic2015_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rustic2015/rustic2015.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rustic2015/rustic2015d18o.txt

cd ..

# Eastern Tropical Pacific CaCO3 Deposition Data

folder=lyle2002_Pacific_CaCO3
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-115l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y71-3-2l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y71-101l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/inmd114p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y69-106-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/y69-71l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w84-14gc-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-110l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-27l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-30l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-28l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-29l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-138l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc10-62l-tab.txt

cd ..

# Eastern Tropical Pacific Foraminiferal Mg/Ca and SST Reconstruction

folder=lea2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t16319l4-tab.txt

cd ..

# Eastern Tropical Pacific ME0005A-24JC Deglacial Alkenone SST Data

folder=kienast2006_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/me5a24jc-tab.txt

cd ..

# Eastern Tropical Pacific ODP1242 2.3Ma d15N Data

folder=robinson2014_Pacific_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014/robinson2014.txt

cd ..

# Eastern equatorial Atlantic trace metal, oxygen and carbon isotope data and bottom water temperature between 10 and 21 kyr BP

folder=weldeab2016_Atlanic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-poc/weldeab2016-poc-14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-poc/weldeab2016-poc-bwt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-poc/weldeab2016-poc-d18osw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2016-poc/weldeab2016-poc-isobaca.txt

cd ..

# Eastern tropical Pacific changes in circulation

folder=cannariato1997_Pacific_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp851-c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp851-tab.txt

cd ..

# Ebbesen and Hald 2004 Andfjorden Younger Dryas Foraminifer and IRD Data and SSS/SST Reconstructions

folder=ebbesen2004_Andfjorden_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ebbesen2004/ebbesen2004.txt

cd ..

# Eirik Drift MIS 11 Marine Sediment Sr-Nd-Pb Isotope Geochemistry

folder=reyes2014_Eirik_Drift_MIS11
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reyes2014/reyes2014md99-2227.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reyes2014/reyes2014stream.txt

cd ..

# Eisenach and Kelly 2006 Middle Miocene Fohsellid Transition Data

folder=eisenach2006_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/eisenach2006/eisenach2006.txt

cd ..

# Elemental Data in the Santa Barbara Basin for the Last 2,000 Years

folder=wang2021_Santa_Barbara_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2021/wang2021-03kc.txt

cd ..

# Ellison et al. 2006 8200BP Event Foraminifer Data and Winter/Summer SST Reconstruction

folder=ellison2006_8200BP_Event_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ellison2006/ellison2006.txt

cd ..

# Emerald Basin MC-29D 1600 Year Multiproxy Sediment Data

folder=keigwin2003_Emerald_Basin_multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2003/keigwin2003.txt

cd ..

# Eocene-Oligocene Benthic Foraminifer B/Ca Calibration Data

folder=brown2011_Eocene_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/brown2011/brown2011.txt

cd ..

# Equatorial Atlantic SST Data

folder=sikes1994_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/12pc51-tab.txt

cd ..

# Equatorial Atlantic Sediment Composition and Radionuclide Data

folder=bradtmiller2007_Atlantic_radionuclide
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13189lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc2412lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc24-07-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v22182lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v30-40lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc16-66-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc24-01-tab.txt

cd ..

# Equatorial Indian Ocean 130kyr Mg/Ca Data and SST Reconstruction

folder=saraswat2005_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/sk157_4-tab.txt

cd ..

# Equatorial Pacific (MANOP C) during the past 26,000 years

folder=prahl1989_Pacific_MANOP
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w8402a14-tab.txt

cd ..

# Equatorial Pacific 1.1 Million Year Nitrogen Isotope Data

folder=rafter2012_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2012/rafter2012odp849-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2012/rafter2012rndb74p-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2012/rafter2012dd15n-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2012/rafter2012odp806-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2012/rafter2012rc13-112-noaa.txt

cd ..

# Equatorial Pacific 360,000 Year Mg/Ca, d18O, and SST/SSS Reconstructions

folder=zhang2021_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhang2021/zhang2021.txt

cd ..

# Equatorial Pacific Calcium Carbonate Data

folder=farrell1991_Pacific_CaCO3
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r11-210f-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc12-63f-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc12-65f-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc12-66f-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/sdse59-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/sdse60-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-55-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-58-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-59-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-62-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v28-179-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w84-14gf-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp572a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp573a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp574-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/plds130-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r11-209f-tab.txt

cd ..

# Equatorial Pacific Coretop and Downcore Foraminifera Radiocarbon Data

folder=mekik2014_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mekik2014/mekik2014.txt

cd ..

# Equatorial Pacific DSDP574 Miocene Biogenic Sediment Data

folder=piela2012_Pacific_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/piela2012/piela2012mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/piela2012/piela2012biogenic.txt

cd ..

# Equatorial Pacific Foram-Bound N Isotopes from the Pliocene to the Pleistocene

folder=rafter2021_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2021/rafter2021-d15n.txt

cd ..

# Equatorial Pacific Late Pleistocene Sediment Accumulation Rate Data

folder=hayes2011_Pacific_sediment
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hayes2011/hayes2011.txt

cd ..

# Equatorial Pacific Line Islands 282ka Individual Foram Mg/Ca SST Data

folder=rustic2020_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rustic2020/rustic2020.txt

cd ..

# Equatorial Pacific Multispecies Foraminifera Stable Isotope Data

folder=spero2003_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t16319s3-tab.txt

cd ..

# Equatorial Pacific ODP 806 mid-Pleistocene Uk37 Data and SST Reconstruction

folder=mcclymont2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp806b2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp849cd-tab.txt

cd ..

# Equatorial Pacific One Million Year Trace Metal Data

folder=pavia2021_Pacific_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pavia2021/pavia2021tt013-pc72.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pavia2021/pavia2021tt013-pc18.txt

cd ..

# Equatorial Pacific Planktonic Foraminifera Carbon and Oxygen Isotope Data

folder=spero2002_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t16319sp-tab.txt

cd ..

# Equatorial Pacific Sediment Composition and Radionuclide Data

folder=bradtmiller2006_Pacific_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m97-2138-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tpc72-lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-40lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r17177lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v19-30lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r11238lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m9-ggc48-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13-114-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v28203lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13140lb-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tpc18-lb-tab.txt

cd ..

# Equatorial Pacific Trace Metal and CaCO3 Data during the last 4,500 years

folder=rongstad2019_Pacific_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rongstad2019/rongstad2019-ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rongstad2019/rongstad2019-duter.txt

cd ..

# Equatorial Pacific d11B, Mg/Ca, and pCO2 Data and pH and SST Reconstructions during the Pliocene

folder=shankle2021_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shankle2021/shankle2021-odp806.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shankle2021/shankle2021-odp846.txt

cd ..

# Equatorial Pacific sea surface temperatures during the late Quaternary

folder=lea2000_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tr163-19-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp806b-tab.txt

cd ..

# Equatorial east Atlantic sea surface temperatures from Mg/Ca

folder=nuernberg2000_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1112-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1105-tab.txt

cd ..

# Fairbanks 1990 Barbados Sea Level and Th/U 14C Calibration

folder=fairbanks1990_Barbados_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/fairbanks1990/barbados_1990.txt

cd ..

# Faul et al. 2003 Late Cretaceous and Early Paleogene Nutrient and Paleoproductivity Data

folder=faul2003_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/faul2003/faul2003.txt

cd ..

# Fehrenbacher et al. 2006 Western Tropical Atlantic LGM Foraminiferal Mg/Ca Data

folder=fehrenbacher2006_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/fehrenbacher2006/fehrenbacher2006.txt

cd ..

# Florida Bay 5,000 Year Multiproxy Sediment Data

folder=jones2019_Florida_Bay_multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019bap2a-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019bap2a-loi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019bap2a-mollusk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019bap2a-pollen.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019jfp1a-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019jfp1a-loi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019jfp1a-mollusk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019jfp1a-pollen.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019rusp3a-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019rusp3a-loi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019rusp3a-mollusk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019rusp3a-pollen.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019wrp3a-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019wrp3a-loi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019wrp3a-mollusk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jones2019/jones2019wrp3a-pollen.txt

cd ..

# Florida Current Late Holocene Planktonic Foraminiferal d18O Data

folder=lund2004_Florida_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/c166ggc8-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w-79ggc-tab.txt

cd ..

# Florida Strait Nd Isotopic Ratio Data over the last 25,000 Years

folder=xie2012_Florida_Nd
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-poc/xie2012-poc-26jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2012-poc/xie2012-poc-31jpc.txt

cd ..

# Florida Straits 20KYr Mg/Ca SST and d18Osw Reconstructions

folder=schmidt2011_Florida_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2011/schmidt2011.txt

cd ..

# Florida Straits 35 - 20 KYrBP Mg/Ca SST and d18Osw Reconstructions

folder=them2015_Flordia_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/them2015/them2015.txt

cd ..

# Florida Straits 41KYr Foraminiferal Stable Isotope Data

folder=lynch-stieglitz2011_Florida_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2011/lynch-stieglitz2011.txt

cd ..

# Florida Straits Benthic Isotope Data Over the Last 40,000 Years

folder=lynch-stieglitz2014_Florida_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-26jpc-cibavg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-73ggc-cibavg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-73ggc-pachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-73ggc-ind.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-26jpc-ind.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2014/lynch-stieglitz2014-26jpc-p-arim.txt

cd ..

# Florida Straits Cadmium and Mg/Li-Derived Intermediate Water Temperature Data over the past 2000 years

folder=valley2022_Florida_Cadmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/valley2022/valley2022-coreknr166-211mc-d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/valley2022/valley2022-knr166-23mc-h.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/valley2022/valley2022-knr166-262mc-a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/valley2022/valley2022-w167-79ggc.txt

cd ..

# Florida Straits Cadmium, Mg/Ca, Li/Ca and Temperature Data over the last 35,000 Years

folder=valley2019_Florida_Cadmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/valley2019/valley2019-26jpc.txt

cd ..

# Florida Straits KNR166-2JPC51 9000 Year d18O, Mg/Ca SST, and d18Osw Data

folder=schmidt2012_Florida_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2012/schmidt2012-noaa.txt

cd ..

# Florida Straits Oxygen, Apparent Oxygen Utilization (AOU) and Preformed Phosphate Reconstructions over the last 35,000 years

folder=lynch-stieglitz2023_Florida_Phosphate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lynch-stieglitz2023/lynch-stieglitz2023-knr166-2-26jpc_plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lynch-stieglitz2023/lynch-stieglitz2023-knr166-2-26jpc_recons.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lynch-stieglitz2023/lynch-stieglitz2023-knr166-2-26jpc_glob.txt

cd ..

# Florida Straits Seawater Cadmium Data over the last 25,000 Years

folder=valley2017_Florida_Cadmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/valley2017/valley2017-26jpc.txt

cd ..

# Florida Straits and Blake Ridge Stable Isotope Data over the last 35,000 years

folder=lynch-stieglitz2019_Florida_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2019/lynch-stieglitz2019-26jpc-avg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2019/lynch-stieglitz2019-39ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2019/lynch-stieglitz2019-73ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2019/lynch-stieglitz2019-73ggc-coil.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2019/lynch-stieglitz2019-26jpc-ind.txt

cd ..

# Foraminifer Isotope Data (d15N, d13C, d18O) and Modeling of Nordic Seas Hydrography and Circulation during MIS 11

folder=doherty2021_Nordic_Seas_MIS11
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/doherty2021/doherty2021-md99-2277.txt

cd ..

# Foraminifer trace element data and experimental seawater properties from culture experiments on O. universa grown in 'Paleocene' seawater chemistry

folder=haynes2017_Paleocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/haynes2017/haynes2017-calib.txt

cd ..

# Foraminiferal Shell Weight and Measurement Data from the Gulf Alaska over the past 20,000 years

folder=payne2021_Gulf_Alaska_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/payne2021/payne2021_CT.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/payne2021/payne2021_SNW.txt

cd ..

# Fram Strait Plankton Tow Mg/Ca and d18O N. pachyderma Data from 1999 Polarstern Cruise ARK XV/2

folder=livsey2019_Fram_Strait_plankton
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/livsey2019/livsey2019-fram-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/livsey2019/livsey2019-fram-d18o_sims.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/livsey2019/livsey2019-fram-d18o_irms.txt

cd ..

# Frank et al. 2005 Shatsky Rise Maastrichtian Isotope Data

folder=frank2005_Shatsky_Rise_Maastrichtian
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/frank2005/frank2005.txt

cd ..

# Franzese et al. 2009 Agulhas Retroflection 30KYr Stratigraphic Data

folder=franzese2009_Agulhas_Strat
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/franzese2009/franzese2009.txt

cd ..

# Freshwater River Blue Hole, Abaco Island Lithology, Foraminifera and Reconstruction Data from 5-2016 CE

folder=vanhengstum2024_Abaco_Island_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/vanhengstum2024/vanhengstum2024-frsh-c3c2_forams.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/vanhengstum2024/vanhengstum2024-frsh-c3c2_texture.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/vanhengstum2024/vanhengstum2024-frsh-c3c2_wbi.txt

cd ..

# Friddell et al. 2002 Santa Barbara Basin ODP 893A MIS 6/5 Stable Isotope and Biogenic Silica Data

folder=friddell2002_Santa_Barbara_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/age_model.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/bull_d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/pachy_left_d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/pachy_right_d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/readme_friddell2002.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/friddell2002/silica.txt

cd ..

# Galapagos TR163-22 Foraminiferal d18O and Mg/Ca Data and SST Reconstruction

folder=lea2006_Galapagos_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tr163-22-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/tr163-22-sytr-tab.txt

cd ..

# Galbraith et al. 2008 Subarctic Pacific 500 KYr Nitrogen Isotope Data

folder=galbraith2008_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/galbraith2008/galbraith2008.txt

cd ..

# Gardar Drift Foraminiferal and Sedimentological Data from the Early Holocene and Younger Dryas

folder=elmore2014_Gardar_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/elmore2014/elmore2014.txt

cd ..

# Gardar Drift JPC-13 128KYr Multiproxy Sediment Data

folder=hodell2010_Gardar_multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2010/hodell2010.txt

cd ..

# Gardar Drift Last Interglacial Foraminiferal Stable Isotope Data

folder=hodell2009_Gardar_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2009/hodell2009.txt

cd ..

# Gardar Drift Stable Isotope and Sediment Data since ~300 ka

folder=elmore2015_Gardar_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/elmore2015-p3/elmore2015-p3-3ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/elmore2015-p3/elmore2015-p3-11jpc.txt

cd ..

# Garrison Basin, Gulf of Mexico d18O and Mg/Ca in three multicores, and stacked SST/d18Osw/SSS reconstructions spanning the past 4.4 kyrs

folder=thirumalai2018_Gulf_Of_Mexico_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thirumalai2018/thirumalai2018-mca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thirumalai2018/thirumalai2018-mcb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thirumalai2018/thirumalai2018-mcc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thirumalai2018/thirumalai2018-stack.txt

cd ..

# Glacial North Atlantic Intermediate Water during the past 1 Ma

folder=venz1999_Atlantic_intermediate_water
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp982-tab.txt

cd ..

# Global 230Th and Mass Flux Data during the Holocene and LGM

folder=costa2020_Global_Thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2020/costa2020-global-thorium.txt

cd ..

# Global 784,000 Year Proxy and Model Temperature Reconstructions

folder=friedrich2016_Global_temperature
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/friedrich2016/friedrich2016temp.txt

cd ..

# Global Alkenone UK37 Surface Sediment Database

folder=tierney2018_Global_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2018/tierney2018uk37.txt

cd ..

# Global Eocene Nannoplankton Assemblage Data

folder=schneider2011_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schneider2011/schneider2011.txt

cd ..

# Global Geochemical Data from Modern Core Tops

folder=wang2022_Global_Geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2022/wang2022-globalgeochem.txt

cd ..

# Global Holocene Paleodust Database

folder=albani2015_Global_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-08-05-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-21pg-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-29pg-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-38pg-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-848b-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-849a-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-850a-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-851e-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-852a-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-853b-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-93kl-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015beigouyuan-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015beigouyuan-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015chitina-class.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015chitina-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015duowa-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015e26.1-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015e26.1-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015edc-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015edc-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc27-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc27-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc37-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc37-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc49-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc49-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc66-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc66-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc68-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gc68-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015gisp2-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015jingyuan-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015jingyuan-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015jiuzhoutai-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015lrc-class.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015lrc-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015luochuan-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-mc19-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-mc27-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-mc69-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-mc97-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015owr-class.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015owr-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015owr-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015-pc72-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015ps2498-1-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015rc24-01-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015rc24-07-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015rc24-12-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015rc27-42-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015v21-146-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015v21-146-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015v22-182-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015v28-203-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015v30-40-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015vostok-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015vostok-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015weinan-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015weinan-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015xifeng-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015xifeng-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015zagoskin-class.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015zagoskin-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/albani2015/albani2015zagoskin-mar.txt

cd ..

# Global Late Neogene pelagic Carbonate Mass Accumulation Rates and Foraminifera weight percent

folder=si2019_Global_Neogene_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-ontong_java_coretop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1266-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp758-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp846-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp846-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp982-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1266-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp608-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp608-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp667-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp667-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp754-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp754-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp803-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp803-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp804-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp758-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1171-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1264-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1264-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp806-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp806-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1338-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1338-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp999-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp999-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp928-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp607-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp982-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp925-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp928-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp925-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp804-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp807-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp807-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1208-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1171-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp590-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp590-foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp607-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/si2019/si2019-odp1208-bulk.txt

cd ..

# Global Marine Fossil 14C Data during the last 50,000 years

folder=rafter2022_Global_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/rafter2022/rafter2022-14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/rafter2022/rafter2022-basin-14c.txt

cd ..

# Global Ocean Glacial Export Production Data

folder=kohfeld2005_Global_Export
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2005/kohfeld2005.txt

cd ..

# Global Ocean Last Interglacial Sea Surface Temperature Reconstructions

folder=turney2021_Global_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021early-lig-sst-ann.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021lig-sst-ann.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021lig-sst-djf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021lig-sst-jja.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021lig-sst.xlsx
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/turney2021/turney2021mis6-lig-sst-ann.txt

cd ..

# Global Ocean Mg/Ca Concentration Data from .25 to 15.75 Mya

folder=rosenthal2021_Global_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rosenthal2021/mg-ca_rosenthal2021.txt

cd ..

# Global Ocean Neodymium Isotope Data during the Campanian-Maastrichtian

folder=haynes2019_Global_Neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/haynes2019/haynes2019-nd.txt

cd ..

# Global Ocean Planktonic Foraminifera Boron Isotope Seawater pH Reconstruction

folder=guillermic2020_Global_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/guillermic2020/guillermic2020.txt

cd ..

# Global Ocean Seafloor Sediment Geochemistry Data during the past 12,000 years

folder=hayes2020_Global_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hayes2020/hayes2020-surface-noaa.txt

cd ..

# Global Ocean Surface Sediment Compilation of Thorium Isotopes and Trace Metals

folder=costa2024_Global_thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/costa2024/costa2024-hhac.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/costa2024/costa2024-th.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/costa2024/costa2024-bulk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/costa2024/costa2024-hydrochloric.txt

cd ..

# Global Otolith Radiocarbon Data - Pacific Islands Fisheries Science Center

folder=andrews2019_Global_otolith
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2019/andrews2019-otolith.txt

cd ..

# Global Relative Sea-Level Data Over the Last 3000 Years

folder=kopp2016_Global_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ocean/kopp2016/kopp2016-global.txt

cd ..

# Global Sea Level Reconstruction Data over the past 66 Myr

folder=miller2024_Global_RSL_66Myr
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/miller2024/miller2024-sealevel.txt

cd ..

# Global Sea Level Reconstruction using Stacked Records from 0-800 ka

folder=spratt2016_Global_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spratt2016/spratt2016-noaa.txt

cd ..

# Global Sea-level and Deep-sea Temperature Reconstructions over the past 40 Million Years

folder=rohling2021_Global_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-lr-unconstrain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-wh-unconstrain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-lr-main.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-lr-95pct.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-wh-main.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rohling2021/rohling2021-wh-95pct.txt

cd ..

# Global Surface Ocean d18O - Salinity Relationship Data for Paleoclimatic Reconstruction

folder=murray2023_Global_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/murray2023/murray2023-global-d18o.txt

cd ..

# Global Synthesis of Marine Radiocarbon Data Over the last 40,000 years

folder=zhao2017_Marine_reservoir
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2017/zhao2017-c14.txt

cd ..

# Global TEX86 Surface Sediment Database

folder=tierney2015_Global_TEX86
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2015/tierney2015tex86.txt

cd ..

# Global change in deep sea carbon isotopes during the mid-Pleistocene transition

folder=raymo1997_Global_carbon_MPT
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp664b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp664c-tab.txt

cd ..

# Global late Neogene seawater 87Sr/86Sr

folder=farrell1995_Global_Sr
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp758-tab.txt

cd ..

# Global sediment trap calibration of Mg/Ca in G. ruber white, with associated temperature, salinity and carbonate system data

folder=gray2018_Global_ruber
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gray2018/gray2018-mgca.txt

cd ..

# Globally Resolved Surface Temperatures Since the Last Glacial Maximum

folder=osman2021_Global_SST
mkdir ${folder}
cd ${folder}

echo "The NetCDF files in this dataset are large, so it has been skipped" > warning.txt
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/iCESM_priors/d18O_PRECIP_weighted_cam_50yrDecMon_iCESM_LGMtoPresent.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/iCESM_priors/R18O_pop_50yrDecMon_iCESM_LGMtoPresent.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/iCESM_priors/SALT_pop_50yrDecMon_iCESM_LGMtoPresent.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/iCESM_priors/TEMP_pop_50yrDecMon_iCESM_LGMtoPresent.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/iCESM_priors/TREFHT_cam_50yrDecMon_iCESM_LGMtoPresent.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_d18Op_climo.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_d18Op_ens.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_GMST_climo.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_GMST_ens.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SAT_climo.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SAT_ens.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_climo.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_101-150.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_1-50.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_151-200.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_201-250.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_251-300.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_301-350.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_351-400.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_401-450.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_451-500.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/LGMR_SST_ens_51-100.nc
#wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/proxyDatabase.nc
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/osman2021/readme-osman2021.txt

cd ..

# Golfo Elefantes, Chile 5400 Year Glaciomarine Sediment Data

folder=bertrand2012_Chile_glaciomarine
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bertrand2012/bertrand2012.txt

cd ..

# Grand Bahama, Bahamas Paleohurricane Reconstruction Data from 200 to 2020 CE

folder=winkler2023_Bahamas_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-ldbh_gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-bhacstand6_comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-pdf_comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-turt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-turt_pb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-turt_gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-gbamstack.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2023/winkler2023-ldbh_composite.txt

cd ..

# Greenland Stream Sediments, Eirik Drift Marine Sediments and Sr-Nd-Pb Isotope Composition from ~145-110 ka and 30-5 ka

folder=colville2011_Greenland_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/colville2011/colville2011-greenland-seds.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/colville2011/colville2011-md99-2227.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/colville2011/colville2011-mixingmodel.txt

cd ..

# Grimsey, North Icelandic Shelf Annual d13C Data over the Last Millennium

folder=reynolds2017b_Iceland_d13C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reynolds2017b/reynolds2017b-grim.txt

cd ..

# Guaymas Basin 17KYr High Resolution Geochemical Data

folder=dean2006b_Guaymas_Basin_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2006b/dean2006b.txt

cd ..

# Guaymas Basin 9-12kYrBP Leaf Wax Isotopes and Precipitation Reconstructions

folder=bhattacharya2018_Guaymas_Basin_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bhattacharya2018/bhattacharya2018md022517.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bhattacharya2018/bhattacharya2018nh-8p.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bhattacharya2018/bhattacharya2018jpc56.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bhattacharya2018/bhattacharya2018md022515.txt

cd ..

# Guaymas and Cariaco Basin 300 Year Alkenone SST Reconstructions

folder=goni2006_Guaymas_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/goni2006/goni2006bc43-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/goni2006/goni2006mc4-noaa.txt

cd ..

# Guilderson et al. 2000 Argentine Shelf Relative Sea Level Data

folder=guilderson2000_argentine_shelf_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/argentine_shelf/arg_rsl_clean.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/argentine_shelf/arg_rsl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/argentine_shelf/arg_rsl.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/argentine_shelf/readme_argentine_shelf.txt

cd ..

# Guilderson et al. 2000 Radiocarbon Tracer Ocean Model Data

folder=guilderson2000_radiocarbon_tracer
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/radiocarbon/ocean_tracer/readme-tracer14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/radiocarbon/ocean_tracer/tracer14c_data.txt

cd ..

# Gulf Stream 2000 Year SST, d18Osw, and SSS Reconstructions

folder=saenger2011_Gulf_Stream_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/saenger2011/saenger2011.txt

cd ..

# Gulf Stream Holocene/Last Glacial Maximum Planktonic Foraminifera Stable Isotope Data

folder=matsumoto2003_Gulf_Stream_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v15-212-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/k2-jpc22-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/kz81-10g-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc10-289-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v26-176m-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v4-1-m-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-1-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v26-175-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ggc50-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v26-177-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v21-2-m-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v30-5-tab.txt

cd ..

# Gulf of Aden 200,000 Year Stable Isotope and Alkenone SST Data

folder=tierney2017b_Gulf_of_Aden_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2017b/tierney2017b.txt

cd ..

# Gulf of Aden 2000 Year Leaf Wax Isotope, TEX86, and SST Data

folder=tierney2015b_Gulf_of_Aden_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2015b/tierney2015bc1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2015b/tierney2015p.txt

cd ..

# Gulf of Aden 40,000 Year Leaf Wax Deuterium Data

folder=tierney2013_Gulf_of_Aden_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2013/tierney2013.txt

cd ..

# Gulf of Aden 40,000 Year UK37, Mg/Ca, d18O, and TEX86 Data

folder=tierney2015c_Gulf_Of_Aden_TEX86
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2015c/tierney2015c.txt

cd ..

# Gulf of Aden DSDP Site 231 Pliocene to late Pleistocene Biomarker Data

folder=liddy2016_Gulf_Of_Aden_Biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/liddy2016/liddy2016tex86.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/liddy2016/liddy2016d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/liddy2016/liddy2016d2h.txt

cd ..

# Gulf of Aden DSDP231 12Ma Pollen and d13Cwax Data

folder=feakins2013_Gulf_of_Aden_Pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2013/feakins2013.txt

cd ..

# Gulf of Aden DSDP231 Plio-Pleistocene Tephra Shard Counts and Geochemistry

folder=feakins2007_Gulf_of_Aden_tephra
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2007/feakins2007shardcount.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2007/feakins2007shardchem.txt

cd ..

# Gulf of Alaska 17,000 Year Isotope Data

folder=davies2011_Gulf_Of_Alaska_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/davies2011/davies2011-plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/davies2011/davies2011-nonion.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/davies2011/davies2011-uvig.txt

cd ..

# Gulf of Alaska 17,000 Year Paleoproductivity Data

folder=addison2012_Gulf_Of_Alaska_productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/addison2012/addison2012.txt

cd ..

# Gulf of Alaska Alkenone paleotemperatures, d18Oseawater reconstructions, benthic oxygen isotopes and benthic faunal data for the past 18,000 years

folder=praetorius2015_Gulf_Of_Alaska_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-alkenone-85jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-faunal-85jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-age-85jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-87jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-26jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-gbull-d18o-85jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2015/praetorius2015-nps-d18o-85jc.txt

cd ..

# Gulf of Alaska Benthic Foraminiferal and Geochemical Records for the Last 54,000 Years

folder=sharon2020Gulf_Of_Alaska_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sharon2020/sharon2020-forams.txt

cd ..

# Gulf of Alaska Radiocarbon data from benthic and planktonic foraminifera during the Late Glacial to the Holocene

folder=davies-walczak2014_Gulf_Of_Alaska_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/davies-walczak2014/davies-walczak2014.txt

cd ..

# Gulf of Alaska authigenic and bulk sediment neodymium isotope compositions for the past 22,000 years

folder=du2018_Gulf_Of_Alaska_neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/du2018/du2018-iodp-u1419.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/du2018/du2018-ew0408-85tc_jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/du2018/du2018-ew0408-87jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/du2018/du2018-iodp-u1418.txt

cd ..

# Gulf of Alaska, Northeast Pacific Geochemistry and Radiogenic Isotope Data from Leaching Experiments

folder=du2016_Gulf_Of_Alaska_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/du2016/du2016.txt

cd ..

# Gulf of California Deglacial Biogenic SST Reconstructions

folder=mcclymont2012_Gulf_of_California_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcclymont2012/mcclymont2012.txt

cd ..

# Gulf of California Foraminifera and Wood 14C Data

folder=rafter2018_Gulf_of_California_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2018/rafter2018-lpaz-21pg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2018/rafter2018-et97-7t.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2018/rafter2018-lpaz-21p.txt

cd ..

# Gulf of California d15Norg and Opal Records

folder=pride1995_Gulf_of_California_Opal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ggc55-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc56-tab.txt

cd ..

# Gulf of California foraminifera and wood 14C (radiocarbon) from 27 to 9 ka

folder=rafter2019_Gulf_of_California_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rafter2019/rafter2019-lpaz-21p.txt

cd ..

# Gulf of Guinea (MD03-2707) d18O and Mg/Ca Data and SST/SSS Reconstruction

folder=weldeab2007_Guinea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md3-2707-tab.txt

cd ..

# Gulf of Lion, Mediterranean Sea 10,000 Year Biomarker Data and SST Reconstruction

folder=jalali2016_Mediterranean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2016/jalali2016.txt

cd ..

# Gulf of Lions 7000 Year Mediterranean Paleostorm Data

folder=sabatier2012_Mediterranean_storm
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sabatier2012/sabatier2012.txt

cd ..

# Gulf of Maine Last Millennium Bivalve d18O Data and SST Reconstruction

folder=wanamaker2008_Maine_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/wgomaine-tab.txt

cd ..

# Gulf of Maine Oxygen and Nitrogen Isotope Data From 1684 - 2013 CE

folder=whitney2022_Maine_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2022/seguin_whitney2022.txt

cd ..

# Gulf of Maine age corrected radiocarbon data measured in Arctica islandica shells from 1685-1986

folder=lower-spies2020_Maine_shells
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lower-spies2020/lower-spies2020-c14.txt

cd ..

# Gulf of Maine bulk and amino acid nitrogen isotope data from 1783-2010 CE

folder=whitney2019_Maine_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-supp-fig2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/whitney2019/whitney2019-fig8.txt

cd ..

# Gulf of Mexico 600 Year Mg/Ca SST Reconstructions

folder=richey2009_Gulf_of_Mexico_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/richey2009/richey2009.txt

cd ..

# Gulf of Mexico Chicxulub Impact Crater Earliest Paleocene Formainifer and XRF Data

folder=lowery2021_Gulf_Of_Mexico_Chicxulub
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lowery2021/lowery2021xrf-10kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lowery2021/lowery2021foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lowery2021/lowery2021xrf-50kv.txt

cd ..

# Gulf of Mexico SST, Stable Isotope and Geochemistry Data during the last 21 ka

folder=antonarakou2015_Gulf_Of_Mexico_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/KNR159JPC26.Antonarakou.2015.txt

cd ..

# Gulf of Mexico and Caribbean XRF Core Scan Data from the Early Paleocene

folder=lowery2021_Gulf_Of_Mexico_Paleocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-odp1001a-10kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-odp999b-50kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-odp999b-10kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-dsdp95-10kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-odp1001a-50kv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lowery2021/lowery2021-dsdp95-50kv.txt

cd ..

# Gulf of Mexico d18O, Mg/Ca and SST Reconstructions during the Last Deglaciation

folder=flower2004_Gulf_Of_Mexico_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/EN32PC6.Flower.2004.txt

cd ..

# Gulf of Oman M5-422 Holocene Eolian Mineral Dust Data

folder=cullen2000_Oman_dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cullen2000/cullen2000.txt

cd ..

# Hagen and Keigwin 2002 Blake Outer Ridge Stable Isotope and Carbonate Data

folder=hagen2002_Blake_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hagen2002/hagen2002.txt

cd ..

# Harris and Mix 1999 Amazon Basin Pleistocene Precipitation Reconstruction Data

folder=harris1999_Amazon_precipitation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/925_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/926_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/estcarb926.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/gh925.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/gh926.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/goeth925_cfree.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/goeth926_cfree.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/hem925_cfree.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/hem926_cfree.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/q65n_la90_1_1_jun.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/readme_harris1999.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/rmode_3fact.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/scores925.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1999/scores926.dat

cd ..

# Harris et al 1997 Western Tropical Atlantic Sedimentation Data

folder=harris1997_Atlantic_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/925_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/926_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/927_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/928_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/929_ms_bands.splice
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/carbonate.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/estcarb_mars_926.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/estcarb_mars_927.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/estcarb_mars_928.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/estcarb_mars_929.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/harris1997/readme_harris1997.txt

cd ..

# Healy-Oden Trans Arctic Expedition(HOTRAX) Grain Size, XRF, and Reflectance Data

folder=hotrax2009_Arctic_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-03xrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-01jpc-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-01jpcgs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-01tcgs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-01tc-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-07jpc-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-07jpcgs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-07tc-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-07tcgs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-08jpc1-6-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-08jpc7-12-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-08jpcgs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-08tc-refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/hotrax/hotrax2009hly05-01-08tcgs.txt

cd ..

# Hendy and Kennett 2000 Santa Barbara Basin ODP893A Planktonic Census Data

folder=hendy2000_Santa_Barbara_planktonic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hendy2000/hendy2000.txt

cd ..

# Hendy and Kennett 2003 Santa Barbara Basin ODP893A Benthic d18O Data

folder=hendy2003_Santa_Barbara_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hendy2003/hendy2003.txt

cd ..

# Hendy et al. 2002 Santa Barbara Basin ODP893A Planktonic Stable Isotope Data

folder=hendy2002_Santa_Barbara_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hendy2002/hendy2002.txt

cd ..

# Herbert et al 2001 California Current Collapse Reconstruction

folder=herbert2001_California_collapse
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2001/lapaz21p.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2001/odp1012.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2001/odp1020.txt

cd ..

# High Resolution Nitrogen Data in the heart of the Equatorial Pacific Cold Tongue Over the last 30,000 Years

folder=altabet2015_Pacific_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/altabet2015/altabet2015-cdh-26.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/altabet2015/altabet2015-cdh-23.txt

cd ..

# High-resolution (decadal-scale) deglacial planktonic oxygen isotope records from the Gulf of Alaska

folder=praetorius2014_Gulf_of_Alaska_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-agecontrol.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-composite-nps.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-composite-gbull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-85jc-plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-26tc_jc-nps.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-26tc_jc-gbull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-66jc-nps.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/praetorius2014/praetorius2014-66jc-gbull.txt

cd ..

# Hine's Hole (Cay Sal Bank, The Bahamas) Paleo-hurricane Record (1490-2016 CE) - Coarse Fraction and Event Frequency Data

folder=winkler2021_Bahamas_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/winkler2021/winkler2021-hineshole.txt

cd ..

# Hippensteel and Martin 1999 Folly Island, SC Overwash Deposit Foram Data

folder=hippensteel1999_Folly_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hippensteel1999/hippensteel1999.txt

cd ..

# Hodell and Venz-Curtis 2006 Late Neogene Southern Ocean Carbon Isotope Data

folder=hodell2006_Southern_Ocean_Neogene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2006/hodell2006.txt

cd ..

# Holocene Chilean Margin Geochemistry and Benthic Isotope Data

folder=riechelson2023_Chile_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/riechelson2023/riechelson2023-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/riechelson2023/riechelson2023-xrf.txt

cd ..

# Holocene Variations in Subtropical Atlantic SST

folder=demenocal2000_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/demenocal2000/demenocal2000-noaa.txt

cd ..

# Holocene and Last Interglacial Regional SST Stacks and Western Pacific Mg/Ca SST Data

folder=bova2020_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2020/bova2020-ProxyData-tropics.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2020/bova2020-ProxyData-extratropics.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2020/bova2020-u1485-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bova2020/bova2020-u1485-d18o.txt

cd ..

# Holocene sedimentary radiogenic nuclide and sortable silt records from the Carolina Slope

folder=hoffmann2018_Carolina_silt
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2018/hoffmann2018-radiogenic.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2018/hoffmann2018-silt.txt

cd ..

# Hostetler and Mix 1999 LGM SST Reconstruction Grid

folder=hostetler1999_LGM_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_anom_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_anom.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_anom_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_lgm_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_lgm.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_lgm_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_modern_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_modern.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/climap_modern_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/grid_code_anom_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/grid_code_lgm_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/grid_code_modern_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_nosmooth_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_nosmooth.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_nosmooth_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_smooth_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_smooth.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_anom_smooth_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_nosmooth_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_nosmooth.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_nosmooth_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_smooth_3col.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_smooth.hdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/osu_lgm_smooth_mtx.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hostetler1999/readme_hostetler1999.txt

cd ..

# Howard and Prell 1994 Late Quaternary Southern Ocean Carbon Cycling Data

folder=howard1994_Southern_Ocean_carbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp92_agemodels.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp92_coreloc.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp94_codes.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp94_data.sit
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp94_dissdata.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/hp94_pres_index.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howard1994/readme_howard1994.txt

cd ..

# Hughen et al 1996 Tropical Atlantic Deglacial Climate Change Data

folder=hughen1996_Atlantic_climate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/39.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/56.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/57.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/58.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/58tw.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/greydata.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/greydata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1996/readme_hughen1996.txt

cd ..

# Hughen et al 1998 Deglacial 14C Calibration

folder=hughen1998_14C_Calibration
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1998/pc56_greyscale_age_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1998/pc56_greyscale_age.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1998/readme_hughen1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1998/splinedata.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen1998/splinedata.xls

cd ..

# Hughen et al 2000 Cariaco Basin Deglacial 14C and Grey Scale Data

folder=hughen2000_Cariaco_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen2000/cariaco2000_pc56_greyscale.txt

cd ..

# Hughen et al. 2004 Cariaco Basin 50KYr Radiocarbon Calibration and Reconstruction

folder=hughen2004_Cariaco_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen2004/cariaco14c_2004.txt

cd ..

# Hughen et al. 2004b Cariaco Basin Updated Core PL07-58PC Radiocarbon Calibration

folder=hughen2004b_Cariaco_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen2004b/hughen2004b.txt

cd ..

# Hughen et al. 2006 Updated Cariaco Basin 50,000 Year 14C Calibration Data

folder=hughen2006_Cariaco_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hughen2006/hughen2006.txt

cd ..

# Huybers 2006 Pleistocene Depth-derived Age Model and Composite d18O Record

folder=huybers2006_Pleistocene_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huybers2006/huybers2006.txt

cd ..

# Hönisch et al. 2009 Pleistocene ODP 668B Isotope and PCO2 Data

folder=hoenisch2009_Pleistocene_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2009/hoenisch2009.txt

cd ..

# IODP Expedition 363 Western Pacific Warm Pool benthic foraminiferal species counts over the past 10 million years

folder=billups2020_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1482a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1484a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1486a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1490a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1488a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1487a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1489a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1483a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020/billups2020-u1485a.txt

cd ..

# IODP Site M0077 Gulf of Mexico Basal Paleocene Foraminifer Population Data

folder=lowery2018_Gulf_of_Mexico_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lowery2018/lowery2018-m0077.txt

cd ..

# Iberian Margin 420KYr Geochemical and Color Variations Data

folder=hodell2013_Iberian_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013carb-ca-ti.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013color.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013planktonic.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013benthic.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013barium.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013biomarker.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013ca-ti-residual.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2013/hodell2013ca-ti.txt

cd ..

# Iberian Margin IODP U1385 High Resolution Isotope and Trace Metal Data 1235 to 1320 ka

folder=birner2016_Iberian_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/birner2016/birner2016-trace.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/birner2016/birner2016-isot.txt

cd ..

# Iceland 2000 Year Multiproxy Sediment Data

folder=axford2011_Iceland_Multiproxy
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/axford2011/axford2011.txt

cd ..

# Iceland Basin Sea Surface Temperature Reconstruction over the last 12,000 years

folder=bannieuwenhove2018_Iceland_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/DANA12112GC01.VanNieuwenhove.2018.txt

cd ..

# Iceland Basin Sortable Silt Data During the Holocene

folder=thornalley2013_Iceland_silt
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-25ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-24ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-23ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-22ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-11ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-32ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-neap4k.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-depth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-29ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-stack.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-odp983.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-odp984.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-10-1p.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-30ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013-cop/thornalley2013-cop-26ggc.txt

cd ..

# Iceland Shelf 12KYr Quartz and K-Feldspar IRD Data

folder=andrews2009b_Iceland_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2009b/andrews2009b.txt

cd ..

# Iceland/Greenland Stream Sediment Magnetic Data

folder=hatfield2013_Iceland_mag
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hatfield2013/hatfield2013ms.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hatfield2013/hatfield2013hparam.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hatfield2013/hatfield2013hloop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hatfield2013/hatfield2013xarmx.txt

cd ..

# Ikehara et al 2000 Southern Ocean Biomarker Flux Data Set

folder=ikehara2000_Southern_Ocean_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/biomarker_mar_t-ii.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/biomarker_mar_t-ii.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/biomarker_mar_t-i.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/biomarker_mar_t-i.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/cns_t-ii.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/cns_t-ii.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/cns_t-i.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/cns_t-i.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ikehara2000/readme_ikehara2000.txt

cd ..

# Increase in the Asian SW Monsoon During the Past Four Centuries

folder=anderson2002_Asian_SW_Monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc2730-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc2735-tab.txt

cd ..

# Indian Ocean Pliocene Paired Foraminiferal d18O and Mg/Ca Data

folder=karas2011_Indian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2011/karas2011.txt

cd ..

# Indian Ocean Sea Surface Temperature Reconstruction and Mg/Ca Data during the Last Deglaciation

folder=levi2007_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD982165.Levi.2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD79-257.Levi.2007.txt

cd ..

# Indian Ocean Sea Surface Temperature Reconstruction for last 150,000 years

folder=bard1997_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/m85668eb-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md90963-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md79257-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/md79257-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md85674-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/md85674-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t93929-p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/t93929-p-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m85668eb-tab.txt

cd ..

# Indo-Pacific Warm Pool (MD98-2160) Last Millennium Mg/Ca, d18O, SST, Salinity Data

folder=newton2006_Indo-Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m98-2160-tab.txt

cd ..

# Indo-Pacific Warm Pool 35KYr Foraminiferal d18Oseawater Estimates

folder=gibbons2014_Indo-Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibbons2014/gibbons2014d18o-sw-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gibbons2014/gibbons2014pc-noaa.txt

cd ..

# Indo-Pacific Warm Pool 40KYr SST and d18Osw Reconstructions

folder=mohtadi2010_Indo-Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mohtadi2010/mohtadi2010.txt

cd ..

# Indo-Pacific Warm Pool 450,000 Year Alkenone Temperature Reconstructions

folder=windler2019_Indo-Pacific_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/windler2019/windler2019.txt

cd ..

# Indo-Pacific Warm Pool Biomarker Data since the Last Glacial Maximum

folder=galy2021_Indo-Pacific_Biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/galy2021/galy2021-biomarker.txt

cd ..

# Indonesian Gateway DSDP214 Pliocene Paired d18O and Mg/Ca Data

folder=karas2009_Indonesia_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2009/karas2009.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2009/karas2009.xls

cd ..

# Indonesian Vegetation and d13C Fatty Acids Data over the Past 25,000 Years

folder=dubois2014_Indonesia_fatty
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014-ng/dubois2014-ng-69-3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014-ng/dubois2014-ng-91ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dubois2014-ng/dubois2014-ng-65-7.txt

cd ..

# Indus Fan Miocene Plant Biomarker and Microfossil Data

folder=feakins2020_Indus_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2020/feakins2020.txt

cd ..

# Ingøya, Norway, 1900-2012 Arctica islandica d18O and shell growth data

folder=mette2016_Norway_Arctica_islandica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mette2016/mette2016.txt

cd ..

# Interglacial North Atlantic Temperature and Salinity Data

folder=cortijo1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/neap18ke-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc8-c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc37-c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch69-k9-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su90-03-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m952036c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/na87-25-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v27-60c-tab.txt

cd ..

# Irish Sea 500 Year Arctica islandica Carbon Isotope and Chronology Record

folder=butler2009_Irish_Arctica_islandica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2009/butler2009-d13C.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2009/butler2009-deltaR.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2009/butler2009-chron.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2009/butler2009-raw.txt

cd ..

# Irminger Sea Sediment Trap Mg/Ca and d18O Neogloboquadrina pachyderma Data

folder=livsey2019_Irminger_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/livsey2019/livsey2019-irm-d18o_sims.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/livsey2019/livsey2019-irm-mgca.txt

cd ..

# Ishiwatari et al. 1999 Japan Sea 30KYr Organic Geochemical Data

folder=ishiwatari1999_Japan_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ishiwatari1999/ishiwatari1999.txt

cd ..

# Isotope data for Sale Briqueterie section, Morocco

folder=hodell1994_Morocco_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/salebriq-tab.txt

cd ..

# Jansen et al. 2007 IPCC WG1 AR4 Palaeoclimate Chapter Data

folder=jansen_2007_IPCC2007
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/box64ipcc2007-smoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig610ipcc2007-overlaps.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig610ipcc2007-smoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig610ipcc2007-unsmoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig611ipcc2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig612ipcc2007-smoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig612ipcc2007-unsmoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig613ipcc2007-overlaps.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig613ipcc2007-smoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig613ipcc2007-unsmoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig614ipcc2007-smoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/fig614ipcc2007-unsmoothed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61bottom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61bottom.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61middle.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61middle.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61top.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig61top.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig68.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/ipcc2007/ipcc2007fig68.xls

cd ..

# Japan Sea (IODP U1430) Geochemistry Data through the last 12 Ma

folder=anderson2019_Japan_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2019-c/anderson2019-u1430.txt

cd ..

# Japan Sea (MD01-2407) Aeolian Silt Data

folder=nagashima2007_Japan_Silt
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md1-2407-tab.txt

cd ..

# Japan Sea Major and Trace Element Data Over the Last 4 Million Years

folder=zhao2021b_Japan_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021b/iodp_u1425_ICPMS-zhao2021.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021b/iodp_u1430_NGR-zhao2021.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021b/iodp_u1425_NGR-zhao2021.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2021b/iodp_u1430_ICPMS-zhao2021.txt

cd ..

# Japan Sea Organic Carbon and Bulk Nitrogen Isotopes and Major and Trace Elements over the Past 11 Ma

folder=zhai2020_Japan_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhai2020/zhai2020-u1430.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhai2020/zhai2020-u1425.txt

cd ..

# Japan Sea paleoceanography during last 25,000 years

folder=gorbarenko2000_Japan_paleoceanography
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/j-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1603-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1670-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/j-11-tab.txt

cd ..

# Jenkyns et al. 2001 Lower Jurassic Stable Isotope and Chemical Data

folder=jenkyns2001_Jurrasic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/dogna.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/dogna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/hawsker_bottoms.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/hawsker_bottoms.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/mochras.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/morchras.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/readme_jenkyns2001.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/winterborne_kingston.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jenkyns2001/winterborne_kingston.txt

cd ..

# Jordan Basin, Gulf of Maine 25KYr Foraminiferal Census Data

folder=keigwin2014_Maine_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2014/keigwin2014-9cdh.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2014/keigwin2014-5cdh.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2014/keigwin2014plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2014/keigwin2014iso.txt

cd ..

# Joseph et al. 1998 Grain Size and Magnetic Fabric Data

folder=joseph1998_California_Bermuda_grain
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/joseph1998/joseph1998.txt

cd ..

# Juan de Fuca Ridge Mass Flux Data over the Last 500 ka

folder=costa2017_Juan_De_fuca_flux
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-09pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-12pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-35pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-38pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-39bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2017/costa2017-05pc.txt

cd ..

# Juan de Fuca Ridge Sediment Physical Property Data over the last 700,000 Years

folder=costa2016_Juan_De_fuca_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-20pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-20pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-35pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-35pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-38pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-38pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-05pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-05pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-09pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-09pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-12pc-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-12pc-coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-39bb-dbd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2016/costa2016-39bb-coarse.txt

cd ..

# Juan de Fuca Ridge, Subarctic Pacific Productivity Proxy Data over the last 200,000 years

folder=costa2018_Juan_De_fuca_productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-39bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-38pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-comp_pa_th.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-comp_opal.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-comp_sixs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-05pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-06mc-09pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-10mc-12pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/costa2018/costa2018-35pc.txt

cd ..

# Kaiser et al. 2005 Southeast Pacific High Resolution Alkenone SST Reconstruction

folder=kaiser2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2005/kaiser2005.txt

cd ..

# Kanfoush et al. 2000 South Atlantic Deglacial Ice Rafted Debris Data

folder=kanfoush2000_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kanfoush2000/kanfoush2000.txt

cd ..

# Kanfoush et al. 2002 South Atlantic ODP1094 444KYr Ice Rafted Debris Data

folder=kanfoush2002_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kanfoush2002/kanfoush2002.txt

cd ..

# Karner et al. 2002 Constructing a Stacked Benthic delta O-18 Record

folder=karner2002_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karner2002/karner2002.txt

cd ..

# Kazusa Group, Central Japan Pleistocene Biomarker Data and Alkenone SST

folder=kajita2021_Japan_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kajita2021/kajita2021.txt

cd ..

# Keigwin 1998 Northwest Pacific Stable Isotope Data

folder=keigwin1998_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/b34-91.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/ggc37iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/ggc37iso.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/nes_15ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/readme_keigwin1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/rndb_16ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/site.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/site.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/vino_17ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/vino_26bc_pachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1998/vino_37ggc_pachy_left.txt

cd ..

# Keigwin 2004 Western North Atlantic LGM and YD Radiocarbon and Stable Isotope Data

folder=keigwin2004_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/keigwin2004.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/01jpc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/01jpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/02jpcjpg-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/02jpcjpg-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/12jpc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/12jpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/18jpc-caco3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/18jpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/20ggc-caco3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/21ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/22pgjpc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/22pgjpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/24ggc-caco3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/28ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/28ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/29ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/29ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/30ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/30ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/31ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/31ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/43ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/43ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/46ggc-fauna-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/50ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/50ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/51ggc-caco3-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/51ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/56ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/56ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/63jpc-bf-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/63jpc-pf-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/64ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/64ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/66ggc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/66ggc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/67jpc-fauna.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/67jpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/readme-keigwin2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2004/text/table3.txt

cd ..

# Keigwin and Schlegel 2002 North Atlantic Postglacial Deep Water Ventilation Sediment Data

folder=keigwin2002_Atlantic_ventilation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2002/keigwin2002.txt

cd ..

# Keigwin et al. 1994 NADW Data 70-130 KYrBP

folder=keigwin1994b_Atlantic_NADW
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1994b/gpc-9_carbonate.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1994b/gpc9-stage456.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1994b/readme_keigwin1994b.txt

cd ..

# Keigwin et al. 2005 Laurentian Fan 8200 YrBP Slope Water Sediment Data

folder=keigwin2005_Laurentian_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2005/keigwin2005.txt

cd ..

# Kelly et al 1998 Late Paleocene Tropical Planktic Foram Evolution Data

folder=kelly1998_Paleocene_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly981.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly981.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly982.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly982.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly983.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/kelly983.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly1998/readme_kelly1998.txt

cd ..

# Kelly et al. 2005 Weddell Sea ODP 690B Paleocene-Eocene Thermal Maximum Carbon Cycle Data

folder=kelly2005_Weddell_Sea_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kelly2005/kelly2005.txt

cd ..

# Kennedy and Brassell 1992 Alkenones, Santa Barbara Basin

folder=kennedy1992_Santa_Barbara_Alekenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix1-core10a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix1-core10b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix1-core9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/appendix9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kennedy1992/methods.txt

cd ..

# Kerguelen Plateau ODP748 Eocene-Oligocene Nannofossil Isotope Data

folder=villa2008_Kerguelen_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/villa2008/villa2008.txt

cd ..

# Kienast et al. 2002 Northeast Pacific Nitrogen Isotope and Paleoproductivity Data

folder=kienast2002_Pacific_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2002/kienast2002.txt

cd ..

# Kienast et al. 2006 Eastern Equatorial Pacific 150KYr Sedimentary Opal Data

folder=kienast2006_Pacific_opal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kienast2006/kienast2006.txt

cd ..

# King and Howard 2003 Seasonal Subantarctic Planktonic Foraminiferal Flux Data

folder=king2003_Antarctica_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/king2003/king2003.txt

cd ..

# King and Howard 2004 Southern Ocean Sediment Trap Planktonic Foraminiferal d13C Data

folder=king2004_Southern_Ocean_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/king2004/king2004.txt

cd ..

# King and Howard 2005 Southern Ocean Sediment Trap Planktonic Foraminiferal d18O Data

folder=king2005_Southern_Ocean_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/king2005/king2005.txt

cd ..

# Kohfeld and Harrison 2001 DIRTMAP Global Eolian Flux Database, Version 2

folder=kohfeld2001_DIRTMAP
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/kohfeld2001.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/readme_dirtmap_v2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table1_ice_core.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table1_ice_core.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table2_marine_sediment.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table2_marine_sediment.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table3_marine_sediment_trap.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table3_marine_sediment_trap.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table4_non_carb_marine_sed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table4_non_carb_marine_sed.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table5_terrestrial_sediment.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table5_terrestrial_sediment.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table6_all_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table6_all_data.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table7_flagged_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version2/table7_flagged_data.xls

cd ..

# Kohfeld et al 2000 S.Atlantic N.pachyderma Isotope and Abundance Data

folder=kohfeld2000_Atlantic_pachyderma
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/multinet_foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/multinet_foram.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/pachy_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/pachy_iso.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/readme_kohfeld2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/site.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2000/site.xls

cd ..

# Kuroshio Extension Oxygen Isotope Data During the Pliocene-Pleistocene Climate Transition

folder=venti2013_Kuroshio_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/venti2013/venti2013.txt

cd ..

# Kuroshio Extension Plio-Pleistocene Alkenone SST Reconstruction

folder=venti2013_Kuroshio_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/venti2013-epsl/venti2013-epsl.txt

cd ..

# Kuroshio-Oyashio Transition Area 40KYr Alkenone SST Estimates

folder=harada2004_Kuroshio_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pc-01-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/pc-01-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pc-04-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/pc-04-sytr-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/station5-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/station6-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/station8-tab.txt

cd ..

# LDGO North Atlantic Fossil Plankton Stratigraphies

folder=ruddiman1992_Atlantic_LDGO_plankton
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/552a_ful.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/552a_qck.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/chk9.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/chk9.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/compq.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/dsdp552a.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/dsdp552a.qck
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/dsdp607_.qck
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/faunal.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_1.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_1.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_4.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_4.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_6.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_6.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_7a.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_7b.qck
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_7.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_8.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k708_8.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_14.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_15.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_15.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_3.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_3.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/k714_4.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/lk4b.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/lk4.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/lk_4.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/lk6.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/lk7.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/rc9_225.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/rc9_225.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/rc9_228s.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/rc9_228.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/re5_34.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/re5_34.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/readme_fossil_plankton.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/age.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/coord.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/cores.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/names.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/readme_russian_plankton.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/surface.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/sst.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_23.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_23.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_42.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_42.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_81s.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_81s.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_82s.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_82s.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_83.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v23_83.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_114.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_114.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_116.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_116.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_17.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_17.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_19.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_19.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_20a.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_20b.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v27_20.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v28_14.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_177.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_177.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_178.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_178.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_179.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_179.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_180.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_180.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v29_206.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v30_97.ful
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/v30_97.sst

cd ..

# Labrador Current Sea Surface Temperature Reconstruction over the last 2000 years

folder=sicre2014_Labrador_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2014/sicre2014-12g-11bc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2014/sicre2014-03g-04bc.txt

cd ..

# Labrador Sea HU97048-007PC 58KYr Sediment Source Data

folder=andrews2012_Labrador_Sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2012/andrews2012xrd-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/andrews2012/andrews2012rpi-noaa.txt

cd ..

# Labrador Sea Oxygen Isotope, Geochemistry and Lithology Data Covering the Last 40,000 Years

folder=hoffman2018_Labrador_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008twc-mg-sr-ca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-006pc-isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-006pc-xrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-006pc-xrd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008twc-bwt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008pc-isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008pc-xrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008pc-xrd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008twc-isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008twc-xrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffman2018/hoffman2016-008twc-xrd.txt

cd ..

# Labrador Sea Sediment Color, CaCO3, and Oxygen Isotope Data during the Quaternary

folder=rashid2024_Labrador_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/rashid2024/rashid2024-cie.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/rashid2024/rashid2024-caco3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/rashid2024/rashid2024-hu92045-05-chem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/rashid2024/rashid2024-d18o.txt

cd ..

# Laguna Playa Grande, Puerto Rico Grain Size/Paleohurricane Data

folder=donnelly2007_Puerto_Rico_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/lpg4-tab.txt

cd ..

# Lamy et al. 2002 Southeast Pacific SST Reconstruction

folder=lamy2002_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lamy2002/lamy2002.txt

cd ..

# Lamy et al. 2004 Southeast Pacific Alkenone Sea Surface Temperature Reconstruction

folder=lamy2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lamy2004/lamy2004.txt

cd ..

# Langton et al. 2008 Kau Bay, Indonesia 3500-Year d15N ENSO Record

folder=langton2008_Indonesia_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/langton2008/langton2008.txt

cd ..

# Late Eocene marine Osmium isotope record from Italy, the Southern Atlantic, and the Eastern Pacific

folder=paquay2014_Eocene_Osmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paquay2014/paquay2014-odp1090b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paquay2014/paquay2014-odp1218.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paquay2014/paquay2014-massignano.txt

cd ..

# Late Miocene Carbon Isotope and Paleoproductivity Data

folder=diester-haass2006_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1146a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1172-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp721b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp846bd-tab.txt

cd ..

# Late Miocene to Present Global Ocean Alkenone and SST Reconstruction Data

folder=herbert2016_Miocene_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1208.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1338.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1088.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1021.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1241.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp722.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1085.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp850.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1125.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-med.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp846.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp883_884.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp1010.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp982.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp887.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-dsdp594.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2016/herbert2016-odp907.txt

cd ..

# Late Neogene Caribbean ODP999 Benthic Stable Isotope Data

folder=bickert2004_Caribbean_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp999ab-tab.txt

cd ..

# Late Paleocene Osmium Isotope Data

folder=ravizza2001_Paleocene_Osmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp213-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp549-tab.txt

cd ..

# Late Pleistocene Baldcypress (Taxodium distichum) Forest Microfossil Assemblage

folder=delong2020_Late_Pleistocene_Baldcypress
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/delong2020/delong2020.txt

cd ..

# Late Pleistocene Redox Metals in Bulk Sediment from the Gulf of Alaska, North Pacific Ocean

folder=mix2021_Gulf_Of_Alaska_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix2021/mix2021-u1418.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix2021/mix2021-u1419.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix2021/mix2021-85jc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix2021/mix2021-87jc.txt

cd ..

# Late Pliocene Eirik Drift IODP Site U1307 grain size, stable isotope, and micromagnetic data

folder=walczak2017_Eirik_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/walczak2017/walczak2017-u1307.txt

cd ..

# Late Quaternary SW Pacific Foraminifer Data

folder=weaver1998_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/u938-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp594w-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r657-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/chat1k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/s794-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/q200-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/q585-tab.txt

cd ..

# Late glacial to Holocene sortable silt records from the southwestern Labrador Sea

folder=hoffmann2019_Labrador_silt
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2019/hoffmann2019-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2019/hoffmann2019-ca_sr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2019/hoffmann2019-em.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoffmann2019/hoffmann2019-coarse.txt

cd ..

# Laurentian Fan 2000 Year Planktonic Foraminifera Census Data

folder=keigwin1999b_Laurentian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin1999b/keigwin1999b.txt

cd ..

# Lawrence and Herbert 2005 Coral Sea ODP820 Alkenone Data and SST Reconstruction

folder=lawrence2005_Coral_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2005/lawrence2005.txt

cd ..

# Lawrence et al. 2006 Eastern Equatorial Pacific 5MMYr Alkenone SST Reconstruction

folder=lawrence2006_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2006/lawrence2006.txt

cd ..

# Lea 2004 Eastern Tropical Pacific Foraminiferal Mg/Ca and SST Reconstruction

folder=lea2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lea2004/lea2004.txt

cd ..

# Lea et al. 2002 350 KYr Sea Level Reconstruction and Foraminifer Isotope Data

folder=lea2002_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lea2002/lea2002.txt

cd ..

# Lea et al. 2003 Cariaco Basin Foraminiferal Mg/Ca and SST Reconstruction

folder=lea2003_Cariaco_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lea2003/cariaco_2003.txt

cd ..

# Lea et al. 2006 Galápagos TR163-22 d18O and Mg/Ca Data and SST Reconstruction

folder=lea2006_Galapagos_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lea2006/lea2006.txt

cd ..

# Leaf Wax Hydrogen Isotope Data from the Chilean Margin since the Last Glacial Maximum

folder=blumm2022_Chile_hydrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/blumm2022/blumm2022-odp1233.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/blumm2022/blumm2022-odp1234.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/blumm2022/blumm2022-odp861.txt

cd ..

# Leaf wax C30 n-alkane data from Indonesian marine sediments over the past 28,000 years

folder=oppo2022_Indonesia_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2022/geo10069-3_oppo2022.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2022/bj803-136ggc_oppo2022.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2022/bj803-91ggc_oppo2022.txt

cd ..

# Lebreiro et al 1997 Tore Seamount Ocean Productivity Data

folder=lebreiro1997_Tore_Productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/readme_lebreiro1997.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/table3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/table4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lebreiro1997/table5.txt

cd ..

# Leduc et al. 2009 E.Eq. Pacific MD02-2529 Thermocline d18O Data

folder=leduc2009_Pacific_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leduc2009/leduc2009.txt

cd ..

# Line Islands Mg/Ca and sea surface temperature reconstruction in the early and mid-Holocene

folder=white2017_Line_Islands_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2017/white2018-WEP-SST-synthesis.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2017/white2017.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2017/white2018-EEP-SSTmgca-synthesis.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2017/white2018-EEP-SSTalke-synthesis.txt

cd ..

# Line Islands Northern Equatorial Pacific Authigenic Metal Data 0-144 ka

folder=hawco2023_Line_Islands_metal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/hawco2023/hawco2023-metals.txt

cd ..

# Line Islands Ridge Benthic Foraminiferal Stable Isotope data during the Late Quaternary

folder=lynch-stieglitz2020_Line_Islands_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-31bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-37bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-18gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-27bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-36bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2020/lynch-stieglitz2020-28bb.txt

cd ..

# Line Islands Ridge Planktonic Foraminiferal Stable Isotope, Mg/Ca and radiocarbon data over last 30 ka

folder=monteagudo2020_Line_Islands_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-ml1208mcs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-lineislands-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-27bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-31bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-37bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-13bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-20bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-32bb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/monteagudo2020/monteagudo2020-36bb.txt

cd ..

# Line Islands Survey and Coring Cruise Multi-sensor Track, Isotope and Radiocarbon Data

folder=polissar2014_Line_Islands
mkdir ${folder}
cd ${folder}

mkdir mst
cd mst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-01PC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-01TC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-06BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-07BBrelog.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-08PC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-08TC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-10GC_relog2.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-11GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-12GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-13BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-15GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-16BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-17PCrelog.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-17TC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-18GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-19GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-20BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-22PC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-22TC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-23GC.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-24BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-25BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-27BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-28BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-30BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-31BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-32BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-34BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-35BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-36BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-37BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-40BB.out
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/mst/ML1208-41BB.out

cd ..
mkdir isotopes
cd isotopes
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/isotope-methods.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/MGL1208_Strat.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_06BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_10GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_11GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_12GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_15GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_17PC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_17TC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_18GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_19GC_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_20BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_28BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_30BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_31BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_34BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_35BB_G_ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/polissar2014/isotopes/ML1208_37BB_G_ruber.txt
cd ..
cd ..

# Lisiecki and Raymo 2005 Global Pliocene-Pleistocene Benthic d18O Stack

folder=lisiecki2005_LR04
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005-d18o-stack-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005-S95-LR04-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005-sedrate-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2005/lisiecki2005-SPEC-LR04-noaa.txt

cd ..

# Little Bahama Bank 900 Year Sediment Grain Size Data

folder=vanhengstum2014_Bahama_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vanhengstum2014/thatchpoint2014.txt

cd ..

# Liu and Herbert 2004 Eastern Pacific Pleistocene Alkenone SST Reconstruction

folder=liu2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/liu2004/liu2004.txt

cd ..

# LoDico et al. 2006 Gulf of Mexico MD02-2550 Early Holocene Mg/Ca and d18O Data and SST Reconstruction

folder=lodico2006_Gulf_Of_Mexico_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lodico2006/lodico2006.txt

cd ..

# Long Island, Bahamas 1050 Year Coarse Fraction Hurricane Event Data

folder=wallace2021_Bahamas_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2021/wallace2021.txt

cd ..

# Lund and Curry 2006 High Resolution Florida Current Foraminferal SST Data

folder=lund2006_Florida_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lund2006/lund2006.txt

cd ..

# Lyle 2003 Pacific Neogene Carbonate Mass Accumulation Rate Data

folder=lyle2003_Pacific_Neogene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lyle2003/lyle2003.xls

cd ..

# Lynch-Stieglitz et al 1999 Florida Straits Benthic Foram Isotopic Data

folder=lynch-stieglitz1999_Florida_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1999/lynch-stieglitz99fk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1999/lynch-stieglitz99fk.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1999/lynch-stieglitz99lbb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1999/lynch-stieglitz99lbb.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1999/readme_lynch-stieglitz1999.txt

cd ..

# Lynch-Stieglitz et al. 2006 South Atlantic LGM/Holocene Foraminferal Stable Isotope Data

folder=lynch-stieglitz2006_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2006/lynch-stieglitz2006.txt

cd ..

# Lynch-Stieglitz et al. 2009 Florida Current 8KYr Benthic Isotope Data

folder=lynch-stieglitz2009_Florida_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2009/lynch-stieglitz2009.txt

cd ..

# MARGO Project Last Glacial Maximum SST Reconstructions

folder=lakhani2022_MARGO_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/lakhani2022/Lakhani_2022_MARGO_format.xlsx
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/lakhani2022/lakhani2022-tropics-db.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s1.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s2.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s3.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s4.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s5.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s6.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s7.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s8.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s8.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/ngs-2008-09-00905-table-s9.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/readme-margo2009.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/supplementary-figs.pdf

cd ..

# MD952042 High Resolution Oxygen and Carbon Isotope Data

folder=shackleton2000_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m952042s-tab.txt

cd ..

# MD98-2152, Indian Ocean, 450,000 year long leaf wax dD record

folder=windler2020_Indian_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/windler2020/windler2020-dd.txt

cd ..

# Maastrichtian Foraminiferal Stable Isotope Data- Rio Grande Rise

folder=frank1999_Maastrichtian_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp390-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp548-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp357-tab.txt

cd ..

# Mackenzie Slope, Beaufort Sea 4,600 Year SST, SSS, and Sea Ice Reconstructions

folder=bringue2012_Beaufort_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/bringue2012/bringue2012.txt

cd ..

# Mahowald et al. 1999 Last Glacial Maximum and Late Holocene Eolian Fluxes

folder=mahowald1999_DIRTMAP
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version1/dirtmap_table1.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version1/dirtmap_table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version1/dirtmap_table2.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version1/dirtmap_table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/loess/dirtmap/version1/readme_dirtmap.txt

cd ..

# Maine, Coralline Red Algae, d18O Data from 1972 to 2001 CE

folder=halfar2008_Maine_red_algae
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/halfar2008/halfar2008_clathromorphum.txt

cd ..

# Makassar Strait - Single specimens of P. obliquiloculata d18O and d13C from 704-1851 AD

folder=khider2011_Makassar_obliquiloculata
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/khider2011/khider2011.txt

cd ..

# Makassar Strait 14,700 Year Leaf Wax Hydrogen Isotope Data

folder=tierney2012_Makassar_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2012/tierney2012-noaa.txt

cd ..

# Makassar Strait 14KYr Foraminiferal Mg/Ca SST and d18Osw

folder=linsley2010_Makassar_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-13ggc-bin-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-13ggc-mgcaSST-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-smak-SST-comp-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-70ggc-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-70ggc-bin-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-10ggc-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-10ggc-bin-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-13ggc-d18o-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-smak-d18Osw-comp-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-wpac-d18Osw-comp-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-wpac-smak-d18Osw-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/linsley2010/linsley2010-wpwp-SST-comp-noaa.txt

cd ..

# Makassar Strait 2000 Year Foraminiferal Mg/Ca and Stable Isotope Data

folder=newton2011_Makassar_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/newton2011/newton2011.txt

cd ..

# Makassar Strait 2300 Year Leaf Wax Hydrogen Isotope Data

folder=tierney2010_Makassar_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2010/tierney2010.txt

cd ..

# Makassar Strait and Celebes Sea d18O and Mg/Ca Data over the last 25 kyr

folder=fan2013_Makassar_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD982161.Fan.2018.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD982178.Fan.2018.txt

cd ..

# Malmgren et al. 2001 Comparison of Foraminifer SST Estimating Techniques

folder=malmgren2001_foram_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/iktf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/mat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/q-mode.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/ram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/simmax.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions/summary.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb-12predictions.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb_census.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/prb_census.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/readme_malmgren2001.txt

mkdir train_test_partitions
cd train_test_partitions
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss10a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss10a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss1a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss1a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss2a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss2a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss3a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss3a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss4a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss4a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss5a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss5a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss6a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss6a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss7a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss7a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss8a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss8a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss9a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ss9a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws10a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws10a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws1a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws1a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws2a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws2a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws3a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws3a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws4a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws4a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws5a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws5a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws6a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws6a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws7a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws7a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws8a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws8a.tst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws9a.trn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions/ws9a.tst
cd ..

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/train_test_partitions.zip

mkdir v2559_predictions
cd v2559_predictions
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/annd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/ann.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/iktf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/mat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/q-mode.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/ram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/simmax.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions/summary.txt
cd ..
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/malmgren2001/v2559_predictions.xls

cd ..

# Marchal and Curry 2008 Atlantic LGM Benthic Foram Stable Isotope Data

folder=marchal2008_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchal2008/marchal2008.txt

cd ..

# Marchitto 2006 Precise Sector Field ICP-MS Foram Multi-Elemental Ratios

folder=marchitto2006_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2006/marchitto2006.txt

cd ..

# Marchitto and deMenocal 2003 Laurentian Slope Benthic Foram Mg/Ca, d18O, and Temperature Estimates

folder=marchitto2003_Laurentian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2003/marchitto2003.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2003/marchitto2003.xls

cd ..

# Marchitto et al 1999 Millennial-scale Changes in N. Atlantic Circulation Data

folder=marchitto1998_Atlantic_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto1998/103ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto1998/core.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto1998/holocene-lgm.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto1998/readme_marchitto1998.txt

cd ..

# Marchitto et al 2000 Sclerochronology of Mollusk Arctica islandica

folder=marchitto2000b_Arctica_islandica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/315d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/asparticacid.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/compositesclero.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/distancetest.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/iceland.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/readme_marchitto2000b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000b/specimens.txt

cd ..

# Marchitto et al 2000 Zinc Concentrations in Benthic Foraminifera

folder=marchitto2000_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000/calib-indiv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000/calibration.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000/dissolution.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000/multicores.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2000/readme_marchitto2000.txt

cd ..

# Marchitto et al. 2007 Baja California 38KYr Radiocarbon Activity Reconstruction

folder=marchitto2007b_Baja_California_14C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2007b/marchitto2007b.txt

cd ..

# Marchitto et al. 2007 Cibicidoides pachyderma Mg/Ca Temperature Calibration

folder=marchitto2007_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2007/marchitto2007.txt

cd ..

# Marine Isotope Stage 5/Termination II Data

folder=oppo2001_MIS5
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp980o-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc8-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc37-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1059-tab.txt

cd ..

# Marshall Islands 3,000 Year Grain Size Data and Tropical Cyclone Reconstruction

folder=bramante2020_Marshal_Islands_Cyclone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bramante2020/bramante2020.txt

cd ..

# Martin et al. 2002 Atlantic/Pacific Quaternary Benthic Foraminifer Mg/Ca Paleotemperature Data

folder=martin2002_Benthic_Quaternary
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martin2002/martin2002.txt

cd ..

# Master Shell Growth Chronology from the Gulf of Maine 1762-2013 AD

folder=wanamaker2015_Maine_shell
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wanamaker2015/wanamaker2015-update2019.txt

cd ..

# Matsumoto and Lynch-Stieglitz 1999 Holocene/LGM Stable Isotopes

folder=matsumoto1999_Isotopes
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/matsumoto1999/matsumoto_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/matsumoto1999/readme_matsumoto1999.txt

cd ..

# Mattapoisett Marsh, Massachusetts 2000 Year Storm Event Data

folder=boldt2010_Massachusetts_Storm
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/boldt2010/mattapoisett2010event.txt

cd ..

# McClymont and Rosell-Melé 2005 Equatorial Pacific ODP 806/849 mid-Pleistocene Uk37 Data and SST Reconstruction

folder=mcclymont2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcclymont2005/mcclymont2005.txt

cd ..

# McClymont et al. 2005 South-east Atlantic mid-Pleistocene Alkenone Data and SST Reconstruction

folder=mcclymont2005b_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcclymont2005b/mcclymont2005b.txt

cd ..

# McGregor et al. 2007 NW African Margin 2500 Year Alkenone SST

folder=mcgregor2007_African_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgregor2007/mcgregor2007.txt

cd ..

# McKenna and Prell 2004 Globorotalia truncatulinoides (R) Mg/Ca Water Temperature Calibration

folder=mckenna2004_Calibration
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mckenna2004/mckenna2004.txt

cd ..

# McMurdo Region, Antarctica Miocene-Quaternary Carbonate Cement Isotope Data

folder=yang2019_Antarctica_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/antarctica/and-1biso.txt

cd ..

# McMurdo Sound, Antarctica, Eocene-Miocene Aragonite Cement Isotope Data

folder=yang2019b_Antarctica_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yang2019/yang2019.txt

cd ..

# Measurements of d18O on the Planktic Foraminifer Trilobatus sacculifer from different ocean basins

folder=wycech2018_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2018/wycech2018.txt

cd ..

# Medina-Elizalde and Lea 2005 Tropical Pacific ODP806B Pleistocene Mg/Ca Data and SST Estimates

folder=medina-elizalde2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/medina-elizalde2005/medina-elizalde2005.txt

cd ..

# Mediterranean Sea Little Ice Age Coccolithophore Data

folder=incarbona2010_Mediterranean_Coccolithophore
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/incarbona2010/incarbona2010.txt

cd ..

# Mediterranean/Adriatic 3,000 Year Biomarker Data and SST Reconstructions

folder=jalali2018_Mediterranean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2018/jalali2018kesc9-14.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2018/jalali2018sw104-nd-14.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2018/jalali2018css00-07.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2018/jalali2018inv12-15.txt

cd ..

# Micron-scale Intrashell Carbon Isotope and trace element data in the Cultured Planktic Foraminifer O. universa

folder=vetter2014_universa
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vetter2014/vetter2014.txt

cd ..

# Micron-scale Intrashell Oxygen Isotope Data in the Cultured Planktic Foraminifer O. universa

folder=vetter2013_universa
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vetter2013/vetter2013.txt

cd ..

# Mid-Atlantic 70,000 Year Dust Deposition Fluxes

folder=middleton2018_Atlantic_dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/middleton2018/middleton2018kn207-2-ggc3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/middleton2018/middleton2018kn207-2-ggc6.txt

cd ..

# Mid-Pleistocene South Atlantic Ocean Carbonate Chemistry and Circulation Reconstructions

folder=farmer2019_Atlantic_carbonate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/farmer2019/farmer2019-carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/farmer2019/farmer2019-end.txt

cd ..

# Mid-Pliocene Atlantic Deep-Sea Ostracode Mg/Ca Data and Sea Level Reconstruction

folder=dwyer2009_Atlantic_Ostracode
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp607-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp925-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp926-tab.txt

cd ..

# Mid-Pliocene Carbon and Nitrogen Data from the Bengal Fan

folder=galy2018_Bengal_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/galy2018/galy2018.txt

cd ..

# Mid-Pliocene Leaf Wax Data from the Bengal Fan

folder=feakins2018_Bengal_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2018/feakins2018.txt

cd ..

# Middle Caicos Blue Hole 1,500 Year Coarse Fraction and Paleohurricane Event Frequency Data

folder=wallace2021b_Caicos_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2021b/caicos2021coarse.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wallace2021b/caicos2021freq.txt

cd ..

# Middle Eocene Climatic Optimum Stable Isotope Data

folder=bohaty2009_Eocene_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bohaty2009/bohaty2009.txt

cd ..

# Millennial-Scale Glacial Sea Level Reconstruction

folder=arz2007_Glacial_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb5844-2-tab.txt

cd ..

# Miocene Benthic Stable Isotope Data

folder=andersson2003_Atlantic_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp982an-tab.txt

cd ..

# Miocene Mediterranean Foraminiferal Abundance and Isotope Data

folder=turco2001_Mediterranean_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/montegib-tab.txt

cd ..

# Miocene-Pliocene Biogenic Bloom Atlantic Paleoproductivity Data

folder=diester-haass2002_Atlantic_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1088b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp925b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp982b-tab.txt

cd ..

# Mississippi Delta Early Holocene Carbon and Nitrogen Isotope Data

folder=tornqvist2020_Mississippi_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tornqvist2020/mississippi-delta2020c-n.txt

cd ..

# Mix et al 1999 LGM SST Estimates

folder=mix1999_LGM_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/coretop_foram_26spp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/coretop_sstmean_residuals.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/downcore_foram_26spp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/fmatrix_foram_26spp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/lgm_foram_26spp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/lgm_osu_climap_anom.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/lgm_sstmean.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mix1999/readme_mix1999.txt

cd ..

# Modern Bay of Bengal Foraminiferal Mg/Ca and d18O Data

folder=fritz-endres2018_Bengal_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/fritz-endres2018/fritz-endres2018.txt

cd ..

# Morley and Heusser 1997 Orbital Forcing in East Asian Monsoon Climates Data

folder=morley1997_East_Asian_Monsoon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/morley1997/rc14-99.cry
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/morley1997/rc14-99.dav
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/morley1997/rc14-99.tem
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/morley1997/readme_morley1997.txt

cd ..

# Mudelsee and Raymo 2005 Pliocene Northern Hemisphere Glaciation Marine Proxy Data

folder=mudelsee2005_Pliocene_Glaciation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/1143.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/502.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/607b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/610.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/662.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/849.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/851gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/851gt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/851ns.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/982.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mudelsee2005/readme-mudelsee2005.txt

cd ..

# Mullet Pond, Florida 4500 Year Storm Deposit Data

folder=lane2011_Florida_storm
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lane2011/lane2011.txt

cd ..

# Murray Canyon MD03-2611 Holocene Foraminifera Stable Isotope Data

folder=moros2009_Murray_Canyon_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moros2009/moros2009.txt

cd ..

# Mytilus californianus Skeletal Chemistry Data From Cabrillo National Monument, San Diego, CA

folder=ford2010_California_shells
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L13.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L01.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L05.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U07.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U11.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L09.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U18.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-sal-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U13.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U14.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L15.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L16.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L20.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3L10.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U04.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U20.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2010/ford2010-3U02.txt

cd ..

# NICOPP Global Ocean Sediment Nitrogen Isotope Database

folder=tesdal2013_NICOPP_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/nicopp/nicopp-coretop-data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/nicopp/nicopp-downcore-data.txt

cd ..

# Nares Strait HLY03-05GC Holocene Sediment Data

folder=jennings2011_Nares_Strait_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jennings2011/jennings2011.txt

cd ..

# Navarin Canyon, Bering Sea Diatom, Geochemistry, Grainsize, Nannofossils and Mineralogy Data during Marine Isotope Stages 10 to 12

folder=caissie2016_Bering_MIS10-12
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caissie2016/caissie2016-geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caissie2016/caissie2016-grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caissie2016/caissie2016-mineral.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caissie2016/caissie2016-diat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caissie2016/caissie2016-nannos.txt

cd ..

# Neodymium Isotope Data from the Western Flank of the Sicily Channel since the Last Deglaciation (13,900 BP)

folder=trias2023_Sicily_Neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/trias2023/trias2023-ndt-6-2016.txt

cd ..

# New Zealand and Australia Pacific Region d18O and d13C data for the last 30,000 years

folder=sikes2016_Australia_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-79jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-41jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-83tcjpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-z2112.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-h214.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-gc07.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-125jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2016/sikes2016-87tcjpc.txt

cd ..

# Niger Delta Mg/Ca Data over the Last 21 Kyr

folder=schmidt2017_Niger_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2017/schmidt2017-fan17.txt

cd ..

# Niger Delta Stable Isotope and Geochemistry Data during the Last Deglaciation

folder=parker2016_Niger_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/parker2016/parker2016-fan17.txt

cd ..

# Nile River Pro-Delta 10,000 Year Biomarker Data and SST Reconstructions

folder=jalali2017_Nile_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2017/jalali2017md04-2726.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jalali2017/jalali2017ms27pt.txt

cd ..

# Nilsen et al. 2003 Eocene/Oligocene Boundary Paleoproductivity Data

folder=nilsen2003_Eocene_Paleoproductivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nilsen2003/nilsen2003.txt

cd ..

# Nitrogen and Carbon Isotope Data from the Central Arctic Ocean

folder=schubert2001_Arctic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2170-4-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2178-4-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2185-4-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps2163-1-tab.txt

cd ..

# Nordic Seas Paleoceanography and paleoclimate during the last glacial cycles

folder=fronval1997_Nordic_paleoclimate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hm94-34-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp644-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hm71-19-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hm57-7-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hm52-43-tab.txt

cd ..

# Nordic Seas ice rafting during the Pliocene and Pleistocene

folder=jansen2000_Nordic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp907-tab.txt

cd ..

# North African Dust Deposition Flux Data over the last 67,000 Years

folder=kinsley2021_African_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc49-dustflux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc68-dustflux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-658c-grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc37-grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc68-grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc49-grainsize.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-658c-dustflux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kinsley2021/kinsley2021-gc37-dustflux.txt

cd ..

# North African Dust Deposition Fluxes Over the last 20,000 years

folder=mcgee2013_African_dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc66-flux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc66-grain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc68-flux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc68-grain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc27-flux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc27-grain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc37-flux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc37-grain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc49-flux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcgee2013/mcgee2013-gc49-grain.txt

cd ..

# North Alaska Continental Margin Late Pleistocene Physical Properties Data

folder=nam2015_Alaska_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4b19.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4c01.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4c02.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4c03.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4c04.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4b02.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nam2015/nam2015-4b03.txt

cd ..

# North Atlantic (DSDP 607) Geochemistry Data and BWT Reconstruction during the Mid-Pleistocene Transition

folder=ford2016_Atlantic_Geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2016/ford2016.txt

cd ..

# North Atlantic (ODP 984) Stable Isotope, Sediment and Population Abundance Data during the MIS 6 Glaciation and MIS 5 Interglacial

folder=mokeddem2016_Atlantic_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mokeddem2016/mokeddem2016-odp984.txt

cd ..

# North Atlantic 2000 Year Relative Sea Level Data

folder=kemp2011_Atlantic_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/kemp2011rsl.txt

cd ..

# North Atlantic 3.2MYr Stable Isotope and Physical Properties Data

folder=hodell2016_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1308bulk18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1308cib-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1304cib-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1304ngr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016odp982d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1308age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2016/hodell2016u1308benth-bulk.txt

cd ..

# North Atlantic 9,500 Year Alkenone Sea Surface Temperature Reconstructions

folder=sicre2021_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2021/sicre2021md99-2275sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2021/sicre2021md95-2015sst.txt

cd ..

# North Atlantic Benthic Foraminifera Stable Isotope Data Over the Past 21,000 Years

folder=thornalley2010b_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010b/thornalley2010b-15-4p-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010b/thornalley2010b-17-5p-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010b/thornalley2010b-12-1k-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010b/thornalley2010b-10-1p-benth.txt

cd ..

# North Atlantic Core GGC5 231Pa/230Th Meridional Circulation Data

folder=mcmanus2004_Atlantic_AMOC
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o326-gc5-tab.txt

cd ..

# North Atlantic DSDP545 Mid-Cretaceous Biomarker SST and Carbon Model Data

folder=mcanena2013_Atlantic_Cretaceous_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcanena2013/mcanena2013geochem.txt

cd ..

# North Atlantic DSDP607 Plio-Pleistocene Alkenone SST Reconstructions

folder=lawrence2010_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2010/lawrence2010.txt

cd ..

# North Atlantic DSDP610A Pliocene Mg/Ca Sea Surface Temperature Reconstruction

folder=karas2020_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2020/karas2020.txt

cd ..

# North Atlantic Deep Water Nd isotope and Rare-Earth Element Data since the Last Glacial Maximum

folder=zhao2019_Atlantic_RRE
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2019-nc/zhao2019-elements.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2019-nc/zhao2019-nd.txt

cd ..

# North Atlantic Deglacial Isotope Data and Reconstructions of Salinity and SST

folder=thornalley2011_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-12-1k-plank-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-15-4p-plank-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-12-1k-benth-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-10-1p-plank-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-17-5p-benth-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-17-5p-plank-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-15-4p-benth-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2011/thornalley2011-10-1p-benth-noaa.txt

cd ..

# North Atlantic Globorotalia truncatulinoides Data During the Mid-Pleistocene

folder=kaiser2019_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2019/kaiser2019-odp925.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2019/kaiser2019-dsdp552.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2019/kaiser2019-dsdp607.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2019/kaiser2019-odp1058.txt

cd ..

# North Atlantic Heinrich Layer 1 Geochemical and Stable Isotope Data

folder=hodell2017_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308axrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308bxrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308xrd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308cxrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308dens.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017u1308ctird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2017/hodell2017odp976iso.txt

cd ..

# North Atlantic Holocene Foraminiferal Stable Isotope Data

folder=keigwin2018_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018/keigwin2018knr198ggc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018/keigwin2018en540ggc2nutt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2018/keigwin2018en540ggc2pachy.txt

cd ..

# North Atlantic Holocene Sortable Silt Grain Size Data

folder=hoogakker2011_Atlantic_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoogakker2011/hoogakker2011.txt

cd ..

# North Atlantic IODP U1308 Middle Pleistocene Heinrich Events Data

folder=hodell2008_Atlantic_Henrich
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hodell2008/hodell2008.txt

cd ..

# North Atlantic Intermediate Waters in the late Pliocene and early Pleistocene

folder=mcintyre1999_Atlantic_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp981-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp983-tab.txt

cd ..

# North Atlantic Intermediate water carbon isotopes during the Pleistocene

folder=demenocal1992_Atlantic_carbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp502-tab.txt

cd ..

# North Atlantic Mollusc Isotopes

folder=weidman1994_Atlantic_mollusc
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/nantuck-tab.txt

cd ..

# North Atlantic Nitrogen and Oxygen Isotope and Mineralogy Data from Last Glacial Period

folder=straub2013_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/straub2013-poc/straub2013-poc.txt

cd ..

# North Atlantic ODP Leg 162 Quaternary Sediment Spectral Reflectance Data

folder=ortiz1999b_Atlantic_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999b/ortiz1999b.txt

cd ..

# North Atlantic ODP982 Pliocene Alkenone SST Reconstruction

folder=lawrence2009_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp982-l-tab.txt

cd ..

# North Atlantic ODP984C 25KYr Grain Size and Stable Isotope Data

folder=praetorius2008_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp984c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/odp984c-sytr-tab.txt

cd ..

# North Atlantic Ocean (MD99-2251) Mg/Ca Sea Surface Temperature Reconstructions over the last 12,000 years

folder=farmer2008_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD992251.Farmer.2008.txt

cd ..

# North Atlantic Ocean (ODP 646) Leaf Wax d2H Data during the last six Interglacials

folder=cluett2020_Atlantic_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/cluett2020/cluett2020-odp646.lpd

cd ..

# North Atlantic Ocean Western Boundary Current Globorotalia truncatulinoides Coiling Ratio Data for the past 700 kyr

folder=billups2020_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020-pp/billups2020-pp-1058.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020-pp/billups2020-pp-1063.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020-pp/billups2020-pp-1059.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2020-pp/billups2020-pp-1056.txt

cd ..

# North Atlantic Oxygen Isotope, N. pachyderma and Silt Data over the last 3000 years

folder=moffa-sanchez2017_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moffa-sanchez2017/moffa-sanchez2017-rapid35.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moffa-sanchez2017/moffa-sanchez2017-rapid21.txt

cd ..

# North Atlantic Plio-Pleistocene IRD and Isotope Data

folder=mcintyre2001_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/mis64-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/mis70-tab.txt

cd ..

# North Atlantic RAPiD Deglacial Paired Mg/Ca-d18O and d18Osw-SST Reconstructions

folder=thornalley2010_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010/thornalley2010.txt

cd ..

# North Atlantic SST and Salinity Reconstructions over the Past Millennium

folder=moffa-sanchez2014_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moffa-sanchez2014-ngs/moffa-sanchez2014-ngs-35-25b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moffa-sanchez2014-ngs/moffa-sanchez2014-ngs-17-5p.txt

cd ..

# North Atlantic SST, Foraminifera, Isotope and Ice-Rafted Debris Data during the last interglacial and glacial

folder=sanchezgoni2013_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md95-2042-ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md04-2845-isot.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md95-2042-npachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md04-2845-sstfor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md99-2331-sstuk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md99-2331-sstfor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md99-2331-ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md99-2331-npachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md04-2845-ird.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2013/sanchezgoni2013-md04-2845-npachy.txt

cd ..

# North Atlantic Stable Isotope and Nd Isotope Data during the Late Campanian to Maastrictian

folder=macleod2019_Atlantic_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-iodp1403-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp550-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp551-stable.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp551-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-odp1050-stable.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-odp1050-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-odp1276-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-iodp1403-stable.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp549-stable.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp549-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/macleod2019/macleod2019-dsdp550-stable.txt

cd ..

# North Atlantic Uk'37 data and SST reconstruction from the Pliocene

folder=lawrence2017_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2017/lawrence2017-609b.txt

cd ..

# North Atlantic ice rafting and deep water formation 70,000-130,000 years ago

folder=chapman1999_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/neap18k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tr16331p-tab.txt

cd ..

# North Atlantic ice rafting during the last glacial cycle

folder=bond1995_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp-609-tab.txt

cd ..

# North Atlantic intermediate-deep water circulation during the past 1 Ma

folder=flower1999_Atlantic_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp980-tab.txt

cd ..

# North Atlantic millennial scale changes in climate and circulation

folder=keigwin1994_Atlantic_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gpc5-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/knr31gc9-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gpc9-tab.txt

cd ..

# North Iceland Shelf (MD99-2269) Holocene Coccolith Abundance Data

folder=giraudeau2004_Iceland_Coccolith
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m99-2269-tab.txt

cd ..

# North Iceland Shelf (MD99-2269) Holocene Dinoflagellate Assemblage Data

folder=solignac2006_Iceland_Dinoflagellate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m992269s-tab.txt

cd ..

# North Iceland Shelf (MD99-2269) Holocene Quartz and Grain Size Data

folder=moros2006_Iceland_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moros2006/moros2006.txt

cd ..

# North Iceland Shelf Carbonate and Foraminiferal Oxygen Isotope Data.

folder=castaneda2004_Iceland_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-331-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-332-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-330-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-324-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-327-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-317-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-321-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-328-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/b997-329-tab.txt

cd ..

# North Iceland Shelf Holocene Diatom August SST Reconstruction

folder=justwan2008_Iceland_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/justwan2008/justwan2008.txt

cd ..

# North Icelandic Shelf 1350 Year Molusc Radiocarbon Data

folder=wanamaker2012_Iceland_mollusc
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wanamaker2012/wanamaker2012.txt

cd ..

# North Icelandic Shelf Annually Resolved d18O Data Over the Last Millennium

folder=reynolds2016_Iceland_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reynolds2016/reynolds2016.txt

cd ..

# North Icelandic Shelf Arctica islandica Shell Measurement 1357 Year Record

folder=butler2013_Iceland_mollusc
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-stats-rcs-m.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-stats-rcs-h.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-stats-ne.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-raw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-rcs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-lifetimes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-seg-length.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/butler2013/butler2013-chron.txt

cd ..

# North Icelandic Shelf Holocene Alkenone Sea Surface Temperature

folder=bendle2007_Iceland_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bendle2007/bendle2007.txt

cd ..

# North Islandic Shelf June-August SST Reconstruction covering the last 2000 years

folder=jiang2005_Iceland_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jiang2005/jiang2005-md992275.txt

cd ..

# North Pacific Holocene Alkenone Sea Surface Temperature Reconstruction

folder=isono2009_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/isono2009/isono2009.txt

cd ..

# North Pacific Ocean Geochemistry and Sea Surface Temperature Reconstructions during the last 27 kyr

folder=minoshima2007_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/PC6.Minoshima.2007.txt

cd ..

# North Pacific Temperature and Productivity Reconstructions and Diatom Species Data

folder=lopes2018_Pacific_diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2018/lopes2018-w8709-13pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2018/lopes2018-diatoms.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2018/lopes2018-md02-2499.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2018/lopes2018-odp1019.txt

cd ..

# North Pacific Thorium Isotopes over the last 500,000 years

folder=costa2023_Pacific_thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/costa2023/costa2023-th.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/costa2023/costa2023-sedrate95w-grid.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/costa2023/costa2023-sedrate-grid.txt

cd ..

# North Western Mediterranean Sea (Gulf of Lion) Sea Surface Temperature Reconstruction during the Common Era

folder=sicre2016_Mediterranean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2016/sicre2016-sst.txt

cd ..

# North-Atlantic Sea Surface Temperature Reconstruction

folder=bard2002_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ibermarg-tab.txt

cd ..

# Northeast African Precipitation and Vegetation Biomarker Data over the last 4.5 million years

folder=lupien2023_Africa_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/lupien2023/lupien2023-iso.txt

cd ..

# Northeast Atlantic Foramifinferal Abundance, d15N and Sea Water Temperature Data during the last 10ka

folder=spooner2020_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-rapid-17-5p.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc14-a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc14-b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc16-b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc16-a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc20-b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spooner2020/spooner2020-mc25-a.txt

cd ..

# Northeast Atlantic MD95-2006 MIS3 Faunal SST, IRD, and Isotope Data

folder=dickson2008_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m95-2006-tab.txt

cd ..

# Northeast Atlantic SU81-18 Deglacial 231Pa/230Th Data

folder=gherardi2005_Atlantic_Pa-Th
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/s81-18-g-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/s81-18-g-sytr-tab.txt

cd ..

# Northeast Pacific 100 Year Tree Ring/Geoduck SST Reconstructions

folder=black2009_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sclerochronology/east_pacific/nepacific2009sst.txt

cd ..

# Northeast Pacific 31,000 Year Fossil Diatom Assemblage Data

folder=lopes2015_Pacific_diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2015/lopes2015modern.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2015/lopes2015w8709a-13pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2015/lopes2015md02-1499.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lopes2015/lopes2015odp1019.txt

cd ..

# Northeastern Atlantic Dinoflagellate Assemblage Sea Surface Temperature Reconstructions during the last 10,000 Years

folder=solignac_2008_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/HM0313325.Solignac.2008.txt

cd ..

# Northeastern Caribbean Late Holocene SST Reconstruction

folder=nyberg2002_Caribbean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/prb12-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/prp12-tab.txt

cd ..

# Northeastern Pacific deep water circulation during the late Pleistocene

folder=stott2000_Pacific_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950405-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950402-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950408-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950409-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ahf16832-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950404-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ew950403-tab.txt

cd ..

# Northern Arabian Sea Oxygen Minimum Zone(OMZ) during the last 225,000 years

folder=kienast2000_Arabian_OMZ
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17924-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17940-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/179642-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/18284-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17961-2-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/niop458-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17954-2-tab.txt

cd ..

# Northern California Continental Slope Biogenic sediment geochemistry and organic matter isotope data during the last 7700 years

folder=addison2017_California_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/addison2017/addison2017.txt

cd ..

# Northern Gulf of Mexico Geochemistry, Lithology and Radiogenic Isotope Data over the last 3 Ma

folder=portier2020_Gulf_of_Mexico_iostope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/portier2020/portier2020-odp625b.txt

cd ..

# Northern Hemisphere Benthic Foraminiferal Trace Metals and Stable Isotopes Data from the late Pliocene and the Holocene to the Last Glacial Maximum

folder=woodard2014_Northern_Hemisphere_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/woodard2014/woodard2014-607.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/woodard2014/woodard2014-1208-hol-lgm.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/woodard2014/woodard2014-1208-si.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/woodard2014/woodard2014-chn82-63.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/woodard2014/woodard2014-1208-tm.txt

cd ..

# Northern Indian Ocean SST Reconstruction and Oxygen Isotope, Ba/Ca and Geochemistry Data for last 31,000 Years

folder=saraswat2013_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/saraswat2013/saraswat2013-sk237gc04.txt

cd ..

# Northern North Atlantic Holocene Summer Sea-Surface Temperatures Reconstruction

folder=jiang2015_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jiang2015/jiang2015-md99-2275-noaa.txt

cd ..

# Northern North Sea High-Resolution 8200BP Planktonic Foraminifer Data

folder=klitgaard-kristensen1998_North_Sea_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/28-03-tab.txt

cd ..

# Northern Okinawa Trough Geochemical, Sedimentary and Oxygen Isotope Data during the last 24.3 ka

folder=chang2015_Okinawa_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/chang2015/chang2015-sed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/chang2015/chang2015-d18o-gs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/chang2015/chang2015-c-n.txt

cd ..

# Northern Patagonia 1750 Year SST and Terrestrial Input Data

folder=sepulveda2009_Patagonia_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sepulveda2009/sepulveda2009.txt

cd ..

# Northern Red Sea (GeoB5836-2) Alkenone SST and High Resolution Sediment Data

folder=arz2006_Red_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arz2006/arz2006.txt

cd ..

# Northwest Africa 120KYr Continental Humidity Index Reconstruction

folder=tjallingii2008_Africa_humidity
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tjallingii2008/tjallingii2008.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tjallingii2008/tjallingii2008.xls

cd ..

# Northwest African Margin Calcium Carbonate, Organic Carbon and Opal over the last 20,000 Years

folder=bradtmiller2015_Africa_opal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bradtmiller2015/bradtmiller2015-bio-gc27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bradtmiller2015/bradtmiller2015-bio-gc68.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bradtmiller2015/bradtmiller2015-bio-gc49.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bradtmiller2015/bradtmiller2015-bio-gc37.txt

cd ..

# Northwest Atlantic 115 Year Coralline Algae Growth Increment Data

folder=halfar2011b_Atlantic_algae
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/halfar2011b/halfar2011b.txt

cd ..

# Northwest Atlantic 116 Year Coralline Algae Mg/Ca Data

folder=gamboa2010_Atlantic_algae
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/gamboa2010/gamboa2010.txt

cd ..

# Northwest Atlantic Sediment Data Across the Marine Isotope Stage 5a/4 Boundary

folder=thornalley2013_Atlantic_MIS4
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-ss-norm.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1059-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1060.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1055.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1059.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1059-jpc37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1063.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-ss-normholo.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1057.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2013/thornalley2013-odp1061.txt

cd ..

# Northwest Atlantic Slope Holocene Alkenone SST Data

folder=sachs2007_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o326gc26-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o326gc30-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/c798gc19-tab.txt

cd ..

# Northwest Atlantic and Indo-Pacific Southern Ocean deep-sea coral U/Th, 14C, and D47 data for the past 35,000 years

folder=hines2019_Atlantic_coral
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2019/hines2019-t2-delta47.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2019/hines2019-t1-delta47.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2019/hines2019-t3-modern.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2019/hines2019-t1-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2019/hines2019-t2-age.txt

cd ..

# Northwest Iceland Holocene Biomarker Data and Climate Reconstructions

folder=moossen2015_Iceland_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moossen2015/moossen2015dd-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moossen2015/moossen2015mat-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moossen2015/moossen2015ph-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moossen2015/moossen2015sst-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/moossen2015/moossen2015acl-noaa.txt

cd ..

# Northwest Pacific ODP1208 Plio-Pleistocene Stable Isotope Data

folder=venti2012_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/venti2012/venti2012.txt

cd ..

# Northwest Pacific ODP882 Plio-Pleistocene Lithic and Diatom Isotope Data

folder=bailey2011_Pacific_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bailey2011/bailey2011.txt

cd ..

# Northwest Pacific Ocean Eolian Flux Data since 23 Ma

folder=tang2022_Pacific_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tang2022/tang2022-1208eolianflux.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tang2022/tang2022-296isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tang2022/tang2022-296eolianflux.txt

cd ..

# Northwest Pacific Productivity Data During the Last Deglaciation

folder=lam2013_Pacific_Productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lam2013/lam2013-ggc37-sed.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lam2013/lam2013-44pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lam2013/lam2013-ggc37-foram.txt

cd ..

# Northwest Pacific RC10-196 Deglacial Biogenic Flux Data

folder=kohfeld2011_Pacific_bio
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kohfeld2011/kohfeld2011.txt

cd ..

# Northwest Pacific Stable Isotope Data and SSS/SST Reconstructions

folder=oba2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch8404ob-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/k943_lm8-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/k90-9_21-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md1-2421-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/kt90-9_5-tab.txt

cd ..

# Northwestern Atlantic Foraminifera d13C Data over the last Four Millennia

folder=mellon2019_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mellon2019/mellon2019-msm46_mc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mellon2019/mellon2019-oce326_mc29d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mellon2019/mellon2019-oce400_mc44.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mellon2019/mellon2019-knr158_11mc_13ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mellon2019/mellon2019-msm46_mc2.txt

cd ..

# Northwestern Australia Mio-Pliocene Polycyclic Aromatic Hydrocarbon (PAH) Data

folder=karp2020_Australia_PAH
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karp2020/karp2020-odp763a.txt

cd ..

# Northwestern Pacific 144KYr Alkenone Sea Surface Temperature Estimates.

folder=yamamoto2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m2421-y-tab.txt

cd ..

# Northwestern Pacific Core-top Nd Isotope Data, Deglaciation Records of Nd Isotopes and SST Reconstruction

folder=horikawa2021_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-md01-2420-mgca-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-kh11-7shy2mc-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-coretop-87sr86sr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-kh11-7shy3mc-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-coretop-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-kh99-3es-nd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-kh99-3es-carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/horikawa2021/horikawa2021-md01-2420-nd.txt

cd ..

# Northwestern Subtropical Atlantic G. truncatulinoides Coiling Ratio Data over the past 280 kyr

folder=billups2016_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2016/billups2016-37pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2016/billups2016-odp1059.txt

cd ..

# Norwegian Sea Diatom SST Reconstruction for the last 2,000 Years

folder=berner2011_Norwegian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/berner2011/berner2011.txt

cd ..

# Norwegian Sea P1-003MC/SC 1000 Year Planktonic d18O Data

folder=sejrup2010_Norwegian_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sejrup2010/sejrup2010.txt

cd ..

# Nyberg et al. 2002 Northeastern Caribbean Late Holocene SST Reconstruction

folder=nyberg2002_Caribbean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nyberg2002/nyberg2002.txt

cd ..

# Nyberg et al. 2007 Estimated Number of Major Atlantic Hurricanes and Vertical Windshear

folder=nyberg2007_Caribbean_hurricane
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/coral/caribbean/atlantic-hurricanes2007.txt

cd ..

# Nürnberg and Groeneveld 2006 Tasman Sea ODP1172A d18O, Mg/Ca, and SST Reconstruction

folder=nuernberg2006_Tasman_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nuernberg2006/nuernberg2006.txt

cd ..

# Nürnberg et al. 2004 Sea of Okhotsk Paleoproductivity and Terrigenous Flux Data

folder=nuernberg2004_Okhotsk_Paleoproductivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nuernberg2004/nuernberg2004.txt

cd ..

# Nürnberg et al. 2004 Tasmanian Gateway ODP Leg 189 Sediment Data and SST Reconstructions

folder=nuernberg2004b_Tasman_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nuernberg2004b/nuernberg2004b.txt

cd ..

# ODP 980 Holocene Benthic Foraminifera Isotope Data

folder=oppo2003_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/od980-o3-tab.txt

cd ..

# ODP Site 1059 MIS 5 Pollen and Isotopic data

folder=heusser2003_MIS5_pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1059h-tab.txt

cd ..

# ODP1060 MIS 3 Western Boundary Undercurrent Flow Vigour Data

folder=hoogakker2007_MIS3_Current
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1060-tab.txt

cd ..

# ODP1094 South Atlantic Diatom Carbon and Nitrogen Isotope Data

folder=schneider-mor2005_Atlantic_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1094-tab.txt

cd ..

# ODP980 Isotope and IRD Data

folder=mcmanus1999_Atlantic_IRD
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp980m-tab.txt

cd ..

# OMEX2 North Atlantic Seasonal Sediment Trap Foraminifera Data

folder=chapman2010_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/chapman2010/chapman2010.txt

cd ..

# Oba et al. 2004 Northwest Pacific Stable Isotope Data and SSS/SST Reconstructions

folder=oba2004_Pacific_SST
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oba2004/oba2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oba2004/oba2004.xls

cd ..

# Oba et al. 2006 NW Pacific MD01-2421 Glacial/Interglacial d18O and SST Reconstruction

folder=oba2006_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oba2006/oba2006.txt

cd ..

# Offshore Oregon PC Y72-11-1P Pollen Abundance Data during the last 220,000 years

folder=heusser1979_Oregon_pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/heusser1979/heusser1979-y72-11-1p-pollen.txt

cd ..

# Ogasawara Coral Winter Sr/Ca and U/Ca Data and PDO Reconstruction

folder=felis2010_Ogasawara_Coral
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/coral/west_pacific/felis2010_noaa.txt

cd ..

# Okhotsk Sea MD01-2412 Alkenone Data and SST Reconstruction

folder=harada2006_Okhotsk_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md1-2412-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/syntrace/t21data/md1-2412-sytr-tab.txt

cd ..

# Okinawa Trough Oxygen Isotope and Mg/Ca-SST Data

folder=sun2005_Okinawa_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/a7-tab.txt

cd ..

# Oppo and Sun 2005 South China Sea d18O and Mg/Ca Data and SST Reconstruction

folder=oppo2005_South_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2005/oppo2005.txt

cd ..

# Oppo et al 1996 NADW Production, Termination II

folder=oppo1996_NADW_MIS6-5
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-14jpc_iso_wue.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-15jpc_wue_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-16jpc_wue_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_faunal_no_p-d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_faunal_w_p-d.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_np-r_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_simple_census.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_sst_word.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-8jpc_wue_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/ew9302-9jpc_wue_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc08_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc09_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc12_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc14_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc15_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/jpc16_mst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo1996/readme_oppo1996.txt

cd ..

# Oppo et al. 2003 Sulu Sea Core MD97-2141 Foraminiferal Oxygen Isotope Data

folder=oppo2003b_Sulu_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2003b/oppo2003b.txt

cd ..

# Oppo et al. 2006 North Atlantic ODP980 MIS5 Sediment Data

folder=oppo2006_Atlantic_Sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2006/oppo2006.txt

cd ..

# Oppo et al. 2009 Makassar Strait 2,000 Year SST and d18Osw

folder=oppo2009_Makassar_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/oppo2009/oppo2009.txt

cd ..

# Orbitally Tuned Marine Isotope Sequences, ODP Site 982

folder=hodell2001_Mediterranean_isotopes
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp982dh-tab.txt

cd ..

# Orca Basin MD02-2550 Deglacial Mg/Ca SST Data

folder=williams2010_Orca_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams2010/williams2010.txt

cd ..

# Orca Basin MD02-2550 Deglacial Paired Mg/Ca, d18O, and d18Osw

folder=williams2012_Orca_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams2012/williams2012.txt

cd ..

# Orca Basin, Gulf of Mexico MD02-2551 d18O and Mg/Ca Data During the Last Glaciation

folder=hill2006_Orca_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md2-2551-tab.txt

cd ..

# Orca Basin, Gulf of Mexico Stable Isotope, Trace Metal and Geochemistry Data with SST and SSS Reconstructions over the last 17 ka

folder=vetter2016_Orca_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vetter2016/vetter2016.txt

cd ..

# Ortiz and Mix 1992 California Current Planktonic Foraminifera Trap Data

folder=ortiz1992_California_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1992/readme_ortiz1992.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1992/table1_mt_sed_trap_forams.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1992/table1_mt_sed_trap_forams.txt

cd ..

# Ortiz et al 1995 California Current Planktonic Foraminifera Tow Data

folder=ortiz1995_California_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/readme_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table1_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table1_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table2_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table2_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table3_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table3_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table4_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table4_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table5_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table5_ortiz1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table6_ortiz1995.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1995/table6_ortiz1995.txt

cd ..

# Ortiz et al 1997 California Current LGM Reconstruction

folder=ortiz1997b_California_Current
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/readme_ortiz1997b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table1_site_locations.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table1_site_locations.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table2_carb_strat.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table2_carb_strat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table3_ams_dates.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table3_ams_dates.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table4_spp_data.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table4_spp_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table5_sst_iso_table.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1997b/table5_sst_iso_table.txt

cd ..

# Ortiz et al 1999 North Atlantic Spectral Reflectance Data

folder=ortiz1999_Atlantic_Reflectance
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/980-1_carbmod_corpac_age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/980-1_corpac_age_0-4659.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/982_carbmod_ship_age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/983_carbmod_ship_age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/984_carbmod_ship_age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/ortiz1999_figs.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/ortiz1999_tables.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/readme_ortiz1999.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/refl980.splice.age.tab
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/refl981.splice.age.tab
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/refl982.splice.age.tab
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/refl983.splice.age.tab
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz1999/refl984.splice.age.tab

cd ..

# Ortiz et al. 2009 Chukchi Sea Holocene DSR/qXRD Mineralogy Data

folder=ortiz2009_Chukchi_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ortiz2009/ortiz2009.txt

cd ..

# Osmium isotope variations across the K-Pg boundary in the Indian Ocean and Southern Ocean

folder=zaiss2014_Indian_Osmium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zaiss2014/zaiss2014-odp761.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zaiss2014/zaiss2014-odp738.txt

cd ..

# Oxygen Isotope Data Within the Indian Sector of the Southern Ocean since the Last Glacial Maximum

folder=michel2016_Southern_Ocean_Oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/michel2016/michel2016.txt

cd ..

# Oxygen and Carbon Isotopic Data of Core MD952042

folder=cayre1999_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md952042-tab.txt

cd ..

# Oxygen isotope and sea surface temperature records from Site 1125 in the southwest Pacific, 0.13-2.8 Ma

folder=peterson2019_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peterson2019/peterson2019-odp1125-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/peterson2019/peterson2019-odp1125-d18o.txt

cd ..

# Oxygen isotopes during the late Quaternary

folder=imbrie1984_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v28-238-tab.txt

cd ..

# Pacific Glacial Foraminiferal Radiocarbon and Stable Isotope Data

folder=keigwin2015_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015knr73-4pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015plds-7g.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015rndb-11pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015rndb-13.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015vntr01-10pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015knr73-6pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/keigwin2015/keigwin2015ffc15.txt

cd ..

# Pacific Ocean Geochemical and Foraminiferal Cleaning Procedure Data at 1Mya, 20Kya and 1999-2009 CE

folder=cook2024_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/cook2024/cook2024-elt_25-11.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/cook2024/cook2024-spr0901-04bc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/cook2024/cook2024-odp_1017e.txt

cd ..

# Pacific Pleistocene Primary Production Data

folder=degaridel-thoron2001_Pacific_Production
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md972141-tab.txt

cd ..

# Pacific Warm Pool MD98-2181 Late Pleistocene Foraminiferal SST Data

folder=stott2002_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m2181s08-tab.txt

cd ..

# Pacific and Atlantic Ocean d13C and d18O Data covering the last 23ka

folder=sikes2017_Pacific_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/sikes2017/sikes2017-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/sikes2017/sikes2017-d13c.txt

cd ..

# Pagani et al. 2005 Paleogene Atmospheric Carbon Dioxide Reconstruction

folder=pagani2005_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/pagani2005co2.txt

cd ..

# Pahnke et al. 2003 340 KYr Southwest Pacific Mg/Ca and SST Reconstruction

folder=pahnke2003_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pahnke2003/pahnke2003.txt

cd ..

# Paleo-pCO2 Database 60 Million Year Boron Isotope and CO2 Data

folder=Paleo-pCO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_pearson_2000.txt


# Paleo-pCO2 Database Atlantic 30,000 Year Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_henehan_2013.txt


# Paleo-pCO2 Database Atlantic ODP925 40 Million Year Alkenone and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/phytoplankton_zhang_2013.txt


# Paleo-pCO2 Database Malta Middle Miocene Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_badger_2013.txt


# Paleo-pCO2 Database Middle Miocene Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_foster_2012.txt


# Paleo-pCO2 Database Middle Miocene ODP761 Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_greenop_2014.txt


# Paleo-pCO2 Database ODP1264 5 Million Year Boron Isotope and CO2 Data

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_stap_2016.txt


# Paleo-pCO2 Database ODP668 Early Pleistocene Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_dyez_2018.txt


# Paleo-pCO2 Database ODP668B 2 Million Year Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_hoenisch_2009.txt


# Paleo-pCO2 Database ODP999 1.2 Million Year Boron Isotope and CO2 Data

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_chalk_2017.txt


# Paleo-pCO2 Database ODP999 4.6 Million Year Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_bartoli_2011.txt


# Paleo-pCO2 Database ODP999 5 Million Year Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_seki_2010.txt


# Paleo-pCO2 Database ODP999 Plio-Pleistocene Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_martinez-boti_2015.txt

# Paleo-pCO2 Database Tanzania Early Cenozoic Boron Isotope and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/boron_isotopes_anagnostou_2016.txt


# Paleo-pCO2 Database Western Pacific 20 Million Year B/Ca and CO2 Data


wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/Paleo-pCO2/b_ca_tripati_2009.txt

cd ..

# Paleoceanography and biomarker data from the Antarctic Peninsula over the past 37-3 million years

folder=tibbett2022_Antarctica_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tibbett2022/nbp0602a_tibbett2022.txt

cd ..

# Paleocene-Eocene Boundary Equatorial Pacific and Subtropical Atlantic Planktonic Mg/Ca and d18O Data

folder=tripati2005_Atlantic_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsd527-t-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o1209b-t-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o865c-t-tab.txt

cd ..

# Paleocene-Eocene Thermal Maximum (~55 Million years ago ) Planktonic Foram Assemblages

folder=kelly2002_PETM_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp690b-tab.txt

cd ..

# Paleocene-Eocene Thermal Maximum(~55MyrBP) Isotope and Mg/Ca Data

folder=tripati2005_PETM_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1209b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp865c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp527-tab.txt

cd ..

# Paleomagnetic Data from IODP Site U1305 and the Northern North Atlantic During the Holocene

folder=stoner2013_Atlantic_paleomag
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stoner2013/stoner2013-fig2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stoner2013/stoner2013-rpi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stoner2013/stoner2013-greenice.txt

cd ..

# Palmer Deep XRF Data from the Late Deglacial Holocene

folder=dove2024_Antarctica_XRF
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/dove2024/dove-1098a_xrf.txt

cd ..

# Palmer Deep, Antarctica Holocene TEX86 Sea Surface Temperature Data

folder=shevenell2007_Antarctica_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shevenell2007/shevenell2007-noaa.txt

cd ..

# Panama Basin 27,000 Year Alkenone dD Data

folder=pahnke2007_Panama_Alekenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pahnke2007/pahnke2007.txt

cd ..

# Panama Basin Thorium and Uranium Sediment Data for the Last 25,000 Years

folder=singh2011_Panama_Thorium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-me0005A-43JC.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-tr163-11.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-v19-27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-rc8-102.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-v21-29.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/singh2011/singh2011-tr163-22.txt

cd ..

# Patrick and Thunell 1997 Tropical Pacific SST Reconstruction

folder=patrick1997_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/patrick1997/mw91-15.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/patrick1997/readme_patrick1997.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/patrick1997/tr163-31b.txt

cd ..

# Paul and Schaefer-Neth 2003 Gridded Global LGM SST and Salinity Reconstruction

folder=paul2003_Global_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_c0.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_c1.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_c5.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_l0.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_l1.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsss_l5.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsst_c.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/lgmsst_l.zip
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paul2003/readme_paul2003.txt

cd ..

# Paytan et al. 1998 Cenozoic Seawater Sulfate Sulfur Isotopic Data

folder=paytan1998_Cenozoic_Sulfur
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paytan1998/paytan1998.txt

cd ..

# Paytan et al. 2004 Cretaceous Seawater Sulfur Isotopic Data

folder=paytan2004_Cretaceous_Sulfur
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paytan2004/paytan2004.txt

cd ..

# Pearson and Palmer 2000 Reconstructed 60 Million Year Atmospheric CO2 Data

folder=pearson2000_Cenozoic_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/climate_forcing/trace_gases/pearson2000_co2.txt

cd ..

# Pearson et al. 2009 Tanzania Eocene-Oligocene d11B and PCO2atm

folder=pearson2009_Tanzania_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pearson2009/pearson2009.txt

cd ..

# Percent Biogenic Silica Data from the Antarctic Zone of the Indian Ocean Sector of the Southern Ocean Spanning the Past 630,000 Years

folder=kaiser2021_Southern_Ocean_silica
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kaiser2021/kaiser2021-odp745b.txt

cd ..

# Peru Margin ODP1228D Holocene Organic Geochemical Data

folder=makou2010_Peru_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/makou2010/makou2010.txt

cd ..

# Peru Margin Surface Sediment Geochemistry Data

folder=arthur2013_Peru_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arthur2013/arthur2013carbon13s.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arthur2013/arthur2013geochem13s.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arthur2013/arthur2013carbon12s.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arthur2013/arthur2013geochem12s.txt

cd ..

# Peru Margin Temperature Reconstructions and Stable Isotope and Trace Metal Data During the Holocene

folder=kalansky2015_Peru_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kalansky2015/kalansky2015.txt

cd ..

# PhanSST - A Global Database of Phanerozoic Sea Surface Temperature Proxy Data (v.0.0.1)

folder=judd2022_Phanerozoic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/judd2022/phanSST-reflist.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/global/judd2022/phanSST-database.txt

cd ..

# Phanerozoic record of global sea-level change for last 100 Ma

folder=miller2005_Phanerozoic_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2005/miller2005-backstrip.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2005/miller2011.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2005/miller2005-haq87.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2005/miller2005-kominz08.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2005/miller2005-benthic.txt

cd ..

# Pichevin et al. 2005 Namibian Slope 240KYr Nitrogen Cycling Data

folder=pichevin2005_Namibia_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pichevin2005/pichevin2005.txt

cd ..

# Pichevin et al. 2007 Arabian Sea 50KYr Denitrification Data

folder=pichevin2007_Arabian_Denitrification
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md4-2876-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pichevin2007/pichevin2007.txt

cd ..

# Pichevin et al. 2009 Eastern Equatorial Pacific 35KYr Paleonutrient Data

folder=pichevin2009_Pacific_nutrient
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pichevin2009/pichevin2009.txt

cd ..

# Pigmy Basin MD02-2553 Holocene Mineralogical and Geochemical Data

folder=montero-serrano2010_Pigmy_Basin_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/montero-serrano2010/montero-serrano2010.txt

cd ..

# Pigmy Basin, Gulf of Mexico Decadal Foraminiferal Mg/Ca and d18O Data

folder=richey2007_Pigmy_Basin_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/pbbc-1-tab.txt

cd ..

# Pike 1996 Early Holocene Gulf of California Time Series Data

folder=pike1996_California_Holocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pike1996/readme_pike1996.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pike1996/t-series.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pike1996/t-series.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pike1996/t-series.xls

cd ..

# Pisias et al 1997 Radiolarian SST Transfer Functions

folder=pisias1997_Radiolarian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/fmatrix_40_7_log.non35
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/fmatrix_41_7_log.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/rad_surface.factors
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/rad_surface.percentages
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/rad_surface.season
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/rad_surface.sst
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pisias1997/readme_pisias1997.txt

cd ..

# Planktonic and Benthic Foraminiferal Stable Isotope Data from North Atlantic Subtropical Site 558 from 7.8 to 20.09 Ma

folder=galochkina2023_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/galochkina2023/galochkina2023-dsdp558.txt

cd ..

# Pleistocene Tropical Alkenone Sea Surface Temperature Reconstructions

folder=cleaveland2007_Tropical_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp662-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o722-cl-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o1146-cl-tab.txt

cd ..

# Plio-Pleistocene Alkenone concentration data from the Atlantic Ocean

folder=lawrence2013_Atlantic_alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2013/lawrence2013-dsdp607.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2013/lawrence2013-odp907.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2013/lawrence2013-odp1090.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lawrence2013/lawrence2013-odp662.txt

cd ..

# Plio-Pleistocene Seawater Mg/Ca Variability Data and SST Reconstruction

folder=medina-elizalde2008_Plio-Pleistocene_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp847-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o806b-mm-tab.txt

cd ..

# Plio-Pleistocene Tropical Alkenone SST Reconstructions

folder=herbert2010_Tropical_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/herbert2010/herbert2010.txt

cd ..

# Plio-Pleistocene astronomical timescale

folder=Lourens_Mediterranean_Plio-Pleistocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/medisect-tab.txt

cd ..

# Pliocene Warm Period Foraminifer Stable Isotope Data

folder=draut2003_Pliocene_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp981d-tab.txt

cd ..

# Pliocene-Pleistocene Benthic Foraminiferal Stable Isotope Data from the Southeast Atlantic

folder=bell2014_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bell2014/bell2014-1264.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bell2014/bell2014-1267.txt

cd ..

# Portuguese Margin MIS6 foraminiferal isotope and palynology data

folder=margari2010_Portuguese_MIS6_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/margari2010/margari2010.txt

cd ..

# Prahl et al. 2006 SE Pacific Alkenone Calibration Data

folder=prahl2006_Pacific_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/prahl2006/prahl2006.txt

cd ..

# Prydz Bay, East Antarctica 36-33ma Biomarker Data and Climate Reconstructions

folder=tibbett2021_Antarctica_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tibbett2021/tibbett2021biomarker.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tibbett2021/tibbett2021pollen.txt

cd ..

# Puerto Rico and Catalina Seawater Chemistry, Foraminiferal and Mg/Ca-Dervived Paleotemperature Data from 12-16 ma

folder=haynes2023_Puerto_Rico_Seawater
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/haynes2023/haynes2023-prc_temp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/haynes2023/haynes2023-prc_pubcult.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/haynes2023/haynes2023-prc_newcult.txt

cd ..

# Pälike et al. 2006 Ceara Rise Oligocene-Miocene ODP926B Stable Isotope Data

folder=paelike2006_Ceara_Rise_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/paelike2006/paelike2006.txt

cd ..

# Quaternary Arctic Ocean Foraminifer Amino Acid Racemization Data

folder=west2022_Arctic_Foram_AAR
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/aar/west2022/west2022-aar.txt

cd ..

# Radiocarbon Dates of Wood, Planktic and Benthic Foraminifera for the Glacial-Deglacial Eastern Equatorial Pacific

folder=zhao2018_Pacific_Radiocarbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2018/zhao2018-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2018/zhao2018-radiocarbon.txt

cd ..

# Raymo 1992 DSDP Site 607 Isotope Data and Age Models

folder=raymo1992_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1992/raymo1992.txt

cd ..

# Raymo 1997 Major Climate Terminations Data

folder=raymo1997b_Terminations
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/md900963_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/readme_raymo1997b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s607_iso1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s659_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s663_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s664_iso1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s677_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s806_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s846_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s849_iso1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/s925_iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo1997b/v28-239_iso.txt

cd ..

# Raymo et al. 2004 North Atlantic Pleistocene Isotope Records

folder=raymo2004_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/readme_raymo2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s552agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s552isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s607agesbp90isoadj.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s607agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s607isoadjsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s607isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s846agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s846isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s980-981agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s980-981isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s982agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s982isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s983agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s983isocibsmooth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s984agesbp90isoadj.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s984agesbp90isocib.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2004/s984isocibsmooth.txt

cd ..

# Raymo et al. 2006 Plio-Pleistocene Modeled Hemispheric Insolation, Ice Volume, and d18O Data

folder=raymo2006_Plio-Pleistocene_model
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/raymo2006/raymo2006.txt

cd ..

# Rea et al 1998 N.Pacific Eolian Sediment Mass Accumulation Rate Data

folder=rea1998_Pacific_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rea1998/readme_rea1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rea1998/tablea1a-all-composite.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rea1998/tablea1b-885a.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rea1998/tablea1c-886b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rea1998/tablea1d-886c.txt

cd ..

# Rebecca Lagoon, Tasmania 3,700 Year Sediment Reflectance and Precipitation Reconstruction

folder=rebecca2012_Tasmania_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/australia/rebecca2012refl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/australia/rebecca2012precip.txt

cd ..

# Reconstructed pCO2 Data Estimated from Regional d13C Gradients Over Last 1.5Ma

folder=lisiecki2010_pCO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lisiecki2010-grl/lisiecki2010-grl.txt

cd ..

# Red Sea 150KYr Relative Sea Level Reconstruction

folder=grant2012_Red_Sea_RSL
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/grant2012/grant2012rsl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/grant2012/grant2012-ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/grant2012/grant2012rsl-prob.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/grant2012/grant2012-pachy.txt

cd ..

# Redox trace metals and productivity in the Santa Barbara Basin for the past 200 years

folder=wang2017_Santa_Barbara_productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wang2017/wang2017-spr0901-04bc.txt

cd ..

# Relative Sea Level Database

folder=tushingham1993_RSL_Database
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/readme_rsl.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/rslform.lst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/rslsite.lst
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sealevel.dat
mkdir sitefiles
cd sitefiles
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.101
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.102
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.103
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.104
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.105
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.106
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.107
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.108
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.109
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.110
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.111
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.112
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.113
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.114
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.115
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.116
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.117
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.118
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.119
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.120
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.121
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.122
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.123
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.124
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.125
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.126
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.127
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.128
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.129
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.130
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.131
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.132
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.133
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.134
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.135
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.136
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.137
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.138
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.139
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.140
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.141
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.142
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.143
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.144
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.145
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.146
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.147
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.148
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.149
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.150
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.151
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.152
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.153
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.154
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.155
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.156
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.157
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.158
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.159
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.160
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.161
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.162
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.163
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.164
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.165
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.166
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.167
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.168
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.169
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.201
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.202
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.203
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.204
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.205
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.206
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.207
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.208
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.209
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.210
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.211
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.212
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.213
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.214
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.215
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.216
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.217
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.218
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.219
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.220
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.221
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.222
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.223
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.224
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.225
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.226
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.227
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.228
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.229
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.230
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.231
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.232
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.233
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.234
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.235
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.236
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.237
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.238
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.239
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.240
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.241
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.242
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.243
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.244
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.245
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.246
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.247
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.248
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.249
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.250
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.251
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.252
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.253
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.254
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.255
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.256
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.257
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.258
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.259
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.260
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.261
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.262
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.263
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.264
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.265
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.266
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.267
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.268
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.269
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.270
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.271
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.272
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.273
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.274
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.275
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.276
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.277
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.278
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.279
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.280
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.281
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.282
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.283
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.284
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.285
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.286
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.301
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.302
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.303
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.304
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.305
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.306
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.307
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.308
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.309
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.310
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.311
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.312
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.313
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.314
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.315
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.316
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.317
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.318
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.319
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.320
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.321
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.322
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.323
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.324
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.325
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.326
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.327
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.328
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.329
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.330
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.331
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.332
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.333
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.334
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.335
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.336
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.337
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.338
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.339
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.340
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.341
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.342
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.343
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.344
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.345
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.346
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.347
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.348
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.349
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.350
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.351
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.352
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.353
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.354
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.355
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.356
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.357
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.358
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.359
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.401
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.402
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.403
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.404
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.405
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.406
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.407
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.408
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.409
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.410
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.411
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.412
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.413
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.414
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.415
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.416
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.417
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.418
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.419
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.420
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.421
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.422
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.423
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.424
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.425
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.426
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.501
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.502
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.503
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.504
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.505
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.506
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.507
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.508
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.509
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.510
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.511
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.512
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.513
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.514
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.515
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.516
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.517
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.518
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.519
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.520
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.521
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.522
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.523
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.524
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.525
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.526
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.527
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.528
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.529
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.530
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.531
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.532
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.533
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.534
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.535
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.536
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.537
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.538
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.539
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.540
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.541
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.542
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.543
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.544
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.545
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.546
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.547
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.548
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.549
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.550
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.551
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.552
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.553
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.554
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.555
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.556
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.557
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.558
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.559
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.560
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.561
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.562
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.563
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.564
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.565
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.566
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.567
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.568
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.569
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.570
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.601
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.602
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.603
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.604
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.605
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.606
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.607
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.608
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.609
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.610
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.611
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.612
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.613
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.614
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.615
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.616
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.617
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.618
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.619
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.620
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.621
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.622
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.623
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.624
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.625
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.626
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.627
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.628
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.629
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.630
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.631
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.632
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.633
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.634
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.635
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.636
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.637
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.638
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.639
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.640
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.641
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.642
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.643
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.644
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.645
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.646
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.647
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.648
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.649
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.650
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.651
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.652
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.653
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.654
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.655
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.656
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.657
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.658
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.659
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.660
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.661
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.662
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.663
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.664
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.665
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.666
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.667
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.668
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.669
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.670
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.671
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.672
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.673
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.674
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.675
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.676
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.677
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.678
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.679
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.680
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.681
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/relative_sea_level/sitefiles/sealevel.682
cd ..

cd ..

# Reworked Calcareous Nannofossils in the Gulf of Mexico

folder=marchitto1995_Gulf_Of_Mexico_Nannofossils
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/en32-pc4-tab.txt

cd ..

# Reykjanes Ridge 230 Year Diatom August SST Reconstruction

folder=miettinen2011_Reykjanes_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miettinen2011/miettinen2011.txt

cd ..

# Richter et al. 2009 Feni Drift Late Holocene Mg/Ca SST

folder=richter2009_Feni_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/richter2009/richter2009.txt

cd ..

# Robinson et al. 2004 Southern Ocean Diatom-bound Nitrogen and d15N Data

folder=robinson2004_Southern_Ocean_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2004/robinson2004.txt

cd ..

# Rosenthal et al. 1997 Little Bahama Bank Modern Benthic Foraminifera Element/Temperature Calibration Data

folder=rosenthal1997b_Bahama_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rosenthal1997b/rosenthal1997b.txt

cd ..

# Ross Sea ANDRILL-2A Middle Miocene Biomarker Data

folder=feakins2012_Ross_Sea_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/feakins2012/feakins2012.txt

cd ..

# Ruehlemann et al. 1999 Tropical Atlantic Alkenone SST Reconstruction

folder=ruehlemann1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ruehlemann1999/ruehlemann1999.txt

cd ..

# Russell and Spero 2000 Carbonate Ion Effect on Foraminifera Stable Isotopes

folder=russell2000_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2000/readme_russell2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2000/russell2000data.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2000/russell2000_table1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2000/russell2000_table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2000/russell2000_table3.txt

cd ..

# Russell et al. 2004 Seawater [CO32-] and T Effects on Cultured Foraminifera U, Mg, and Sr

folder=russell2004_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russell2004/russell2004.txt

cd ..

# Russian Academy of Sciences Atlantic Fossil Plankton Stratigraphies

folder=barash1993_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/age.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/coord.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/cores.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/names.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/readme_russian_plankton.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/fossil_plankton/russian_fossil_plankton/surface.dat

cd ..

# Russon et al. 2009 SW Pacific MD06-3018 Pleistocene Benthic Isotope Data

folder=russon2009_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/russon2009/russon2009.txt

cd ..

# SE Atlantic Late Miocene Carbonate Crash and Biogenic Bloom Data from cruise ODP175

folder=diester-haass2004_Atlantic_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1086a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1087c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1085-tab.txt

cd ..

# SE Greenland Shelf 2900 Year Diatom SST and Sea Ice Reconstructions

folder=miettinen2015_Greenland_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/miettinen2015/miettinen2015-ice.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/miettinen2015/miettinen2015-sst.txt

cd ..

# SPECMAP Archive #1

folder=SPECMAP_1
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/readme_specmap1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.001
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.002
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.003
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.004
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.005
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.006
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.007
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.008
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.009
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.010
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.011
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.012
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.013
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.014
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.015
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.016
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.017
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.018
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.019
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.020
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.021
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.022
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.023
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.024
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.025
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.026
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.027
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.028
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.029
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.030
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.031
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.032
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.033
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.034
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.035
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.036
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.037
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.038
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.039
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.040
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.041
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.042
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.043
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.044
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.045
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.046
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.047
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.048
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.049
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.050
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.051
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.052
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.053
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.054
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.055
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.056
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.057
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.058
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.059
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.060
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.061
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.062
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.063
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.064
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.065
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.066
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.067
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.068
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.069
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.070
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.071
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.072
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.073
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.074
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.075
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.076
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.077
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.078
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.079
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.080
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.081
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.082
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.083
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.084
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.085
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.086
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.087
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.088
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.089
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.090
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.091
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.092
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.093
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.094
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.095
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.096
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.097
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.098
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.099
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.100
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.101
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_13c.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_18o.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_agemodel.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_bmatrix.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_cd-ca.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_coredata.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_coresite.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_corr_stack.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_fmatrix.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_orbital.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_sst_est.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_sst_interp.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_topdat_uw.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_topsdata.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap1_topsites.csv
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap1/specmap.doc

cd ..

# SPECMAP Archive #3

folder=SPECMAP_3
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/archive3.contents
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/q65n1990.ins
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/rc1112dh.map
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/rc1311dh.map
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/readme_specmap3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/stckdh11.map
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/stckpm11.dat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/stckpm11.dh1
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/v238dh11.map
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/v28238p1.str
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap3/v3040dh.map

cd ..

# SPECMAP Archive #4

folder=SPECMAP_4
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/aii107cd_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/arabdust_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/archiv4_contnts
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/atlpac2_nonlcomp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/atlpacdf_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/bento18_gaustck
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/berg1978_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/chn82cad_meandat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/chn82cs4_stretch
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/currcrow_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/deeptemp_normdat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/diat575_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/ecc100k_dat1978
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/ecc413k_compdata
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/eccent78_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/en120cad_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/gain23k_output
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/gain41k_output
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/hm79diat_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/ios82ben_isodat2
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/k11bull_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/k7081sst_stretch
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/k7081twr_nonlcomp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/k7081twr_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/kukloess_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/meltwatr_stage56
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/nadw_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/o677p100_trdata
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/odp677_patch2
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/p6489dis_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/q65n12mn_insolwat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/q65n1990_insolwat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/q65njun1_insolwat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/q65s12mn_insolwat
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/qjun6541_amplout
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/qjun65n_compdata
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/qjun65pr_amplout
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/readme_specmap4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/sosst_nonlcomp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/sosst_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckderv_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckdet_nonlcomp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckp41x_amplout
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckpext_syncomp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckppm_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckpprx_amplout
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckpr10_normamp
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckrsd_calndyrs
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/stckrsd_data
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/v1930c13_norm100k
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/specmap/specmap4/v1930cdi_norm100k

cd ..

# Sabrina Coast East Antarctica, Pollen and Biomarker Data from 59-38 million years ago

folder=duffy2021_Antarctica_Pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/duffy2021/duffy2021-biomarker.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/duffy2021/duffy2021-pollen.txt

cd ..

# Sachs and Anderson 2005 Southern Ocean Heinrich Event Alkenone Productivity Data

folder=sachs2005_Southern_Ocean_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs2005/sachs2005.txt

cd ..

# Sachs and Lehman 1999 Subtropical North Atlantic Alkenone SST Reconstruction

folder=sachs1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs1999/sachs1999.txt

cd ..

# Sachs et al. 2001 Southeast Atlantic Alkenone SST Reconstruction

folder=sachs2001_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sachs2001/sachs2001.txt

cd ..

# Saharan dust fluxes over the last 22 ka in the Bahamas and central tropical Atlantic

folder=williams2016_Bahamas_Dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams2016/williams2016-vm20-234.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams2016/williams2016-100-103ggc-geochem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams2016/williams2016-100-103ggc-iso.txt

cd ..

# Salt Pond, Massachusetts 2000 Year Storm Event Frequency Data

folder=donnelly2015_Massachusetts_Storm
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/donnelly2015/saltpond2015sand.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/donnelly2015/saltpond2015event.txt

cd ..

# Samson et al. 2006 Bay of Plenty Foraminiferal Data and SST Reconstruction

folder=samson2005_Bay_Of_Plenty_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/samson2005/samson2005.txt

cd ..

# San Diego Margin Benthic Foraminiferal Assemblages from Late Holocene

folder=palmer2019_San_Diego_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/palmer2019/palmer2019-sdmargin.txt

cd ..

# San Lázaro Basin, Eastern Pacific 2,300 Year Sediment Geochemical Data

folder=abella-gutierrez2016_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016ca94-9k.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016ch94-2k.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016ca94-8k.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016bap96-6c-brsi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016bap96-6c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016composite-brsi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016composite.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016ca94-9k-brsi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016pcm00-78k-brsi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016pcm00-78k.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella-gutierrez2016/abella-gutierrez2016ch94-2k-brsi.txt

cd ..

# San Lázaro Basin, Eastern Pacific Sediment Geochemical Data over the Last 2 Millennia

folder=abella2019_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella2019/abella2019_MgCaSST.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella2019/abella2019_XRF.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella2019/abella2019_carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/abella2019/abella2019_CPC.txt

cd ..

# Sanchez Goni et al. 2005 Iberian Margin MIS 5 Pollen and Foraminiferal Data

folder=sanchezgoni2005_Iberian_pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sanchezgoni2005/sanchezgoni2005.txt

cd ..

# Santa Barbara Basin 640 Year Alkenone Sea Surface Temperature

folder=zhao2000_Santa_Barbara_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2000/zhao2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhao2000/zhao2000revised.txt

cd ..

# Santa Barbara Basin Bulk and Compound Specific Nitrogen Isotope Data

folder=batista2014_Santa_Barbara_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/batista2014/batista2014-aa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/batista2014/batista2014-d15n-aa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/batista2014/batista2014-isofract.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/batista2014/batista2014-wtpct.txt

cd ..

# Santa Barbara Basin Deglacial Foraminiferal Stable Isotope Data

folder=hill2006_Santa_Barbara_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m2503-c-tab.txt

cd ..

# Santa Barbara Basin Deglacial Hydrocarbon Emissions Data

folder=hill2006_Santa_Barbara_hydrocarbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md2-2504-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md2-2503-tab.txt

cd ..

# Santa Barbara Basin Denitrification d15N Data

folder=emmer2000_Santa_Barbara_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp893a-tab.txt

cd ..

# Santa Barbara Basin Holocene Stable Oxygen Isotope Data

folder=friddell2003_Santa_Barbara_Oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jpc76-f-tab.txt

cd ..

# Santa Barbara Basin ODP Hole 893A Pollen Count Data during the last 160,000 years

folder=heusser1995_Santa_Barbara_pollen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/heusser1995/heusser1995-odp893a-pollen.txt

cd ..

# Santa Barbara Basin Stable Isotope and Foraminiferal Assemblage Data to 735 ka

folder=white2013_Santa_Barbara_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-20jpc-assem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-11jpc-bull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-11jpc-assem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-11jpc-pachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-11jpc-uvig.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-16jpc-assem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-16jpc-pachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-20jpc-bull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-16jpc-uvig.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-20jpc-uvig.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-16jpc-bull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2013/white2013-20jpc-pachy.txt

cd ..

# Santa Barbara Basin Stable Isotope, Geochemistry, and Lithology Data from Marine Isotope Stage 16-15 Boundary at 631.5 ka

folder=dean2015_Santa_Barbara_MIS16-15
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-20jpc-icp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-19jpc-carb.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-19jpc-icp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-11jpc-icp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-19jpc-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dean2015/dean2015-19jpc-wbd.txt

cd ..

# Santa Barbara sediment trap record of the 1997-1998 El Nino

folder=dean2015_Santa_Barbara_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/sbbtrap-tab.txt

cd ..

# Sargasso Sea Stable Isotope and Cd/Ca Data

folder=keigwin1999_Sargasso_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gpc-5k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md952036-tab.txt

cd ..

# Schmidt et al. 2006 North Atlantic Dansgaard-Oeschger Cycle Salinity Reconstructions

folder=schmidt2006b_Atlantic_D-O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2006b/schmidt2006b.txt

cd ..

# Schmidt et al. 2006 W. Caribbean Mg/Ca, d18O Data and SST Reconstruction

folder=schmidt2006_Caribbean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmidt2006/schmidt2006.txt

cd ..

# Schmiedl et al 1998 Ionian Sea Benthic Foraminiferal Data

folder=schmiedl1998_Ionian_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmiedl1998/ionian1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmiedl1998/ionian2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmiedl1998/ionian3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schmiedl1998/readme_schmiedl1998.txt

cd ..

# Schneider-Mor et al. 2008 Southern Ocean ODP1093 660KYr Paleonutrient Data

folder=schneider-mor2008_Southern_Ocean_nutrient
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schneider-mor2008/schneider-mor2008.txt

cd ..

# Schulz et al. 1998 Arabian Sea Stable Isotope and TOC Data

folder=schulz1998_Arabian_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/093cmage.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/093kliso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/093veloc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/111cmage.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/111kltoc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/136cmage.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/136kltoc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/position.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/readme_schulz1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/supp_14c.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/schulz1998/supptoba.doc

cd ..

# Scotian Margin during the last deglaciation

folder=keigwin1995_Scotian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hu720213-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hu720217-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hu730111-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/hu730317-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v17-178-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v17-179-tab.txt

cd ..

# Sea Surface Temperature Estimates in the Equatorial and North Atlantic

folder=waelbroeck1998_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-18w-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v25-56w-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch69-09-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/90-013-p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v25-59w-tab.txt

cd ..

# Sea Surface Temperature Reconstructions in the North Pacific during the Mid-Pliocene

folder=brennan2022_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/brennan2022/brennan2022_dsdp475.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/brennan2022/brennan2022_dsdp36.txt

cd ..

# Sea of Japan geochemical properties during the past 36,000 years

folder=crusius1999_Japan_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gh93ki-5-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/kt9415p9-tab.txt

cd ..

# Sea of Japan orbital and millennial changes during the late Quaternary

folder=tada1999_Japan_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp797-tab.txt

cd ..

# Sea-level and Deep Water Temperature 430KYr Reconstructions

folder=waelbroeck2002_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck2002/waelbroeck2002.txt

cd ..

# Sea-surface temperature in the California Current over the past 30,000 years.

folder=prahl1995_California_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w8709a8t-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/w8709a8p-tab.txt

cd ..

# Sedimentary Geochemical Proxy Data of the Eastern Arabian Sea during the late Pliocene

folder=behera2022_Arabian_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/behera2022/behera2022-u1456.txt

cd ..

# Shevenell et al. 2004 Southern Ocean Miocene ODP1171 Stable Isotope and Mg/Ca Data

folder=shevenell2004_Southern_Ocean_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shevenell2004/shevenell2004.txt

cd ..

# Siddall et al. 2003 Red Sea Sea Level Reconstruction

folder=siddall2003_Red_Sea_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/siddall2003/siddall2003.txt

cd ..

# Site U1483 (Timor Sea) Terrigenous Input and Productivity Data over the last 2 Myrs

folder=zhang2023_Timor_productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-biomarker.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-rabd660.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-org-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-xrf.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-ngr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-k-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-tn-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-d15n.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-highres.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/zhang2023/zhang2023-u1483-d18o.txt

cd ..

# Slowey and Curry 1995 Bahamas Benthic Foram Isotope Data

folder=slowey1995_Bahamas_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/lbb_published_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/lbb_revised_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/locations_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/readme_slowey1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/station84_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/w120a30_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/slowey1995/water_c13_data.txt

cd ..

# Soledad Basin Trace Metal Data during the Holocene

folder=marchitto2015_Soledad_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2015/marchitto2015-incompta.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/marchitto2015/marchitto2015-ruber.txt

cd ..

# Somali Basin during the past 35,000 years

folder=venec-peyre1997_Somali_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md85668-tab.txt

cd ..

# Sosdian and Rosenthal 2009 N. Atlantic Pliocene BWT Recons

folder=sosdian2009_Atlantic_Pliocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sosdian2009/sosdian2009.txt

cd ..

# South Atlantic 24,000 Year Neodymium Isotope Data

folder=howe2016_Atlantic_Neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howe2016/howe2016knr159-5-36ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howe2016/howe2016geob2104-3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/howe2016/howe2016geob2107-3.txt

cd ..

# South Atlantic Authigenic Uranium Data

folder=chase1997_Atlantic_Uranium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm27-197-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm27-196-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r12-294z-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm22-109-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc11-78z-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc11-83z-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r13-243z-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm22-38-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tn057-20-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm14-65-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm22-177-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm24-221-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm24-229-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/vm24-240-tab.txt

cd ..

# South Atlantic Bottom Water Temperature, d18O, d13C and Trace Metal Data during the Last Deglaciation

folder=umling2019_Atlantic_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-pc-cam61-wuell.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-pc-cam61-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-36ggc-he.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-36ggc-pachy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-36ggc-uvi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-90ggc-he.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-90ggc-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-coretop.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-36ggc-benth.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-105jpc-he.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-pc-cam61-he.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2019/umling2019-105jpc-benth.txt

cd ..

# South Atlantic Coccolith Assemblage and Morphology Data from the Early Oligocene

folder=ma2023_Atlantic_Coccolith
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/ma2023/ma2023-dsdp522_morph.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/ma2023/ma2023-dsdp522_perc_abund.txt

cd ..

# South Atlantic Foraminifer Stable Isotope Data, Marine Isotope Stage 11

folder=hodell2000_Atlantic_MIS11
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp704a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tn057-6-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t5710-11-tab.txt

cd ..

# South Atlantic GeoB2107-3 30KYr Glacial Silicon Isotope Data

folder=hendry2012_Atlantic_silicon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hendry2012/hendry2012.txt

cd ..

# South Atlantic Glacial Deep Water Cd/Ca and d13C Data

folder=oppo2000_Atlantic_d13C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc16-119-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc16-84-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v24-253-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/knr15936-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc16-85-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc16-86-tab.txt

cd ..

# South Atlantic Late Pleistocene Sea Surface Temperature, Dust and Paleoproductivity Data

folder=anderson2014_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2014/anderson2014-06pc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2014/anderson2014-21pc2.txt

cd ..

# South Atlantic Ocean (ODP 1264) Oxygen Isotope and Mg/Ca Data for the last 5Ma

folder=dekens2010_Atlantic_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dekens2010/dekens2010-odp1264.txt

cd ..

# South Atlantic Ocean Deep Sea Temperature Reconstruction and Mg/Ca Data during the Last 12 Million Years

folder=billups2009_Atlantic_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2009/billups2009-odp1088.txt

cd ..

# South Atlantic Pleistocene ODP Leg 177 Stable Isotope Data

folder=hodell2003_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o1090-t6-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1089hod3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/1088hod3-tab.txt

cd ..

# South Atlantic Stable Isotope and Geochemistry Data with Bottom Water Temperature Reconstruction across the Eocene-Oligocene Transition

folder=pusz2011_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pusz2011/pusz2011-1265.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pusz2011/pusz2011-1090-iso.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/pusz2011/pusz2011-1090-chem.txt

cd ..

# South Atlantic TN057-13PC 30 KYr Nitrogen Data

folder=horn2011_Atlantic_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/horn2011/horn2011-noaa.txt

cd ..

# South Atlantic circulation during the late Quaternary

folder=schneider1995_Atlantic_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb10083-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb10163-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb10285-tab.txt

cd ..

# South Atlantic sea surface temperatures during the late Quaternary

folder=brathauer1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps1778-5-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ps20821b-tab.txt

cd ..

# South Australia MD03-2611 Deglacial Alkenone SST Data

folder=calvo2007_Australia_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md3-2611-tab.txt

cd ..

# South Australia Subantarctic Benthic Foraminifera Cd/Ca, Mn/Ca and Carbon Isotope Data

folder=lynch-stieglitz1996_Australia_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1996/lynch-stieglitz1996.txt

cd ..

# South China Sea 350KYr Leaf Wax Deuterium and SST Data

folder=thomas2014_South_China_Sea_leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thomas2014/thomas2014-gdgt.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thomas2014/thomas2014.txt

cd ..

# South China Sea 350KYr Radiometric Marine Chronology

folder=caballero-gill2012b_South_China_Sea_chrono
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2012b/caballero-gill2012b.txt

cd ..

# South China Sea Alkenone Deglacial SST Estimates

folder=kienast2001_South_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/18287-3-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/18252-3-tab.txt

cd ..

# South China Sea Benthic Foraminiferal Stable Isotope Data

folder=tian2002_South_China_Sea_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1143-tab.txt

cd ..

# South China Sea MD01-2390 Deglacial Multiproxy Seasonal SST Estimates

folder=steinke2008_South_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md1-2390-tab.txt

cd ..

# South China Sea ODP1144 260KYr Mg/Ca SST

folder=wei2007_South_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wei2007/wei2007.txt

cd ..

# South China Sea ODP1146 AIM 24-25 Foraminiferal Stable Isotope Data

folder=caballero-gill2012_South_China_Sea_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2012/caballero-gill2012.txt

cd ..

# South China Sea ODP1148 Neogene Benthic Foraminiferal Isotope Data

folder=tian2008_South_China_Sea_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1148-tab.txt

cd ..

# South China Sea Planktonic Foraminifer Mg/Ca and d18O Data and Ocean Heat Content (OHC) Reconstruction during the last 21 kyr

folder=yiping2019_South_China_Sea_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-so204b-infla.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-so204b-scit.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-ghe27l-obliq-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-ohc-0-300.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-so204b-ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-so204b-trunc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-ghe27l-obliq-d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yiping2019/yiping2019-ohc-300-700.txt

cd ..

# South China Sea Terrigenous Grain Size, Mineral Component and Mass Accumulation Rate Data over the last 1.1 Million Years

folder=huang2020_South_China_Sea_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2020/huang2020-odp1144.txt

cd ..

# South China Sea and other carbon isotope records of atmospheric carbon dioxide

folder=kienast2001_South_China_Sea_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17940-2k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17954-2k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17961-2k-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/17924-3k-tab.txt

cd ..

# South China Sea d18O and Mg/Ca Data and SST Reconstruction

folder=oppo2005_South_China_Sea_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1145-tab.txt

cd ..

# South East Atlantic ODP1085 MIS 12-10 d13C Data

folder=dickson2010_Atlantic_d13C
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dickson2010/dickson2010.txt

cd ..

# South Tasman Rise Late Quaternary SST Reconstructions

folder=sikes2009_Tasman_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/147-gc07-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/147-gc14-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/147-gc17-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/147-gc31-tab.txt

cd ..

# South-east Atlantic mid-Pleistocene Alkenone Data and SST Reconstruction

folder=mcclymont2005_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1087a-tab.txt

cd ..

# Southeast Atlantic Alkenone Sea Surface Temperature Reconstruction for 41,000 to 10,000yr BP

folder=sachs2001_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/t57-pc2-tab.txt

cd ..

# Southeast Atlantic Holocene and Marine Isotope Stage 11 isotope, alkenone and SST data

folder=dickson2009_Atlantic_MIS11
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dickson2009/dickson2009.txt

cd ..

# Southeast Atlantic ODP1262 Upper Paleocene/Lower Eocene Isotope Data

folder=zachos2010_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zachos2010/zachos2010-noaa.txt

cd ..

# Southeast Pacific (ODP1233) High Resolution Termination 1 Alkenone SST Data

folder=lamy2007_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1233l-tab.txt

cd ..

# Southeast Pacific Alkenone Sea Surface Temperature Reconstruction

folder=lamy2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1233-tab.txt

cd ..

# Southeast Pacific High Resolution Alkenone SST Reconstruction

folder=laiser2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1233k-tab.txt

cd ..

# Southeast Pacific SST Reconstruction

folder=lamy2002_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/gb3313-1-tab.txt

cd ..

# Southeastern Indian Ocean Mg/Ca, Ba/Ca, d18O and SST data over the last 17,000 yr. BP

folder=weldeab2014_Indian_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2014/weldeab2014-gb9310-4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2014/weldeab2014-comp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2014/weldeab2014-gb9307-3.txt

cd ..

# Southeastern Pacific Ocean Geochemistry and Mass Accumulation Data during the Holocene

folder=riechelson2023_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-mar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-drydensity.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-caco3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-d15n.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-toc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/eastern/riechelson2023/riechelson2023-br.txt

cd ..

# Southern Barents Sea Annually Resolved Shell-Based Records and SST Reconstructions since the 15th century

folder=mette2021_Barents_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mette2021/mette2021.txt

cd ..

# Southern Continental Margin of Australia Benthic Foraminifera Stable Isotope Data, Lynch-Stieglitz 1994

folder=lynch-stieglitz1994_Australia_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz1994/lynch-stieglitz1994.txt

cd ..

# Southern Continental Margin of Australia Benthic Foraminifera Stable Isotope Data, Lynch-Stieglitz 2015

folder=lynch-stieglitz2015_Australia_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/lynch-stieglitz2015/lynch-stieglitz2015.txt

cd ..

# Southern Indian Ocean G. bulloides Core-top Area Density Data

folder=umling2021_Indian_Bulloides
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2021/umling2021-avg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2021/umling2021-ctd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/umling2021/umling2021-individual.txt

cd ..

# Southern Indian Ocean circulation during the late Quaternary

folder=howard1994_Indian_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-17-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-18-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-21-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-23-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e45-29-tab.txt

cd ..

# Southern Indian Ocean, Foraminifera-bound d18O Data over the Past 42 ky

folder=umling2023_Indian_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/umling2023/umling2023-tt1811-50ggc_planktic_14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/umling2023/umling2023-tt1811-50ggc_truncatulanoides_isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/umling2023/umling2023-tt1811-50ggc_benthic_14c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/umling2023/umling2023-tt1811-50ggc_bulloides_isotopes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/indian_ocean/umling2023/umling2023-tt1811-50ggc_cibicidoides_isotopes.txt

cd ..

# Southern Ocean (ODP 751) Oxygen and Carbon Isotopes from the Early Miocene

folder=miller2017_Southern_Ocean_oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miller2017/miller2017-odp751.txt

cd ..

# Southern Ocean 120KYr Nitrogen and Silicon Isotope Data

folder=robinson2014b_Southern_Ocean_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014b/robinson2014e11-2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014b/robinson2014e17-9.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014b/robinson2014odp1094.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014b/robinson2014nbp9802-06.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2014b/robinson2014nbp9802-09.txt

cd ..

# Southern Ocean Benthic Foraminifer Counts covering 35 to 62 Ma

folder=diester-haass2018_Southern_Ocean_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2018/diester-haass2018-odp738.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2018/diester-haass2018-odp690.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/diester-haass2018/diester-haass2018-odp689b.txt

cd ..

# Southern Ocean Boron isotope data on uranium-thorium dated D. dianthus deep sea corals over the last 40,000 years

folder=rae2018_Southern_Ocean_corals
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/rae2018/rae2018.txt

cd ..

# Southern Ocean Carbon and Nitrogen Isotopic Ratios

folder=crosta2002_Southern_Ocean_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/so136111-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/io127010-tab.txt

cd ..

# Southern Ocean Deep-Dea Coral Radiocarbon and U/Th Age Data over the Last 30,000 Years

folder=hines2015_Southern_Ocean_coral
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hines2015/hines2015.txt

cd ..

# Southern Ocean Deepwater circulation during the last glacial maximum

folder=rosenthal1997_Southern_Ocean_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md88-768-tab.txt

cd ..

# Southern Ocean Deglacial Opal, Radionuclide, and Diatom Upwelling Data

folder=anderson2009_Southern_Ocean_opal
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2009/anderson2009.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2009/anderson2009.xls

cd ..

# Southern Ocean Diatom-bound Nitrogen Isotope Data

folder=robinson2008_Southern_Ocean_Diatom
mkdir ${folder}
cd ${folder}


wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2008/robinson2008.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/robinson2008/robinson2008.xls

cd ..

# Southern Ocean Elemental Data

folder=latimer2001_Southern_Ocean_element
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e45-29l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13254l-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13259l-tab.txt

cd ..

# Southern Ocean Eocene-Oligocene Foraminiferal d18O and Mg/Ca Data

folder=bohaty2012_Southern_Ocean_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/bohaty2012/bohaty2012.txt

cd ..

# Southern Ocean G. bulloides Cd/Ca, Mg/Ca, and d18O

folder=rickaby1999_Southern_Ocean_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r11-120r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e48-22r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-19r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m88-769r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m88-770r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e49-18r-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/r12-225r-tab.txt

cd ..

# Southern Ocean Geochemistry Data going back into the Last Ice Age

folder=anderson2020_Southern_Ocean_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-07_01jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-08_03jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-11_12gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp9802-06pc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-04_01gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-05_02gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-05_03gc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-06_01jgc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/anderson2020/anderson2020-nbp1702-06_02gc.txt

cd ..

# Southern Ocean Holocene High-Resolution SST and Sea Ice Reconstruction

folder=nielsen2004_Southern_Ocean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nielsen2004/nielsen2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/nielsen2004/nielsen2004.xls

cd ..

# Southern Ocean MOCNESS Plankton Tow and Water Chemistry Data

folder=mortyn2003_Southern_Ocean_plankton
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-11foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-9foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-13foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-21foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-22foram.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mortyn2003/mortyn2003tno57-16foram.txt

cd ..

# Southern Ocean Middle Eocene to Early Oligocene Paleoceanographic Data

folder=anderson2005_Southern_Ocean_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1090-tab.txt

cd ..

# Southern Ocean Midlatitude 160KYr Alkenone SST Reconstructions

folder=pahnke2006_Southern_Ocean_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m97-2120-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m97-2121-tab.txt

cd ..

# Southern Ocean ODP745 Miocene-Pleistocene d15N Data

folder=billups2013_Southern_Ocean_nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2013/billups2013.txt

cd ..

# Southern Ocean Oligocene to early Miocene Paleoceanographic Data

folder=anderson2005_Southern_Ocean_Oligocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1090d-tab.txt

cd ..

# Southern Ocean Oligocene-Miocene Boundary Lipid Biomarker Data

folder=kim2022_Southern_Ocean_Oligocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kim2022/kim2022u1356.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kim2022/kim2022odp1168.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kim2022/kim2022odp1170.txt

cd ..

# Southern Ocean Productivity Data Over the Past Million Years

folder=jaccard2013_Southern_Ocean_productivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jaccard2013/jaccard2013-230Th-MAR.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jaccard2013/jaccard2013-XRF.txt

cd ..

# Southernmost Chilean Fjord Region Sea Surface Temperature Reconstructions during the Last 12000 Years

folder=caniupan2014_Chile_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/Churruca.Caniupan.2014.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/JPC42.Caniupan.2014.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD07-3124.Caniupan.2014.txt

cd ..

# Southwest Atlantic DSDP516 4Ma Nd Isotope Data

folder=karas2019_atlantic_Neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2019/karas2019d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2019/karas2019mg-ca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/karas2019/karas2019nd.txt

cd ..

# Southwest Atlantic Deglacial Planktonic and Benthic D14C Data

folder=sortor2011_Atlantic_radiocarbon
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sortor2011/sortor2011plank.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sortor2011/sortor2011benth.txt

cd ..

# Southwest Florida 1,000 Year Paleotempestology Grain Size Data

folder=ercolani2015_Florida_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ercolani2015/island-bay1206-22.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ercolani2015/island-bay1206-23.txt

cd ..

# Southwest Iceland Marine Temperature Reconstruction from Arctica islandica Shell Data 1770-2015 CE

folder=mette2023_Iceland_mollusc
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/mette2023/mette2023-increment.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/mette2023/mette2023-growth-d18o.txt

cd ..

# Southwest Pacific Benthic Foraminiferal B/Ca during the past 25 ka

folder=allen2015_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/allen2015/allen2015-rr0503-83.txt

cd ..

# Southwest Pacific Isotope, Chemistry and Alkenone Data: Surface and Intermediate Water Temperature Reconstructions over the last 3.5 Ma

folder=mcclymont2016_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/mcclymont2016/mcclymont2016-dsdp593.txt

cd ..

# Southwest Pacific ODP1123 Mid-Pleistocene Transition Foraminiferal SST Data

folder=crundwell2008_Pacific_MPT_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1123-tab.txt

cd ..

# Southwest Pacific Ocean alkenone unstaturation ratio from the Pliocene to the present

folder=fedorov2015_Pacific_Alkenone
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/fedorov2015/fedorov2015-odp1125.txt

cd ..

# Southwest Pacific Stable Isotope, Biomarker and SST Reconstruction Data during the mid-late Pliocene

folder=caballero-gill2019_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-dsdp594-isot.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-odp1125-isot.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-dsdp594-species.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-odp1125-species.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-odp1125-reflect.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/caballero-gill2019/caballero-gill2019-odp1125-ms.txt

cd ..

# Southwest Pacific deepwater circulation during the middle Miocene

folder=flower1995_Pacific_Miocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp591b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp593-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp594-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp206-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/dsdp590b-tab.txt

cd ..

# Southwest Pacific, New Zealand SST Reconstruction, Mg/Ca and Alkenone Data during the last 27 ka

folder=sikes2019_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2019/sikes2019-tc87-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2019/sikes2019-jpc87-uk37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sikes2019/sikes2019-jpc87-mgca.txt

cd ..

# Spencer-Cervato 1998 Cenozoic Hiatus Database

folder=spencer-cervato1998_Cenozoic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spencer-cervato1998/hiatuses_data.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spencer-cervato1998/hiatuses_data.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/spencer-cervato1998/readme_spencer-cervato1998.txt

cd ..

# Sprovieri et al. 2006 Central Mediterranean Last Interglacial Planktonic Foraminifera Data

folder=sprovieri2006_Mediterranean_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sprovieri2006/sprovieri2006.txt

cd ..

# St. Lawrence Estuary Younger Dryas Geochemical Data

folder=carlson2007_St_Lawrence_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/carlson2007/carlson2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/carlson2007/carlson2007.xls

cd ..

# Stable Isotope Data from the South Pacific Gyre

folder=jacobel2022_Pacific_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/jacobel2022/jacobel-rr9702a-61jc.txt

cd ..

# Stable Isotope Data of Benthic Foraminifera from the Brazilian Shelf

folder=billups2022_Brazil_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2022/billups2022-acureef.txt

cd ..

# Stoner et al. 2007 North Iceland Shelf MD99-2269 Holocene Paleomagnetic Secular Variation Data

folder=stoner2007_Iceland_paleomag
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stoner2007/stoner2007.txt

cd ..

# Storegga Slide d18O N. pachyderma data covering the last 3000 years

folder=sejrup2011_Storegga_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sejrup2011/sejrup2011-storegga.txt

cd ..

# Strait of Juan de Fuca Geoduck Clam Growth Data and SST Reconstruction

folder=strom2004_Juan_de_Fuca_geoduck_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/juanfuca-tab.txt

cd ..

# Strom et al. 2004 Strait of Juan de Fuca Geoduck Clam Growth Increment Data and SST Reconstruction

folder=strom2004a_Juan_de_Fuca_geoduck
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/strom2004/strom2004.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/strom2004/strom2004.xls

cd ..

# Subantarctic Atlantic 1.1Ma Dust, Iron and Productivity Reconstructions

folder=martinez-garcia2009_Atlantic_dust
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martinez-garcia2009/martinez-garcia2009.txt

cd ..

# Subantarctic Atlantic Ocean Foraminifera-bound d15N, Iron and Alkenone Flux Data for the last 160,000 years

folder=martinez-garcia2014_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martinez-garcia2014/martinez-garcia2014-alk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martinez-garcia2014/martinez-garcia2014-fe.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martinez-garcia2014/martinez-garcia2014-d15n.txt

cd ..

# Subantarctic Atlantic and Subarctic Pacific 3.6 Ma Alkenone SST Reconstructions

folder=martinez-garcia2010_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/martinez-garcia2010/martinez-garcia2010.txt

cd ..

# Subantarctic sea surface temperatures and salinity change

folder=mashiotta1999_Antarctica_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc11120m-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/e11-2m-tab.txt

cd ..

# Subarctic Northeast Pacific sea surface temperatures during the past 16,000 years

folder=kienast2001_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/jt96-09-tab.txt

cd ..

# Subpolar North Atlantic (ODP984) Holocene Planktic d18O and Mg/Ca Data

folder=came2007_Atlantic_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/came2007/came2007.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp984-tab.txt

cd ..

# Subpolar North Atlantic 2000 Year Alkenone SST Reconstruction

folder=sicre2011_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2011/sicre2011.txt

cd ..

# Subpolar North Atlantic 2000 Year Diatom August SST Reconstruction

folder=miettinen2012_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/miettinen2012/miettinen2012.txt

cd ..

# Subpolar North Atlantic 4500 Year Alkenone SST Reconstructions

folder=sicre2008_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/sicre2008/sicre2008-noaa.txt

cd ..

# Subpolar North Atlantic Foraminifer and IRD Data, 500-340 KYrBP

folder=oppo1998_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp980op-tab.txt

cd ..

# Subpolar North Atlantic Holocene Temperature and Salinity Reconstructions

folder=thornalley2009_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2009/thornalley2009.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rap12-1k-tab.txt

cd ..

# Subpolar North Atlantic Planktic and Benthic Foraminiferal Isotope and Abundance Records during the last 1,200 years

folder=lu2003_Atlantic_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc14a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc20a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc21a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc22a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc19a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc26a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc28a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc13a_iso-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/atlantic/lu2023/lu2023-en539_mc25a_iso-noaa.txt

cd ..

# Subpolar North Atlantic V29-202 200KYr Foraminifer Isotope and Census Data

folder=oppo1995_atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v29-202-tab.txt

cd ..

# Subpolar North Atlantic mid-Pleistocene Faunal Census and SST Data

folder=wright2002_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp980-w-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp984-w-tab.txt

cd ..

# Subtropical NW Atlantic ODP1058 Mid-Pleistocene G. ruber d18O Data

folder=weirauch2008_Atlantic_Ruber
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weirauch2008/weirauch2008.txt

cd ..

# Subtropical North Atlantic Alkenone Sea Surface Temperature Reconstruction for 60,000 to 30,000yr BP

folder=sachs1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m952036s-tab.txt

cd ..

# Subtropical North Atlantic Oxygen Isotope Data Spanning Marine Isotope Stages 6 thru 8

folder=billups2014_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/billups2014/billups2014-odp1059.txt

cd ..

# Subtropical North Atlantic Stable Isotope Data During the mid-Pleistocene

folder=poirier2014_Atlantic_isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/poirier2014/poirier2014-1063.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/poirier2014/poirier2014-1063comp.txt

cd ..

# Subtropical Northeast Pacific Geochemistry and Sediment Physical Property Data Covering the Last 14,000 years

folder=arellano-torres2018_Pacific_geochem
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arellano-torres2018/arellano-torres2018-100yr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arellano-torres2018/arellano-torres2018.txt

cd ..

# Sulu Sea Core MD97-2141 Globoratalia tumida d18O and Mg/Ca Data Spanning Marine Isotope Stages 3-5

folder=weiss2022_Sulu_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/weiss2022/weiss2022-2141-ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/weiss2022/weiss2022-2141-tumida.txt

cd ..

# Sulu Sea Core MD97-2141 Oxygen Isotope and Mg/Ca Data

folder=rosenthal2003_Sulu_Oxygen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m972141r-tab.txt

cd ..

# Sulu Sea Core MD97-2141 Termination I Globoratalia tumida d18O and Mg/Ca Data

folder=weiss2021_Sulu_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weiss2021/weiss2021-md97-2141ruber.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weiss2021/weiss2021-md97-2141tumida.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weiss2021/weiss2021-md97-2141tumida-filtered.txt

cd ..

# Sulu Sea climate and sea level during the past 150,000 years

folder=linsley1996_Sulu_sea_level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp769a-tab.txt

cd ..

# Surface and deep circulation of the N. Atlantic during the past 150,000 years , Duplessy

folder=duplessy1996_Atlantic_paleoceanography
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch72-104-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-108-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-110-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-136-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-194-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-18-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch72-101-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-184-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-191-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-28-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-14-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-197-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-200-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-21-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-32-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73139c-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73139b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-144-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73147b-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md79-254-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-204-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md79-256-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md79-257-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-45-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-205-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md79-250-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-47-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v27-60-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch77-07-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md73-025-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-39-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch74-229-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md82-424-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no75-15-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md80-304-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no77-14-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-24-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch66-03-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v27-86-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch69-32-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-177-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-178-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-180-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no75-23-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no75-31-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-160-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-171-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-181-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-15-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-17-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-26-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-06-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-14-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch72-04-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch72-10-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77180t-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-182-tab.txt



# Surface and deep circulation of the N. Atlantic during the past 150,000 years , Duplessy and Labeyrie



wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch69-69-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-141-tab.txt

cd ..

# Surface and deep circulation of the N. Atlantic during the past 150,000 years , Labeyrie

folder=Labeyrie1996_Atlantic_paleoceanography
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-44-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-101-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch73-102-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch74-226-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch74-227-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-50-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su88-01-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-29-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-29p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no81-076-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no82-13-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su90-11-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch74-228-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-13-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su81-29-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md82-417-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md84-550-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md84-552-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md84-560-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no75-32-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-25-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/no79-25p-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch84-04-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch84-14-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/su90-39-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch84-28-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md77-186-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ch84-27-tab.txt

cd ..

# Symbiont photosynthetic competency and its effect on boron proxies in planktic foraminifera, Puerto Rico, Spring 2010 and 2015, and Santa Catalina Island, Summer 2013

folder=hoenisch2020_Puerto_Rico_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2020/hoenisch2020-instrument.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2020/hoenisch2020-fluor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2020/hoenisch2020-fluor_chlor.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2020/hoenisch2020-metals.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hoenisch2020/hoenisch2020-symbiont.txt

cd ..

# Tasman Sea (ODP1172A) d18O and Mg/Ca Data and SST Reconstruction

folder=nuernberg2006_Tasman_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1172a-tab.txt

cd ..

# Tasman Sea DSDP site 593 Benthic foraminifera B/Ca and Sr/Ca data for the last 1 million years

folder=elmore2024_Tasman_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/elmore2024/elmore2024-dsdp593.txt

cd ..

# Tasmanian Gateway ODP Leg 189 Sediment Data and SST Reconstructions

folder=nuernberg2004_Tasman_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o1172a04-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1168a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1170a-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1171a-tab.txt

cd ..

# The Paleoclimates of Arctic Lakes and Estuaries (PALE) Database

folder=PALE_Database_1994
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/arcss3.pdf
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/10730.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/8620.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/adycha.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/alaze1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/alaze.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/angal.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/arakam.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/ber1ind.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/betenk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/blair.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/bugutak.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/camping.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/circle.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/clamgul.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/crowsnes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/dima2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/dima4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/dlinnoye.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/dunea.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/duvan1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/duvan2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/duvan.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/eightmil.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/eisenmen.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/elgennya.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/elikchan.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/enmynv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/etivlik.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/alnus.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/artemisi.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/betula.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/cyper.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/ericales.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/herbs.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/larix.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/picea.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/pinus.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/poaceae.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/populus.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/excel/salix.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/farewell.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/fb90001.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/figurnoy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/glacial.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/glukhoye.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/grandftr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/grizzly.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/grosven.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/gytgykai.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/harding.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/headwatr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/healy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/hidden.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/homer.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/idavain.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/imnavait.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/jacklond.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/jackwi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/joelake.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/johnson.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/july4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kaiyak.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kalifon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kepler.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/khaler.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/khomur.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kollioks.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kolyma.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/konerg.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/krasiv1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/krasiv-2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/krasiv.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/krest.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kubagar.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kubaga.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kur1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kur2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kuro10b.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kuro11.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kuro12.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kuro4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kurop7.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/kurpeat.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/lakeev.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/lesnoye.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/longmere.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/lorino.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/maltan.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/mamenm.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/manyui.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/maria.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/mechig.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/minakoko.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/minchum.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/mosquito.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/niliq.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/nkilleak.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/oillake.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/oldcamp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/ongivinu.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/otto.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/pedpond.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/penzhin.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/pepelnoy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/puyuk.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/quartz.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/ranger.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/rebel.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/redondo.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/redstone.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/rockisla.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/ruppert.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sakana.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sandsz.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/screamin.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/seagull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/selby.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sithylem.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sn4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sosednee.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/squirrel.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/stad1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/stad2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/stad.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/stlawr2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/sweetlit.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/tangle.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/tanon.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/tenmile.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/alnus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/artemisi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/betula.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/cyper.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/ericales.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/herbs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/larix.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/picea.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/pinus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/poaceae.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/populus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/salix.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/tiinkdhu.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/tuk5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/ulakhan.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/vecher.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/veseloy.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/watana.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/wiener.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/wienlake.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/windmill.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/wonder.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/woronzof.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/wrangle.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/alnpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/artpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/betpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/cyppub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/eripub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/herpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/larpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/picpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/pinpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/poapub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/poppub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/excel/salpub.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/angal.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/crowsnes.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/elikchan.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/etivlik.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/glacial.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/headwatr.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/jacklond.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/joelake.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/kaiyak.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/niliq.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/oldcamp.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/pedpond.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/ranger.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/rebel.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/redondo.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/redstone.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/ruppert.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/sakana.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/screamin.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/seagull.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/selby.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/squirrel.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/tenmile.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/tiinkdhu.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/loi/wonder.loi
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/angal.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/crowsnes.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/etivlik.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/fb90001.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/headwatr.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/jacklond.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/joelake.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/kaiyak.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/kollioks.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/minakoko.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/niliq.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/oldcamp.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/pedpond.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/ranger.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/rebel.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/redondo.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/redstone.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/rockisla.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/ruppert.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/sakana.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/screamin.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/seagull.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/selby.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/sosednee.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/tenmile.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/tiinkdhu.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/wienlake.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/metadata/wonder.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/readme-pale.txt

mkdir text

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/alnus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/artemisi.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/cyper.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/ericales.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/herbs.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/larix.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/picea.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/pinus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/poaceae.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/populus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/arctic/pale/atlasdata/text/salix.txt
cd ..

cd ..

# Thornalley et al. 2010 North Atlantic RAPiD Deglacial Paired Mg/Ca-d18O and d18Osw-SST Reconstructions

folder=thornalley2010_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/thornalley2010/thornalley2010.txt

cd ..

# Tiree Passage, Northwest Scotland Glycymeris glycymeris d18O Data from 1799-2010 CE

folder=reynolds2017_Scotland_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reynolds2017/reynolds2017-tiree.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/reynolds2017/reynolds2017-tiree-sgi.txt

cd ..

# Trinity River Paleovalley Foraminiferal Population Abundance over the past 10,000 years

folder=standring2021_Trinity_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/standring2021/standring2021-foram.txt

cd ..

# Tripati et al. 2001 Ellesmere Island Paleocene Mollusc Stable Isotope Data

folder=tripati2001_Ellesmere_Paleocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2001/tripati2001.txt

cd ..

# Tripati et al. 2005 Eocene Greenhouse-Icehouse Transition Carbon Cycle Data

folder=tripati2005_Eocene
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2005/tripati2005.txt

cd ..

# Tropical Atlantic Alkenone SST Reconstruction for the last 29,000 years

folder=Ruehlemann1999_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/m35003-4-tab.txt

cd ..

# Tropical Atlantic Isotope, Chemistry and SST Data for the Last 27,000 Years

folder=arbuszewski2013_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arbuszewski2013/arbuszewski2013-vm30-40.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arbuszewski2013/arbuszewski2013-vm25-59.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arbuszewski2013/arbuszewski2013-rc24-08.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/arbuszewski2013/arbuszewski2013-rc24-11.txt

cd ..

# Tropical Atlantic ODP1260 Cretaceous Calcareous Nannofossil Data

folder=blair2011_Atlantic_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/blair2011/blair2011.txt

cd ..

# Tropical Atlantic hydrologic cycle during the last glacial

folder=peterson2000_Atlantic_hydrologic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp1002c-tab.txt

cd ..

# Tropical Indian Ocean Basin Hydroclimate Variability 5kyr-3kyrBP Reconstructed from Principal Component Analysis

folder=scroxton2022_Indian_PCA
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/scroxton2022/scroxton2022-pca-precip.txt

cd ..

# Tropical Indian Ocean carbonate during the past 1.5 Ma

folder=bassinot1994_Indian_carbonate
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/carbonate/bassinot1994/md900963.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md900963-tab.txt

cd ..

# Tropical North Atlantic Nd Isotopic Ratio Data over the last 22,000 Years

folder=xie2014_Atlantic_Neodymium
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2014/xie2014-26jpc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/xie2014/xie2014-vm12-107.txt

cd ..

# Tropical Pacific Geochemistry Data and SST Reconstructions for the Late Holocene and Last Glacial Maximum

folder=ford2015_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2015/ford2015-odp849.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2015/ford2015-odp806.txt

cd ..

# Tropical Pacific Paleocene-Eocene Thermal Maximum(~55Ma) Isotope and Mg/Ca Data

folder=zachos2003_Pacific_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/o1209b-z-tab.txt

cd ..

# Tropical Pacific Planktonic Foraminiferal d18O records for 0-6 ka

folder=lakhani2024_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lakhani2024/lakhani2024_d18O.txt

cd ..

# Tropical Pacific Sea Surface Temperature Data from 760-1960 CE

folder=wyman2020_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wyman2020/wyman2020-sst.txt

cd ..

# Tropical Pacific benthic isotope record for 0-5 Ma

folder=mix1995_Pacific_foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp846-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/odp849-tab.txt

cd ..

# Tropical Pacific changes in deep circulation

folder=martin1998_Pacific_circulation
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/v30-49m-tab.txt

cd ..

# Tropical Pacific temperature and circulation during the last glacial maximum

folder=patrick1997_Pacific_LGM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/mw91-15-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/tr16331b-tab.txt

cd ..

# Tropical Planktonic Foraminiferal d18O records for 0-6 ka

folder=lakhani2022_Tropical_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/margo/lakhani2022/lakhani2022-tropics-db.txt

cd ..

# VM19-193, Indian Ocean, 250,000 year long biomarker reconstructions

folder=windler2022_Indian_biomarker
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/windler2022/vm19-193_windler2022.txt

cd ..

# Villa et al. 2003 SEDANO Antarctic Sediment Drift Microfossil Data

folder=villa2003_Antarctic_Sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/villa2003/villa2003.xls

cd ..

# Waelbroeck et al 1998 SST Estimates, Equatorial and N. Atlantic

folder=waelbroeck1998_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/readme_waelbroek1998.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a1.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/waelbroeck1998/table_a.txt

cd ..

# Walsingham Cavern, Bermuda Sedimentary and Isotope Data and Temperature Anomalies over the last 3500 Years

folder=vanhengstum2015_Bermuda_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vanhengstum2015/vanhengstum2015-whc6.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vanhengstum2015/vanhengstum2015-whc4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/vanhengstum2015/vanhengstum2015-whc2.txt

cd ..

# Watkins 2007 Antarctic CIROS-1 Paleogene Calcareous Nannofossils Data

folder=watkins2007_Antarctic_Nannofossils
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/watkins2007/watkins2007.txt

cd ..

# Watkins and Self-Trail 2005 Atlantic Gulf Stream Cretaceous Calcareous Nannofossil Data

folder=watkins2005b_Atlantic_Nannofossil
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/watkins2005b/watkins2005b.txt

cd ..

# Watkins et al. 2005 North Atlantic Cretaceous Calcareous Nannofossil Data

folder=watkins2005_Atlantic_Nannofossil
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/watkins2005/watkins2005.txt

cd ..

# Weddell Sea ODP690 Paleocene-Eocene Thermal Maximum Mg/Ca and d18O Data

folder=kozdon2020_Weddell_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2020/kozdon2020d18o.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/kozdon2020/kozdon2020mg-ca.txt

cd ..

# Weddell Sea d13C and d18O Data during the Paleocene-Eocene Thermal Maximum

folder=hupp2020_Weddell_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/hupp2020/hupp2020-odp690b.txt

cd ..

# Weeks Bay, Alabama Diatom, Stable Isotope, Lithology and Trace Metal Data over the last 7000 years

folder=minzoni2020_Alabama_Diatom
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/minzoni2020/minzoni2020-isotope.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/minzoni2020/minzoni2020-age.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/minzoni2020/minzoni2020-metals.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/minzoni2020/minzoni2020-lith.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/minzoni2020/minzoni2020-diatoms.txt

cd ..

# West African Margin 25,000 Year Leaf Wax Isotope Data and Precipitation Reconstruction

folder=tierney2017_Africa_Leaf
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2017/tierney2017gc27.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2017/tierney2017gc68.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2017/tierney2017gc37.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tierney2017/tierney2017gc49.txt

cd ..

# West European Shelf 2000 Year BWT-SST Reconstructions

folder=eiriksson2006_Europe_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/eiriksson2006/eiriksson2006.txt

cd ..

# West Greenland Trough-Mouth Fan Sedimentary Data

folder=ocofaigh2013_Greenland_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ocofaigh2013/ocofaigh2013-he-02pc-xqrd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ocofaigh2013/ocofaigh2013-vc46-xqrd.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ocofaigh2013/ocofaigh2013-vc46-source.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ocofaigh2013/ocofaigh2013-vc46-basal.txt

cd ..

# West Pacific GeoB17402-2 18,000 Year Foraminifera Stable Isotope Data

folder=shao2021_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/shao2021/shao2021.txt

cd ..

# West Pacific Warm Pool B/Ca, Mg/Ca Data and Sea Surface Temperature Reconstructions since the Pliocene

folder=white2020_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2020-pp/white2020-806-mgca-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/white2020-pp/white2020-806-bca.txt

cd ..

# West Pacific Warm Pool Fossil Planktic Foraminifer Trace Metal and Oxygen Isotope Data during the Pliocene

folder=wycech2020_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wycech2020/wycech2020-odp806.txt

cd ..

# Western Arctic Ocean 8KYr BWT and Sea Ice Reconstructions

folder=farmer2011_Arctic_Sea_Ice
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/farmer2011/farmer2011.txt

cd ..

# Western Atlantic Deglacial Paired Benthic Mg/Ca and d18O Data

folder=came2007b_Atlantic_d18O
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/came2007b/came2007b.txt

cd ..

# Western Atlantic Late Paleogene Foraminiferal Stable Isotope and Mg/Ca Data

folder=katz2011_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/katz2011/katz2011odp1053.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/katz2011/katz2011asp5mg-ca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/katz2011/katz2011asp5iso.txt

cd ..

# Western Equatorial Atlantic VM28-122 Deglacial Benthic Stable Isotope Data

folder=guilderson2021_Atlantic_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/guilderson2021/guilderson2021benthic-b-ca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/guilderson2021/guilderson2021benthic-composite.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/guilderson2021/guilderson2021benthic-new.txt

cd ..

# Western Equatorial Pacific ODP806B Late Pliocene Mg/Ca, d18O, and SST

folder=medina-elizalde2010_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/medina-elizalde2010/medina-elizalde2010.txt

cd ..

# Western Equatorial Pacific Ocean IODP Site U1486 Benthic and Planktic Stable Isotopes, Mg/Ca, and 230Th Fluxes from 698ka

folder=lambert2023_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lambert2023/lambert2023-u1486-focus.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lambert2023/lambert2023-u1486-isot.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lambert2023/lambert2023-u1486-mgca.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lambert2023/lambert2023-u1486-230Th.txt

cd ..

# Western Equatorial Pacific Ocean IODP Site U1486 Bulk d15N and Age Model Data from 1421 ka to 0.67 ka

folder=lambert2022_Pacific_Nitrogen
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/lambert2022/lambert2022-u1486-d15n.txt

cd ..

# Western Equatorial Pacific Ocean surface water pH and PCO2, SST and geochemistry during the last 23,000 years

folder=palmer2003_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/ERDC092BX.Palmer.2003.txt

cd ..

# Western Equatorial Pacific Pliocene Mg/Ca and Subsurface Temperature

folder=ford2015b_Pacific_Mg-Ca
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2015b/ford2015b.txt

cd ..

# Western Equatorial Pacific Sea Surface and Subsurface Temperature and Mg/Ca Data over the last 4 million years

folder=ford2019_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ford2019/ford2019-odp806.txt

cd ..

# Western Makassar Strait Radiocarbon, d13C and d18O Data since the Last Glacial Termination

folder=stott2020_Makassar_LGM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2020/stott2020-md98-2164.txt

cd ..

# Western Makassar Strait Radiocarbon, d18O and d13C Data During the Last 30 ka

folder=stott2020_Makassar_30ka
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2020-grl/stott2020-2181-d18o-d13c.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2020-grl/stott2020-2181-c14.txt

cd ..

# Western North Pacific Glacial Benthic Stable Isotope Data

folder=matsumoto2002_Pacific_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/matsumoto2002/matsumoto2002.txt

cd ..

# Western Norway Lake Kråkenes and Nordic sea Sediment data

folder=kraakenes2009_Norway_sed
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleolimnology/europe/norway/kraakenes2009.txt

cd ..

# Western Pacific Geochemistry, Stable Isotope, and Atmospheric CO2 Data over the last 20 Million Years

folder=tripati2009_Pacific_CO2
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/tripati2009/tripati2009.txt

cd ..

# Western Pacific Ocean (MD98-2188) Sea Surface and Subsurface Temperature Reconstructions over the last 13 kyr

folder=dang2012_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/reconstructions/climate12k/temperature/version1.0.0/Temp12k_directory_NOAA_files/MD982188.Dang.2012.txt

cd ..

# Western Pacific Stable Isotope Data Around the Intertropical Convergence Zone during the Last Glacial Maximum

folder=leech2013_Pacific_ITCZ
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-229.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-227.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm34-2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm19-110.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-ggc49.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-rc17-176.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-235tw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm24-110.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm24-150.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-233.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-234.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-230.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-213.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-246.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-236.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/leech2013/leech2013-vm28-235.txt

cd ..

# Western Pacific Warm Pool ODP871 500 KYr Foraminiferal d18O and Mg/Ca SST

folder=dyez2013_Pacific_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2013/dyez2013-noaa.txt

cd ..

# Western Pacific Warm Pool Oxygen Isotope and Mg/Ca Data and SST Reconstruction during the Pleistocene

folder=dyez2014_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/dyez2014-grl/dyez2014-grl.txt

cd ..

# Western Pacific Warm Pool Pleistocene paired d18O-Mg/Ca and SST Reconstruction

folder=degaridel-thoron2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md972140-tab.txt

cd ..

# Western Pacific Warm Pool Sea Surface Temperature Reconstruction and Biomarker and Geochemistry Data for the past 10 million years

folder=liu2022_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/liu2022/liu2022-u1488-alkenone.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/liu2022/liu2022-u1488-tex86.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/pacific/liu2022/liu2022-odp806-mgca.txt

cd ..

# Western Tropical Atlantic 21KYr Mg/Ca SST, d18Osw, and SSS

folder=weldeab2006_Atlantic_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/weldeab2006/weldeab2006.txt

cd ..

# Western Tropical North Atlantic Foraminifera-based Nd Isotope Data Since the Last Glacial Maximum

folder=huang2014_Atlantic_Foram
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2014/huang2014-46cdh.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2014/huang2014-25ggc.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/huang2014/huang2014-9ggc.txt

cd ..

# Western Tropical Pacific Holocene Sea Surface Temperature and Salinity Reconstructions

folder=stott2004_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2004/stott2004-binned-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2004/stott2004-md982170-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2004/stott2004-md982176-noaa.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/stott2004/stott2004-md982181-noaa.txt

cd ..

# Western Tropical Pacific MD98-2181 MIS3 SST Reconstruction

folder=saikku2009_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/saikku2009/saikku2009.txt

cd ..

# Western Tropical Pacific SST and Isotope Data From MD98-2181 During the Holocene

folder=khider2014_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/khider2014/khider2014-sst.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/khider2014/khider2014-raw.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/khider2014/khider2014-benth.txt

cd ..

# Western Tropical Pacific, 21Kyr BP to present, Foraminiferal Stable Isotope, Mg/Ca and SST Data

folder=stott2007_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md70-07-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md76-07-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/md81-07-tab.txt

cd ..

# Williams and Bralower 1995 North Sea Basin Cretaceous Paleocean Data

folder=williams1995_North_Sea_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/readme_williams1995.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl1nsea.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl1nsea.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl2nsea.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl2nsea.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl3nsea.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl3nsea.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl4nsea.prn
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/williams1995/tbl4nsea.xls

cd ..

# Wollenburg et al 2000 Arctic Ocean Paleoproductivity Data

folder=wollenburg2000_Arctic_Paleoproductivity
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/readme_wollenburg2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table2.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table2.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table3.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table3.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table4.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table4.xls
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table5.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wollenburg2000/table5.xls

cd ..

# Wortmann et al 1999 Early Cretaceous Tethys Major-Element Data

folder=wortmann1999_Tethys_Cretaceous
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wortmann1999/readme_wortmann1999.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/wortmann1999/wortmann1999_data.txt

cd ..

# Yamamoto et al. 2005 Northwestern Pacific 144KYr Alkenone SST Estimates

folder=yamamoto2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yamamoto2005/yamamoto2005.txt

cd ..

# Yamamoto et al. 2007 California Current 136KYr Alkenone SST Estimates

folder=yamamoto2007_California_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yamamoto2007/yamamoto2007.txt

cd ..

# Yasuhara et al. 2008 W. North Atlantic Deglacial Benthic Ostracode Data

folder=yasuhara2008_Atlantic_Ostracode
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yasuhara2008/yasuhara2008.txt

cd ..

# Yasuhara et al. 2009 Equatorial Atlantic ODP925 500KYr Benthic Ostracod Species Diversity Data

folder=yasuhara2009_Atlantic_Ostracod
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yasuhara2009/yasuhara2009.txt

cd ..

# Yok Balum Cave, Belize 2000 Year Stalagmite Stable Isotope Data

folder=kennett2012_Belize_Isotope
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/speleothem/belize/yok-balum2012cariaco-ti-noaa.txt

cd ..

# Yokoyama et al 2000 Timing LGM from Observed Sea-level Minima

folder=yokoyama2000_Australia_Sea_Level
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yokoyama2000/readme_yokoyama2000.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yokoyama2000/table1_c14.doc
wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/yokoyama2000/table1_c14.txt

cd ..

# Zachos et al. 2001 Cenozoic Global Deep-Sea Stable Isotope Data

folder=zachos2001_Global_Cenozoic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zachos2001/zachos2001.txt

cd ..

# Zachos et al. 2005 Paleocene-Eocene Thermal Maximum Data

folder=zachos2005_PETM
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zachos2005/zachos2005.txt

cd ..

# Zhang et al. 2009 South China Sea ODP1143 5MYr Spectral Reflectance Data

folder=zhang2009_South_China_Sea_Reflectance
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/zhang2009/zhang2009.txt

cd ..

# Ziegler and Murray 2007 Central Pacific ODP1215 Cenozoic Elemental Concentration Data

folder=ziegler2007_Pacific_Cenozoic
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/ziegler2007/ziegler2007.txt

cd ..

# Zn/Si over the last interglacial transition

folder=ellwood2000_LIG
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13252x-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/ai107-22-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13259x-tab.txt
wget https://www.ncei.noaa.gov/pub/data/paleo/paleocean/sediment_files/complete/rc13271x-tab.txt

cd ..

# de Garidel-Thoron et al. 2005 Western Pacific Warm Pool Pleistocene paired d18O-Mg/Ca and SST Reconstruction

folder=degaridel-thoron2005_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/degaridel-thoron2005/degaridel-thoron2005.txt

cd ..

# de Garidel-Thoron et al. 2007 Warm Pool 30ka Multiproxy SST

folder=degaridel-thoron2007_Pacific_SST
mkdir ${folder}
cd ${folder}

wget https://www.ncei.noaa.gov/pub/data/paleo/contributions_by_author/degaridel-thoron2007/degaridel-thoron2007.txt

