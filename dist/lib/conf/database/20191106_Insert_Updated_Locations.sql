
INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13414140,
    'FEEI2',
    '05435500',
    'NCRFC',
    'IL',
    '7090003',
    'PECATONICA RIVER AT FREEPORT  IL',
    42.30028,
    -89.61528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FEEI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22720787,
    'NW122',
    NULL,
    'SERFC',
    'GA',
    '3060106',
    'SAVANNAH RIVER ABOVE AUGUSTA CANAL NEAR BONAIR GA',
    33.56138889,
    -82.0511111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW122'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23448951,
    'TUCW1',
    '13344500',
    'NWRFC',
    'WA',
    '17060107',
    'TUCANNON RIVER NEAR STARBUCK  WA',
    46.50556,
    -118.06528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23459939,
    'PULW1',
    '13348000',
    'NWRFC',
    'WA',
    '17060108',
    'SOUTH FORK PALOUSE RIVER AT PULLMAN  WA',
    46.7325,
    -117.18
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PULW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23459517,
    'HOPW1',
    '13351000',
    'NWRFC',
    'WA',
    '17060108',
    'PALOUSE RIVER AT HOOPER  WA',
    46.75861,
    -118.14778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOPW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23637992,
    'MLKW1',
    '14013000',
    'NWRFC',
    'WA',
    '17070102',
    'MILL CREEK NEAR WALLA WALLA  WA',
    46.00806,
    -118.1175
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23637976,
    'FMBW1',
    '14013700',
    'NWRFC',
    'WA',
    '17070102',
    'MILL CREEK AT FIVE MILE RD BR NR WALLA WALLA  WA',
    46.08583,
    -118.22722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FMBW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23637966,
    'MLLW1',
    '14015000',
    'NWRFC',
    'WA',
    '17070102',
    'MILL CREEK AT WALLA WALLA  WA',
    46.07639,
    -118.2725
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10205379,
    'LPCI3',
    NULL,
    'OHRFC',
    'IN',
    '5120108',
    'LITTLE PINE CREEK NEAR MONTMORENCI  IN',
    40.47444,
    -87.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPCI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 66922,
    'NW127',
    '02277600',
    'SERFC',
    'FL',
    '3090202',
    'LOXAHATCHEE RIVER NEAR JUPITER FL',
    26.93922405,
    -80.1750444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW127'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21412775,
    'NW065',
    '09525500',
    'CBRFC',
    'AZ',
    '15030107',
    'YUMA MAIN CANAL BLW COLORADO R. SIPHON AT YUMA  AZ',
    32.73032465,
    -114.6199524
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW065'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7731677,
    'NW223',
    '01208990',
    'NERFC',
    'CT',
    '1100006',
    'SAUGATUCK RIVER NEAR REDDING  CT',
    41.29454,
    -73.39512029
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW223'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2441950,
    'RBCM5',
    NULL,
    'NCRFC',
    'MN',
    '7040004',
    'BEAR CREEK AT ROCHESTER  MN',
    44.00801935,
    -92.445731
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2441816,
    'RCCM5',
    NULL,
    'NCRFC',
    'MN',
    '7040004',
    'CASCADE CREEK AT ROCHESTER  MN',
    44.0307973,
    -92.4718439
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2353824,
    'MAYM5',
    NULL,
    'NCRFC',
    'MN',
    '7010205',
    'SOUTH FORK CROW RIVER NEAR MAYER  MN',
    44.9055181,
    -93.8849675
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MAYM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8783547,
    'ADRN7',
    NULL,
    'SERFC',
    'NC',
    '3020201',
    'CRABTREE CREEK AT ANDERSON DRIVE AT RALEIGH  NC',
    34.05883,
    -84.11069
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4651038,
    'NW250',
    '01478120',
    'MARFC',
    'PA',
    '2040205',
    'East Branch White Clay Creek at Avondale  PA',
    39.8284429,
    -75.780773
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW250'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4653422,
    'NW251',
    '01483200',
    'MARFC',
    'DE',
    '2040205',
    'BLACKBIRD CREEK AT BLACKBIRD  DE',
    39.36627778,
    -75.66938889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW251'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWAO1',
    '04193994',
    'OHRFC',
    'OH',
    '4100009',
    'Ai Creek near Swanton OH',
    41.5825,
    -83.861111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWAO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7701182,
    'MDDC3',
    NULL,
    'NERFC',
    'CT',
    NULL,
    'Connecticut River at Middletown',
    41.55916,
    -72.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MDDC3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5029551,
    'GCRM7',
    '07021020',
    'LMRFC',
    'MO',
    '7140107',
    'Castor River at Greenbriar  MO',
    36.86141,
    -90.51116
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCRM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DYRI4',
    '05418110',
    'NCRFC',
    'IA',
    '7060006',
    'NF Maquoketa River below Bear Cr at Dyersville  IA',
    42.470556,
    -91.122222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DYRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KASO1',
    '04197277',
    'OHRFC',
    'OH',
    '4100011',
    'Wolf Creek near Kansas OH',
    41.213889,
    -83.294167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KASO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PNGA4',
    '07047800',
    'LMRFC',
    'AR',
    '8020203',
    'St. Francis River at Parkin  AR',
    35.273056,
    -90.559167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PNGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSSN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Grass River at Massena',
    44.94888,
    -74.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSSN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLDN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'South Papillion Creek at Wehrspann Lake',
    41.16944,
    -96.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HENM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Minnesota River at Henderson',
    44.52527,
    -93.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HENM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOAM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Snake River (MN) at Mora',
    45.86416,
    -93.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'STFL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River near St. Francisville',
    30.71166,
    -91.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STFL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DONL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Donaldsonville',
    30.10166,
    -90.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DONL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19086183,
    'RRVL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Reserve',
    30.05083,
    -90.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRVL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCNL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Bonnet Carre North near Montz',
    30.0,
    -90.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCNL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KNRO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Uncle John Creek at Kingfisher',
    35.86416,
    -97.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNRO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FWCO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Wolf Creek near Fort Supply',
    36.44055,
    -99.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FWCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WDWO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'North Canadian River at Woodward',
    36.44055,
    -99.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDWO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTMN1',
    '06805600',
    'MBRFC',
    'NE',
    '10240001',
    'Missouri River at Plattsmouth  NE',
    41.0,
    -95.868
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTMN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LELO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Tuscarawas River at Leesville Dam Pool',
    40.47444,
    -81.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LELO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIVO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Tuscarawas River at Bolivar Dam Pool',
    40.64388,
    -81.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIVO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCDP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Robinson Run at McDonald',
    40.37277,
    -80.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCDP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WWCO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Wewoka Creek near Wetumka',
    35.18638,
    -96.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SDFO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Deep Fork River near Stroud',
    35.69472,
    -96.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SDFO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NPGW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'North Fork Popo Agie River at Gallinger Ranch',
    42.89805,
    -108.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NPGW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SFTM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Birch Creek (MT) near Swift Dam near Dupuyer',
    48.1525,
    -112.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFTM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WIWC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Willow Creek (Russian River) near 3rd Bridge',
    38.42361,
    -123.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WIWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DAWC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Napa River at Dunaweal Lane',
    38.57611,
    -122.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DAWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLEM5',
    '05135100',
    'NCRFC',
    'MN',
    NULL,
    'Rapid River near Clementson',
    48.690278,
    -94.433056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLEM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BAHK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Cumberland River at Barkley Lake Pool',
    37.01694,
    -88.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BAHK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PSXW2',
    NULL,
    'OHRFC',
    'WV',
    '5020004',
    'CHEAT RIVER NEAR PARSONS  WV',
    39.11861,
    -79.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PSXW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CECP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Miller''s Run at Cecil TWP',
    40.32194,
    -80.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CECP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VLBP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Brush Creek at Valley Brook',
    40.27111,
    -80.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VLBP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLYP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Peter''s Creek at Venetia',
    40.23722,
    -80.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLYP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AVEP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Cross Creek at Avella',
    40.27111,
    -80.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AVEP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KNYM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Blue River at 71 Highway',
    38.98277,
    -94.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNYM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBEM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Missouri River at Sibley',
    39.16944,
    -94.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBEM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MIAM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Missouri River at Miami',
    39.32194,
    -93.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MIAM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17611427,
    'HCCC1',
    '11125605',
    'CNRFC',
    'CA',
    '18060010',
    'HILTON CYN C NR SANTA YNEZ CA',
    34.5838890075684,
    -119.985000610352
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'POWO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at Powhatan Point',
    39.86416,
    -80.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'POWO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NMSI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Cicero Creek at Morse Reservoir',
    40.06777,
    -86.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NMSI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cascade Creek near Rochester 3W',
    44.01694,
    -92.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4947221,
    'GLLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Gull Lake Dam (Brainerd 9NW)',
    46.4111,
    -94.3533
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4835614,
    'PKGM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Grand Rapids 3WNW-Pokegama Dam',
    47.2508,
    -93.5861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PKGM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2355782,
    'HSNM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Hutchinson 1N - Otter Lk',
    44.8956,
    -94.3689
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HSNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2119516,
    'BVRM5',
    NULL,
    'NCRFC',
    'MN',
    '7040003',
    'WHITEWATER RIVER NEAR BEAVER  MN',
    44.15079757,
    -92.0048843
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4963841,
    'MTLM5',
    NULL,
    'NCRFC',
    'MN',
    '7010108',
    'LONG PRAIRIE RIVER NEAR MOTLEY  MN',
    46.32024257,
    -94.6483476
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4841870,
    'LIBM5',
    NULL,
    'NCRFC',
    'MN',
    '7010103',
    'MISSISSIPPI RIVER BELOW SANDY RIVER NR LIBBY  MN',
    46.78967058,
    -93.328837
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LIBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2723035,
    'SFBM5',
    NULL,
    'NCRFC',
    'MN',
    '7010203',
    'ST. FRANCIS RIVER NEAR BIG LAKE  MN',
    45.38524316,
    -93.7341359
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4836346,
    'WRBM5',
    NULL,
    'NCRFC',
    'MN',
    '7010103',
    'SWAN RIVER NEAR WARBA  MN',
    47.1110521,
    -93.264099
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7015259,
    'TRCM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Austin 3NW',
    43.6847,
    -93.0394
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNCN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Antelope Creek at Holmes Lake',
    40.77944,
    -96.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNCN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RAYN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Oak Creek at Branched Oak Reservoir',
    40.98277,
    -96.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RAYN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VWBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Vina-Woodson Bridge',
    39.915,
    -122.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VWBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'POCW1',
    '12395950',
    'NWRFC',
    'WA',
    '17010216',
    'PEND OREILLE RIVER AT CUSICK  WA',
    48.336111,
    -117.291944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'POCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PDVW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Fox River (North) at Pardeeville',
    43.55916,
    -89.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDVW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RUSM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Redwood River at Russell',
    44.32194,
    -95.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RUSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4111564,
    'WSDM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Dawson 7W',
    44.9361,
    -96.1925
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPKI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'East Fork White River at Sparksville',
    38.77944,
    -86.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPKI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BFRI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'East Fork White River near Bedford',
    38.84722,
    -86.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFRI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLLI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'East Fork White River at Williams',
    38.81333,
    -86.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLLI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WHLI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Muscatatuck River at Wheeler Hollow',
    38.77944,
    -86.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHLI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MYRW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Mud River WV at Myra',
    38.22027,
    -82.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MYRW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUFC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Fish Ladder at Masson Dam',
    37.22027,
    -121.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUFC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9407582,
    'NW253',
    '01491500',
    'MARFC',
    'MD',
    '2060005',
    'TUCKAHOE CREEK NEAR RUTHSBURG  MD',
    38.96680556,
    -75.9430556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW253'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4762986,
    'NW256',
    '01494850',
    'MARFC',
    'PA',
    '2060002',
    'East Branch Big Elk Creek at Forestville  PA',
    39.8223306,
    -75.8968883
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW256'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4768920,
    'NW254',
    '01492500',
    'MARFC',
    'MD',
    '2060002',
    'SALLIE HARRIS CREEK NEAR CARMICHAEL  MD',
    38.96488889,
    -76.1088333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW254'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KAWO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Kaw Lake',
    36.69472,
    -96.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KAWO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11689144,
    'NW259',
    '01589320',
    'MARFC',
    'MD',
    '2060003',
    'DEAD RUN TRIBUTARY AT WOODLAWN  MD',
    39.31805556,
    -76.73577778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW259'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FOMS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Catawba River at Lake Wylie',
    35.01694,
    -81.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOMS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPTM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Minnesota River at St Peter',
    44.305,
    -93.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SGSM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'St. George Creek at Straits Point',
    38.13555,
    -76.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGSM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WOOM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patapsco River at Woodstock',
    39.32194,
    -76.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WOOM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELPM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patapsco River at Ellicott City',
    39.27111,
    -76.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELPM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELKM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patapsco River near Elkridge below Patapsco Valley',
    39.20333,
    -76.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELKM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CSBV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Back Creek (Bath Co. VA) at Cassidy Bridge IFLOWS',
    38.13555,
    -79.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSBV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GDMV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Jackson River at Gathright Dam',
    37.94888,
    -79.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDMV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYEC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek at Edenvale',
    37.27111,
    -121.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYQC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek below Percolation Pond',
    37.23722,
    -121.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYQC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYWC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek at Piercy Rd',
    37.25416,
    -121.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYYC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek at E Williams Rd',
    37.33888,
    -121.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYYC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WIGC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Wiggins Creek at Rainsville Road',
    38.27111,
    -122.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WIGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTMC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Willow Brook at Old Redwood Highway Bridge',
    38.27111,
    -122.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTVC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Willow Brook at Stony Point Road',
    38.27111,
    -122.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTVC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23804986,
    'NW365',
    '14205400',
    'NWRFC',
    'OR',
    '17090010',
    'EAST FORK DAIRY CREEK NEAR MEACHAM CORNER  OR',
    45.68233568,
    -123.069553
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW365'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23894452,
    'NW370',
    '14313500',
    'NWRFC',
    'OR',
    '17100301',
    'N UMPQUA RIVER BLW LEMOLO LK  NR TOKETEE FALLS  OR',
    43.32206866,
    -122.1955907
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW370'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23901535,
    'NW369',
    '14308500',
    'NWRFC',
    'OR',
    '17100302',
    'ELK CREEK NR DREW  OR',
    42.89012159,
    -122.9178303
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW369'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RNKW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Greenbrier River at Renick',
    38.0,
    -80.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNKW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CBMI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Snake River below Milner - Combined',
    42.52527,
    -114.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBMI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BNUI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Bruneau River near Bruneau',
    42.88111,
    -115.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BNUI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SUCI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Succor Creek near Homedale',
    43.62694,
    -116.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUCI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCJO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Succor Creek near Jordan Valley',
    43.22027,
    -117.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCJO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDDI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Boise River below Diversion Dam',
    43.54222,
    -116.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOMI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Boise River near Middleton',
    43.69472,
    -116.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOMI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WHRI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Wildhorse River at Brownlee',
    44.86416,
    -116.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHRI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOXN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Reservoirs at Box Butte Reservoir',
    42.4575,
    -103.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOXN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTKW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Chehalis River near Chehalis R nr Pe Ell',
    46.47444,
    -123.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ACRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Alpowa Creek at Mouth',
    46.40666,
    -117.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SRCW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Skokomish River at Combined Forks Virtual Gage',
    47.305,
    -123.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MMRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'White River at Mud Mtn. Dam - Outflow',
    47.13555,
    -121.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MMRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EFBI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'East Fork Bruneau River near Hot Springs',
    42.55916,
    -115.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFBI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EFJI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'East Fork Jarbidge River near Three Creek',
    42.01694,
    -115.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFJI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBEC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Malibu Creek below Cold Creek',
    34.06777,
    -118.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HCFL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Hero Canal (FS) near',
    29.79638,
    -90.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCFL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSEI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'New York Canal Diversion at Boise',
    43.54222,
    -116.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSEI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MABO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'North Fork Malheur River above Beulah Reservoir',
    43.96583,
    -118.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MABO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCCI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Pine Creek (West-central Idaho) near Cambridge',
    44.59305,
    -116.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCCI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PWDO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Powder River (OR) at Baker City',
    44.77944,
    -117.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PWDO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'THFO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Powder River (OR) below Thief Valley Reservoir',
    45.0,
    -117.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'THFO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24114805,
    'HOPI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Lake Pend Oreille at Hope',
    48.27111,
    -116.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOPI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPWI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Little Sioux River at Spencer',
    43.13555,
    -95.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPWI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NAPT2',
    NULL,
    'LMRFC',
    'TX',
    NULL,
    'Sulphur River near Naples',
    33.25416,
    -94.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NAPT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NCRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Nason Creek near Mouth',
    47.81333,
    -120.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WFWR1',
    NULL,
    'NERFC',
    'RI',
    NULL,
    'Blackstone River above Woonsocket',
    42.0,
    -71.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WFWR1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FALT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Falcon Lake',
    26.55916,
    -99.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FALT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RGDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Rio Grande City',
    26.37277,
    -98.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RGDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MADT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Anzalduas Reservior',
    26.11861,
    -98.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MADT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCGI3',
    '03361605',
    'OHRFC',
    'IN',
    '5120204',
    'BRANDYWINE CREEK AT GREENFIELD  IN',
    39.785861,
    -85.755972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCGI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Mercedes',
    26.06777,
    -97.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ROKO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Rock Creek (OR) near Haines',
    44.915,
    -118.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EGRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Eagle Creek near Richland',
    44.7625,
    -117.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LOBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Lower Brownsville',
    25.88111,
    -97.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RHRN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Genesee River at Rochester',
    43.16944,
    -77.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHRN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DADN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Black River below Dadville',
    43.83027,
    -75.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DADN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YATK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Blaine Creek above Yatesville Lake Outflow',
    38.11861,
    -82.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YATK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ECTW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Chippewa River (WI) below Dells Dam (Tailwater)',
    44.83027,
    -91.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECTW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ECLW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Chippewa River (WI) at Eau Claire',
    44.81333,
    -91.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECLW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RPLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Elk River near Replete (Left Fork Holly)',
    38.69472,
    -80.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RPLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ETMW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Elk River at Elk Two Mile',
    38.37277,
    -81.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ETMW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Greenbrier River at Cloverlick',
    38.32194,
    -79.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TJLO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Sunday Creek at Tom Jenkins Dam',
    39.54222,
    -82.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TJLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LONW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Kanawha River at London Locks',
    38.18638,
    -81.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LONW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RNOO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at Willow Island Lock',
    39.35583,
    -81.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNOO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RACW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Ohio River at Racine Lock',
    38.93194,
    -81.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RACW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10082040,
    'BYBI2',
    '03337100',
    'OHRFC',
    'IL',
    '5120109',
    'BONEYARD CREEK AT LINCOLN AVE AT URBANA  IL',
    40.10166,
    -88.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BYBI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MVLO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Lake Fork Mohican River above Mohicanville Dam',
    40.72861,
    -82.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MVLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DMDM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Dimondale',
    42.64388,
    -84.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DMDM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6570914,
    'BLII4',
    '05451080',
    'NCRFC',
    'IA',
    '7080207',
    'South Fork Iowa River near Blairsburg  IA',
    42.54222,
    -93.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLII4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14190051,
    'HEEA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Mississippi River at Helena',
    34.50833,
    -90.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HEEA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18988440,
    'WBHL1',
    '07377780',
    'LMRFC',
    'LA',
    '8070202',
    'White Bayou at State Hwy 64 near Zachary  LA',
    30.64917,
    -91.13139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSCI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) near IFC--Story City 120t',
    42.16944,
    -93.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSCI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ESQI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) near Ames Hwy E18',
    42.1525,
    -93.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESQI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSQI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) near IFC--Gilbert 160th S',
    42.11861,
    -93.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSQI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLNC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Ballona Creek at Sawtell Boulevard',
    33.99972,
    -118.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BZNC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River near Balzac',
    40.35583,
    -103.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BZNC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'REPO1',
    '04197152',
    'OHRFC',
    'OH',
    '4100011',
    'Rock Creek near Republic OH',
    41.101667,
    -83.053889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REPO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBNO1',
    '03118209',
    'OHRFC',
    'OH',
    '5040001',
    'West Branch Nimishillen Creek at North Canton OH',
    40.868056,
    -81.384444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBNO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBTO1',
    '03118299',
    'OHRFC',
    'OH',
    '5040001',
    'W Br Nimishillen Crk at Tuscarawas St at Canton OH',
    40.800833,
    -81.390833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBTO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ZMBO1',
    '03118258',
    'OHRFC',
    'OH',
    '5040001',
    'Zimber Ditch at North Canton OH',
    40.870278,
    -81.416389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ZMBO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIGI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Big Creek Ponding Area (Central IA) near Polk City',
    41.7625,
    -93.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIGI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLKI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Big Creek Lake (Central IA) near Polk City',
    41.79638,
    -93.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLKI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AKNI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Fourmile Creek (Central IA) near Ankeny US 69',
    41.77944,
    -93.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AKNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JULC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River near Julesburg',
    40.98277,
    -102.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JULC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Greenbrier River at Marlinton',
    38.22027,
    -80.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATWC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River at Atwood',
    40.54222,
    -103.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATWC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ANRC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte (Reservoirs) at Antero Reservoir',
    38.99972,
    -105.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WNDI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'North Walnut Creek (Central IA) at IFC--Windsor He',
    41.61,
    -93.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNDI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JDAI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Jordan Creek (Central IA) at West Des Moines',
    41.57611,
    -93.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JDAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JTSM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Shiawassee River at JAMES TOWNSHIP',
    43.35583,
    -84.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JTSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKBO1',
    '03138791',
    'OHRFC',
    'OH',
    '5040003',
    'Little Killbuck Creek near Burbank OH',
    40.995,
    -82.020278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKBO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DNDM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'River Raisin at Dundee',
    41.96583,
    -83.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNDM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SANK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Pawnee River near Sanford',
    38.18638,
    -99.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SANK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMPM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Comstock Park',
    43.03388,
    -85.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMPM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RBNM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Robinson Township',
    43.03388,
    -86.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EGMM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'East Gallatin River near Manhattan',
    45.89805,
    -111.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGMM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYNM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Missouri River at Canyon Ferry Reservoir',
    46.64388,
    -111.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYNM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HVDM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Missouri River at Helena Valley Reservoir',
    46.64388,
    -111.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HVDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RDZM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Missouri River at Great Falls Central Ave Bridge',
    47.50833,
    -111.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDZM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSRL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Atchafalaya River at Bayou Sorrel Lock',
    30.11861,
    -91.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSRL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PISM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River at Pishkun Reservoir near Augusta',
    47.67777,
    -112.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PISM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JFSM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Jones Falls at Mount Washington in Baltimore',
    39.37277,
    -76.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JFSM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 937020624,
    'DAWM5',
    NULL,
    'NCRFC',
    'MN',
    '7020003',
    'WEST BRANCH LAC QUI PARLE RIVER AT DAWSON  MN',
    44.9291272,
    -96.052814
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DAWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPYC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte (Reservoirs) at Spinney Mountain Rese',
    38.98277,
    -105.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPYC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EVNC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte (Reservoirs) at Eleven Mile Canyon Re',
    38.915,
    -105.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EVNC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHSC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte (Reservoirs) at Cheesman Reservoir',
    39.20333,
    -105.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHSC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BARP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Loyalsock Creek at Barbours',
    41.38972,
    -76.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BARP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KKPN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Keuka Lake at Penn Yan',
    42.66083,
    -77.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KKPN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GDTI2',
    NULL,
    'LMRFC',
    'IL',
    NULL,
    'Mississippi River above Grand Tower',
    37.66083,
    -89.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDTI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDPM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River above Birds Point',
    36.98277,
    -89.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDPM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DXOI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Rock River at Dixon Hydro',
    41.84722,
    -89.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DXOI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CODI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Crab Orchard Creek at Crab Orchard Lake near Mario',
    37.71166,
    -89.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CODI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RODN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Oneida Lake at Brewerton',
    43.23722,
    -76.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RODN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RHON7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Rhodhiss Dam',
    35.77944,
    -81.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHON7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDCS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Catawba River at Cedar Cliff Dam',
    34.54222,
    -80.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDCS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5781731,
    'AAIT2',
    '08158930',
    'WGRFC',
    'TX',
    '12090205',
    'Williamson Ck at Manchaca Rd  Austin  TX',
    30.22111,
    -97.79333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AAIT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FDOO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'The Outlet near Findlay',
    41.03388,
    -83.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FDOO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23073739,
    'NW327',
    '12452500',
    'NWRFC',
    'WA',
    '17020009',
    'CHELAN RIVER AT CHELAN  WA',
    47.8345808,
    -120.0131254
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW327'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1321052,
    'NW547',
    '09063900',
    'CBRFC',
    'CO',
    '14010003',
    'MISSOURI CREEK NEAR GOLD PARK  CO.',
    39.39026486,
    -106.4700294
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW547'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NWMW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Nowood River near Manderson',
    44.25416,
    -107.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWMW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RORP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lycoming Creek at Roaring Branch Town',
    41.55916,
    -76.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RORP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TEXA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Choctawhatchee River near Texasville (SR 131)',
    31.7625,
    -85.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TEXA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EFKA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'East Fork Choctawhatchee River near Abbeville (SR',
    31.49138,
    -85.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFKA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OCBA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Little Claybank Creek near Ozark (US 231)',
    31.4575,
    -85.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCBA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DALA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Claybank Creek near Daleville (SR 84)',
    31.305,
    -85.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DALA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SLLA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Double Bridges Creek near Sellersville (CR 40)',
    31.11861,
    -85.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCTF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    's Ferry',
    30.28805,
    -85.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCTF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WWCF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Chipola River near Wewahitchka (Lands Landing)',
    30.08472,
    -85.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWCF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAHF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Apalachicola River at Wewahitchka at Mile 44 (USAC',
    30.11861,
    -85.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAHF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRNM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patuxent River at 9th Street in Laurel',
    39.10166,
    -76.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRNM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KSYM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Blue River at 40 Highway',
    39.06777,
    -94.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KSYM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRGP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Burgett''s Fork Creek at Burgettstown',
    40.38972,
    -80.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRGP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LHNC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Capri Creek at Casella Way (Leghorn Stream)',
    38.27111,
    -122.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LHNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PWCC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Washington Creek at Holly Lane',
    38.23722,
    -122.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PWCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TCWN2',
    '10351300',
    'CNRFC',
    'NV',
    '16050102',
    'TRUCKEE CANAL NR WADSWORTH  NV',
    39.61278,
    -119.29611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TCWN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DNLI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Boyer River near Dunlap',
    41.81333,
    -95.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSVI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Boyer River near Missouri Valley',
    41.57611,
    -95.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSVI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MNEI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Mosquito Creek near Neola',
    41.4575,
    -95.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNEI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCBI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Mosquito Creek near Council Bluffs',
    41.28805,
    -95.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASTM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cedar River at Austin',
    43.66083,
    -92.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TENI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Turkey River near Elgin 6SE',
    42.93194,
    -91.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TENI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WADI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Volga River at Wadena',
    42.84722,
    -91.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WADI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IWNI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'West Nishnabotna River at Irwin',
    41.79638,
    -95.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IWNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HRNI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'West Nishnabotna River at Harlan',
    41.64388,
    -95.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HWNI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'West Nishnabotna River near Henderson',
    41.13555,
    -95.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HWNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RDIS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Waccamaw River below Longs',
    33.915,
    -78.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDIS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'STIF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Steinhatchee River at Steinhatchee',
    29.67777,
    -83.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STIF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCBF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Gulf of Mexico Tide Gauge at Panama City Beach',
    30.20333,
    -85.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCBF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PACF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Gulf of Mexico Tide Gauge at Panama City',
    30.1525,
    -85.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PACF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'APCF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Gulf of Mexico Tide Gauge at Apalachicola',
    29.72861,
    -84.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APCF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHPF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Gulf of Mexico Tide Gauge at Shell Point',
    30.05083,
    -84.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CKYF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Gulf of Mexico Tide Gauge at Cedar Key',
    29.13555,
    -83.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CKYF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EPRK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Neosho River at Emporia',
    38.44055,
    -96.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EPRK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRYK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Neosho River at Le Roy',
    38.06777,
    -95.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRYK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ABIK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Smoky Hill River near Abilene',
    38.915,
    -97.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ABIK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLOL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Pearl River at Lock #1 Chamber',
    30.4575,
    -89.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLOL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLHI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Fourmile Creek (Central IA) at IFC--Pleasant Hill',
    41.57611,
    -93.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLHI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCOM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Branch Middle Fork Zumbro River at Roscoe -',
    44.18638,
    -92.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCOM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OWMM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Maple Creek (MN) at Owatonna',
    44.10166,
    -93.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OWMM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LBRN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Lumber River at Lumberton',
    34.64388,
    -79.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LBRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RDAS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Pee Dee River at Highway 17 Bridge',
    33.37277,
    -79.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDAS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DCRO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Deer Creek at Deer Creek Lake',
    39.62694,
    -83.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLMK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Licking River at Falmouth',
    38.67777,
    -84.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLMK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BTCO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Butte Creek near Fossil',
    44.96583,
    -120.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BTLK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Licking River above Butler',
    38.79638,
    -84.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTLK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KIMO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Little Miami River at Kings Mills',
    39.35583,
    -84.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KIMO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Wind River below Below Diversion Dam at Highway 26',
    43.22027,
    -108.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKRM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Jones Falls above Lake Roland Dam',
    39.37277,
    -76.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKRM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HUHP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Muncy Creek at Hughesville',
    41.23722,
    -76.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HUHP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KSVM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Blue River at 17th Street',
    39.08472,
    -94.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KSVM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ZZRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'ZigZag River at ZigZag',
    45.33888,
    -121.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ZZRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SVBN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Oneida Lake at Sylvan Beach',
    43.18638,
    -75.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SVBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FSKM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'St. Francis River at Fisk',
    36.79638,
    -90.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FSKM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NBFL1',
    NULL,
    'WGRFC',
    'LA',
    NULL,
    'Sabine River at Nibletts Bluff Park',
    30.18638,
    -93.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NBFL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBFT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Neches River at Weiss Bluff',
    30.23722,
    -94.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBFT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MAOO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Malheur River near Ontario',
    44.03388,
    -117.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MAOO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DKLI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Grassy Creek (IL) at Devils Kitchen Lake near Mari',
    37.64388,
    -89.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DKLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CSDI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Payette River at Cascade Dam',
    44.52527,
    -116.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BACN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Cohocton River at Bath',
    42.33888,
    -77.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BACN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CIRI2',
    NULL,
    'LMRFC',
    'IL',
    NULL,
    'Ohio River at Cairo',
    37.0,
    -89.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CIRI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CSBN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Cohocton River at Scudder Bridge',
    42.16944,
    -77.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTHO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Clear Fork Mohican River above Pleasant Hill Dam',
    40.66083,
    -82.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTHO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RGAT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande below American Canal Diversion',
    31.77944,
    -106.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RGAT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22558244,
    'SRWC1',
    '11051499',
    'CNRFC',
    'CA',
    '18070203',
    'SANTA ANA R NR MENTONE (RIVER ONLY) CA',
    34.10833,
    -117.09972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JZBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Pine Island Bayou at Highway 326',
    30.08472,
    -94.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JZBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23605934,
    'NW339',
    '13342340',
    'NWRFC',
    'ID',
    '17060306',
    'SWEETWATER CREEK AT MOUTH AT SWEETWATER ID',
    46.36916667,
    -116.7955556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW339'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HUGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River near Hughes',
    34.96583,
    -90.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HUGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TWGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River near Twist',
    35.37277,
    -90.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TWGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTOA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River at Marked Tree',
    35.52527,
    -90.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTOA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSFA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River at Marianna 2 NE',
    34.79638,
    -90.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSFA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SZZO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Sandy River at Lolo Pass Road near Zigzag',
    45.35583,
    -121.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SZZO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WFRA1',
    NULL,
    'LMRFC',
    'AL',
    NULL,
    'Fowl River at WEST FOWL RIVER BRIDGE',
    30.37277,
    -88.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WFRA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHIW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wolf River (WI) at Shiocton',
    44.44055,
    -88.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FREM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Frenchman Creek (MT) near Intl Boundary',
    49.0,
    -107.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FREM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ILNI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Illinois City',
    41.42361,
    -91.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ILNI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MONM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'River Raisin at Monroe City',
    41.915,
    -83.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MONM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HTDM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Yellowstone River at Huntley Diversion Dam',
    45.915,
    -108.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HTDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRAP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Tenmile Creek at Mariana',
    40.01694,
    -80.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRAP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCKP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Pigeon Creek near Pigeon Creek',
    40.13555,
    -79.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCKP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRXC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Prisoners Point Ne',
    38.05083,
    -121.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRXC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OMRC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta above Old And Middle',
    37.98277,
    -121.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OMRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PBEC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Petaluma River at Shollenberger Park',
    38.22027,
    -122.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PBEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RVTN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Thompson Creek at Riverton',
    40.08472,
    -98.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5867733,
    'NW183',
    '01104480',
    'NERFC',
    'MA',
    '1090001',
    'STONY BROOK RESERVOIR AT DAM NEAR WALTHAM  MA',
    42.3556519,
    -71.2650565
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW183'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SUMM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Elk Creek near SUMNER 4SSE',
    39.59305,
    -93.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUMM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNDO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Washita River at Lindsay',
    34.83027,
    -97.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNDO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HKMK2',
    NULL,
    'LMRFC',
    'KY',
    NULL,
    'Mississippi River above Hickman',
    36.57611,
    -89.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HKMK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 166195770,
    'TINB3',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Aroostook River below Tinker Dam',
    46.81333,
    -67.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TINB3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCVO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Rock Creek at Hawkins Park at Vernonia',
    45.86416,
    -123.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCVO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HCHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Harvey Canal near Ha',
    29.88111,
    -90.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MIGI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Maple River at Ida Grove',
    42.35583,
    -95.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MIGI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UINI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Quincy',
    39.93194,
    -91.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UINI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JKNT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'South Fork Forked Deer River at Jackson',
    35.62694,
    -88.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JKNT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CCTO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Canyon Creek at Thissels Ranch',
    44.25416,
    -118.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MUSI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Mississippi River at Muscatine',
    41.38972,
    -91.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MUSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRNV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'South River (VA) at Cornwall IFLOWS',
    37.81333,
    -79.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRNV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRHM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Ruby River near Harrington',
    45.72861,
    -112.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRHM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EMDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande 3 miles NNW of Redford',
    29.49138,
    -105.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLOW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Turtle Creek at Beloit-3 NE',
    42.54222,
    -88.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DYNT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande 14 miles S of Dryden',
    29.83027,
    -102.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DYNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNCM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Sand Creek near Jordan',
    44.67777,
    -93.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PORW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River at Portage',
    43.54222,
    -89.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PORW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TURK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Turkey Creek (KC) at Southwest Boulevard',
    39.05083,
    -94.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TURK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SKAW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Skamokawa',
    46.27111,
    -123.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SKAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SABO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Sandy River at Brightwood Bridge',
    45.37277,
    -122.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SABO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Trimble Road',
    37.37277,
    -121.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUMC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Montague Expressway',
    37.38972,
    -121.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GTDC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Tasman Drive',
    37.40666,
    -121.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GTDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TSTW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Tensleep Creek near Tensleep',
    44.05083,
    -107.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TSTW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALCW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Alcova Reservoir',
    42.54222,
    -107.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Gray Reef Reservoir',
    42.55916,
    -107.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RDBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Red Bluff Diversion Dam',
    40.1525,
    -122.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) above Branham Lane',
    37.25416,
    -121.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EDEK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Walnut River near El Dorado',
    37.83027,
    -96.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDEK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RMBN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Tar River at US301 Bypass at Rocky Mount',
    35.93194,
    -77.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RMBN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTMF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Ochlockonee River at Curtis Mill (US-319)',
    29.99972,
    -84.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTMF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRKF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Marks River at St. Marks',
    30.1525,
    -84.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRKF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MMOI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Illinois River at Marseilles lock/dam',
    41.32194,
    -88.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MMOI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYDO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Sardis Lake',
    34.62694,
    -95.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYDO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNFM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Little Cannon River above Cannon Falls',
    44.47444,
    -92.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'COWW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Coweeman River near Kelso',
    46.11861,
    -122.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COWW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DRMW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Dungeness River near Mouth at Sequim',
    48.13555,
    -123.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRMW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KORW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Kortes Reservoir',
    42.16944,
    -106.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KORW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LBWL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Lafitte',
    29.67777,
    -90.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LBWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLUS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'South Dakota Glacial Lakes at Blue Dog Lake',
    45.33888,
    -97.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLUS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EBDN5',
    NULL,
    'WGRFC',
    'NM',
    NULL,
    'Rio Grande at Elephant Butte Lake',
    33.1525,
    -107.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EBDN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SRTO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Silvies River near Trout Creek',
    43.93194,
    -118.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GFLC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Fish Ladder above Blossom',
    37.23722,
    -121.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GFLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GDMM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River near Gibson Dam near Augusta',
    47.61,
    -112.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDMM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCBM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River near Fairfield',
    47.55916,
    -111.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCBM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TCPM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Muddy Creek near Power',
    46.62694,
    -111.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TCPM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCPM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Muddy Creek near Fairfield',
    47.71166,
    -111.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCPM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WTRW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Wheatland Reservoir No 2',
    41.84722,
    -105.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WTRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AFRI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Fox River near Antioch',
    42.47444,
    -88.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AFRI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EMWN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Pasquotank River near Mariners Wharf Park at Eliza',
    36.28805,
    -76.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMWN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRNK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Salt Creek (KS) at Barnard',
    39.18638,
    -98.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRNK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLPK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Ninnescah River near Belle Plaine',
    37.38972,
    -97.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLPK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLLK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Fall River (KS) above Fall River Lake',
    37.64388,
    -96.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLLK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BECU1',
    NULL,
    'CBRFC',
    'UT',
    '16010204',
    'BEAR RIVER NEAR Collinston  UT',
    41.57611,
    -112.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BECU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DOET1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Doe River at Elizabethton',
    36.33888,
    -82.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DOET1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLKM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Mississippi River at Clarksville Lock and Dam 24',
    39.37277,
    -90.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLKM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGRM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Mississippi River at LaGrange',
    40.03388,
    -91.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGRM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMSM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Missouri River near Chamois',
    38.67777,
    -91.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMSM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLAK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Solomon River near Glasco',
    39.33888,
    -97.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLAK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OZGA4',
    NULL,
    'ABRFC',
    'AR',
    NULL,
    'Arkansas River at Ozark L/D Tailwater',
    35.47444,
    -93.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OZGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRKK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Cumberland River at Burkesville',
    36.79638,
    -85.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRKK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLLM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Sturgeon River near Chassell',
    46.99972,
    -88.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SURO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'South Umpqua River near Riddle',
    42.96583,
    -123.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SURO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RSBO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'South Umpqua River at Roseburg',
    43.20333,
    -123.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DEEO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Deer Creek at Roseburg',
    43.22027,
    -123.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DEEO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWNM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tallahatchie River near Swan Lake',
    33.86416,
    -90.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWNM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IHML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Inner Harbor Navigational Can',
    29.96583,
    -90.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IHML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RNFM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Fork Crow River near Rockford 3W',
    45.08472,
    -93.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CKTT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River below Chickamauga Dam Tailwater',
    35.10166,
    -85.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CKTT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ANVN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Valley River at Valley River @ Andrews',
    35.20333,
    -83.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANVN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALAL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Algiers Lock',
    29.915,
    -89.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PWAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Washington Creek at McDowell Blvd.',
    38.23722,
    -122.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PWAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SALP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Larrys Creek at Salladasburg',
    41.27111,
    -77.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SALP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WWAF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Apalachicola River at Mile 35',
    30.08472,
    -85.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWAF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBNI3',
    NULL,
    'NCRFC',
    'IN',
    NULL,
    'St. Joseph River (MI/IN) at South Bend',
    41.72861,
    -86.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBNI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OWTM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Straight River at Owatonna',
    44.08472,
    -93.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OWTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UNYO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Burnt River below Unity Reservoir',
    44.50833,
    -118.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UNYO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OTTW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River above Otter Rapids Dam',
    45.915,
    -89.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OTTW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OAKO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Crane Creek below Oak Harbor',
    41.62694,
    -83.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OAKO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOLO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Molalla River at Shady Dell near Molalla 2ESE',
    45.13555,
    -122.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TLFO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Tualatin River below Lee Falls nr Gaston 6WNW',
    45.4575,
    -123.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLFO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GASO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Tualatin River near Gaston',
    45.44055,
    -123.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GASO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TGCO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Tualatin River above Golf Course Rd near Cornelius',
    45.50833,
    -123.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TGCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TRRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Tualatin River at Rood Bridge near Hillsboro',
    45.49138,
    -122.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TLLA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Tallapoosa River at Martin Dam',
    32.67777,
    -85.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTVV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Smith River above Hydro Elec Plant',
    36.66083,
    -79.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTVV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SRVV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Smith River near Fieldale RG/SG IFLOWS',
    36.71166,
    -79.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRVV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Minnesota River at Big Stone Lake',
    45.305,
    -96.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ACML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Black River at Acme',
    31.27111,
    -91.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JNEL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'D',
    31.47444,
    -91.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JNEL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GNVN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Seneca Lake at Geneva',
    42.86416,
    -76.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GNVN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'POKM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'POKEGAMA LAKE NEAR GRAND RAPIDS MN',
    47.16667,
    -93.55556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'POKM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDET2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Candelaria Crossing',
    30.16944,
    -104.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDET2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OLNI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Fall Creek (IN) at Geist Reservoir',
    39.915,
    -85.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OLNI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRDM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Okatibbee Creek at Okatibbee Reservoir',
    32.47444,
    -88.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRDM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPEW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Coppei Creek near Mouth',
    46.27111,
    -118.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPEW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLSN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Loup River Power Canal near Columbus',
    41.42361,
    -97.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLSN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YELA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Yellow River (AL) at Florala',
    31.06777,
    -86.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YELA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHNI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'East Nishnabotna River near Shenandoah',
    40.79638,
    -95.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IROV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'North Fork Roanoke River at Ironto',
    37.23722,
    -80.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IROV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SLIM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patuxent River at Solomons Island',
    38.32194,
    -76.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLIM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ANGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Big Sunflower River near Anguilla',
    32.98277,
    -90.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRGN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Chemung River near Corning',
    42.1525,
    -77.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRGN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NRST1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Clinch River above Norris Dam',
    36.22027,
    -84.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NRST1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGGC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Arroyo Grande Creek at 22nd Street Bridge',
    35.08472,
    -120.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PMAW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Cheat River above Lake Lynn Dam Pool',
    39.72861,
    -79.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PMAW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTNO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'West Otter Creek at Tom Steed Lake',
    34.74555,
    -98.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTNO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRWW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Lewis River at Woodland',
    45.915,
    -122.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRWW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9509670,
    'NW233',
    '01304000',
    'NERFC',
    'NY',
    '2030201',
    'NISSEQUOGUE RIVER NEAR SMITHTOWN NY',
    40.84944444,
    -73.2241667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW233'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4047160,
    'NWUM5',
    '05317000',
    'NCRFC',
    'MN',
    '7020008',
    'COTTONWOOD RIVER NEAR NEW ULM  MN',
    44.28939,
    -94.43861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWUM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 941070050,
    'SKLO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Skiatook Lake',
    36.35583,
    -96.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SKLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18471310,
    'HAZI3',
    '03374100',
    'OHRFC',
    'IN',
    NULL,
    'White River (IN) at Hazleton',
    38.49138,
    -87.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAZI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4085924,
    'BGSM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Ortonville - Big Stone Lk',
    45.305,
    -96.4492
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4837104,
    'PRAM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Grand Rapids 4N',
    47.2853,
    -93.4978
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14428914,
    'HOMN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Park River 2W-Homme Dam (HP)',
    48.4056,
    -97.7861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOMN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ERCI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Roberts Creek near Elkader',
    42.88111,
    -91.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ERCI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MNHM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Fork Crow River near Manannah',
    45.25416,
    -94.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNHM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ULAM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tide Station (LIX) at Pascagoula Dock',
    30.33888,
    -88.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ULAM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUAW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Elk River at Guardian',
    38.64388,
    -80.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUAW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10358636,
    'NW448',
    '03302110',
    'OHRFC',
    'KY',
    '5140104',
    'OTTER CREEK AT OTTER CR PARK NEAR ROCK HAVEN KY.',
    37.92340395,
    -86.0305208
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW448'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 402464,
    'TENO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Tenkiller Lake',
    35.59305,
    -95.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TENO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13876230,
    'CAYI2',
    '05592990',
    'NCRFC',
    'IL',
    NULL,
    'Carlyle 1NE - Carlyle Rsvr',
    38.61667,
    -89.35278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAYI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22326301,
    'WILM5',
    '05207600',
    'NCRFC',
    'MN',
    '7010101',
    'MISSISSIPPI RIVER AT WILLOW BEACH AT BALL CLUB  MN',
    47.30222,
    -93.90139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WILM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5757796,
    'IKLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Inks Lake',
    30.72861,
    -98.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IKLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CANS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Big Sioux River near Canton',
    43.38972,
    -96.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CANS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FCDS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Catawba River at Fishing Creek Dam',
    34.61,
    -80.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FCDS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 346695,
    'DLLC1',
    NULL,
    'CNRFC',
    'CA',
    '18040010',
    'DONNELL LK NR DARDANELLE CA',
    38.32944,
    -119.96028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 345059,
    'BESC1',
    NULL,
    'CNRFC',
    'CA',
    '18040010',
    'BEARDSLEY LAKE NEAR STRAWBERRY CA',
    38.20472,
    -120.07528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BESC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 607753,
    'PLXT2',
    '08459200',
    'WGRFC',
    'TX',
    '13080002',
    'Rio Grande at Pipeline Crsg bl Laredo  TX',
    27.40666,
    -99.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLXT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3883754,
    'MBGO1',
    '03271601',
    'OHRFC',
    'OH',
    '5080002',
    'Great Miami River below Miamisburg OH',
    39.61,
    -84.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBGO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23936037,
    'APLO3',
    NULL,
    'NWRFC',
    'OR',
    '17100309',
    'APPLEGATE LAKE NEAR COPPER  OR.',
    42.05694,
    -123.10833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23737773,
    'BRLO3',
    NULL,
    'NWRFC',
    'OR',
    '17080001',
    'BULL RUN LAKE NEAR BRIGHTWOOD  OR',
    45.46111,
    -121.84278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23073745,
    'STKW1',
    NULL,
    'NWRFC',
    'WA',
    '17020009',
    'LAKE CHELAN AT PURPLE POINT AT STEHEKIN  WA',
    48.30611,
    -120.65306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9027709,
    'NW462',
    '04074538',
    'NCRFC',
    'WI',
    '4030202',
    'SWAMP CREEK ABOVE RICE LAKE AT MOLE LAKE  WI',
    45.48829647,
    -88.9637249
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW462'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WGOM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Fork Zumbro River near Wanamingo',
    44.305,
    -92.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WGOM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24406177,
    'MLAW1',
    NULL,
    'NWRFC',
    'WA',
    '17020015',
    'MOSES LAKE AT MOSES LAKE  WA',
    47.10306,
    -119.31722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17082181,
    'CHVC1',
    NULL,
    'CNRFC',
    'CA',
    '18040009',
    'CHERRY LK NR HETCH HETCHY CA',
    37.97583,
    -119.91306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHVC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17082365,
    'HETC1',
    NULL,
    'CNRFC',
    'CA',
    '18040009',
    'HETCH HETCHY RES A HETCH HETCHY CA',
    37.94778,
    -119.78694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HETC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17080371,
    'NDPC1',
    NULL,
    'CNRFC',
    'CA',
    '18040009',
    'DON PEDRO RES NR LA GRANGE CA',
    37.70167,
    -120.42111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NDPC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23970765,
    'TLRW1',
    NULL,
    'NWRFC',
    'WA',
    '17110010',
    'SOUTH FORK TOLT RESERVOIR NEAR CARNATION  WA',
    47.69389,
    -121.68778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24255915,
    'UBDW1',
    NULL,
    'NWRFC',
    'WA',
    '17110005',
    'BAKER LAKE AT UPPER BAKER DAM NEAR CONCRETE  WA',
    48.64944,
    -121.68944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UBDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRPM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Mississippi River at Friars Point',
    34.38972,
    -90.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRPM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10067525,
    'WYPV2',
    NULL,
    'MARFC',
    'VA',
    '2080206',
    'JAMES RIVER ABV WEYANOKE POINT NR CHARLES CITY  VA',
    37.28805,
    -77.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WYPV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 938144,
    'PTRC2',
    '07124500',
    'ABRFC',
    'CO',
    '11020010',
    'PURGATOIRE RIVER AT TRINIDAD  CO.',
    37.16944,
    -104.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3809077,
    'YOUP1',
    NULL,
    'OHRFC',
    'PA',
    '5020006',
    'Youghiogheny River Lake at Rt. 40 Bridge  PA',
    39.79889,
    -79.36833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YOUP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5863459,
    'NW184',
    '01105608',
    'NERFC',
    'MA',
    '1090001',
    'WHITMANS POND FISH LADDER AT EAST WEYMOUTH  MA',
    42.21305556,
    -70.92638889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW184'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8358571,
    'WRLO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Beaver Creek (OK) at Waurika Lake',
    34.22027,
    -98.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14293869,
    'IRVN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Churchs Ferry',
    48.3236,
    -99.1453
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IRVN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12262732,
    'SIMI3',
    NULL,
    'NCRFC',
    'IN',
    NULL,
    'Northern Indiana Lakes at Simonton Lake near Elkha',
    41.7625,
    -85.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SIMI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14365900,
    'BLMW2',
    NULL,
    'MARFC',
    'WV',
    '2070002',
    'BLOOMINGTON LAKE NEAR ELK GARDEN  WV',
    39.42928,
    -79.12625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLMW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20893509,
    'CNUK1',
    '07183200',
    'ABRFC',
    'KS',
    '11070204',
    'NEOSHO R NR CHANUTE  KS',
    37.72861,
    -95.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNUK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1122911,
    'SSST2',
    NULL,
    'LMRFC',
    'TX',
    '11140303',
    'Lk Sulphur Spgs nr Sulphur Springs  TX',
    33.16778,
    -95.64167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSST2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6186206,
    'ALBN6',
    NULL,
    'NERFC',
    'NY',
    '2020006',
    'HUDSON RIVER AT ALBANY NY',
    42.64789,
    -73.7475
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17515890,
    'LSON1',
    '06686000',
    'MBRFC',
    'NE',
    '10180009',
    'NORTH PLATTE RIVER AT LISCO  NEBR.',
    41.49138,
    -102.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSON1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 592538,
    'HGLO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Hugo Lake',
    34.0,
    -95.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HGLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10312738,
    'LKGN6',
    NULL,
    'NERFC',
    'NY',
    '4279000',
    'LAKE GEORGE AT ROGERS ROCK NY',
    43.81333,
    -73.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKGN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5337699,
    'PDAW4',
    '06306250',
    'MBRFC',
    'WY',
    '10090101',
    'PRAIRIE DOG CREEK NEAR ACME  WY',
    44.99972,
    -106.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDAW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12577680,
    'JMDN8',
    NULL,
    'MBRFC',
    'ND',
    NULL,
    'James River at Jamestown Dam',
    46.93194,
    -98.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JMDN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13040746,
    'ALMM4',
    '04155000',
    'NCRFC',
    'MI',
    '4080202',
    'PINE RIVER AT ALMA  MI',
    43.37947539,
    -84.6555606
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALMM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9700085,
    'DUCS1',
    '02158408',
    'SERFC',
    'SC',
    '3050107',
    'SOUTH TYGER RIVER BELOW DUNCAN  SC',
    34.93194,
    -82.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DUCS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8653644,
    'ICRV2',
    NULL,
    'SERFC',
    'VA',
    '3010102',
    'ISLAND CREEK RESERVOIR AT DAM NEAR CLARKSVILLE  VA',
    36.54889,
    -78.46667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ICRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 846662,
    'BIRO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Birch Lake',
    36.54222,
    -96.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIRO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12501851,
    'MULM4',
    '04130000',
    'NCRFC',
    'MI',
    '4070004',
    'CHEBOYGAN RIVER NEAR CHEBOYGAN  MI',
    45.57667,
    -84.48806
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MULM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4454162,
    'LJKT2',
    NULL,
    'WGRFC',
    'TX',
    '12020001',
    'Lk Jacksonville nr Jacksonville  TX',
    31.94708,
    -95.29817
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LJKT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17509682,
    'BGPN1',
    '06684498',
    'MBRFC',
    'NE',
    '10180009',
    'NORTH PLATTE RIVER AT BRIDGEPORT  NE (MAIN CH.)',
    41.67777,
    -103.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24416110,
    'NW332',
    '12513000',
    'NWRFC',
    'WA',
    '17020016',
    'ESQUATZEL COULEE AT CONNELL  WA',
    46.66347327,
    -118.863334
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW332'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WRPW1',
    '12100494',
    'NWRFC',
    'WA',
    '17110014',
    'WHITE RIVER AT ROEGNER PARK NEAR AUBURN  WA',
    47.271388,
    -122.21888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRPW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10696957,
    'TWRN2',
    '10249300',
    'CNRFC',
    'NV',
    '16060004',
    'S TWIN RV NR ROUND MOUNTAIN  NV',
    38.8875,
    -117.24444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TWRN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1090008181,
    'WNDQ3',
    '05099300',
    'NCRFC',
    '',
    '',
    'Windygates 3NE',
    49.0313987731934,
    -98.2778015136719
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNDQ3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7077392,
    'EMRQ3',
    '05102500',
    'NCRFC',
    '',
    '',
    'Emerson',
    49.0036125183105,
    -97.2236099243164
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMRQ3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13463079,
    'DRRI2',
    '05535400',
    'NCRFC',
    'IL',
    '',
    'Deerfield',
    42.1672210693359,
    -87.8569412231445
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRRI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8587970,
    'HDGA4',
    '07049000',
    'LMRFC',
    'AR',
    '11010001',
    'WAR EAGLE CREEK NEAR HINDSVILLE AR',
    36.2000007629395,
    -93.8550033569336
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HDGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1562342,
    'MYKT2',
    '08076997',
    'WGRFC',
    'TX',
    '12040204',
    'CLEAR CK AT MYKAWA ST NR PEARLAND TX',
    29.5968990325928,
    -95.2974395751953
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MYKT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13029083,
    'FRGM4',
    '04145000',
    'NCRFC',
    'MI',
    '4080203',
    'SHIAWASSEE RIVER NEAR FERGUS  MI',
    43.2547478,
    -84.1055324
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EWRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Warroad River above East Branch Warroad R. nr Roos',
    48.72861,
    -95.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EWRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBWM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Warroad River above West Branch Warroad River nr W',
    48.74555,
    -95.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARKI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Boise River at Arrowrock Dam',
    43.61,
    -115.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARKI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALXN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'St. Lawrence River at Alexandria Bay NOS',
    44.32194,
    -75.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALXN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22131233,
    'KNOT1',
    '03497000',
    'LMRFC',
    'TN',
    '6010201',
    'TENNESSEE RIVER AT KNOXVILLE  TENNESSEE',
    35.94888,
    -83.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNOT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10645857,
    'BCUT2',
    '08197800',
    'WGRFC',
    'TX',
    '12110106',
    'Blanco Ck at SH 127 nr Concan  TX',
    29.42361,
    -99.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCUT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOSV1',
    NULL,
    'NERFC',
    'VT',
    NULL,
    'Black River (Southern VT) at North Springfield',
    43.33888,
    -72.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOSV1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4416086,
    'BENM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Benson',
    45.3111,
    -95.625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BENM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELLI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'White River (IN) at Elliston',
    39.01694,
    -86.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELLI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4084820,
    'NFYM5',
    '05292704',
    'NCRFC',
    'MN',
    '7020001',
    'NORTH FORK YELLOW BANK RIVER NEAR ODESSA  MN',
    45.18913155,
    -96.415332
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NFYM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PDBM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Milk River at western crossing of int''l boundary',
    49.0,
    -112.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDBM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RVNI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'White River (IN) at Ravenswood',
    39.89805,
    -86.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVNI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WORI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'White River (IN) near Worthington',
    39.10166,
    -86.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WORI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12135518,
    'MUMM4',
    '04122150',
    'NCRFC',
    'MI',
    '4060102',
    'MUSKEGON RIVER AT MOUTH AT MUSKEGON  MI',
    43.23112457,
    -86.3297831
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MUMM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GASN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Roanoke River at Lake Gaston',
    36.50833,
    -77.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GASN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OROI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Orofino Creek near Orofino',
    46.47444,
    -116.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OROI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GCCO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Grande Ronde River below Clear Creek near Starkey',
    45.06777,
    -118.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PNXP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Mahoning Creek at Punxsutawney',
    40.94888,
    -78.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PNXP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGNO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Grande Ronde River near Perry',
    45.35583,
    -118.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCKW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Peshastin Creek at Green Bridge Road',
    47.55916,
    -120.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CBBW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Colville River at Blue Creek',
    48.32194,
    -117.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBBW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NHMM3',
    NULL,
    'NERFC',
    'MA',
    NULL,
    'Connecticut River at Northampton',
    42.305,
    -72.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NHMM3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPGM3',
    NULL,
    'NERFC',
    'MA',
    NULL,
    'Connecticut River at Springfield',
    42.08472,
    -72.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPGM3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13009452,
    'VSSM4',
    '04151000',
    'NCRFC',
    'MI',
    '4080205',
    'CASS RIVER AT VASSAR  MI',
    43.3708567,
    -83.5810694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VSSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6597074,
    'WWDI4',
    '05481860',
    'NCRFC',
    'IA',
    NULL,
    'Woodward 4SW',
    41.8006,
    -93.9406
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWDI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KILM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Big Black River near Kilmichael',
    33.40666,
    -89.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KILM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRRA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Tallapoosa River at Yates Dam',
    32.57611,
    -85.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRRA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BPCL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River Delta Basin at Bayou Petit Caill',
    29.25416,
    -90.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BPCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WNAC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River near Weldona',
    40.32194,
    -103.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNAC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BTRP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Connoquenessing Creek at Butler',
    40.84722,
    -79.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTRP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731252,
    'LSTN7',
    '0214640410',
    'SERFC',
    'NC',
    '3050103',
    'LITTLE SUGAR CR BL 36TH STREET NEAR CHARLOTTE  NC',
    35.25416,
    -80.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARGS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Cold Brook Creek near Hot Springs',
    43.47444,
    -103.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARGS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KENM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Fork Zumbro River at Kenyon',
    44.27111,
    -92.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KENM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HURG1',
    NULL,
    'LMRFC',
    'GA',
    NULL,
    'Toccoa River near Dial',
    34.79638,
    -84.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HURG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OLYP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lackawanna River at Olyphant',
    41.47444,
    -75.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OLYP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SGTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Salinas River below Santa Margarita Lake',
    35.33888,
    -120.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17462964,
    'SUTN1',
    '06691000',
    'MBRFC',
    'NE',
    '10180014',
    'NORTH PLATTE R NR SUTHERLAND NEBR',
    41.20333,
    -101.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8143294,
    'SRMP1',
    '01548303',
    'MARFC',
    'PA',
    '2050205',
    'Straight Run  Site 1  at Marsh Creek  PA',
    41.79638,
    -77.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRMP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12035613,
    'BRGS1',
    '02153500',
    'SERFC',
    'SC',
    '3050105',
    'BROAD RIVER NEAR GAFFNEY  SC',
    35.08472,
    -81.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRGS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14638023,
    'RLRV2',
    '03521500',
    'LMRFC',
    'VA',
    '6010205',
    'CLINCH RIVER AT RICHLANDS  VA',
    37.08472,
    -81.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RLRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASDN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Salt Creek at Ashland',
    41.03388,
    -96.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LWVI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Little Weiser River near Indian Valley',
    44.49138,
    -116.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWVI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BVLN4',
    '01379699',
    'MARFC',
    'NJ',
    '2030103',
    'Rockaway River at NJ Rt 15 at Berkshire Valley NJ',
    40.94888,
    -74.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVLN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18790620,
    'WLBN1',
    '06881200',
    'MBRFC',
    'NE',
    '10270204',
    'TURKEY CREEK NEAR WILBER  NEBR.',
    40.47444,
    -97.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLBN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6246328,
    'PQNN4',
    '01382170',
    'MARFC',
    'NJ',
    '2030103',
    'Pequannock River at NJ Route 23 near Oak Ridge NJ',
    41.06777,
    -74.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PQNN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18822526,
    'BEAN1',
    '06881500',
    'MBRFC',
    'NE',
    '10270202',
    'BIG BLUE R AT BEATRICE NEBR',
    40.25416,
    -96.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEAN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18836857,
    'SWDN1',
    '06880000',
    'MBRFC',
    'NE',
    '10270201',
    'LINCOLN CREEK NEAR SEWARD  NEBR.',
    40.915,
    -97.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18831981,
    'SWRN1',
    '06880500',
    'MBRFC',
    'NE',
    '10270201',
    'BIG BLUE RIVER AT SEWARD  NEBR.',
    40.915,
    -97.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWRN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NFLN4',
    '01382270',
    'MARFC',
    'NJ',
    '2030103',
    'Pequannock River at NJ Route 23 at Newfoundland NJ',
    41.05083,
    -74.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NFLN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6800308,
    'PENW3',
    '04071858',
    'NCRFC',
    'WI',
    '4030103',
    'PENSAUKEE RIVER NEAR PENSAUKEE  WI',
    44.81888889,
    -87.9544444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PENW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3247480,
    'NW405',
    '01349840',
    'NERFC',
    'NY',
    '2020005',
    'BATAVIA KILL NEAR MAPLECREST NY',
    42.28944444,
    -74.1158333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW405'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3097087,
    'NW470',
    '06183800',
    'MBRFC',
    'MT',
    '10060006',
    'Cottonwood Creek near Dagmar MT',
    48.50921389,
    -104.1733528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW470'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12870023,
    'WWBW4',
    '06259000',
    'MBRFC',
    'WY',
    '10080005',
    'WIND RIVER BELOW BOYSEN RESERVOIR  WY',
    43.42361,
    -108.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRBL1',
    '07374540',
    'LMRFC',
    'LA',
    '8090100',
    'Mississippi River at Buras  LA',
    29.35583,
    -89.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18771096,
    'AXDN1',
    '06883940',
    'MBRFC',
    'NE',
    '10270206',
    'BIG SANDY CR AT ALEXANDRIA  NE',
    40.23722,
    -97.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AXDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16963113,
    'MNRC2',
    '09370000',
    'CBRFC',
    'CO',
    '14080107',
    'MANCOS RIVER NEAR MANCOS  CO.',
    37.35583,
    -108.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6494756,
    'NW443',
    '02388900',
    'SERFC',
    'GA',
    '3150104',
    'ETOWAH RIVER NEAR DAHLONEGA  GA',
    34.51555556,
    -84.0602778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW443'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4766680,
    'NW255',
    '01494150',
    'MARFC',
    'MD',
    '2060002',
    'THREE BRIDGES BRANCH AT CENTREVILLE  MD',
    39.0540833,
    -76.0546667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW255'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6780747,
    'NW403',
    '01170930',
    'NERFC',
    'MA',
    '1080201',
    'MILL RIVER AT CHRISTIAN LANE AT WHATELY  MA',
    42.44453229,
    -72.6298117
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW403'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7690705,
    'NW404',
    '01176780',
    'NERFC',
    'MA',
    '1080204',
    'TWELVEMILE BROOK NEAR NORTH WILBRAHAM  MA',
    42.1478716,
    -72.399528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW404'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5526193,
    'BDLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'North Texas Lakes at Lake Daniel',
    32.64388,
    -98.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1337108,
    'NW492',
    '09132940',
    'CBRFC',
    'CO',
    '14020004',
    'HUBBARD CREEK ABOVE IRON POINT GULCH NR BOWIE  CO',
    38.98248738,
    -107.5317227
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW492'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17995532,
    'NW545',
    '07287160',
    'LMRFC',
    'MS',
    '8030206',
    'ABIACA CREEK AT CRUGER  MS',
    33.34166667,
    -90.2372222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW545'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20636704,
    'NW494',
    '09415515',
    'CBRFC',
    'NV',
    '15010011',
    'WATER CYN CK NR PRESTON  NV',
    38.9877204,
    -114.9583496
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW494'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22163232,
    'NW453',
    '03447894',
    'LMRFC',
    'NC',
    '6010105',
    'BENT CR AT BENT CR GAP RD NR GLEN BALD  NC',
    35.4936111,
    -82.6111111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW453'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3885310,
    'NW447',
    '03274166',
    'OHRFC',
    'OH',
    '5080002',
    'Indian Creek at Millville OH',
    39.38866646,
    -84.6546712
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW447'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6129677,
    'NW400',
    '01109090',
    'NERFC',
    'MA',
    '1090004',
    'RATTLESNAKE BROOK NEAR ASSONET  MA',
    41.7767686,
    -71.0892105
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW400'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24279278,
    'NW296',
    '12157025',
    'NWRFC',
    'WA',
    '17110011',
    'QUILCEDA CR TRIB AB 27TH AVE NE NR MARYSVILLE  WA',
    48.0792639,
    -122.2006952
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW296'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19350527,
    'ALGL1',
    '07368100',
    'LMRFC',
    'LA',
    NULL,
    'Boeuf River near Alto',
    32.37277,
    -91.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4146586,
    'NW411',
    '01434021',
    'NERFC',
    'NY',
    '2040104',
    'W BR NEVERSINK R AT WINNISOOK L NR FROST VALLEY NY',
    42.0111111,
    -74.4144444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW411'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21214991,
    'BETK1',
    '07141175',
    'ABRFC',
    'KS',
    '11030006',
    'BUCKNER C NR BURDETT  KS',
    38.1525,
    -99.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BETK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20427202,
    'GILA3',
    NULL,
    'CBRFC',
    'AZ',
    '15070101',
    'GILA BEND CANAL AT GILLESPIE DAM  AZ',
    33.22917,
    -112.76667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GILA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13526850,
    'TBPT2',
    NULL,
    'ABRFC',
    'TX',
    NULL,
    'Bluff Creek (N TX) at Truscott Brine Lake',
    33.79638,
    -99.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBPT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21799057,
    'OOLO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Oologah Lake',
    36.42361,
    -95.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OOLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19515088,
    'NW457',
    '03601630',
    'LMRFC',
    'TN',
    '5130204',
    'LOCKE BRANCH NEAR BENDING CHESTNUT  TN',
    35.87201008,
    -87.103895
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW457'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 288115,
    'TNGT2',
    '08374500',
    'WGRFC',
    'TX',
    NULL,
    'Terlingua Creek 7 miles S of Terlingua',
    29.20333,
    -103.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TNGT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12752229,
    'TYDM8',
    '06307990',
    'MBRFC',
    'MT',
    '10090102',
    'Y Diversion Dam near Miles',
    46.18638,
    -105.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TYDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7291296,
    'ALDN1',
    '06772000',
    'MBRFC',
    'NE',
    '10200102',
    'WOOD RIVER NEAR ALDA  NEBR.',
    40.86416,
    -98.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 575712,
    'FAXO2',
    '07311230',
    'ABRFC',
    'OK',
    '11130203',
    'West Cache Creek at Faxon  Ok',
    34.4575,
    -98.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FAXO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19014077,
    'FKNN1',
    '06851000',
    'MBRFC',
    'NE',
    '10250016',
    'CENTER CREEK AT FRANKLIN  NEBR.',
    40.08472,
    -98.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FKNN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7590377,
    'CTRM7',
    '07186480',
    'ABRFC',
    'MO',
    '11070207',
    'Center Creek near Smithfield  MO',
    37.1525,
    -94.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTRM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14780092,
    'CDII2',
    '05541500',
    'NCRFC',
    'IL',
    NULL,
    'Channahon - Dresden Island L&D',
    41.3978,
    -88.2792
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDII2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10025012,
    'SCGU1',
    '09409880',
    'CBRFC',
    'UT',
    '15010008',
    'SANTA CLARA RIVER AT GUNLOCK  UT',
    37.27111,
    -113.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCGU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14785449,
    'EGVI2',
    '05531044',
    'NCRFC',
    'IL',
    '7120004',
    'SALT CREEK NEAR ELK GROVE VILLAGE  IL',
    42.01583,
    -88.00472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGVI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10849620,
    'URDM4',
    '04166470',
    'NCRFC',
    'MI',
    '4090004',
    'UPPER RIVER ROUGE AT DETROIT  MI',
    42.3942031,
    -83.2782632
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'URDM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRLL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Red River Landing',
    30.96583,
    -91.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRLL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22109475,
    'GLNW4',
    '06646800',
    'MBRFC',
    'WY',
    '10180007',
    'NORTH PLATTE RIVER NEAR GLENROCK  WY',
    42.84722,
    -105.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLNW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18460260,
    'NCSI3',
    '03361109',
    'OHRFC',
    'IN',
    '5120204',
    'NAMELESS CREEK AT STRINGTOWN  IN',
    39.79638,
    -85.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCSI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10102870,
    'NW209',
    '01155349',
    'NERFC',
    'VT',
    '1080107',
    'WEST RIVER BELOW WINHALL RIVER  NEAR JAMAICA  VT',
    43.1547222,
    -72.7983333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW209'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13229540,
    'TECM4',
    '04175700',
    'NCRFC',
    'MI',
    '4100002',
    'RIVER RAISIN NEAR TECUMSEH  MI',
    41.94365695,
    -83.9452199
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TECM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1158005,
    'NADT2',
    '08037050',
    'WGRFC',
    'TX',
    '12020005',
    'Bayou Lanana at Nacogdoches  TX',
    31.61,
    -94.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NADT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 495208,
    'PRKO2',
    '07161000',
    'ABRFC',
    'OK',
    '11050003',
    'Cimarron River at Perkins  OK',
    35.96583,
    -97.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRKO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21920075,
    'NW484',
    '07362656',
    'LMRFC',
    'AR',
    '8040203',
    'Brushy Creek near Jessieville  AR',
    34.71925839,
    -92.9929551
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW484'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 532867,
    'ACDO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Deep Fork River at Arcadia Lake',
    35.64388,
    -97.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACDO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5757778,
    'BUDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Lake Buchanan',
    30.7625,
    -98.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSRV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Bluestone River near Bluestone IFLOWS',
    37.22027,
    -81.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11505172,
    'JAMN8',
    NULL,
    'MBRFC',
    'ND',
    NULL,
    'Pipestem Creek at Pipestem Dam',
    46.96583,
    -98.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JAMN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17540805,
    'CRVI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Coralville - Coralville Dam',
    41.7253,
    -91.5353
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRVI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1792085,
    'BLRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Fredenberg 3NW-Boulder Lake Rsv',
    47.0528,
    -92.2
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1089143,
    'FLAV2',
    NULL,
    'OHRFC',
    'VA',
    '5070202',
    'John Flannagan Lake',
    37.23722,
    -82.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLAV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22338099,
    'ANAD2',
    NULL,
    'MARFC',
    'DC',
    '2070010',
    'ANACOSTIA RIVER AQUATIC GARDENS AT WASHINGTON  DC',
    38.915,
    -76.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANAD2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18486892,
    'BCHI3',
    NULL,
    'OHRFC',
    'IN',
    '5120106',
    'BIG CHAPMAN LAKE NEAR WARSAW  IN',
    41.27111,
    -85.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCHI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIGA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Big Creek at (SR 87)',
    31.49138,
    -86.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIGA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24397996,
    'NW328',
    '12464800',
    'NWRFC',
    'WA',
    '17020013',
    'COAL CREEK AT MOHLER  WA',
    47.4068192,
    -118.3188652
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW328'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7731717,
    'NW227',
    '012095493',
    'NERFC',
    'CT',
    '1100006',
    'RIDGEFIELD BROOK AT SHIELDS LANE NR RIDGEFIELD  CT',
    41.31408889,
    -73.4928944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW227'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6177114,
    'NW216',
    '01196620',
    'NERFC',
    'CT',
    '1100004',
    'MILL RIVER NEAR HAMDEN  CT',
    41.42041389,
    -72.9026583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW216'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HCHK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Arkansas River at Hutchinson',
    38.03388,
    -97.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCHK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12804114,
    'SHEW4',
    '06278500',
    'MBRFC',
    'WY',
    '10080010',
    'SHELL CREEK NEAR SHELL  WY',
    44.55916,
    -107.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHEW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6909049,
    'SPNW2',
    '03178000',
    'OHRFC',
    'WV',
    '5050002',
    'BLUESTONE R NR SPANISHBURG  WV',
    37.44055,
    -81.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPNW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6561129,
    'MBLI4',
    '05460500',
    'NCRFC',
    'IA',
    '7080202',
    'Shell Rock River at Marble Rock  IA',
    42.96583,
    -92.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5377442,
    'CCAW4',
    '06324000',
    'MBRFC',
    'WY',
    '10090206',
    'CLEAR CREEK NEAR ARVADA  WY',
    44.88111,
    -106.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCAW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17037089,
    'NAVC2',
    '09344400',
    'CBRFC',
    'CO',
    '14080101',
    'NAVAJO RIVER BL OSO DIVERSION DAM NR CHROMO  CO.',
    37.01694,
    -106.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NAVC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13096606,
    'THOW3',
    '05365707',
    'NCRFC',
    'WI',
    '7050006',
    'NORTH FORK EAU CLAIRE RIVER NEAR THORP  WI',
    44.97357826,
    -90.849304
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'THOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 974916,
    'NPTC2',
    '07117000',
    'ABRFC',
    'CO',
    '11020005',
    'ARKANSAS RIVER NEAR NEPESTA  CO.',
    38.16944,
    -104.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NPTC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCDO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Sand Creek Diversion at Salt Plains NWR near Chero',
    36.84722,
    -98.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCDO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AMCO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Cimarron River near Ames',
    36.22027,
    -98.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KNGO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Kingfisher Creek at Kingfisher',
    35.88111,
    -97.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNGO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'METN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Snake River (NE) at Merritt Dam',
    42.64388,
    -100.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'METN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OMAN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Big Papillion Creek at Standing Bear Lake and Dam',
    41.305,
    -96.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OMAN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18474779,
    'KCAI3',
    '03348100',
    'OHRFC',
    'IN',
    '5120201',
    'KILLBUCK CREEK NR ANDERSON  IN',
    40.13555,
    -85.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCAI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12900374,
    'BULW4',
    '06225000',
    'MBRFC',
    'WY',
    '10080001',
    'BULL LAKE CREEK NEAR LENORE  WY',
    43.23722,
    -109.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BULW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 308621,
    'PIOT2',
    '08371500',
    'WGRFC',
    'TX',
    '13040201',
    'Rio Grande abv Rio Conchos nr Presidio  TX',
    29.61,
    -104.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PIOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4034276,
    'SLLT1',
    '03312259',
    'LMRFC',
    'TN',
    '5110002',
    'SALT LICK CREEK BELOW RED BOILING SPRINGS  TN',
    35.55282,
    -86.58226
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLLT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELTI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'East Nishnabotna River near Elliott',
    41.13555,
    -95.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PSYG1',
    NULL,
    'LMRFC',
    'GA',
    NULL,
    'Hiwassee River near Macedonia',
    34.915,
    -83.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PSYG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LAPO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Little Deschutes River near La Pine',
    43.69472,
    -121.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAPO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JKNG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Ocmulgee River at Jackson Lake',
    33.32194,
    -83.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JKNG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WDMG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Oconee River at Lake Oconee',
    33.35583,
    -83.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDMG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNCG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Oconee River at Lake Sinclair',
    33.13555,
    -83.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNCG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLEW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Yakima River at Cle Elum Outflow',
    47.23722,
    -121.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLEW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EASW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Yakima River at Easton',
    47.23722,
    -121.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EASW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CGWL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Breton Sound Basin at Caernarvon Sector Gate - Pro',
    29.86416,
    -89.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CGWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BYML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Amite River at Bayou Manchac Point',
    30.33888,
    -90.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BYML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12498954,
    'TOWM4',
    '04130500',
    'NCRFC',
    'MI',
    '4070005',
    'BLACK RIVER NEAR TOWER  MI',
    45.39251206,
    -84.3333547
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TOWM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5338137,
    'SHBW4',
    '06305500',
    'MBRFC',
    'WY',
    '10090101',
    'GOOSE CREEK BELOW SHERIDAN  WY',
    44.83027,
    -106.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10582239,
    'NJNT1',
    '03605000',
    'LMRFC',
    'TN',
    '6040005',
    'TENNESSEE RIVER NEAR NEW JOHNSONVILLE  TN',
    36.01694,
    -88.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NJNT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19550412,
    'SAVT1',
    '03593500',
    'LMRFC',
    'TN',
    '6040001',
    'TENNESSEE RIVER AT SAVANNAH  TN',
    35.22027,
    -88.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAVT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1352606,
    'ELMC2',
    '09246400',
    'CBRFC',
    'CO',
    '14050001',
    'ELKHEAD CREEK BELOW MAYNARD GULCH  NEAR CRAIG  CO',
    40.54222,
    -107.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELMC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17034231,
    'LPVC2',
    '09353500',
    'CBRFC',
    'CO',
    '14080101',
    'LOS PINOS RIVER NEAR BAYFIELD  CO.',
    37.35583,
    -107.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPVC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18828505,
    'SRPN1',
    '06879900',
    'MBRFC',
    'NE',
    '10270201',
    'BIG BLUE RIVER AT SURPRISE  NEBR.',
    41.10166,
    -97.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14613136,
    'OBNK1',
    '06845000',
    'MBRFC',
    'KS',
    '10250011',
    'SAPPA C NR OBERLIN  KS',
    39.81333,
    -100.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OBNK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12882798,
    'LPLW4',
    '06233000',
    'MBRFC',
    'WY',
    '10080003',
    'LITTLE POPO AGIE RIVER NEAR LANDER  WY',
    42.72861,
    -108.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPLW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRMN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Tar River at Grimesland',
    35.57611,
    -77.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRMN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ORLN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Neuse River at Oriental',
    35.01694,
    -76.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ORLN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDRN4',
    NULL,
    'MARFC',
    'NJ',
    NULL,
    'Delaware River at Burlington',
    40.06777,
    -74.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDRN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NBLP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Delaware River at Newbold Island',
    40.13555,
    -74.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NBLP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YUMW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Yakima River at Cle Elum',
    49.11831,
    -121.16686
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YUMW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CFDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte (Reservoirs) at Chatfield Reservoir',
    39.55916,
    -105.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CFDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16237447,
    'DNDN8',
    NULL,
    'MBRFC',
    'ND',
    NULL,
    'Heart River at Dickinson Dam',
    46.88111,
    -102.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNDN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9314521,
    'WBXM1',
    '01067000',
    'NERFC',
    'ME',
    '1060002',
    'SACO RIVER AT WEST BUXTON  ME',
    43.66083,
    -70.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBXM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22069932,
    'SAHN2',
    '09419658',
    'CBRFC',
    'NV',
    '15010015',
    'LAS VEGAS WASH NR SAHARA AVE NR LAS VEGAS  NV',
    36.13555,
    -115.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAHN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12845000,
    'OCAW4',
    '06264000',
    'MBRFC',
    'WY',
    '10080007',
    'OWL CREEK NEAR THERMOPOLIS  WY',
    43.72861,
    -108.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCAW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4425861,
    'SHOW4',
    '06282000',
    'MBRFC',
    'WY',
    '10080014',
    'SHOSHONE RIVER BELOW BUFFALO BILL RESERVOIR  WY',
    44.52527,
    -109.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHOW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22720895,
    'CHDS1',
    '02194501',
    'SERFC',
    'SC',
    '3060103',
    'LAKE THURMOND TAILRACE NEAR CLARKS HILL  SC',
    33.66083,
    -82.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHDS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3852239,
    'EGRM8',
    '06048700',
    'MBRFC',
    'MT',
    '10020008',
    'East Gallatin R bl Bridger C nr Bozeman MT',
    45.72861,
    -111.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BODP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lycoming Creek at Bodines',
    41.44055,
    -76.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BODP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSJL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Saint John at Lakeshore Drive in New Orleans',
    30.01694,
    -90.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSJL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4622350,
    'CRLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cross Lake Dam',
    46.6692,
    -94.1122
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TRCW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Touchet River at Cummings Road',
    46.05083,
    -118.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YRSM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yazoo River at Satartia',
    32.67777,
    -90.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YRSM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HHDW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Green River (WA) at Howard Hanson Reservoir',
    47.27111,
    -121.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HHDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SARA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Bayou Sara at Saraland',
    30.83027,
    -88.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SARA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13357536,
    'BUNW3',
    '05415000',
    'NCRFC',
    'WI',
    '7060005',
    'GALENA RIVER AT BUNCOMBE  WI',
    42.5136142,
    -90.3779052
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUNW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12953322,
    'GRYM4',
    '04135500',
    'NCRFC',
    'MI',
    '4070007',
    'AU SABLE RIVER AT GRAYLING  MI',
    44.65973729,
    -84.7125289
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRYM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21199546,
    'AERK1',
    '07141770',
    'ABRFC',
    'KS',
    '11030008',
    'WALNUT C NR ALEXANDER  KS',
    38.4575,
    -99.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AERK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3598352,
    'NLGI2',
    '05585100',
    'NCRFC',
    'IL',
    NULL,
    'La Grange L&D 8',
    39.9403,
    -90.5344
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLGI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Big Sunflower River at Little Calio Lndg (belzoni)',
    33.18638,
    -90.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTHV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Bull Run near Catharpin',
    38.89805,
    -77.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTHV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River Delta Basin at Bayou Black at Gr',
    29.62694,
    -90.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WASD2',
    NULL,
    'MARFC',
    'DC',
    NULL,
    'Washington Channel at SW Waterfront',
    38.88111,
    -77.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WASD2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2677732,
    'NW397',
    '01022260',
    'NERFC',
    'ME',
    '1050002',
    'Pleasant River near Epping  Maine',
    44.69777778,
    -67.7872222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW397'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOCM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River above Moccasin Springs',
    37.4575,
    -89.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOCM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KNUM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Mississippi River at Knutson Dam - Cass Lake',
    47.4575,
    -94.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNUM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLCV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Russell Fork River above Clinchco',
    37.16944,
    -82.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLCV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AULM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Au Train River at Au Train',
    46.42361,
    -86.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AULM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WKLK2',
    NULL,
    'LMRFC',
    'KY',
    NULL,
    'Mississippi River above Wickliffe',
    36.96583,
    -89.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKLK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RGLA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Coosa River at Neely Henry Dam',
    33.79638,
    -86.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RGLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BNGM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Michigamme River near Republic',
    46.35583,
    -87.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BNGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 285292,
    'LNYT2',
    '08377200',
    'WGRFC',
    'TX',
    '13040212',
    'Rio Grande at Foster Rh nr Langtry  TX',
    29.77944,
    -101.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNYT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12887683,
    'NLWW4',
    '06228800',
    'MBRFC',
    'WY',
    '10080002',
    'NORTH FORK LITTLE WIND RIVER NR FORT WASHAKIE  WY',
    43.01694,
    -109.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLWW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17254470,
    'PEDN1',
    '06799450',
    'MBRFC',
    'NE',
    '10220004',
    'LOGAN CREEK AT PENDER NE',
    42.10166,
    -96.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PEDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRNW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Little Kanawha River at Burnsville Dam',
    38.84722,
    -80.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRNW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JONM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Jones Falls at Jones Falls Pumping Station in Balt',
    39.32194,
    -76.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JONM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WASW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Washougal River at Washougal',
    45.59305,
    -122.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WASW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LAMA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'L''Anguille River at Marianna 1 NE',
    34.79638,
    -90.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAMA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BBWA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Bayou Bartholomew at Wilmot',
    33.06777,
    -91.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBWA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8872060,
    'RMSN7',
    '02100500',
    'SERFC',
    'NC',
    '3030003',
    'DEEP RIVER AT RAMSEUR  NC',
    35.72639,
    -79.65556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RMSN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14153538,
    'GNVN8',
    '05123700',
    'NCRFC',
    'ND',
    '9010005',
    'CUT BANK CREEK AT N LAKE OUTLET NR GRANVILLE  ND',
    48.3861174,
    -100.7670824
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GNVN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2091813,
    'SRKK2',
    '03250310',
    'OHRFC',
    'KY',
    '5100101',
    'ROCK LICK CR AB UNNAMED TRIB NR SHARKEY  KY STAT A',
    38.24722,
    -83.58944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRKK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18482198,
    'SUTI3',
    '03339273',
    'OHRFC',
    'IN',
    '5120110',
    'SUGAR CREEK AT THORNTOWN  IN',
    40.13555,
    -86.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUTI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNWM8',
    '06076560',
    'MBRFC',
    'MT',
    '10030103',
    'Smith River bl Newlan Cr nr White Sulphur Springs',
    46.59305,
    -111.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNWM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22095115,
    'GLBW4',
    '06652800',
    'MBRFC',
    'WY',
    '10180008',
    'NORTH PLATTE RIVER BELOW GLENDO RESERVOIR  WY',
    42.4575,
    -104.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13098530,
    'FLCW3',
    '05366500',
    'NCRFC',
    'WI',
    '7050006',
    'EAU CLAIRE RIVER NEAR FALL CREEK  WI',
    44.80968307,
    -91.281821
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLCW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2885240,
    'NW480',
    '06717400',
    'MBRFC',
    'CO',
    '10190004',
    'CHICAGO CREEK BLW DEVILS CANYON NR IDAHO SPRGS  CO',
    39.71637678,
    -105.5713883
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW480'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2680780,
    'NW398',
    '01022330',
    'NERFC',
    'ME',
    '1050002',
    'Narraguagus River at Deblois  Maine',
    44.7408333,
    -68.0133333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW398'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4489158,
    'NW247',
    '01467036',
    'MARFC',
    'PA',
    '2040202',
    'Pennypack Creek trib at Hatboro  PA',
    40.1809422,
    -75.11211669
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW247'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'REAP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Cocalico Creek at Ephrata',
    40.20333,
    -76.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REAP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LLIC3',
    NULL,
    'NERFC',
    'CT',
    NULL,
    'Housatonic River at Lake Lillinonah',
    41.44055,
    -73.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLIC3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MION8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Souris River at Minot-Broadway Bridge',
    48.23722,
    -101.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MION8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NMDM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River at New Madrid',
    36.57611,
    -89.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NMDM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCDO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Reservoir at Henry Hagg Lake',
    45.47444,
    -123.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCDO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BKML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Bartholomew at Beekman',
    32.88111,
    -91.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18888950,
    'WDBK1',
    '06878500',
    'MBRFC',
    'KS',
    '10260008',
    'LYON C NR WOODBINE  KS',
    38.89805,
    -96.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDBK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10849770,
    'APKM4',
    '04168530',
    'NCRFC',
    'MI',
    '4090004',
    'RIVER ROUGE AT ALLEN PARK  MI',
    42.30087127,
    -83.19937079
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APKM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTMI2',
    '05576195',
    'NCRFC',
    'IL',
    '7130007',
    'SUGAR CREEK NEAR CHATHAM  IL',
    39.66083,
    -89.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTMI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6782183,
    'HLUM3',
    '01172000',
    'NERFC',
    'MA',
    '1080201',
    'CONNECTICUT RIVER AT HOLYOKE  MA',
    42.20333,
    -72.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLUM3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18658266,
    'TBBM6',
    '02441000',
    'SERFC',
    'MS',
    '3160104',
    'TIBBEE CREEK NR TIBBEE  MS',
    33.54222,
    -88.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBBM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11688596,
    'GLGM2',
    '01589180',
    'MARFC',
    'MD',
    '2060003',
    'GWYNNS FALLS AT GLYNDON  MD',
    39.47444,
    -76.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLGM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22108899,
    'BXCW4',
    '06647500',
    'MBRFC',
    'WY',
    '10180007',
    'BOX ELDER CREEK AT BOXELDER  WY',
    42.61,
    -105.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BXCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4552332,
    'MTLW2',
    '03190400',
    'OHRFC',
    'WV',
    '5050005',
    'MEADOW RIVER NEAR MT. LOOKOUT  WV',
    38.18638,
    -80.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10902267,
    'STNW4',
    '06426160',
    'MBRFC',
    'WY',
    '10120201',
    'STONEPILE CREEK AT MOUTH  NEAR GILLETTE  WY',
    44.27111,
    -105.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STNW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5727613,
    'WCHT2',
    '08138000',
    'WGRFC',
    'TX',
    '12090106',
    'Colorado Rv at Winchell  TX',
    31.47444,
    -99.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCHT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18395374,
    'NW452',
    '03433641',
    'OHRFC',
    'TN',
    '5130204',
    'KELLEY CREEK NEAR KINGFIELD  TN',
    35.9053426,
    -87.0977837
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW452'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4683072,
    'NW415',
    '01558098',
    'MARFC',
    'PA',
    '2050302',
    'Spruce Creek near Spruce Creek  PA',
    40.6181219,
    -78.126953
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW415'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARLV1',
    NULL,
    'NERFC',
    'VT',
    NULL,
    'Battenkill at Arlington',
    43.06777,
    -73.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARLV1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRLM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patuxent River at Avondale Street in Laurel',
    39.10166,
    -76.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRLM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOGT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Obion River near Bogota',
    36.13555,
    -89.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOGT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRIM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Patuxent River near Bristol',
    38.77944,
    -76.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRIM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1232765,
    'HTSC2',
    '09034500',
    'CBRFC',
    'CO',
    '14010001',
    'COLORADO RIVER AT HOT SULPHUR SPRINGS  CO.',
    40.06777,
    -106.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HTSC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2875511,
    'FEWW4',
    '06755960',
    'MBRFC',
    'WY',
    '10190009',
    'CROW CREEK AT 19TH STREET  AT CHEYENNE  WY',
    41.11861,
    -104.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FEWW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13625583,
    'SOGW3',
    '05409500',
    'NCRFC',
    'WI',
    '7070006',
    'KICKAPOO RIVER AT SOLDIERS GROVE  WI',
    43.39442178,
    -90.776518
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SOGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13361738,
    'BLVI4',
    '05416100',
    'NCRFC',
    'IA',
    '7060005',
    'MISSISSIPPI R AT LOCK & DAM 12 AT BELLEVUE  IA',
    42.26083,
    -90.42306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLVI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16998670,
    'LPHC2',
    '09365500',
    'CBRFC',
    'CO',
    '14080105',
    'LA PLATA RIVER AT HESPERUS  CO',
    37.28805,
    -108.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPHC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 25260398,
    'NPTN1',
    '06693000',
    'MBRFC',
    'NE',
    '10180014',
    'NORTH PLATTE RIVER AT NORTH PLATTE  NEBR.',
    41.1525,
    -100.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NPTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DRST1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Obion River near Dresden',
    36.25416,
    -88.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRST1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VLVN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Souris River at Velva',
    48.05083,
    -100.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VLVN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSCV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Mason Creek at Mason Creek',
    37.35583,
    -80.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSCV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PHAW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Pataha Creek near Mouth',
    46.50833,
    -117.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PHAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPSV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Roanoke River at Salem Pump Station',
    37.28805,
    -80.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPSV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASTN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Canisteo River at Addison',
    42.10166,
    -77.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASTN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OSWK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Neosho River at Oswego',
    37.16944,
    -95.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OSWK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELLK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Big Creek at Ellis',
    38.94888,
    -99.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELLK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Antioch',
    38.01694,
    -121.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17298722,
    'FULN1',
    '06792000',
    'MBRFC',
    'NE',
    '10210010',
    'CEDAR RIVER NEAR FULLERTON  NEBR.',
    41.38972,
    -98.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FULN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 920371,
    'WSVC2',
    '07093700',
    'ABRFC',
    'CO',
    '11020001',
    'ARKANSAS RIVER NEAR WELLSVILLE  CO.',
    38.50833,
    -105.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSVC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3595964,
    'CHGI2',
    '05585830',
    'NCRFC',
    'IL',
    '7130011',
    'MCKEE CREEK AT CHAMBERSBURG  IL',
    39.81777778,
    -90.6544444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHGI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13173829,
    'NHHM4',
    '04170500',
    'NCRFC',
    'MI',
    '4090005',
    'HURON RIVER NEAR NEW HUDSON  MI',
    42.512811,
    -83.6763294
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NHHM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17484573,
    'SMCW4',
    '06665790',
    'MBRFC',
    'WY',
    '10180011',
    'SYBILLE CREEK AB CANAL NO. 3  NEAR WHEATLAND  WY',
    41.915,
    -105.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Gulf Intracoastal Waterway at Bayou Dupre at MRGO',
    29.94888,
    -89.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLTM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Northwest Branch Patapsco River at Baltimore/Fort',
    39.27111,
    -76.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLTM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KLML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River near Knox Landing',
    31.06777,
    -91.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KLML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RONW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Greenbrier River at Ronceverte',
    37.74555,
    -80.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RONW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELZN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Cape Fear River at Elizabethtown',
    34.62694,
    -78.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELZN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RSTV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Roanoke River at Roa Sewer Plant',
    37.27111,
    -79.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSTV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek at Madrone',
    37.16944,
    -121.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1840053,
    'BRKI2',
    NULL,
    'LMRFC',
    'IL',
    NULL,
    'Ohio River at Brookport Lock and Dam',
    37.11861,
    -88.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRKI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OWBK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Ohio River at Owensboro',
    37.79638,
    -87.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OWBK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FOSN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Watauga River near Foscoe',
    36.16944,
    -81.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOSN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLON7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Cape Fear River at Wilmington',
    34.22027,
    -77.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLON7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTVI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Ohio River at Mount Vernon',
    37.93194,
    -87.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTVI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPYN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Canasawacta Creek at South Plymouth',
    42.57611,
    -75.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPYN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'REBW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Entiat River at Cottonwood',
    48.01694,
    -120.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REBW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HSPF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Santa Fe River near High Springs',
    29.86416,
    -82.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HSPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River Gulf Outlet (MRGO) at Bayou Bien',
    29.99972,
    -89.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BGDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Big Goose Creek at Canyon',
    44.69472,
    -107.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KYDK2',
    NULL,
    'LMRFC',
    'KY',
    NULL,
    'Tennessee River at Kentucky Lake Pool',
    37.0,
    -88.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KYDK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BBKL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bayou Boeuf at Kraem',
    29.88111,
    -90.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBKL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DMSF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Dames Point Bridge (I-295)',
    30.38972,
    -81.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DMSF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLOI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Walnut Creek (Central IA) at IFC--Clive NW 100th S',
    41.61,
    -93.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLOI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BMDA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Ouachita River at Blakely Mtn Dam',
    34.57611,
    -93.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BMDA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLVI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Walnut Creek (Central IA) at Clive I-80/35',
    41.61,
    -93.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLVI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BDAL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bayou des Allemands',
    29.83027,
    -90.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASTO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Columbia River at Tongue Pt near Astoria',
    46.20333,
    -123.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SOMT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Loosahatchie River near Sommerville 1N',
    35.25416,
    -89.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SOMT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12396810,
    'MDNM8',
    '06088300',
    'MBRFC',
    'MT',
    '10030104',
    'Muddy Creek near Vaughn MT',
    47.62694,
    -111.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MDNM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14490772,
    'WKPS2',
    '06354882',
    'MBRFC',
    'SD',
    '10130106',
    'OAK CR NEAR WAKPALA SD',
    45.72843,
    -100.59628
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKPS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 977546,
    'LXHC2',
    '07123000',
    'ABRFC',
    'CO',
    '11020005',
    'ARKANSAS RIVER AT LA JUNTA  CO',
    37.99972,
    -103.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LXHC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BGCW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Big Goose Creek below Beaver Creek',
    44.7625,
    -107.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSBF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Main Street Bridge',
    30.32194,
    -81.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSBF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ETRN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Clyde River at Mays Point Lock E-25',
    42.99972,
    -76.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ETRN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BKBF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Buckman Bridge (I-295)',
    30.18638,
    -81.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKBF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ECLN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Oneida River at Brewerton Lock E-23',
    43.23722,
    -76.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECLN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKSN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Lookout Shoals Dam',
    35.7625,
    -81.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKSN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DVRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Fork Whitewater River near Dover',
    43.98277,
    -92.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DVRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BYGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at West Bank Bayou Gauc',
    29.77944,
    -90.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BYGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WWPM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Middle Fork Whitewater River at Whitewater State P',
    44.05083,
    -92.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWPM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SEOC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Simeon Creek near San Simeon',
    35.59305,
    -121.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SEOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BARK2',
    NULL,
    'LMRFC',
    'KY',
    NULL,
    'Cumberland River at Barkley Lake Tailwater',
    37.01694,
    -88.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BARK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7288386,
    'RIVN1',
    '06771000',
    'MBRFC',
    'NE',
    '10200102',
    'WOOD RIVER NEAR RIVERDALE  NEBR.',
    40.79638,
    -99.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RIVN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13195694,
    'PRMM4',
    '04160398',
    'NCRFC',
    'MI',
    '4090001',
    'PINE RIVER AT NEUMAN ROAD NEAR MARYSVILLE  MI',
    42.8586422,
    -82.5379715
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRMM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PDDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Park Diversion Ditch near Story',
    44.57611,
    -107.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6129267,
    'NW401',
    '01115670',
    'NERFC',
    'RI',
    '1090004',
    'CONGDON RIVER NEAR NOOSENECK  RI',
    41.61232235,
    -71.62284197
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW401'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1320292,
    'NW491',
    '09063200',
    'CBRFC',
    'CO',
    '14010003',
    'WEARYMAN CREEK NEAR RED CLIFF  CO.',
    39.5222084,
    -106.3236384
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW491'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOUN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Mountain Island Dam',
    35.33888,
    -80.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOUN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NWHN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Chenango River at Norwich',
    42.54222,
    -75.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWHN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Powder River (OR) near Sumpter',
    44.69472,
    -118.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UBNI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'North Walnut Creek (Central IA) at Urbandale 92nd',
    41.62694,
    -93.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UBNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TATT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'North Fork Forked Deer River below Tatumville',
    36.01694,
    -89.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TATT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EBWM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Fork Whitewater River near Elba',
    44.08472,
    -92.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EBWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NVRN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Neversink River at Neversink Reservoir',
    41.83027,
    -74.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NVRN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OXBM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Middle Fork Zumbro River near Oxbow P',
    44.08472,
    -92.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OXBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WPPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Pearl River at Interstate 59',
    30.38972,
    -89.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WPPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12840618,
    'BHWW4',
    '06268600',
    'MBRFC',
    'WY',
    '10080007',
    'BIGHORN RIVER AT WORLAND  WY',
    44.0,
    -107.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHWW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5745336,
    'BSST2',
    '08144600',
    'WGRFC',
    'TX',
    '12090109',
    'San Saba Rv nr Brady  TX',
    31.0,
    -99.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSST2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21353317,
    'RSFN5',
    '09442680',
    'CBRFC',
    'NM',
    '15040004',
    'SAN FRANCISCO RIVER NEAR RESERVE  NM',
    33.71711,
    -108.75722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSFN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6658259,
    'PFFM5',
    '05040500',
    'NCRFC',
    'MN',
    '9020103',
    'PELICAN RIVER NEAR FERGUS FALLS  MN',
    46.33607068,
    -96.1197813
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PFFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBYI2',
    '05591950',
    'NCRFC',
    'IL',
    NULL,
    'Shelbyville Dam',
    39.40833,
    -88.77639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBYI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CBON5',
    NULL,
    'WGRFC',
    'NM',
    NULL,
    'Rio Grande at Caballo Lake',
    32.89805,
    -107.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBON5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNXT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Cibolo Creek at Cibolo Nature Center',
    29.77944,
    -98.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNXT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MNHP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Chickies Creek at Manheim',
    40.16944,
    -76.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNHP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRKN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'North Fork Elkhorn River at Norfolk',
    42.03388,
    -97.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRKN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RHBN5',
    NULL,
    'WGRFC',
    'NM',
    NULL,
    'Rio Grande at Hayners Bridge near Rincon',
    32.61,
    -107.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHBN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OCOM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Middle Fork Zumbro River at Oronoco',
    44.1525,
    -92.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCOM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MJYP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Little Chickies Creek at Mt. Joy',
    40.11861,
    -76.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MJYP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SIDN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Susquehanna River at Sidney',
    42.305,
    -75.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SIDN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Powder River (OR) near Richland',
    44.77944,
    -117.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOTG1',
    NULL,
    'LMRFC',
    'GA',
    NULL,
    'Nottely River at Nottely Dam',
    34.96583,
    -84.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOTG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LAVW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Baraboo River at La Valle',
    43.57611,
    -90.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAVW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SDRN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Carrs Creek near Sidney Center',
    42.28805,
    -75.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SDRN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12936834,
    'STAM4',
    '04143200',
    'NCRFC',
    'MI',
    NULL,
    'Standish',
    43.985,
    -83.8875
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STAM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17322435,
    'NLPN1',
    '06788988',
    'MBRFC',
    'NE',
    '10210007',
    'MIRA CREEK NR NORTH LOUP  NE',
    41.50833,
    -98.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6606294,
    'NEWI4',
    '05482135',
    'NCRFC',
    'IA',
    '7100006',
    'North Raccoon River near Newell  IA',
    42.6044235,
    -95.0452683
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NEWI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12523753,
    'VRDM8',
    '06177825',
    'MBRFC',
    'MT',
    '10060002',
    'Redwater River near Vida MT',
    47.915,
    -105.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VRDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17541093,
    'TOLI4',
    '05451800',
    'NCRFC',
    'IA',
    NULL,
    'Toledo 1NW',
    42.0,
    -92.5886
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TOLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17296944,
    'SPDN1',
    '06791500',
    'MBRFC',
    'NE',
    '10210010',
    'CEDAR RIVER NEAR SPALDING  NE',
    41.71166,
    -98.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13625407,
    'REAW3',
    '05409000',
    'NCRFC',
    'WI',
    '7070006',
    'WEST FORK KICKAPOO RIVER NEAR READSTOWN  WI',
    43.47636435,
    -90.7417971
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REAW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10902309,
    'DONW4',
    '06426130',
    'MBRFC',
    'WY',
    '10120201',
    'DONKEY CREEK NEAR GILLETTE  WY',
    44.27111,
    -105.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DONW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1087277,
    'ELKK2',
    '03209300',
    'OHRFC',
    'KY',
    '5070202',
    'RUSSELL FORK AT ELKHORN CITY  KY',
    37.31285,
    -82.35969
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELKK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22356915,
    'LFDL1',
    '07380400',
    'LMRFC',
    'LA',
    '8090301',
    'Bayou Lafourche at Donaldsonville  LA',
    30.10166,
    -90.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFDL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MYKO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'McKay Creek above Reservoir',
    45.50833,
    -118.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MYKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PDAT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Pecos River at Pandale Crossing',
    30.11861,
    -101.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDAT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FPKM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Missouri River at Fort Peck Reservoir',
    48.0,
    -106.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FPKM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ADOW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Middle Fork Tygart Valley River at Adolph',
    38.74555,
    -80.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADOW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5338107,
    'PWCW4',
    '06306200',
    'MBRFC',
    'WY',
    '10090101',
    'PRAIRIE DOG CR AT WAKELEY SIDING  NR SHERIDAN  WY',
    44.84722,
    -106.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PWCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14001847,
    'CDPT2',
    '07307800',
    'ABRFC',
    'TX',
    '11130105',
    'Pease Rv nr Childress  TX',
    34.22027,
    -100.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDPT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HLST1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'South Fork Forked Deer River near Halls',
    35.93194,
    -89.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLST1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JNXT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Devils River at Cauthorn Ranch near Juno',
    30.06777,
    -101.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JNXT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 880648,
    'ALNI2',
    '05587541',
    'NCRFC',
    'IL',
    '7110009',
    'Alton - Melvin Price L&D',
    38.86139,
    -90.1375
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALNI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10116996,
    'QNMK1',
    '06911400',
    'MBRFC',
    'KS',
    '10290101',
    'MARAIS DES CYGNES R AT QUENEMO  KS',
    38.54222,
    -95.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'QNMK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8833654,
    'LELN7',
    '02105900',
    'SERFC',
    'NC',
    '3030005',
    'HOOD CREEK NEAR LELAND  NC',
    34.27111,
    -78.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LELN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12228557,
    'BEZM4',
    '04126600',
    'NCRFC',
    'MI',
    NULL,
    'Benzonia 1S',
    44.6006,
    -86.0992
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEZM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20907083,
    'CTWK1',
    '07182000',
    'ABRFC',
    'KS',
    '11070203',
    'COTTONWOOD R AT COTTONWOOD FALLS  KS',
    38.37277,
    -96.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTWK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3775587,
    'DAVW2',
    '03065400',
    'OHRFC',
    'WV',
    '5020004',
    'BLACKWATER RIVER NEAR DAVIS  WV',
    39.13555,
    -79.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DAVW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7027283,
    'ADSM5',
    '05063000',
    'NCRFC',
    'MN',
    '9020107',
    'WILD RICE RIVER NEAR ADA  MN',
    47.2638553,
    -96.5003461
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7590877,
    'CSKK1',
    '07186055',
    'ABRFC',
    'KS',
    '11070207',
    'COW C NR SCAMMON  KS',
    37.27111,
    -94.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSKK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8693739,
    'DENV2',
    '02077500',
    'SERFC',
    'VA',
    '3010104',
    'HYCO RIVER NEAR DENNISTON  VA',
    36.59305,
    -78.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DENV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3775731,
    'ROWW2',
    '03070000',
    'OHRFC',
    'WV',
    '5020004',
    'CHEAT RIVER AT ROWLESBURG  WV',
    39.33888,
    -79.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROWW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14439510,
    'MNVN8',
    '05083000',
    'NCRFC',
    'ND',
    '9020307',
    'TURTLE RIVER AT MANVEL  ND',
    48.078595,
    -97.1845207
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNVN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17341297,
    'SWTN1',
    '06783500',
    'MBRFC',
    'NE',
    '10210005',
    'MUD CREEK NEAR SWEETWATER  NE',
    41.03388,
    -98.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CASO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Camas Creek near Ukiah',
    45.1525,
    -118.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CASO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NLSM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Milk River at Nelson Reservoir',
    48.52527,
    -107.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLSM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRRT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Loosahatchie River near Frayser',
    35.25416,
    -89.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRRT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JBOW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Cheat River at Job',
    38.88111,
    -79.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JBOW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OROC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Boulder Creek (CO) near Orodell',
    40.0,
    -105.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OROC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LITW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Tug Fork River at Litwar',
    37.47444,
    -81.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LITW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SFLS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Big Sioux River at Sioux Falls I-90',
    43.61,
    -96.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFLS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LSBW4',
    NULL,
    'CBRFC',
    'WY',
    NULL,
    'Little Snake River at Baggs',
    41.03388,
    -107.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13153419,
    'NILO1',
    '03097550',
    'OHRFC',
    'OH',
    '5030103',
    'Mahoning River at Ohio Edison P Plt at Niles OH',
    41.16944,
    -80.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NILO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10849794,
    'LRWM4',
    '04167625',
    'NCRFC',
    'MI',
    '4090004',
    'LOWER RIVER ROUGE AT WAYNE  MI',
    42.28448237,
    -83.427434
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRWM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 334022,
    'LTRT2',
    '08447410',
    'WGRFC',
    'TX',
    '13070008',
    'Pecos Rv nr Langtry  TX',
    29.81333,
    -101.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LTRT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5481927,
    'ANNS2',
    '06430800',
    'MBRFC',
    'SD',
    '10120203',
    'ANNIE CREEK NEAR LEAD  SD',
    44.32194,
    -103.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANNS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17461568,
    'LEWN1',
    '06687500',
    'MBRFC',
    'NE',
    '10180009',
    'NORTH PLATTE RIVER AT LEWELLEN NEBR',
    41.32194,
    -102.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEWN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18888996,
    'JUCK1',
    '06879000',
    'MBRFC',
    'KS',
    '10260008',
    'SMOKY HILL R AT JUNCTION CITY  KS',
    38.98277,
    -96.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JUCK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5458394,
    'DCCS2',
    '06436165',
    'MBRFC',
    'SD',
    '10120202',
    'DEADWOOD CREEK AT CENTRAL CITY  SD',
    44.37277,
    -103.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCCS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3378673,
    'CSCU1',
    '09182400',
    'CBRFC',
    'UT',
    '14030005',
    'CASTLE CREEK BELOW CASTLE VALLEY NEAR MOAB  UT',
    38.67777,
    -109.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSCU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 938040553,
    'AKDA4',
    '07360000',
    'LMRFC',
    'AR',
    '8040102',
    'OUACHITA RIVER AT ARKADELPHIA  ARK.',
    34.11861,
    -93.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AKDA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14169579,
    'LNDN8',
    '05123900',
    'NCRFC',
    'ND',
    '9010003',
    'BOUNDARY CREEK NR LANDA  ND',
    48.812795,
    -100.8632072
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNDN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11757874,
    'CCAS2',
    '06453255',
    'MBRFC',
    'SD',
    '10170101',
    'CHOTEAU CR NR AVON SD',
    42.93194,
    -98.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCAS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1921286,
    'NW445',
    '03237255',
    'OHRFC',
    'KY',
    '5090201',
    'KINNICONICK CREEK BELOW TRACE CREEK AT TANNERY  KY',
    38.54527778,
    -83.22138889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW445'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRIC2',
    NULL,
    'CBRFC',
    'CO',
    NULL,
    'Florida River above Lemon Res.',
    37.42361,
    -107.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRIC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OGSN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Oswegatchie River near Ogdensburg',
    44.62694,
    -75.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OGSN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBVO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at Steubenville',
    40.35583,
    -80.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBVO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Calcasieu River at Saltwater Barrier',
    30.25416,
    -93.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mermentau River at Lacassine Wildlife Refuge',
    30.0,
    -92.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLCK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Cumberland River at Lake Cumberland',
    36.83027,
    -85.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLCK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13235029,
    'RBDM8',
    '06295900',
    'MBRFC',
    'MT',
    '10100003',
    'Rosebud Creek at Hwy 447 bridge nr Rosebud  MT',
    46.18638,
    -106.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12175030,
    'HAYW3',
    '04085395',
    'NCRFC',
    'WI',
    '4030101',
    'SOUTH BRANCH MANITOWOC RIVER AT HAYTON  WI',
    44.02471398,
    -88.1181548
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAYW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22702940,
    'BHTA4',
    '07361600',
    'LMRFC',
    'AR',
    '8040103',
    'LITTLE MISSOURI RIV NR BOUGHTON  ARK.',
    33.88111,
    -93.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHTA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20179865,
    'LAKS2',
    '06448000',
    'MBRFC',
    'SD',
    '10140203',
    'LAKE CR ABOVE REFUGE NEAR TUTHILL SD',
    43.08472,
    -101.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAKS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12132966,
    'MORM4',
    '04121900',
    'NCRFC',
    'MI',
    '4060102',
    'LITTLE MUSKEGON RIVER NEAR MORLEY  MI',
    43.50252875,
    -85.3425356
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MORM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12816853,
    'MEEW4',
    '06276500',
    'MBRFC',
    'WY',
    '10080009',
    'GREYBULL RIVER AT MEETEETSE  WY',
    44.1525,
    -108.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MEEW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 940170482,
    'RMNS2',
    '06478535',
    'MBRFC',
    'SD',
    '10170102',
    'EAST FORK VERMILLION RIVER NEAR RAMONA  SD',
    44.10166,
    -97.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RMNS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9512662,
    'SRAN4',
    '01396091',
    'MARFC',
    'NJ',
    '2030105',
    'South Br Raritan River at Rt 46 at Budd Lake NJ',
    40.86416,
    -74.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRAN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WWCG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Flint River (GA) at Lake Blackshear',
    31.84722,
    -83.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WWCG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RMHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'EABPL Borrow Pit near Ramah',
    30.37277,
    -91.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RMHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2355278,
    'GLNM5',
    NULL,
    'NCRFC',
    'MN',
    '7010205',
    'BUFFALO CREEK NEAR GLENCOE  MN',
    44.76385099,
    -94.0910849
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CFPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mermentau River at Catfish Point Lock',
    29.86416,
    -92.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CFPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCNN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Canisteo River near West Cameron',
    42.22027,
    -77.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCNN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SETW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Seminoe  Reservoir',
    42.1525,
    -107.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SETW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FQGT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande near Fort Quitman',
    31.08472,
    -105.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FQGT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EBBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'San Bernard River at East Bernard',
    29.52527,
    -96.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EBBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWYT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'San Bernard River near Sweeny',
    29.05083,
    -95.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWYT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCRA1',
    NULL,
    'LMRFC',
    'AL',
    NULL,
    'Tennessee River near Scottsboro',
    34.64388,
    -85.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCRA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NORI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Shell Rock River (Northeast IA) at Nora Springs',
    43.13555,
    -93.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NORI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6199754,
    'NW406',
    '01364959',
    'NERFC',
    'NY',
    '2020007',
    'RONDOUT CR ABOVE RED BROOK AT PEEKAMOOSE NY',
    41.93694444,
    -74.3747222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW406'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKCM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Mississippi River at Lake City',
    44.4575,
    -92.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LODW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Spring Creek at Lodi',
    43.32194,
    -89.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LODW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RBGW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Baraboo River at Reedsburg',
    43.52527,
    -90.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALBW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Sugar River at Albany',
    42.71166,
    -89.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALBW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DENI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Eel River (IN) at Denver',
    40.86416,
    -86.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DENI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPBO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Maumee River at Napoleon',
    41.37277,
    -84.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPBO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MONO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'St. Joseph River (OH/IN) at Montpelier',
    41.59305,
    -84.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MONO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KAYM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Blue River at 63rd Street',
    39.0,
    -94.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KAYM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BUEM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'East Branch Blue Earth River near Blue Earth 1N',
    43.64388,
    -94.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUEM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NWYI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Tippecanoe River at Norway Dam',
    40.77944,
    -86.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWYI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9343765,
    'RYLM3',
    '01163500',
    'NERFC',
    'MA',
    '1080202',
    'MILLERS R BL BIRCH HILL DAM AT SOUTH ROYALSTON  MA',
    42.63222,
    -72.125
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RYLM3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6832125,
    'WLKM4',
    '04062400',
    'NCRFC',
    'MI',
    '4030107',
    'MICHIGAMME RIVER NEAR WITCH LAKE  MI',
    46.2466103,
    -88.0126343
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLKM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 276436,
    'PRBT2',
    '08374000',
    'WGRFC',
    'TX',
    NULL,
    'Alamito Creek 5 miles ESE of Presidio',
    29.52527,
    -105.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7825920,
    'HUSA4',
    '07263115',
    'ABRFC',
    'AR',
    NULL,
    'Fourche LaFave River near Houston',
    35.0,
    -92.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HUSA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11689132,
    'SRRM2',
    '01589464',
    'MARFC',
    'MD',
    '2060003',
    'STONY RUN AT RIDGEMEDE ROAD AT BALTIMORE  MD',
    39.33888,
    -76.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRRM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BMRN4',
    '01398900',
    'MARFC',
    'NJ',
    '2030105',
    'North Branch Raritan River at Bedminster NJ',
    40.67777,
    -74.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BMRN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TUAO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Tualatin River at Tualatin',
    45.38972,
    -122.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OPYA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Yellow River (AL) above Opp',
    31.27111,
    -86.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OPYA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRKA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Gila River at Painted Rock Lake',
    33.05083,
    -113.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRKA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYFM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Michigamme River at Inflow to Michigamme Reservoir',
    46.20333,
    -88.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYFM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRRO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Crane Creek below Crane Creek',
    41.62694,
    -83.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8165340,
    'LDLK1',
    '06846000',
    'MBRFC',
    'KS',
    '10250014',
    'BEAVER C AT LUDELL  KS',
    39.84722,
    -100.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LDLK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6928608,
    'DANW2',
    '03199000',
    'OHRFC',
    'WV',
    '5050009',
    'LITTLE COAL RIVER AT DANVILLE  WV',
    38.06777,
    -81.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DANW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1432739,
    'RBUT2',
    '08211503',
    'WGRFC',
    'TX',
    '12110111',
    'Rincon Bayou Channel nr Calallen  TX',
    27.895,
    -97.62861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBUT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CCKO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Washita River near Chickasha',
    35.08472,
    -97.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCKO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CSRI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) near Ames Cameron School',
    42.06777,
    -93.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AMQI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) at IFC--Ames Stange Rd',
    42.03388,
    -93.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMQI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AMDI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Squaw Creek (Central IA) at IFC--Ames S Duff Ave',
    42.0,
    -93.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMDI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13554679,
    'HSCI2',
    '05581500',
    'NCRFC',
    'IL',
    '7130009',
    'SUGAR CREEK NEAR HARTSBURG  IL',
    40.2222651,
    -89.4034313
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HSCI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13166044,
    'SROM4',
    '04175228',
    'NCRFC',
    'MI',
    NULL,
    'South Rockwood 4WSW',
    42.0381,
    -83.3242
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SROM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1353870,
    'EKRC2',
    '09241000',
    'CBRFC',
    'CO',
    '14050001',
    'ELK RIVER AT CLARK  CO.',
    40.72861,
    -106.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EKRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBPN1',
    '06805020',
    'MBRFC',
    'NE',
    '10200202',
    'Platte River at South Bend  Nebr.',
    40.99972,
    -96.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14828061,
    'PRSN8',
    '05060570',
    'NCRFC',
    'ND',
    '9020204',
    'LOWER BRANCH RUSH RIVER NEAR PROSPER  ND',
    46.94163675,
    -96.9886967
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRSN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19621280,
    'CHSA1',
    '03575000',
    'LMRFC',
    'AL',
    '6030002',
    'FLINT RIVER NEAR CHASE AL',
    34.83027,
    -86.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHSA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7111281,
    'SBBM5',
    '05125550',
    'NCRFC',
    'MN',
    '9030001',
    'STONY RIVER NEAR BABBITT  MN',
    47.6932456,
    -91.7607094
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20097495,
    'KCKI3',
    '03333600',
    'OHRFC',
    'IN',
    '5120107',
    'KOKOMO CREEK NEAR KOKOMO  IN',
    40.44055,
    -86.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCKI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11645815,
    'NRBN1',
    '06466000',
    'MBRFC',
    'NE',
    '10150007',
    'Niobrara River at Niobrara  Nebr.',
    42.74844,
    -98.058
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NRBN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3777167,
    'BEMW2',
    '03068000',
    'OHRFC',
    'WV',
    '5020004',
    'SHAVERS FORK AT BEMIS  WV',
    38.81333,
    -79.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEMW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4353810,
    'ALTW2',
    '03052120',
    'OHRFC',
    'WV',
    '5020001',
    'BUCKHANNON RIVER AT ALTON  WV',
    38.83027,
    -80.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALTW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9594048,
    'SXXW4',
    '06313500',
    'MBRFC',
    'WY',
    '10090202',
    'POWDER RIVER AT SUSSEX  WY',
    43.69472,
    -106.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SXXW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19577851,
    'IRCT1',
    '03588500',
    'LMRFC',
    'TN',
    '6030005',
    'SHOAL CREEK AT IRON CITY  TN',
    35.02404,
    -87.57901
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IRCT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3168796,
    'GWNT2',
    '08210100',
    'WGRFC',
    'TX',
    NULL,
    'Nueces River at George West',
    28.32194,
    -98.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GWNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1827194,
    'HLLK2',
    '03284580',
    'OHRFC',
    'KY',
    '5100205',
    'HICKMAN CREEK AT HWY 1268 NEAR CAMP NELSON  KY',
    37.79638,
    -84.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLLK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5923532,
    'JMSK1',
    '06855800',
    'MBRFC',
    'KS',
    '10250017',
    'BUFFALO C NR JAMESTOWN  KS',
    39.61,
    -97.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JMSK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8590392,
    'NW481',
    '07048800',
    'LMRFC',
    'AR',
    '11010001',
    'Richland Creek at Goshen  AR',
    36.10416667,
    -94.0075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW481'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17322611,
    'ORDN1',
    '06788500',
    'MBRFC',
    'NE',
    '10210007',
    'NORTH LOUP RIVER AT ORD  NE',
    41.61,
    -98.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ORDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 817261,
    'MXGM1',
    '01018000',
    'NERFC',
    'ME',
    '1010005',
    'Meduxnekeag River near Houlton  Maine',
    46.10166,
    -67.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MXGM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17508918,
    'MICN1',
    '06679500',
    'MBRFC',
    'NE',
    '10180009',
    'NORTH PLATTE RIVER AT MITCHELL  NEBR.',
    41.93194,
    -103.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MICN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14050281,
    'VELN8',
    '05119410',
    'NCRFC',
    'ND',
    NULL,
    'Velva',
    48.0583,
    -100.95
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VELN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14768626,
    'BRGW3',
    '05545334',
    'NCRFC',
    'WI',
    NULL,
    'Burlington',
    42.68,
    -88.2714
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1326913,
    'FPTC2',
    '09078600',
    'CBRFC',
    'CO',
    '14010004',
    'FRYINGPAN RIVER NEAR THOMASVILLE  CO.',
    39.33888,
    -106.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FPTC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15634335,
    'WHTO1',
    '04193997',
    'OHRFC',
    'OH',
    '4100009',
    'Blue Creek near Whitehouse OH',
    41.52527,
    -83.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHTO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9306578,
    'GRGM8',
    '05013900',
    'MBRFC',
    'MT',
    '9040001',
    'Grinnell C at G Glacier nr Many Glacier MT',
    48.7625,
    -113.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRGM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19063656,
    'CABN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Medicine Creek (NE) at Harry Strunk Reservoir',
    40.37277,
    -100.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CABN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17319632,
    'BRLN1',
    '06787500',
    'MBRFC',
    'NE',
    '10210008',
    'CALAMUS RIVER NEAR BURWELL  NEBR.',
    41.81333,
    -99.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRLN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17240066,
    'STUI4',
    '06600300',
    'MBRFC',
    'IA',
    '10230002',
    'West Branch Floyd River near Struble  IA',
    42.93194,
    -96.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STUI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2591267,
    'LOCN4',
    '01460880',
    'MARFC',
    'NJ',
    '2040105',
    'Lockatong Creek at Raven Rock NJ',
    40.40666,
    -75.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOCN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10836042,
    'VORT2',
    '08180720',
    'WGRFC',
    'TX',
    '12100302',
    'Medina Rv nr Von Ormy  TX',
    29.28805,
    -98.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VORT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22084115,
    'KNSK1',
    '07140000',
    'ABRFC',
    'KS',
    '11030004',
    'ARKANSAS R NR KINSLEY  KS',
    37.93194,
    -99.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNSK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20635122,
    'REDN2',
    '09415460',
    'CBRFC',
    'NV',
    '15010011',
    'WHITE RV NR RED MTN NR PRESTON  NV',
    38.94888,
    -115.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REDN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13608610,
    'HAVI2',
    '05570500',
    'NCRFC',
    'IL',
    '7130003',
    'ILLINOIS RIVER AT HAVANA  IL',
    40.29417,
    -90.06833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAVI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18939208,
    'GOVK1',
    '06860500',
    'MBRFC',
    'KS',
    '10260005',
    'HACKBERRY C NR GOVE  KS',
    38.96583,
    -100.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GOVK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13167382,
    'LALM4',
    '04176605',
    'NCRFC',
    'MI',
    '4100001',
    'OTTER CREEK AT LA SALLE  MI',
    41.86699035,
    -83.4535445
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LALM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19010165,
    'AMBN1',
    '06852000',
    'MBRFC',
    'NE',
    '10250016',
    'ELM CREEK AT AMBOY  NEBR.',
    40.08472,
    -98.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMBN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6129191,
    'NW402',
    '01115770',
    'NERFC',
    'RI',
    '1090004',
    'CARR RIVER NEAR NOOSENECK  RI',
    41.6431557,
    -71.6078415
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW402'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18460230,
    'MOHI3',
    '03361638',
    'OHRFC',
    'IN',
    '5120204',
    'LEARY-WEBER DITCH AT MOHAWK  IN',
    39.84722,
    -85.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOHI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 943070050,
    'PCST2',
    '08420500',
    'WGRFC',
    'TX',
    '13070001',
    'Pecos Rv at Pecos  TX',
    31.48386,
    -103.49017
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCST2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5336939,
    'LGCW4',
    '06303500',
    'MBRFC',
    'WY',
    '10090101',
    'LITTLE GOOSE CREEK IN CANYON  NEAR BIG HORN  WY',
    44.59305,
    -107.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15985133,
    'SRAW4',
    '06627000',
    'MBRFC',
    'WY',
    '10180002',
    'NORTH PLATTE RIVER AT SARATOGA WYO',
    41.4575,
    -106.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRAW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TGAT2',
    '08374350',
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Lajitas Crossing',
    29.25416,
    -103.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TGAT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17259735,
    'MSON1',
    '06799230',
    'MBRFC',
    'NE',
    '10220003',
    'UNION CREEK AT MADISON  NEBR.',
    41.83027,
    -97.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSON1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21977433,
    'CFFN6',
    '04237962',
    'NERFC',
    'NY',
    '4140201',
    'ONONDAGA CREEK NEAR CARDIFF NY',
    42.915,
    -76.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CFFN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6580244,
    'JCKM5',
    NULL,
    'NCRFC',
    'MN',
    '7100001',
    'DES MOINES RIVER AT JACKSON  MN',
    43.62083,
    -94.98486
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JCKM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21773859,
    'GIBO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Ft. Gibson Lake',
    35.88111,
    -95.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GIBO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19075329,
    'PASN1',
    '06835000',
    'MBRFC',
    'NE',
    '10250006',
    'STINKING WATER CREEK NEAR PALISADE  NEBR.',
    40.37277,
    -101.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PASN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 948497,
    'NW541',
    '07099215',
    'ABRFC',
    'CO',
    '11020002',
    'TURKEY CREEK NEAR FOUNTAIN  CO',
    38.61166168,
    -104.894699
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW541'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12034259,
    'NW433',
    '02152285',
    'SERFC',
    'NC',
    '3050105',
    'FIRST BROAD RIVER AT SR1512 NEAR LAWNDALE  NC',
    35.4422222,
    -81.6130556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW433'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731484,
    'BRIN7',
    '0214643860',
    'SERFC',
    'NC',
    '3050103',
    'BRIAR CR BL EDWARDS BRANCH NEAR CHARLOTTE  NC',
    35.20333,
    -80.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRIN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10906949,
    'BFWW4',
    '06425720',
    'MBRFC',
    'WY',
    '10120201',
    'BELLE FOURCHE R BL RATTLESNAKE C  NR PINEY  WY',
    43.99972,
    -105.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFWW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12498910,
    'BLCM4',
    '04132000',
    'NCRFC',
    'MI',
    '4070005',
    'BLACK RIVER NEAR CHEBOYGAN  MI',
    45.4997333,
    -84.326691
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLCM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18135160,
    'BHRM6',
    '02474600',
    'LMRFC',
    'MS',
    '3170005',
    'BOGUE HOMO NR RICHTON  MS',
    31.40666,
    -89.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHRM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20624546,
    'MLON2',
    '09419507',
    'CBRFC',
    'NV',
    '15010012',
    'MUDDY RV AT LEWIS AVENUE AT OVERTON  NV',
    36.54222,
    -114.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLON2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12685435,
    'ID8S2',
    '06474500',
    'MBRFC',
    'SD',
    '10160009',
    'TURTLE CR AT REDFIELD SD',
    44.88111,
    -98.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ID8S2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DLEN8',
    '05056636',
    'NCRFC',
    'ND',
    '9020201',
    'DEVILS LAKE OUTLET TO STUMP LAKE NR LAKOTA  ND',
    47.96527798,
    -98.525383
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLEN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8420258,
    'MRFW2',
    '01608070',
    'MARFC',
    'WV',
    '2070001',
    'SOUTH BRANCH POTOMAC RIVER NEAR MOOREFIELD  WV',
    39.10166,
    -78.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRFW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9587578,
    'WHCW4',
    '06317020',
    'MBRFC',
    'WY',
    '10090202',
    'WILD HORSE CREEK NEAR ARVADA  WY',
    44.62694,
    -106.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14769510,
    'WMTW3',
    '05546500',
    'NCRFC',
    'WI',
    '7120006',
    'FOX RIVER AT WILMOT  WI',
    42.5116854,
    -88.1792545
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WMTW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNDA4',
    '07263640',
    'ABRFC',
    'AR',
    NULL,
    'AR RIVER @ LOCK AND DAM 5 NEAR WRIGHT AR',
    34.41306,
    -92.10194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNDA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MNSW3',
    '04084411',
    'NCRFC',
    'WI',
    NULL,
    'Menasha - Lk Winnebago (Dam)',
    44.203056,
    -88.428889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNSW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1619647,
    'CMRT2',
    '08168932',
    'WGRFC',
    'TX',
    '12100202',
    'Comal Rv (nc) nr Landa Lk  New Braunfels  TX',
    29.70896,
    -98.13344
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMRT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11065419,
    'IWAL1',
    '073814675',
    'LMRFC',
    'LA',
    '8090302',
    'Bayou Boeuf at Railroad Bridge at Amelia  LA',
    29.66833,
    -91.09972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IWAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12121866,
    'MANM4',
    '04126000',
    'NCRFC',
    'MI',
    '4060103',
    'MANISTEE RIVER NEAR MANISTEE  MI',
    44.2705588,
    -86.1989734
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MANM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15182073,
    'MCGL1',
    '07381600',
    'LMRFC',
    'LA',
    '8080101',
    'Lower Atchafalaya River at Morgan City  LA',
    29.69472,
    -91.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19743430,
    'SGWN7',
    '03479000',
    'LMRFC',
    'NC',
    '6010103',
    'WATAUGA RIVER NEAR SUGAR GROVE  NC',
    36.23722,
    -81.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGWN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7749082,
    'WRWM5',
    '05139500',
    'NCRFC',
    'MN',
    '9030009',
    'WARROAD RIVER NEAR WARROAD  MN',
    48.88111,
    -95.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13463833,
    'LNSI2',
    '05536270',
    'NCRFC',
    'IL',
    '7120003',
    'NORTH CREEK NEAR LANSING  IL',
    41.54555556,
    -87.55888889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNSI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19534712,
    'MCST1',
    '03596000',
    'LMRFC',
    'TN',
    '6040002',
    'DUCK RIVER BELOW MANCHESTER  TN',
    35.47444,
    -86.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCST1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731264,
    'SMON7',
    '02146285',
    'SERFC',
    'NC',
    '3050103',
    'STEWART CREEK AT WEST MOREHEAD ST AT CHARLOTTE  NC',
    35.22027,
    -80.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMON7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731300,
    'COFN7',
    '02146348',
    'SERFC',
    'NC',
    '3050103',
    'COFFEY CREEK NR CHARLOTTE  NC',
    35.13555,
    -80.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COFN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731486,
    'LSMN7',
    '02146409',
    'SERFC',
    'NC',
    '3050103',
    'LTL SUGAR CR AT MEDICAL CENTER DR AT CHARLOTTE  NC',
    35.20333,
    -80.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSMN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731398,
    'MCPN7',
    '02146750',
    'SERFC',
    'NC',
    '3050103',
    'MCALPINE CR BELOW MCMULLEN CR NR PINEVILLE  NC',
    35.05083,
    -80.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCPN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LMRI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Floyd River at Le Mars',
    42.81333,
    -96.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LMRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10082040,
    'BYAI2',
    '03337000',
    'OHRFC',
    'IL',
    '5120109',
    'BONEYARD CREEK AT URBANA  IL',
    40.10166,
    -88.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BYAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3775767,
    'ROLW2',
    '03069870',
    'OHRFC',
    'WV',
    '5020004',
    'CHEAT RIVER AT HWY 50 NEAR ROWLESBURG  WV',
    39.32194,
    -79.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15640871,
    'DFNO1',
    '04192500',
    'OHRFC',
    'OH',
    '4100009',
    'Maumee River near Defiance OH',
    41.28805,
    -84.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DFNO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9609466,
    'BOWS1',
    '02174250',
    'SERFC',
    'SC',
    '3050205',
    'COW CASTLE CREEK NEAR BOWMAN  SC',
    33.37277,
    -80.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOWS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14803871,
    'LECI4',
    '05422400',
    'NCRFC',
    'IA',
    NULL,
    'Le Claire - L&D 14',
    41.5744,
    -90.4031
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LECI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13085587,
    'MNOW3',
    '05368500',
    'NCRFC',
    'WI',
    NULL,
    'Cedar Falls Hydro Plant',
    44.9356,
    -91.8886
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23700121,
    'NW518',
    '14090400',
    'NWRFC',
    'OR',
    '17070301',
    'WHITEWATER RIVER NEAR CAMP SHERMAN  OR',
    44.7190062,
    -121.6403407
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW518'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BVWL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bayou Verret Closure',
    29.915,
    -90.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24504364,
    'WFHO3',
    '14118500',
    'NWRFC',
    'OR',
    '17070105',
    'WEST FORK HOOD RIVER NEAR DEE OREG.',
    45.59305,
    -121.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WFHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24504906,
    'WCNW1',
    '14128500',
    'NWRFC',
    'WA',
    '17070105',
    'WIND RIVER NEAR CARSON  WA',
    45.72861,
    -121.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCNW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20773110,
    'ECNN5',
    '08387550',
    'WGRFC',
    'NM',
    '13060008',
    'NORTH FORK EAGLE CREEK NEAR ALTO  NM',
    33.40955,
    -105.74076
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECNN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21412615,
    'NW064',
    '09524000',
    'CBRFC',
    'CA',
    '15030107',
    'YUMA MAIN CANAL AT SIPHON DROP P.P. NR YUMA  AZ',
    32.7767123,
    -114.6355087
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW064'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3398194,
    'MCCI3',
    '04094500',
    'NCRFC',
    'IN',
    '4040001',
    'SALT CREEK NEAR MCCOOL  IND.',
    41.59670429,
    -87.1444785
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCCI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6570368,
    'KLMI4',
    '05449000',
    'NCRFC',
    'IA',
    '7080207',
    'East Branch Iowa River near Klemme  IA',
    43.0094078,
    -93.6279895
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KLMI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12222274,
    'BLAM4',
    '04055000',
    'NCRFC',
    'MI',
    '4060106',
    'MANISTIQUE RIVER AT COOKSON BRIDGE NEAR BLANEY  MI',
    46.0860865,
    -86.0595765
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLAM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2455516,
    'WSAW3',
    '05383000',
    'NCRFC',
    'WI',
    '7040006',
    'LA CROSSE RIVER NEAR WEST SALEM  WI',
    43.9013541,
    -91.1181921
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSAW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WHIW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'White River near Plain',
    47.88111,
    -120.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHIW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12025974,
    'MCCM4',
    '04043800',
    'NCRFC',
    'MI',
    '4020105',
    'McCLURE STORAGE BASIN RELEASE NEAR MARQUETTE  MI',
    46.5718763,
    -87.4765261
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCCM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12942394,
    'NTCM4',
    '04138500',
    'NCRFC',
    'MI',
    '4080101',
    'AU GRES RIVER AT COX ROAD NEAR NATIONAL CITY  MI',
    44.1761299,
    -83.7424848
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NTCM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11946421,
    'MSSM4',
    '04035000',
    'NCRFC',
    'MI',
    '4020102',
    'EAST BRANCH ONTONAGON RIVER NEAR MASS  MI',
    46.6877176,
    -89.0731952
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUGC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) at Gold Street',
    37.42361,
    -121.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5757862,
    'GPLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Lake LBJ',
    30.55916,
    -98.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GPLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24534746,
    'NW510',
    '12202310',
    'NWRFC',
    'WA',
    '17110002',
    'CARPENTER CREEK NEAR BELLINGHAM  WA',
    48.75399999,
    -122.354053
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW510'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUCO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Cottonwood Creek (OK) at Guthrie',
    35.88111,
    -97.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAKO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Beaver Creek (OK) near Waurika',
    34.1525,
    -98.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAKO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2354812,
    'COSM5',
    NULL,
    'NCRFC',
    'MN',
    '7010205',
    'SOUTH FORK CROW RIVER AT COSMOS  MN',
    44.93551759,
    -94.6752713
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5803088,
    'CANM7',
    '05495150',
    'NCRFC',
    'MO',
    NULL,
    'Canton L&D 20',
    40.1444,
    -91.5147
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CANM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6572002,
    'STBI4',
    '05450400',
    'NCRFC',
    'IA',
    NULL,
    'Steamboat Rock',
    42.4081,
    -93.0728
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12745871,
    'DTTM8',
    '06108000',
    'MBRFC',
    'MT',
    '10030205',
    'Teton River near Dutton MT',
    47.93033,
    -111.55294
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DTTM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9306656,
    'SMYM8',
    '05017500',
    'MBRFC',
    'MT',
    '9040001',
    'St. Mary River near Babb MT',
    48.83306,
    -113.41972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMYM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293160,
    'BNRM8',
    '12334550',
    'NWRFC',
    'MT',
    '17010202',
    'Clark Fork at Turah Bridge nr Bonner MT',
    46.82591,
    -113.81403
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BNRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5907049,
    'NW417',
    '01630700',
    'MARFC',
    'VA',
    '2070005',
    'GOONEY RUN NEAR GLEN ECHO  VA',
    38.83511474,
    -78.2319454
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW417'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2363520,
    'RSBM5',
    NULL,
    'NCRFC',
    'MN',
    '7010207',
    'RUM RIVER AT SPENCER BROOK  MN',
    45.52913085,
    -93.4393996
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2442482,
    'RCSM5',
    NULL,
    'NCRFC',
    'MN',
    '7040004',
    'S FORK ZUMBRO R ON BELT LINE AT ROCHESTER  MN',
    44.0071859,
    -92.4721211
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Old River Low Sill Structure',
    31.06777,
    -91.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLVG1',
    NULL,
    'LMRFC',
    'GA',
    NULL,
    'Nottely River near Blairsville',
    34.84722,
    -83.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLVG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OSGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Mississippi River at Osceola',
    35.66083,
    -89.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OSGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YNHG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tugalo River at YONAH DAM',
    34.67777,
    -83.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YNHG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ODSN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Platte River near Odessa',
    40.67777,
    -99.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ODSN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2119804,
    'WSPM5',
    NULL,
    'NCRFC',
    'MN',
    '7040003',
    'MIDDLE FORK WHITEWATER RIVER NR ST. CHARLES  MN',
    44.037186,
    -92.1046068
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSPM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRVC2',
    NULL,
    'CBRFC',
    'CO',
    NULL,
    'Florida River below Lemon Resv.',
    37.37277,
    -107.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRVC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bayou Segnette near',
    29.89805,
    -90.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'THTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    's Ferry',
    38.25416,
    -121.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'THTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OXFN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Oxford Dam',
    35.83027,
    -81.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OXFN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UJCV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Johns Creek at Upper Johns Creek',
    37.4575,
    -80.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UJCV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JCIV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Johns Creek at Route 311 IFLOWS',
    37.50833,
    -80.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JCIV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ABBV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Craig Creek near Abbott',
    37.42361,
    -80.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ABBV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CCIV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Craig Creek at Craig C/Rt614',
    37.54222,
    -80.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCIV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VSUV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'South River (VA) at Vesuvius IFLOWS',
    37.915,
    -79.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VSUV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15206341,
    'BBGL1',
    '073802245',
    'LMRFC',
    'LA',
    '8070204',
    'Black Bayou E of Gonzales  LA',
    30.23722,
    -90.87
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLSV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Maury River at Glasgow IFLOWS',
    37.64388,
    -79.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLSV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LXGV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Maury River above LEXINGTON IFLOWS/COOP',
    37.79638,
    -79.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LXGV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCRV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Peak Creek (VA) at Pulaski',
    37.03388,
    -80.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ANYW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Anthony Creek above 4h/Anthony',
    37.93194,
    -80.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANYW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLWW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Brush Creek near Glenwood',
    37.33888,
    -81.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLWW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CALW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Greenbrier River at Caldwell',
    37.77944,
    -80.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CALW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PSTN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Lake Erie at Sturgeon Point NOS',
    42.69472,
    -79.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PSTN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OSGN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Lake Ontario at NOS Oswego',
    43.4575,
    -76.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OSGN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCRN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Lake Ontario at NOS Rochester',
    43.27111,
    -77.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCRN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CAVN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Lake Ontario at Cape Vincent',
    44.11861,
    -76.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAVN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBTW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Guyandotte River at R.D. Bailey Lake Pool',
    37.59305,
    -81.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBTW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 945030390,
    'NW061',
    '09428510',
    'CBRFC',
    'AZ',
    '15030104',
    'POSTON WASTEWAY NEAR POSTON  AZ',
    33.99946154,
    -114.4455106
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW061'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23956076,
    'NW514',
    '12209490',
    'NWRFC',
    'WA',
    '17110004',
    'SKOOKUM CREEK ABOVE DIVERSION NEAR WICKERSHAM  WA',
    48.6715016,
    -122.1396
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW514'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3240437,
    'NW058',
    '09306242',
    'CBRFC',
    'CO',
    '14050006',
    'CORRAL GULCH NEAR RANGELY  CO',
    39.9202502,
    -108.4728719
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW058'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6163249,
    'NW204',
    '011230695',
    'NERFC',
    'CT',
    '1100002',
    'SHETUCKET RIVER AT TAFTVILLE  CT',
    41.57000278,
    -72.0462444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW204'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15175597,
    'MBSL1',
    '073815963',
    'LMRFC',
    'LA',
    NULL,
    'Atchafalaya River at Murphy Lake near Bayou Sorrel',
    30.10656,
    -91.38542
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13311953,
    'FAYI4',
    '05412340',
    'NCRFC',
    'IA',
    '7060004',
    'Volga River at Fayette  IA',
    42.84722,
    -91.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FAYI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15539133,
    'AVON6',
    '04228500',
    'NERFC',
    'NY',
    '4130003',
    'GENESEE RIVER AT AVON NY',
    42.91778,
    -77.75722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AVON6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1637447,
    'CUET2',
    '08175800',
    'WGRFC',
    'TX',
    '12100204',
    'Guadalupe Rv at Cuero  TX',
    29.09028,
    -97.32944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CUET2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 944060076,
    'YEZU1',
    '09292000',
    'CBRFC',
    'UT',
    '14060003',
    'YELLOWSTONE R @ BRIDGE CMPGRND NR ALTONAH  UT',
    40.54639,
    -110.33306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YEZU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'POMO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at Pomeroy',
    39.01694,
    -82.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'POMO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GALW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Ohio River at R C Byrd Lock',
    38.67777,
    -82.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GALW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VLYW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Tygart Valley River at Valley Head',
    38.55916,
    -80.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VLYW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Bear Creek (CO) at Bear Creek Reservoir',
    39.66083,
    -105.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHRC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Bear Creek (CO) at Sheridan',
    39.66083,
    -105.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ESSC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Big Thompson River (CO) above Lake Estes',
    40.37277,
    -105.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESSC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6695646,
    'HNTN8',
    '05062200',
    'NCRFC',
    'ND',
    '9020107',
    'ELM RIVER NEAR KELSO  ND',
    47.29164638,
    -97.114253
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HNTN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIMC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Big Thompson River (CO) at above the Canyon Mouth',
    40.40666,
    -105.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIMC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DKKC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'North Fork Big Thompson River (CO) at Drake',
    40.44055,
    -105.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DKKC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Boulder Creek (CO) at Boulder',
    40.0,
    -105.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBNC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Middle Boulder Creek (CO) at Nederland',
    39.96583,
    -105.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBNC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOUW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Ohio River at Moundsville',
    39.915,
    -80.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOUW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCAM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Rum River near Milaca 8NNE',
    45.86416,
    -93.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLYC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Cache La Poudre River (CO) at Greeley',
    40.42361,
    -104.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLYC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EGDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Cherry Creek (CO) at Cherry Creek Reservoir',
    39.66083,
    -104.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19720831,
    'TAPN7',
    '0351706800',
    'LMRFC',
    'NC',
    '6010204',
    'CHEOAH RIVER NR BEARPEN GAP NR TAPOCO  NC',
    35.43833,
    -83.91889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TAPN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6591176,
    'BRTI4',
    '05478000',
    'NCRFC',
    'IA',
    '7100003',
    'East Fork Des Moines River near Burt  IA',
    43.2110738,
    -94.1779615
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13296144,
    'JFFW3',
    '05426031',
    'NCRFC',
    'WI',
    '7090001',
    'ROCK RIVER AT JEFFERSON  WI',
    42.99611515,
    -88.8073274
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JFFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4142454,
    'JUDM5',
    NULL,
    'NCRFC',
    'MN',
    '7020007',
    'MINNESOTA RIVER AT JUDSON  MN',
    44.19996569,
    -94.1935726
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JUDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DRBC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Clear Creek (CO) at Derby',
    39.83027,
    -104.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRBC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DNVC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River at Denver',
    39.7625,
    -105.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNVC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HNDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River at Henderson',
    39.93194,
    -104.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HNDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KERC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River near Kersey',
    40.40666,
    -104.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KERC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RNSI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'South Skunk River near IFC--Randall Hwy R61',
    42.22027,
    -93.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8777649,
    'FTHN7',
    '0208524975',
    'SERFC',
    'NC',
    '3020201',
    'LITTLE R BL LITTLE R TRIB AT FAIRNTOSH  NC',
    36.11333,
    -78.85972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTHN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7015937,
    'OSGI4',
    '05457505',
    'NCRFC',
    'IA',
    '7080201',
    'Cedar River at Osage  IA',
    43.28805,
    -92.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OSGI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8783643,
    'MSHN7',
    '0208732885',
    'SERFC',
    'NC',
    '3020201',
    'MARSH CREEK NEAR NEW HOPE  NC',
    35.81694,
    -78.59306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSHN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8893782,
    'NECN7',
    '0209741955',
    'SERFC',
    'NC',
    '3030002',
    'NORTHEAST CREEK AT SR1100 NR GENLEE  NC',
    35.87222,
    -78.91306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NECN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9211976,
    'PDTN7',
    '0212378405',
    'SERFC',
    'NC',
    '3040104',
    'PEE DEE R AT HWY731 BL LK TILLERY NR NORWOOD  NC',
    35.20067,
    -80.06181
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8783875,
    'RBRN7',
    '0208735012',
    'SERFC',
    'NC',
    '3020201',
    'ROCKY BRANCH BELOW PULLEN DRIVE AT RALEIGH  NC',
    35.78,
    -78.66639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8893140,
    'SCRN7',
    '0209722970',
    'SERFC',
    'NC',
    '3030002',
    'SANDY CREEK AT CORNWALLIS RD NEAR DURHAM  NC',
    35.98322,
    -78.95681
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CWMO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Cow Creek at Glendale',
    42.74555,
    -123.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRRC2',
    '06710500',
    'MBRFC',
    'CO',
    NULL,
    'Bear Creek (CO) at Morrison',
    39.66083,
    -105.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ADDM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River below Diversion Dam near Augusta',
    47.62694,
    -112.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADDM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRFW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Grandfather Dam',
    45.305,
    -89.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALXW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Alexander Dam',
    45.18638,
    -89.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALXW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WUUW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Wausau Dam',
    44.96583,
    -89.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WUUW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELYW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Twelvepole Creek at East Lynn Lake',
    38.13555,
    -82.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELYW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PAYO1',
    '04191378',
    'OHRFC',
    'OH',
    '4100007',
    'Flatrock Creek at State Route 613 near Payne OH',
    41.08472,
    -84.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PAYO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13048201,
    'SAFM4',
    '04153300',
    'NCRFC',
    'MI',
    NULL,
    'Sanford - Dam',
    43.6772,
    -84.3825
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAFM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DUBW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Dubay Dam',
    44.66083,
    -89.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DUBW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'STPW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Stevens Point Dam',
    44.50833,
    -89.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STPW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WTGW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Whiting Dam',
    44.49138,
    -89.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WTGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIRW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Biron Dam',
    44.44055,
    -89.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIRW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPDW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Spirit River at Spirit Reservoir',
    45.44055,
    -89.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPDW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PITW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Yellow River (WI) at Pittsville',
    44.44055,
    -90.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PITW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KFDM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Menominee River below Kingsford',
    45.81333,
    -88.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KFDM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BGQW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Menominee River below Big Quinnesec Falls Dam',
    45.79638,
    -88.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGQW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LAWC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Los Angeles River below Wardlow Road',
    33.83027,
    -118.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24526862,
    'NW372',
    '14320934',
    'NWRFC',
    'OR',
    '17100303',
    'LITTLE WOLF CREEK NEAR TYEE  OR',
    43.43122665,
    -123.5867573
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW372'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6689431,
    'BKRM5',
    '05061490',
    'NCRFC',
    'MN',
    NULL,
    'Baker 4NW',
    46.7467,
    -96.6072
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9251670,
    'WKYN7',
    '0211139110',
    'SERFC',
    'NC',
    '3040101',
    'YADKIN RIVER BL W KERR SCOTT DAM NEAR BUCK  NC',
    36.13611,
    -81.22333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKYN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 25184464,
    'SHDW1',
    NULL,
    'NWRFC',
    'WA',
    '17110005',
    'LAKE SHANNON AT CONCRETE  WA',
    48.54806,
    -121.73944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23945295,
    'NW375',
    '14375100',
    'NWRFC',
    'OR',
    '17100311',
    'SUCKER CREEK BLW LITTLE GRAYBACK CK  NR HOLLAND OR',
    42.15956105,
    -123.4789509
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW375'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6227896,
    'NW244',
    '01375000',
    'NERFC',
    'NY',
    '2030101',
    'CROTON R AT NEW CROTON DAM NR CROTON-ON-HUDSON NY',
    41.22502778,
    -73.85888889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW244'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4489170,
    'NW248',
    '01467042',
    'MARFC',
    'PA',
    '2040202',
    'Pennypack Creek at Pine Road  at Philadelphia  PA',
    40.08983289,
    -75.0690611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW248'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FBML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'French Branch near Slidell',
    30.27111,
    -89.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FBML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCVN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Rocky Broad River at Bat Cave',
    35.4575,
    -82.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCVN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RPTN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Reedy Patch Creek near Bat Cave',
    35.44055,
    -82.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RPTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRDN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Broad River in NC/SC at Lake Lure Dam',
    35.42361,
    -82.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRDN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRBN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Broad River in NC/SC below Lake Lure Dam',
    35.42361,
    -82.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRBN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NNIS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Broad River in NC/SC at NINETY NINE ISLANDS',
    35.01694,
    -81.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NNIS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRUN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Briar Creek at Runnymede Ln',
    35.16944,
    -80.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRUN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRWN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Bridgewater Dam',
    35.74555,
    -81.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRWN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GTFS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Catawba River at Great Falls-Dearborn Dam',
    34.55916,
    -80.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GTFS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRES1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at Westfield St',
    34.84722,
    -82.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRES1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13007444,
    'CSSM4',
    '04150500',
    'NCRFC',
    'MI',
    '4080205',
    'CASS RIVER AT CASS CITY  MI',
    43.58418519,
    -83.1760579
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LANS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at Greenville landfill',
    34.79638,
    -82.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LANS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PKMS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at PARKINS MILL RD',
    34.81333,
    -82.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PKMS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SOPS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at LOG SHOALS RD',
    34.72861,
    -82.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SOPS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GNLS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at HUDSON ST',
    34.84722,
    -82.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GNLS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'REDS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Reedy River at HIGHWAY 76',
    34.50833,
    -82.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REDS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SALS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Saluda River at Saluda Lake Dam',
    34.86416,
    -82.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SALS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WEPS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Saluda River at West Pelzer',
    34.64388,
    -82.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WEPS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RVNN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'South Loup River at Ravenna',
    41.0,
    -98.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVNN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TREW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Mississippi River at Trempealeau',
    43.99972,
    -91.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TREW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GENW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Mississippi River at Genoa',
    43.57611,
    -91.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GENW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNSI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Mississippi River at Lansing',
    43.35583,
    -91.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CROW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River at Castle Rock Dam',
    43.86416,
    -89.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CROW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1997572,
    'SBNF1',
    '02315000',
    'SERFC',
    'FL',
    '3110201',
    'SUWANNEE R NR BENTON FLA',
    30.50833,
    -82.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBNF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12501833,
    'CYGM4',
    '04132052',
    'NCRFC',
    'MI',
    '4070004',
    'CHEBOYGAN R (POND) AT LINCOLN AVE AT CHEBOYGAN  MI',
    45.6339007,
    -84.4811465
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12503589,
    'INRM4',
    '04128500',
    'NCRFC',
    'MI',
    '4070004',
    'INDIAN RIVER AT INDIAN RIVER  MI',
    45.41056728,
    -84.6200366
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'INRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12262006,
    'WPGM4',
    '04098500',
    'NCRFC',
    'MI',
    '4050001',
    'FAWN RIVER NEAR WHITE PIGEON  MI',
    41.7822726,
    -85.5833203
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WPGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13565418,
    'KCDI2',
    '05575500',
    'NCRFC',
    'IL',
    '7130007',
    'SOUTH FORK SANGAMON RIVER AT KINCAID  IL',
    39.57893737,
    -89.3920357
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCDI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IDPW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Trempealeau River at Independence',
    44.33888,
    -91.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IDPW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRRO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Maumee River at Grand Rapids',
    41.40666,
    -83.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HABW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Black River (WI) at Hatfield Dam',
    44.40666,
    -90.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HABW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LZIM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Zumbro River at Lake Zumbro Dam',
    44.20333,
    -92.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LZIM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKZM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Zumbro River at Zumbro Lake',
    44.20333,
    -92.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKZM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMAM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Root River at Carimona',
    43.66083,
    -92.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTNM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Root River at Preston',
    43.67777,
    -92.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SROM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Root River near Ostrander 5WNW',
    43.64388,
    -92.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SROM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCCM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Crystal Creek above Preston 6S',
    43.59305,
    -92.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VGAI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Volga River at Volga',
    42.81333,
    -91.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VGAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLIO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'North Umpqua River near Glide',
    43.32194,
    -122.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLIO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22070770,
    'VVDN2',
    '094196784',
    'CBRFC',
    'NV',
    '15010015',
    'LAS VEGAS WASH AT VEGAS VALLEY DR NR LAS VEGAS  NV',
    36.13192,
    -115.03567
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VVDN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WINO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'North Umpqua River at Winchester Dam',
    43.27111,
    -123.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WINO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'REEO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Umpqua River at Reedsport',
    43.71166,
    -124.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REEO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TPTT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Mississippi River at Tiptonville',
    36.33888,
    -89.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TPTT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRTM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River at Caruthersville',
    36.18638,
    -89.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRTM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JSCM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Jones Falls at Baltimore Streetcar Museum in Balti',
    39.305,
    -76.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JSCM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TAPO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Little Stillwater Creek at Tappan Dam Pool',
    40.35583,
    -81.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TAPO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5866465,
    'NW182',
    '01104475',
    'NERFC',
    'MA',
    '1090001',
    'STONY BROOK RES.  UNNAMED TRIB 1  NEAR WESTON  MA',
    42.3545408,
    -71.2681121
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW182'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5866457,
    'NW181',
    '01104460',
    'NERFC',
    'MA',
    '1090001',
    'STONY BROOK AT RT 20 AT WALTHAM  MA',
    42.368985,
    -71.2706123
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW181'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10409034,
    'NW070',
    '102432241',
    'CBRFC',
    'NV',
    '16020301',
    'BIG SPGS CK NORTH CHANNEL NR BAKER  NV',
    38.6993966,
    -114.131932
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW070'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PIKP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Chartiers Run at Pike Street',
    40.25416,
    -80.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PIKP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNDP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Linden Creek at Linden',
    40.22027,
    -80.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNDP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHOO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Black Fork Mohican River above Charles Mills Dam',
    40.74555,
    -82.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHOO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MEPO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Black Fork Mohican River at Melco',
    40.69472,
    -82.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MEPO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NPRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'North Powder near North Powder',
    45.0,
    -118.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NPRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRNT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Loosahatchie River at Brunswick',
    35.27111,
    -89.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRNT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HAWI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Big Sioux River at Hawarden',
    42.99972,
    -96.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAWI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JYKT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Pine Island Bayou near Batson',
    30.25416,
    -94.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JYKT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGPW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Loon Lake at Granite Point',
    48.01694,
    -117.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGPW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731248,
    'IRSN7',
    '02146211',
    'SERFC',
    'NC',
    '3050103',
    'IRWIN CR AT STATESVILLE AVE AT CHARLOTTE  NC',
    35.25416,
    -80.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IRSN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DCRA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Choctawhatchee River near Daleville',
    31.27111,
    -85.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCRA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Grays River near Rosburg',
    46.35583,
    -123.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OTWI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Illinois River at Ottawa',
    41.33888,
    -88.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OTWI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SLTP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Loyalhanna Creek at Loyalhanna Dam Tailwater',
    40.4575,
    -79.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLTP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HPPC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Hopper Creek near Piru',
    34.40666,
    -118.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HPPC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18459872,
    'SUGI3',
    '03361632',
    'OHRFC',
    'IN',
    '5120204',
    'SUGAR CREEK NEAR EDEN  IN',
    39.915,
    -85.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUGI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5478981,
    'CRCS2',
    '06430532',
    'MBRFC',
    'SD',
    '10120203',
    'CROW CREEK NEAR BEULAH  WY',
    44.57611,
    -104.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRCS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18566065,
    'KETA1',
    '02457000',
    'SERFC',
    'AL',
    '3160111',
    'FIVEMILE CREEK AT KETONA AL',
    33.61,
    -86.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KETA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCCL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at West Closure CPX1 ne',
    29.83027,
    -90.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21001215,
    'GSPO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Salt Fork Arkansas River at Great Salt Plains Lake',
    36.74555,
    -98.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GSPO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HNNW2',
    '380649081083301',
    'OHRFC',
    'WV',
    NULL,
    'New River below Hawks Nest',
    38.113611,
    -81.1425
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HNNW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MHWO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Walhonding River at Mohawk Dam Pool',
    40.35583,
    -82.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MHWO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCLO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Wills Creek at Wills Creek Dam Pool',
    40.1525,
    -81.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNLO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Seneca Fork at Senecaville Dam Pool',
    39.93194,
    -81.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DVRO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Tuscarawas River at Dover Dam Pool',
    40.55916,
    -81.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DVRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BEHO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Tuscarawas River at Beach City Dam Pool',
    40.64388,
    -81.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEHO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATLO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Tuscarawas River at Atwood Dam Pool',
    40.52527,
    -81.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14803953,
    'WLCI4',
    '05422560',
    'NCRFC',
    'IA',
    '7080101',
    'Duck Creek at 110th Avenue at Davenport  IA',
    41.55916,
    -90.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLCI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12134838,
    'NEWM4',
    '04122000',
    'NCRFC',
    'MI',
    '4060102',
    'MUSKEGON RIVER AT NEWAYGO  MI',
    43.41694,
    -85.80833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NEWM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GGYM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Mississippi River at Gregory Landing',
    40.27111,
    -91.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GGYM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLKO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Brushy Fork at Clendening Dam Pool',
    40.27111,
    -81.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLKO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SKLW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Spring Creek (WY) at Laramie',
    41.305,
    -105.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SKLW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1841401,
    'GRCI2',
    '03612500',
    'LMRFC',
    'IL',
    '5140206',
    'OHIO RIVER AT DAM 53 NEAR GRAND CHAIN  IL',
    37.20333,
    -89.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRCI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YRYO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Yachats River near Yachats',
    44.28805,
    -124.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YRYO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GCVF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Shands Bridge',
    29.98277,
    -81.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCVF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCYF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Racy Point',
    29.81333,
    -81.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCYF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSCM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Mississippi River at Minnesota City',
    44.1525,
    -91.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RSDM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    '102 River at Rosendale',
    40.03388,
    -94.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSDM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLCM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Platte River near Platte City',
    39.37277,
    -94.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLCM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Abernethy Creek at Mompano Reservoir',
    45.305,
    -122.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ACLW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Abernathy Creek near Longview',
    46.18638,
    -123.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GCLW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Germany Creek near Longview',
    46.18638,
    -123.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCLW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Mill Creek near Longview',
    46.18638,
    -123.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NRVO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Nehalem River at Hwy 47 Bridge at Vernonia',
    45.86416,
    -123.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NRVO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLHW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Medicine Lodge Creek near Hyattville',
    44.28805,
    -107.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLHW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8391164,
    'NW252',
    '01488500',
    'MARFC',
    'DE',
    '2080109',
    'MARSHYHOPE CREEK NEAR ADAMSVILLE  DE',
    38.84969444,
    -75.6731111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW252'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRCT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Matagorda',
    28.69472,
    -95.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRCT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MINI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Eastern Idaho Reservoirs at Minidoka Dam',
    42.67777,
    -113.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MINI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WOON1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Wahoo Creek at Wahoo',
    41.20333,
    -96.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WOON1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1131000968,
    'BOQT2',
    '08375300',
    'WGRFC',
    'TX',
    '13040205',
    'Rio Grande at Rio Grande Village  Big Bnd NP  TX',
    29.18333,
    -102.975
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOQT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRAL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Alliance Refinery',
    29.69472,
    -89.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HPGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River at Huxtable',
    34.74555,
    -90.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HPGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PILL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tide Station (LIX) at Pilottown near Venice',
    29.16944,
    -89.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PILL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GISL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tide Station (LIX) at Grand Isle',
    29.25416,
    -89.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GISL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTFL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tide Station (LIX) at Port Fourchon',
    29.05083,
    -90.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTFL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4147950,
    'NW526',
    '0143400680',
    'MARFC',
    'NY',
    '2040104',
    'E BR NEVERSINK R NORTHEAST OF DENNING NY',
    41.96694444,
    -74.4480556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW526'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15667583,
    'DEFO1',
    '04184100',
    'OHRFC',
    'OH',
    NULL,
    'Maumee River at Defiance',
    41.27111,
    -84.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DEFO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12559212,
    'SNKS2',
    '06473700',
    'MBRFC',
    'SD',
    '10160008',
    'SNAKE CR NEAR ASHTON SD',
    44.96583,
    -98.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNKS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13619421,
    'FICI2',
    '05554300',
    'NCRFC',
    'IL',
    '7130002',
    'INDIAN CREEK NEAR FAIRBURY  IL',
    40.72861,
    -88.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FICI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21785616,
    'CVLO2',
    '07175550',
    'ABRFC',
    'OK',
    '11070106',
    'Caney River near Collinsville  OK',
    36.38972,
    -95.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CVLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WICO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Deschutes River (OR) below Wickiup Reservoir',
    43.69472,
    -121.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WICO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OCHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Ochoco Creek below Ochoco Reservoir',
    44.40666,
    -120.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PHBP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Delaware River at USCG Station Washington Street',
    39.93194,
    -75.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PHBP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLDI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Eastern Idaho Reservoirs at Palisades',
    43.32194,
    -111.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VAPW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Vancouver',
    45.62694,
    -122.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VAPW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23267042,
    'LWRI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Eastern Idaho Reservoirs at Little Wood Reservoir',
    43.42361,
    -114.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWRI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLNI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Wabash River at Clinton',
    39.66083,
    -87.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLNI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSWL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bayou Segnette at La',
    29.89805,
    -90.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 512899,
    'EUFO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Eufala Lake',
    35.305,
    -95.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EUFO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19017757,
    'LOVK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'White Rock Creek at Lovewell Reservoir KS',
    39.89805,
    -98.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOVK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7347909,
    'KRWK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'N F Solomon River at Kirwin Reservoir',
    39.66083,
    -99.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KRWK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TCGI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Turkey River near Cresco',
    43.32194,
    -92.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TCGI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMTI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Turkey River at Clermont',
    42.99972,
    -91.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16916782,
    'NW532',
    '02306500',
    'SERFC',
    'FL',
    '3100206',
    'SWEETWATER CREEK NEAR SULPHUR SPRINGS FL',
    28.04307328,
    -82.5117623
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW532'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24422913,
    'AMRW1',
    '12488500',
    'NWRFC',
    'WA',
    '17030002',
    'AMERICAN RIVER NEAR NILE  WA',
    46.97778,
    -121.1675
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 949993,
    'PRTC2',
    '07097000',
    'ABRFC',
    'CO',
    '11020002',
    'ARKANSAS RIVER AT PORTLAND  CO.',
    38.38972,
    -105.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRTC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7069781,
    'WARM5',
    '05085500',
    'NCRFC',
    'MN',
    NULL,
    'Warren',
    48.1953,
    -96.7794
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WARM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13058164,
    'ELRM4',
    '04127695',
    'NCRFC',
    'MI',
    NULL,
    'Elk Rapids - Hwy 31',
    44.8997,
    -85.4092
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13029139,
    'CHSM4',
    '04144600',
    'NCRFC',
    'MI',
    NULL,
    'Chesaning',
    43.1844,
    -84.1147
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6597700,
    'SAYI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Saylorville 3WNW (Dam)',
    41.7036,
    -93.6892
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAYI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NUAI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Little Cedar River at Nashua',
    42.96583,
    -92.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NUAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RISW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Rock Island Dam',
    47.32194,
    -120.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RISW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTGP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'West Branch Susquehanna River at Montgomery',
    41.16944,
    -76.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTGP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GAYW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Grayrocks Reservoir',
    42.16944,
    -104.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GAYW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLMM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Middle Branch Root River at Fillmore',
    43.7625,
    -92.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLMM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1530177,
    'RKCC2',
    '07105945',
    'ABRFC',
    'CO',
    '11020003',
    'ROCK CREEK ABOVE FORT CARSON RESERVATION  CO',
    38.71166,
    -104.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RKCC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 976164,
    'CDMC2',
    '07119700',
    'ABRFC',
    'CO',
    '11020005',
    'ARKANSAS RIVER AT CATLIN DAM  NEAR FOWLER  CO.',
    38.11861,
    -103.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDMC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DRUM8',
    '12331600',
    'NWRFC',
    'MT',
    '17010202',
    'Clark Fork at Drummond MT',
    46.66083,
    -113.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRUM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ROAW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Roaring Creek near Mouth',
    47.69472,
    -120.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ZGBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Zaragoza Bridge',
    31.67777,
    -106.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ZGBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River at Cody',
    34.84722,
    -90.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Lacassine at Lorrain Park',
    30.11861,
    -92.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATNI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Fourmile Creek (Central IA) near Altoona I-80',
    41.66083,
    -93.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KHBI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Keithsburg',
    41.10166,
    -90.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KHBI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23785793,
    'SSCO3',
    '14185000',
    'NWRFC',
    'OR',
    '17090006',
    'SOUTH SANTIAM RIVER BELOW CASCADIA  OR',
    44.38972,
    -122.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23786019,
    'QCCO3',
    '14185900',
    'NWRFC',
    'OR',
    '17090006',
    'QUARTZVILLE CREEK NEAR CASCADIA  OR',
    44.54222,
    -122.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'QCCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19167379,
    'ENSI4',
    '06809900',
    'MBRFC',
    'IA',
    '10240003',
    'East Nishnabotna River at Riverton  IA',
    40.69472,
    -95.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ENSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19210415,
    'WNSI4',
    '06808820',
    'MBRFC',
    'IA',
    '10240002',
    'West Nishnabotna River near Riverton  IA',
    40.69472,
    -95.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10080962,
    'DNVI2',
    '03339000',
    'OHRFC',
    'IL',
    '5120109',
    'VERMILION RIVER NEAR DANVILLE  IL',
    40.10166,
    -87.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNVI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGTN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Fishing Creek at NC97 Nr Leggett',
    36.0,
    -77.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HGRN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Yadkin River at High Rock Lake',
    35.61,
    -80.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HGRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDHS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Cottonwood Springs Creek (SD) at Cottonwood Spring',
    43.44055,
    -103.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDHS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LMTN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Reservoirs at Lake Minatare Reservoir',
    41.93194,
    -103.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LMTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PSTM5',
    NULL,
    'MBRFC',
    'MN',
    NULL,
    'Pipestone Creek below Pipestone',
    43.99972,
    -96.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PSTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HRDM5',
    NULL,
    'MBRFC',
    'MN',
    NULL,
    'Rock River near Hardwick',
    43.72861,
    -96.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHLI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Floyd River at Sheldon',
    43.18638,
    -95.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRLI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Floyd River at Merrill',
    42.72861,
    -96.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 191379,
    'WECC2',
    '06701700',
    'MBRFC',
    'CO',
    '10190002',
    'WEST CR. ABV SHREWSBURY GULCH NR WESTCREEK CO',
    39.14543,
    -105.16001
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WECC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6089035,
    'NHDV1',
    '01151500',
    'NERFC',
    'VT',
    '1080106',
    'OTTAUQUECHEE RIVER AT NORTH HARTLAND  VT',
    43.60417,
    -72.36222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NHDV1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLSI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Little Sioux River near Montgomery',
    43.4575,
    -95.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLSI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MIFI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Little Sioux River near Milford',
    43.32194,
    -95.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MIFI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPII4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Little Sioux River near Spencer / Highway 18',
    43.18638,
    -95.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPII4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHKI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Little Sioux River at Cherokee',
    42.74555,
    -95.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHKI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OREI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Ocheyedan River near Everly',
    43.18638,
    -95.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OREI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JEMP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Pine Creek at Jersey Mills',
    41.35583,
    -77.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JEMP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASHF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Aucilla River at Sneads Smokehouse Lake',
    30.59305,
    -83.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASHF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8755825,
    'SWIN7',
    '02082770',
    'SERFC',
    'NC',
    '3020101',
    'SWIFT CREEK AT HILLIARDSTON  NC',
    36.11222,
    -77.92
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWIN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLII2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Rock River at Moline',
    41.4575,
    -90.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLII2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7733045,
    'NW230',
    '01209901',
    'NERFC',
    'CT',
    '1100006',
    'RIPPOWAM RIVER AT STAMFORD  CT.',
    41.0661111,
    -73.5492722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW230'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24538056,
    'SMLW1',
    NULL,
    'NWRFC',
    'WA',
    '17110012',
    'SAMMAMISH LAKE NEAR REDMOND  WA',
    47.57667,
    -122.11
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23065357,
    'OKGW1',
    NULL,
    'NWRFC',
    'WA',
    '17020006',
    'OSOYOOS LAKE NEAR OROVILLE  WA',
    48.95667,
    -119.43833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OKGW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1103864,
    'MHAM5',
    NULL,
    'NCRFC',
    'MN',
    '7010206',
    'MINNEHAHA CREEK AT HIAWATHA AVE. IN MINNEAPOLIS MN',
    44.915,
    -93.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MHAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20973438,
    'KEYO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Keystone Lake',
    36.1525,
    -96.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KEYO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WEBM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tallahatchie River at Webb',
    33.94888,
    -90.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WEBM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PICT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Pickwick Dam Tailwater',
    35.06777,
    -88.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PICT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SALT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Saltillo',
    35.37277,
    -88.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SALT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRVT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Perryville',
    35.62694,
    -88.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRVT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBNT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande near San Benito',
    26.01694,
    -97.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATGM1',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Frenchman Bay at Bar Harbor',
    44.38972,
    -68.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATGM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHTS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Cooper River at Charleston Harbor',
    32.77944,
    -79.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHTS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FPKG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Savannah River at Fort Pulaski',
    32.03388,
    -80.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FPKG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24534874,
    'NW298',
    '12201960',
    'NWRFC',
    'WA',
    '17110002',
    'BRANNIAN CREEK AT S BAY DR NR WICKERSHAM  WA',
    48.66899978,
    -122.2801605
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW298'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Tygart Valley River at Mill Creek',
    38.72861,
    -79.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOLT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Nolichucky River at Nolichucky Dam HW near Greenvi',
    36.05083,
    -82.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOLT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DUGT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'French Broad River above Douglas Dam',
    35.96583,
    -83.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DUGT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OHGT1',
    NULL,
    'OHRFC',
    'TN',
    NULL,
    'Cumberland River below Old Hickory Dam',
    36.28805,
    -86.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OHGT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OHHT1',
    NULL,
    'OHRFC',
    'TN',
    NULL,
    'Cumberland River above Old Hickory Dam',
    36.28805,
    -86.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OHHT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHET1',
    NULL,
    'OHRFC',
    'TN',
    NULL,
    'Cumberland River at Cheatham Lock and Dam',
    36.32194,
    -87.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHET1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLNT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Clifton',
    35.38972,
    -87.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLNT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Bonnel Carre near Norco',
    29.99972,
    -90.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NORL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at New Orleans',
    29.94888,
    -90.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NORL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HLHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Harvey Lock',
    29.915,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6047652,
    'WSLO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Wister Lake',
    34.94888,
    -94.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSLO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21484356,
    'LORF1',
    '02269148',
    'SERFC',
    'FL',
    '3090101',
    'KISSIMMEE RIVER NEAR LORIDA  FL',
    27.52527,
    -81.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LORF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3285704,
    'PCTG1',
    '02336517',
    'SERFC',
    'GA',
    '3130002',
    'PROCTOR CREEK AT HORTENSE WAY  AT ATLANTA  GA',
    32.34944,
    -81.125
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCTG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HLKW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Yakima River at Horlick',
    47.11861,
    -120.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LFRM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Birch Creek (MT) at Lake Francis Reservoir',
    48.25416,
    -112.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CCLT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Clinch River near Clinton',
    36.08472,
    -84.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCLT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DMCV2',
    NULL,
    'LMRFC',
    'VA',
    NULL,
    'Laurel Creek at Damascus',
    36.62694,
    -81.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DMCV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23099678,
    'NW331',
    '12508990',
    'NWRFC',
    'WA',
    '17030003',
    'YAKIMA RIVER AT MABTON  WA',
    46.23124238,
    -119.9994858
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW331'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8367756,
    'NTDK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Prairie Dog Creek at Norton Dam #2-DCP',
    39.81333,
    -99.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NTDK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13463903,
    'NBAI2',
    '05536105',
    'NCRFC',
    'IL',
    '7120003',
    'NB CHICAGO RIVER AT ALBANY AVENUE AT CHICAGO  IL',
    41.98277,
    -87.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NBAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21687144,
    'MGMA1',
    '02419988',
    'SERFC',
    'AL',
    '3150201',
    'ALABAMA RIVER AT MONTGOMERY AL',
    32.39224,
    -86.31541
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MGMA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21687508,
    'TYLA1',
    '02421351',
    'SERFC',
    'AL',
    '3150201',
    'ALABAMA RIVER BL ROBERT F HENRY L&D NEAR BENTON AL',
    32.325,
    -86.78472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TYLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RIGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at Rigolets',
    30.16944,
    -89.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RIGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23107326,
    'NW330',
    '12505450',
    'NWRFC',
    'WA',
    '17030003',
    'GRANGER DRAIN AT GRANGER  WA',
    46.34346299,
    -120.186995
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW330'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24398226,
    'NW329',
    '12465400',
    'NWRFC',
    'WA',
    '17020013',
    'WILSON CREEK BELOW CORBETT DRAW NEAR ALMIRA  WA',
    47.6629263,
    -118.9305666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW329'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13167148,
    'SMRM4',
    '04175399',
    'NCRFC',
    'MI',
    NULL,
    'Monroe 5NNE',
    41.9817,
    -83.3717
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GTTI4',
    NULL,
    'NCRFC',
    'IA',
    '7070006',
    'MISSISSIPPI RIVER AT GUTTENBERAG',
    42.785556,
    -91.095556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GTTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14049291,
    'DARN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Foxholm - Lk Darling',
    48.45806,
    -101.58333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DARN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18476589,
    'EFWI3',
    '03353910',
    'OHRFC',
    'IN',
    '5120201',
    'EAST FORK WHITE LICK CREEK AT MOORESVILLE  IN',
    39.62694,
    -86.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFWI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAVM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tide Station (LIX) near Waveland',
    30.27111,
    -89.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAVM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FWRW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Little Wind River at Fort Washakie',
    43.0,
    -108.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FWRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATCP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Buffalo Creek (Wash Co) near Atcheson',
    40.16944,
    -80.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATCP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10606802,
    'MRRI2',
    '05446000',
    'NCRFC',
    'IL',
    '7090005',
    'ROCK CREEK AT MORRISON  IL',
    41.7975,
    -89.9725
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRRI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LEBW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Rock River at Lebanon-3 E-Hwy MM bridge',
    43.25416,
    -88.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEBW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UNAM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Jones Falls at Woodberry in Baltimore',
    39.32194,
    -76.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UNAM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCBO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Rock Creek at Hwy 47 Bridge at Vernonia',
    45.86416,
    -123.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19293014,
    'MTNW2',
    '03204500',
    'OHRFC',
    'WV',
    '5070102',
    'MUD RIVER NEAR MILTON  WV',
    38.38972,
    -82.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTNW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATNN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Elkhorn River near Atkinson',
    42.49138,
    -98.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATNN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Cordova Bridge',
    31.7625,
    -106.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9481686,
    'CLAN4',
    '01411456',
    'MARFC',
    'NJ',
    '2040206',
    'Little Ease Run near Clayton NJ',
    39.66083,
    -75.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLAN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13606172,
    'PRAI2',
    '05563600',
    'NCRFC',
    'IL',
    NULL,
    'Peoria L&D 7',
    40.6317,
    -89.625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2165431,
    'KSYI4',
    '05458875',
    'NCRFC',
    'IA',
    NULL,
    'Kesley 3NNE',
    42.7039,
    -92.8889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KSYI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18476513,
    'CABI3',
    '03353890',
    'OHRFC',
    'IN',
    '5120201',
    'EAST FORK WHITE LICK CREEK NEAR CAMBY  IN',
    39.69472,
    -86.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CABI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11079205,
    'PCDL1',
    '07381343',
    'LMRFC',
    'LA',
    '8090302',
    'B. Petit Caillou at Ctrl Str near Lapeyrouse  LA',
    29.38972,
    -90.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCDL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GNNM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Escanaba River at Gwinn',
    46.27111,
    -87.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GNNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17828666,
    'BERN5',
    '08328500',
    'WGRFC',
    'NM',
    NULL,
    'JEMEZ CANYON RES NR BERNALILLO N M',
    35.39472,
    -106.54722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BERN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3775421,
    'PHTT1',
    '03064800',
    'OHRFC',
    'TN',
    '5020004',
    'DRY FORK AT GLADWIN WV',
    39.01583,
    -79.53139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PHTT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UIDI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Upper Iowa River near Decorah 3NW',
    43.33888,
    -91.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UIDI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20774496,
    'RWRN5',
    '08390620',
    'WGRFC',
    'NM',
    NULL,
    'TWO R RES (ROCKY ARROYO RES) NR ROSWELLNM',
    33.27232,
    -104.72275
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RWRN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20774512,
    'RRRN5',
    '08390610',
    'WGRFC',
    'NM',
    NULL,
    'TWO R RES (RIO HONDO RES) NR ROSWELLNM',
    33.29957,
    -104.72551
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRRN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731260,
    'SMRN7',
    '0214642825',
    'SERFC',
    'NC',
    '3050103',
    'BRIAR CREEK NEAR CHARLOTTE  NC',
    35.23722,
    -80.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7259913,
    'COZN1',
    '06766500',
    'MBRFC',
    'NE',
    '10200101',
    'PLATTE RIVER NR COZAD  NE (TOTFLO)',
    40.84722,
    -99.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COZN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PSBM1',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Passamamaquoddy Bay at Eastport',
    44.93194,
    -67.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PSBM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTGM1',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Gulf of Maine at Cutler',
    44.62694,
    -67.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTGM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24255205,
    'DIDW1',
    NULL,
    'NWRFC',
    'WA',
    '17110005',
    'DIABLO RESERVOIR NEAR NEWHALEM  WA',
    48.71556,
    -121.13111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DIDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16917952,
    'HENF1',
    NULL,
    'SERFC',
    'FL',
    '3100206',
    'HENRY STREET CANAL NEAR TAMPA FL',
    28.0001,
    -82.54177
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HENF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YUBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Feather River at Yuba City',
    39.13555,
    -121.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YUBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NAST2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'West Central Texas Lakes at Lake Nasworthy',
    31.38972,
    -100.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NAST2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FTBV2',
    NULL,
    'LMRFC',
    'VA',
    NULL,
    'Clinch River at Ft Blackmore',
    36.7625,
    -82.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTBV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UHGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yalobusha River at Holcomb',
    33.77944,
    -90.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UHGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16865323,
    'CPSF1',
    '02299710',
    'SERFC',
    'FL',
    '3100201',
    'COW PEN SLOUGH AT CONTROL NEAR BEE RIDGE FL',
    27.23722,
    -82.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPSF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4867723,
    'CDAM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Center 6W-Clarence Cannon Dam',
    39.5247,
    -91.6442
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDAM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7264443,
    'OVTN1',
    '06768000',
    'MBRFC',
    'NE',
    '10200101',
    'Platte River near Overton  Nebr.',
    40.67777,
    -99.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OVTN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23981473,
    'NW294',
    '12102190',
    'NWRFC',
    'WA',
    '17110014',
    'SWAN CREEK AT 80TH ST EAST NEAR TACOMA  WA',
    47.184544,
    -122.393733
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW294'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24534862,
    'NW297',
    '12201950',
    'NWRFC',
    'WA',
    '17110002',
    'ANDERSON CREEK NEAR BELLINGHAM  WA',
    48.6737223,
    -122.2673823
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW297'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18604196,
    'NOXA1',
    '02448500',
    'SERFC',
    'AL',
    '3160108',
    'NOXUBEE RIVER NR GEIGER  AL',
    32.9325,
    -88.29778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOXA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1601209,
    'GRAC2',
    '07134180',
    'ABRFC',
    'CO',
    '11020009',
    'ARKANSAS RIVER NEAR GRANADA  CO.',
    38.09556,
    -102.31028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRAC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16944516,
    'RNBF1',
    '02313100',
    'SERFC',
    'FL',
    '3100208',
    'RAINBOW RIVER AT DUNNELLON  FL',
    29.04917,
    -82.44778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNBF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 897115,
    'MLGF1',
    '02368000',
    'SERFC',
    'FL',
    '3140103',
    'YELLOW RIVER AT MILLIGAN  FLA.',
    30.75278,
    -86.62917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLGF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10264164,
    'MWTK2',
    '03298200',
    'OHRFC',
    'KY',
    '5140102',
    'FLOYDS FORK NEAR MT WASHINGTON  KY',
    38.08528,
    -85.555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MWTK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4035394,
    'ALVK2',
    '03314000',
    'OHRFC',
    'KY',
    '5110002',
    'DRAKES CREEK NEAR ALVATON  KY',
    36.89528,
    -86.38056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALVK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6246640,
    'PKRN4',
    '01377370',
    'MARFC',
    'NJ',
    '2030103',
    'Pascack Brook at Park Ridge NJ',
    41.03667,
    -74.03917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PKRN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20969524,
    'RLSO2',
    '07152500',
    'ABRFC',
    'OK',
    '11060006',
    'Arkansas River at Ralston  OK',
    36.50417,
    -96.72806
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RLSO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 26873869,
    'BLDN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Valley City 9NW-Baldhill Dam',
    47.0358,
    -98.0828
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLDN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18503495,
    'RGVI3',
    '03325500',
    'OHRFC',
    'IN',
    '5120103',
    'MISSISSINEWA RIVER NEAR RIDGEVILLE  IN',
    40.27111,
    -84.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RGVI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21412135,
    'NW067',
    '09530000',
    'CBRFC',
    'CA',
    '15030107',
    'RESERVATION MAIN DRAIN NO. 4 NEAR YUMA  AZ',
    32.73726888,
    -114.621897
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW067'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18229351,
    'BLDA1',
    '02462501',
    'SERFC',
    'AL',
    '3160112',
    'BLACK WARRIOR R BL BANKHEAD L&D NEAR BESSEMER AL',
    33.45833,
    -87.35417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLDA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18227533,
    'TURA1',
    '02464146',
    'SERFC',
    'AL',
    '3160112',
    'TURKEY CREEK NEAR TUSCALOOSA',
    34.08667,
    -85.79
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TURA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Little Goose Creek below Colorado Colony Ditch',
    44.62694,
    -107.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BBOW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Baraboo River at West Baraboo',
    43.47444,
    -89.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 950417,
    'NW556',
    '382629104493000',
    'ABRFC',
    'CO',
    '11020002',
    'TURKEY C EAST SEEP BL TELLER RES NR STONE CITY  CO',
    38.44138889,
    -104.8258333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW556'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9509194,
    'NW232',
    '01303500',
    'NERFC',
    'NY',
    '2030201',
    'COLD SPRING BROOK AT COLD SPRING HARBOR NY',
    40.8572222,
    -73.4633333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW232'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12395582,
    'NW538',
    '06080900',
    'MBRFC',
    'ID',
    '10030104',
    'Sun River bl Diversion Dam nr Augusta MT',
    47.61850556,
    -112.6920556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW538'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5866375,
    'NW179',
    '01104405',
    'NERFC',
    'MA',
    '1090001',
    'HOBBS BROOK AT MILL ST NR LINCOLN  MA',
    42.436484,
    -71.2695014
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW179'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18460222,
    'SCEI3',
    '03361630',
    'OHRFC',
    'IN',
    '5120204',
    'SUGAR CREEK AT EDEN  IN',
    39.915,
    -85.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCEI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 936030059,
    'DECA1',
    '03577150',
    'LMRFC',
    'AL',
    '6030002',
    'TENNESSEE RIVER AT DECATUR AL',
    34.61,
    -86.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DECA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19623652,
    'FLOA1',
    '03589500',
    'LMRFC',
    'AL',
    '6030005',
    'TENNESSEE RIVER AT FLORENCE AL',
    34.79638,
    -87.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLOA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1326907,
    'NW055',
    '09079450',
    'CBRFC',
    'CO',
    '14010004',
    'LIME CREEK NEAR THOMASVILLE  CO',
    39.3604111,
    -106.6852444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW055'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1326915,
    'NW054',
    '09078475',
    'CBRFC',
    'CO',
    '14010004',
    'LAST CHANCE CREEK NEAR NORRIE  CO',
    39.34388889,
    -106.6565278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW054'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9499694,
    'NW234',
    '01309500',
    'NERFC',
    'NY',
    '2030202',
    'MASSAPEQUA CREEK AT MASSAPEQUA NY',
    40.68888889,
    -73.4547222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW234'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9499706,
    'NW235',
    '01311500',
    'NERFC',
    'NY',
    '2030202',
    'VALLEY STREAM AT VALLEY STREAM NY',
    40.6636111,
    -73.7044444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW235'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18590788,
    'MLBA1',
    '02450000',
    'SERFC',
    'AL',
    '3160109',
    'MULBERRY FORK NEAR GARDEN CITY  AL.',
    34.0,
    -86.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLBA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18227431,
    'BCSA1',
    '02464360',
    'SERFC',
    'AL',
    '3160112',
    'BINION CREEK BELOW GIN CREEK NEAR SAMANTHA AL',
    33.42361,
    -87.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCSA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21412731,
    'NW066',
    '09526000',
    'CBRFC',
    'AZ',
    '15030107',
    'DIVERSION FROM YUMA MAIN CANAL FOR YUMA MUNICIPAL',
    32.72638889,
    -114.6172222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW066'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5866423,
    'NW180',
    '01104430',
    'NERFC',
    'MA',
    '1090001',
    'HOBBS BK BELOW CAMBRIDGE RES NR KENDALL GREEN  MA',
    42.3981512,
    -71.2733903
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW180'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 880056,
    'LSLM7',
    '05514712',
    'NCRFC',
    'MO',
    '7110009',
    'Peruque Creek at Lake St. Louis  MO',
    38.78694444,
    -90.8275
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSLM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17662343,
    'NW503',
    '11153470',
    'CNRFC',
    'CA',
    '18060002',
    'LLAGAS C AB CHESBRO RES NR MORGAN HILL CA',
    37.1483333,
    -121.7683333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW503'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7732315,
    'NW226',
    '01209500',
    'NERFC',
    'CT',
    '1100006',
    'SAUGATUCK RIVER NEAR WESTPORT  CT',
    41.17073056,
    -73.3648167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW226'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6250768,
    'NW246',
    '01392500',
    'MARFC',
    'NJ',
    '2030103',
    'Second River at Belleville NJ',
    40.78805556,
    -74.1716667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW246'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18565189,
    'NW138',
    '02455185',
    'SERFC',
    'AL',
    '3160111',
    'BLACKBURN FORK LITTLE WARRIOR R NR HOLLY SPRINGS',
    33.8606544,
    -86.4458178
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW138'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22271288,
    'NW136',
    '02407514',
    'SERFC',
    'AL',
    '3150107',
    'YELLOWLEAF CREEK NEAR WESTOVER  ALA.',
    33.32066689,
    -86.4952592
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW136'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLMP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Muncy Creek at Glen Mawr',
    41.305,
    -76.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLMP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23801184,
    'NW301',
    '14199704',
    'NWRFC',
    'OR',
    '17090009',
    'NATE CREEK TRIBUTARY NEAR COLTON  OR',
    45.2052333,
    -122.4120018
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW301'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4653396,
    'NW102',
    '01483155',
    'MARFC',
    'DE',
    '2040205',
    'SILVER LAKE TRIBUTARY AT MIDDLETOWN  DE',
    39.4309722,
    -75.7094722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW102'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7702612,
    'NW212',
    '01194000',
    'NERFC',
    'CT',
    '1080205',
    'EIGHTMILE RIVER AT NORTH PLAIN  CT',
    41.44166944,
    -72.33267778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW212'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7702618,
    'NW213',
    '01194500',
    'NERFC',
    'CT',
    '1080205',
    'EAST BRANCH EIGHTMILE RIVER NEAR NORTH LYME  CT',
    41.42751667,
    -72.33477778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW213'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13325400,
    'DRNI4',
    '05414500',
    'NCRFC',
    'IA',
    '7060003',
    'Little Maquoketa River near Durango  IA',
    42.5550002,
    -90.746238
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRNI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCVU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Paria River near Cannonville',
    37.47444,
    -112.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCVU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24528882,
    'NW524',
    '14319830',
    'NWRFC',
    'OR',
    '17100303',
    'SOUTH FORK HINKLE CREEK NEAR NONPAREIL  OR',
    43.4220637,
    -123.0395097
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW524'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4765418,
    'NW104',
    '01493112',
    'MARFC',
    'MD',
    '2060002',
    'CHESTERVILLE BRANCH NEAR CRUMPTON  MD',
    39.25705556,
    -75.94013889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW104'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8077030,
    'NW103',
    '01484100',
    'MARFC',
    'DE',
    '2040207',
    'BEAVERDAM BRANCH AT HOUSTON  DE',
    38.90577778,
    -75.51275
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW103'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LELM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Leland - Hwy 22',
    45.0225,
    -85.7603
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LELM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAUO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Columbia River at Wauna',
    46.1525,
    -123.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAUO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CBBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Columbia Bridge',
    27.71166,
    -99.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21478164,
    'NW123',
    '02266496',
    'SERFC',
    'FL',
    '3090101',
    'REEDY CREEK BELOW S-40  NEAR LOUGHMAN  FL',
    28.27584517,
    -81.54368439
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW123'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12265976,
    'WLKI3',
    '04100220',
    'NCRFC',
    'IN',
    '4050001',
    'WALDRON LAKE NEAR COSPERVILLE  IN',
    41.49138,
    -85.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLKI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10967441,
    'GDGI2',
    '05447100',
    'NCRFC',
    'IL',
    NULL,
    'Deer Grove 1S',
    41.5939,
    -89.6894
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDGI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWRN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Souris River at Sawyer',
    48.08472,
    -101.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWRN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 933090063,
    'NW124',
    '02266500',
    'SERFC',
    'FL',
    '3090101',
    'REEDY CREEK NEAR LOUGHMAN  FL',
    28.2636234,
    -81.536462
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW124'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CUSW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Crawfish River at Columbus',
    43.33888,
    -89.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CUSW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17261905,
    'SRBN1',
    '06799385',
    'MBRFC',
    'NE',
    '10220003',
    'PEBBLE CREEK AT SCRIBNER  NEBR.',
    41.66083,
    -96.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRBN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LOWA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Whitewater Creek at Lowry Mill  (CR 215)',
    31.52527,
    -85.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOWA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11817935,
    'SILA4',
    '07056515',
    'LMRFC',
    'AR',
    '11010005',
    'Bear Creek near Silver Hill  AR',
    35.94,
    -92.71333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SILA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELVO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at EAST LIVERPOOL',
    40.62694,
    -80.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELVO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MKKC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Montecito Creek near Montecito',
    34.42361,
    -119.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MKKC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16715354,
    'NW125',
    '02274490',
    'SERFC',
    'FL',
    '3090102',
    'WILLIAMSON DITCH NEAR OKEECHOBEE  FL',
    27.3047665,
    -80.8189493
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW125'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCUN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Meads Creek above Taft Rd.',
    42.22027,
    -77.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCUN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOFW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Baraboo River at North Freedom',
    43.4575,
    -89.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DCRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Deadman Creek near Gould City',
    46.61,
    -117.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRDG1',
    NULL,
    'LMRFC',
    'GA',
    NULL,
    'Toccoa River at Blue Ridge Dam',
    34.88111,
    -84.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRDG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10247863,
    'NW128',
    '02292010',
    'SERFC',
    'FL',
    '3090205',
    'CALOOSAHATCHEE CANAL DWS OF S-77 AT MOORE HAVEN FL',
    26.83333333,
    -81.08888889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW128'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BELM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yazoo River at Belzoni',
    33.1525,
    -90.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BELM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MAZW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Black Earth Creek at Mazomanie',
    43.16944,
    -89.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MAZW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Silver Creek near Riley',
    43.67777,
    -119.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TSPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tickfaw River at Springfield',
    30.37277,
    -90.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TSPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16802829,
    'NW130',
    '02294405',
    'SERFC',
    'FL',
    '3100101',
    'BANANA-HANCOCK CANAL NR HIGHLAND CITY  FL',
    27.98280097,
    -81.8934151
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW130'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16928188,
    'NW131',
    '02310525',
    'SERFC',
    'FL',
    '3100207',
    'WEEKI WACHEE RIVER NEAR BROOKSVILLE FL',
    28.51888454,
    -82.5823215
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW131'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TRTN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Trent River at Trenton',
    35.05083,
    -77.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16770082,
    'NW555',
    '255654081350200',
    'SERFC',
    'FL',
    '3090204',
    'BLACKWATER RIVER NEAR GOODLAND  FL',
    25.94819444,
    -81.58388889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW555'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16928178,
    'NW132',
    '02310675',
    'SERFC',
    'FL',
    '3100207',
    'HIDDEN RIVER NEAR HOMOSASSA FL',
    28.76665075,
    -82.5887105
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW132'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16949330,
    'NW133',
    '02312675',
    'SERFC',
    'FL',
    '3100208',
    'LITTLE JONES CREEK NEAR RUTLAND  FL.',
    28.8425,
    -82.1302778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW133'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24126097,
    'KACW1',
    '12476000',
    'NWRFC',
    'WA',
    '17030001',
    'KACHESS RIVER NEAR EASTON  WA',
    47.25416,
    -121.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KACW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGSW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Snake River (WA) at Little Goose Dam',
    46.59305,
    -118.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGSW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WRNN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Swannanoa River at Warren Wilson',
    35.61,
    -82.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRNN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HPGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Head of Passes',
    29.13555,
    -89.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HPGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15289204,
    'NW543',
    '07273100',
    'LMRFC',
    'MS',
    '8030201',
    'HOTOPHA CREEK NR BATESVILLE  MS',
    34.36388889,
    -89.8786111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW543'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17997024,
    'NW546',
    '07287404',
    'LMRFC',
    'MS',
    '8030206',
    'HARLAND CREEK NR HOWARD  MS',
    33.10179419,
    -90.1734194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW546'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 950371,
    'NW542',
    '07099230',
    'ABRFC',
    'CO',
    '11020002',
    'TURKEY CREEK AB TELLER RES NEAR STONE CITY  CO.',
    38.46499989,
    -104.8272009
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW542'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15547433,
    'NW536',
    '04226000',
    'NERFC',
    'NY',
    '4130002',
    'KESHEQUA CR AT CRAIG COLONY AT SONYEA NY',
    42.68194444,
    -77.82888889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW536'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23099824,
    'PARW1',
    '12505000',
    'NWRFC',
    'WA',
    '17030003',
    'YAKIMA RIVER NEAR PARKER  WA',
    46.49138,
    -120.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PARW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24422703,
    'NACW1',
    '12494000',
    'NWRFC',
    'WA',
    '17030002',
    'NACHES RIVER BELOW TIETON RIVER NEAR NACHES  WA',
    46.74555,
    -120.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NACW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23437293,
    'LSTO3',
    '13330000',
    'NWRFC',
    'OR',
    '17060105',
    'LOSTINE RIVER NEAR LOSTINE  OR',
    45.44055,
    -117.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4048826,
    'SPFM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Springfield 4SW',
    44.2033,
    -95.0481
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293552,
    'NW324',
    '12324400',
    'NWRFC',
    'MT',
    '17010201',
    'Clark Fork ab Little Blackfoot R nr Garrison MT',
    46.5109111,
    -112.789686
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW324'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947040096,
    'MAGI1',
    '13142000',
    'NWRFC',
    'ID',
    '17040219',
    'MAGIC RES NR RICHFIELD ID',
    43.25416,
    -114.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MAGI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23956262,
    'NW511',
    '12206900',
    'NWRFC',
    'WA',
    '17110004',
    'RACEHORSE CREEK AT NORTH FORK ROAD NR KENDALL  WA',
    48.88484196,
    -122.1332075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW511'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OSMK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Marais Des Cygnes River at Osawatomie',
    38.50833,
    -94.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OSMK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16224859,
    'ALTN8',
    '06347500',
    'MBRFC',
    'ND',
    '10130203',
    'BIG MUDDY CREEK NEAR ALMONT  ND',
    46.69444,
    -101.46694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALTN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WHDO1',
    '03139850',
    'OHRFC',
    'OH',
    '5040003',
    'Walhonding River below Randle OH',
    40.307778,
    -81.907778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHDO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20492935,
    'BKFA3',
    '09490500',
    'CBRFC',
    'AZ',
    '15060101',
    'BLACK RIVER NEAR FORT APACHE  AZ.',
    33.71278,
    -110.21111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKFA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13893016,
    'NASI2',
    '05595000',
    'NCRFC',
    'IL',
    '7140204',
    'KASKASKIA RIVER AT NEW ATHENS  IL',
    38.32194,
    -89.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NASI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14839315,
    'PIAI2',
    '05560000',
    'NCRFC',
    'IL',
    '7130001',
    'ILLINOIS RIVER AT PEORIA  IL',
    40.7022598,
    -89.5645407
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PIAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCBT2',
    '08116850',
    'WGRFC',
    'TX',
    NULL,
    'Brazos River near West Columbia',
    29.144,
    -95.6058
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LDOT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Laredo',
    27.50833,
    -99.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LDOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13038888,
    'MCRM4',
    '04154500',
    'NCRFC',
    'MI',
    '4080202',
    'CHIPPEWA RIVER AT MERIDIAN ROAD NEAR MIDLAND  MI',
    43.5944725,
    -84.3694405
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1150000651,
    'NWNA3',
    '09481000',
    'CBRFC',
    'AZ',
    '15050301',
    'NOGALES WASH AT NOGALES  AZ',
    31.34327,
    -110.93167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWNA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10124416,
    'SIPK1',
    '06914100',
    'MBRFC',
    'KS',
    '10290101',
    'POTTAWATOMIE C NR SCIPIO  KS',
    38.33888,
    -95.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SIPK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SRNF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Suwannee River at Nobles Ferry',
    30.44055,
    -83.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRNF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4560932,
    'NW496',
    '10093000',
    'CBRFC',
    'ID',
    '16010202',
    'CUB RIVER NEAR PRESTON  ID',
    42.14020326,
    -111.6913323
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW496'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLDI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Gladstone',
    40.88111,
    -91.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLDI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7880800,
    'BGCU1',
    '10023000',
    'CBRFC',
    'UT',
    '16010101',
    'BIG CREEK NEAR RANDOLPH  UT',
    41.61,
    -111.25333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGCU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4005122,
    'BRNK2',
    '03311500',
    'OHRFC',
    'KY',
    '5110001',
    'GREEN RIVER AT LOCK 6 AT BROWNSVILLE  KY',
    37.20333,
    -86.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRNK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBYN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Tar River at Rock Springs',
    35.64388,
    -77.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBYN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MPEL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Port Eads',
    29.0,
    -89.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MPEL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1839793,
    'FMNI2',
    '03612000',
    'LMRFC',
    'IL',
    '5140206',
    'CACHE RIVER AT FORMAN  IL',
    37.33639,
    -88.92389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FMNI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRLL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Lacombe below Lacombe',
    30.25416,
    -89.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRLL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23876773,
    'TUCO3',
    '14303200',
    'NWRFC',
    'OR',
    '17100203',
    'TUCCA CREEK NEAR BLAINE  OR.',
    45.32444,
    -123.54528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10682632,
    'NW497',
    '10172875',
    'CBRFC',
    'UT',
    '16020306',
    'GRANITE CREEK NEAR CALLAO  UT',
    39.77771867,
    -113.8616608
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW497'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2704735,
    'SCOC1',
    '11477000',
    'CNRFC',
    'CA',
    '18010105',
    'EEL R A SCOTIA CA',
    40.49167,
    -124.09861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPBN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Cohocton River above Campbell',
    42.25416,
    -77.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15177909,
    'BUFL1',
    '07381567',
    'LMRFC',
    'LA',
    '8080101',
    'Buffalo Cove at Round Island near Charenton  LA',
    29.99972,
    -91.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUFL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22826470,
    'NW498',
    '10245445',
    'CNRFC',
    'NV',
    '16060007',
    'ILLIPAH CK NR HAMILTON  NV',
    39.31776389,
    -115.3950583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW498'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BBSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Bonfouca at Slidell',
    30.27111,
    -89.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WPUW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'West Branch Rock River near Waupun',
    43.64388,
    -88.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WPUW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17693219,
    'OLAC1',
    '11166000',
    'CNRFC',
    'CA',
    '18050003',
    'MATADERO C A PALO ALTO CA',
    37.42361,
    -122.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OLAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7952070,
    'NW531',
    '11364300',
    'CNRFC',
    'CA',
    '18020003',
    'HATCHET C BL DIV TO HATCHET C PP NR MNTGMRY C CA',
    40.87737886,
    -121.8663833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW531'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23957186,
    'NW513',
    '12207850',
    'NWRFC',
    'WA',
    '17110004',
    'CLEARWATER CREEK NEAR WELCOME  WA',
    48.788451,
    -122.0229292
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW513'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8056721,
    'NW507',
    '11413320',
    'CNRFC',
    'CA',
    '18020125',
    'DEADWOOD C NR STRAWBERRY VALLEY CA',
    39.54989055,
    -121.0944014
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW507'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23980823,
    'MMDW1',
    '12098500',
    'NWRFC',
    'WA',
    '17110014',
    'WHITE RIVER NEAR BUCKLEY  WA',
    47.15139,
    -121.94861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MMDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MYPF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'St. Johns River at Mayport',
    30.38972,
    -81.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MYPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23880874,
    'SILO3',
    '14305500',
    'NWRFC',
    'OR',
    '17100204',
    'SILETZ RIVER AT SILETZ  OR',
    44.71528,
    -123.88611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SILO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18989704,
    'PTVL1',
    '07380185',
    'LMRFC',
    'LA',
    '8070202',
    'W Colyell Cr. at Joe May Rd near Port Vincent  LA',
    30.42361,
    -90.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTVL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8056723,
    'NW508',
    '11413323',
    'CNRFC',
    'CA',
    '18020125',
    'OWL GULCH NR STRAWBERRY VALLEY CA',
    39.5454461,
    -121.0952348
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW508'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNCO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Canyon Creek near Canyon City',
    44.38972,
    -118.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1357198,
    'YSCC2',
    '09240020',
    'CBRFC',
    'CO',
    '14050001',
    'YAMPA RIVER BELOW SODA CREEK AT STEAMBOAT SPGS  CO',
    40.48922,
    -106.84153
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YSCC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8384071,
    'BDCM2',
    '01486500',
    'MARFC',
    'MD',
    '2080110',
    'BEAVERDAM CREEK NEAR SALISBURY  MD',
    38.35583,
    -75.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDCM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YWGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yalobusha River at Whaley',
    33.62694,
    -90.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YWGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14364102,
    'CCSM2',
    '01597000',
    'MARFC',
    'MD',
    '2070002',
    'CRABTREE CREEK NEAR SWANTON  MD',
    39.50833,
    -79.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCSM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4947325,
    'MOTM5',
    NULL,
    'NCRFC',
    'MN',
    '7010106',
    'CROW WING RIVER AT MOTLEY  MN',
    46.34163146,
    -94.6419582
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16663809,
    'SPUF1',
    '02245260',
    'SERFC',
    'FL',
    '3080103',
    'DEEP CREEK AT SPUDS  FL',
    29.72338,
    -81.48437
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPUF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8920165,
    'CRGN2',
    '10310407',
    'CNRFC',
    'NV',
    '16050201',
    'CARSON RV NR GENOA  NV',
    39.0125,
    -119.83
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRGN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22337975,
    'RVDM2',
    '01649500',
    'MARFC',
    'MD',
    '2070010',
    'NORTHEAST BRANCH ANACOSTIA RIVER AT RIVERDALE  MD',
    38.96583,
    -76.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVDM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21486588,
    'FISF1',
    '02272650',
    'SERFC',
    'FL',
    '3090101',
    'FISH SLOUGH NEAR BASINGER  FL',
    27.465,
    -80.92222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FISF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSHV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'North Fork Shenandoah River below Burnshire Dam',
    38.88111,
    -78.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSHV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YZOM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yazoo River at Yazoo City',
    32.86416,
    -90.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YZOM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6581532,
    'HRLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Heron Lake 1ENE - 400th Ave',
    43.8006,
    -95.2758
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2679458,
    'BBWM1',
    '01022294',
    'NERFC',
    'ME',
    '1050002',
    'East Br Bear Brook near Beddington  Maine',
    44.86416,
    -68.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBWM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13294312,
    'MDAW3',
    '05428000',
    'NCRFC',
    'WI',
    NULL,
    'Madison - Lk Mendota',
    43.095,
    -89.37
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MDAW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13609062,
    'BEAI2',
    '05584000',
    'NCRFC',
    'IL',
    NULL,
    'Beardstown',
    40.0203,
    -90.4367
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6841015,
    'STUM4',
    '04065548',
    'NCRFC',
    'MI',
    NULL,
    'Loretto 2NE',
    45.7897,
    -87.7836
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STUM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23981227,
    'WABW1',
    '12100496',
    'NWRFC',
    'WA',
    '17110014',
    'WHITE RIVER NEAR AUBURN  WA',
    47.26611,
    -122.22861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WABW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ESKI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'South Skunk River near Ames Hwy E18',
    42.1525,
    -93.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESKI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLFW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Naches River near Cliffdell',
    46.915,
    -121.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLFW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SKPA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'West Fork Choctawhatchee River near Skipperville (',
    31.57611,
    -85.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SKPA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12025598,
    'YDRM4',
    '04043275',
    'NCRFC',
    'MI',
    '4020105',
    'YELLOW DOG RIVER NEAR BIG BAY  MI',
    46.71166,
    -87.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YDRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11951467,
    'BFCM4',
    '04033500',
    'NCRFC',
    'MI',
    '4020102',
    'BOND FALLS CANAL NEAR PAULDING  MI',
    46.38972,
    -89.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFCM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16837810,
    'NPOF1',
    '02299450',
    'SERFC',
    'FL',
    '3100102',
    'BIG SLOUGH AT TROPICAIRE BLVD NEAR NORTH PORT FL',
    27.11164,
    -82.20484
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NPOF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16878432,
    'LWDF1',
    '02300042',
    'SERFC',
    'FL',
    '3100202',
    'WARD LAKE NEAR BRADENTON FL',
    27.44111,
    -82.48778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWDF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6635826,
    'CSRM5',
    '05051000',
    'NCRFC',
    'MN',
    '9020101',
    'RABBIT RIVER AT CAMPBELL  MN',
    46.08472,
    -96.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EFWW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'East Fork Wind River near Dubois',
    43.62694,
    -109.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFWW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TNAW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Teanaway River near Cle Elum',
    47.23722,
    -120.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TNAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LNRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Little Naches River near Nile',
    46.99972,
    -121.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LLKW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Spokane River at Long Lake Dam',
    47.84722,
    -117.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MIBA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Indian Bend Wash at Sweetwater Rd',
    33.61,
    -112.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MIBA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1100388,
    'CHPM5',
    '05287890',
    'NCRFC',
    'MN',
    '7010206',
    'ELM CREEK NR CHAMPLIN  MN',
    45.1525,
    -93.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHPM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HEPP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lycoming Creek at Hepburnville',
    41.305,
    -77.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HEPP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DELD1',
    NULL,
    'MARFC',
    'DE',
    NULL,
    'Delaware River at Delaware City',
    39.57611,
    -75.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DELD1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOSC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Joaquin River at Mossdale Bridge',
    37.79638,
    -121.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24282036,
    'NLGW1',
    '12086000',
    'NWRFC',
    'WA',
    '17110015',
    'NISQUALLY RIVER AT LA GRANDE DAM  WA',
    46.82278,
    -122.30306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLGW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCBI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Walnut Creek (Central IA) near Waukee 156th St',
    41.66083,
    -93.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SFFA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Salt River at 51st Ave-Phoenix',
    33.40666,
    -112.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFFA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2462965,
    'RUDM5',
    NULL,
    'NCRFC',
    'MN',
    '7040008',
    'RUSH CREEK NEAR RUSHFORD  MN',
    43.8332973,
    -91.7779269
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RUDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19735653,
    'LTIN7',
    '03501500',
    'LMRFC',
    'NC',
    '6010202',
    'LITTLE TENNESSEE RIVER AB NC HWY 28 AT IOTLA~ NC',
    35.23286,
    -83.39147
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LTIN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AVIM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Savage River near Avilton',
    39.64388,
    -79.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AVIM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7240575,
    'LUVM5',
    '06483000',
    'MBRFC',
    'MN',
    '10170204',
    'ROCK RIVER AT LUVERNE  MN',
    43.66083,
    -96.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LUVM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKPA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Agua Fria River at Lake Pleasant',
    33.93194,
    -112.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKPA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BUMW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Bumping River below Bumping Dam',
    46.88111,
    -121.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUMW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13294362,
    'MRDW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'McFarland 1S',
    43.0047,
    -89.3192
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRDW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6558949,
    'GDVM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Gordonsville 1W',
    43.5139,
    -93.2686
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDVM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23956210,
    'NW512',
    '12207750',
    'NWRFC',
    'WA',
    '17110004',
    'WARM CREEK NEAR WELCOME  WA',
    48.7673399,
    -121.9645947
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW512'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4390805,
    'INDM7',
    '06893830',
    'MBRFC',
    'MO',
    '10300101',
    'Adair Creek at Independence  MO',
    39.03388,
    -94.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'INDM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6317069,
    'MTHG1',
    '02203559',
    'SERFC',
    'GA',
    '3060204',
    'PEACOCK CREEK AT MCINTOSH  GA',
    31.82028,
    -81.53972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTHG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OBBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Stanislaus River at Orange Blossom Bridge',
    37.79638,
    -120.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OBBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SMIV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Roanoke River at Smith Mountain Lake',
    37.01694,
    -79.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMIV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TICW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Tieton River at Tieton Headworks',
    46.67777,
    -121.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TICW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2721305,
    'ESRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Sauk Rapids 6E',
    45.5869,
    -94.04
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'URBI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'North Walnut Creek (Central IA) above IFC--Urbanda',
    41.61,
    -93.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'URBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VIVW4',
    NULL,
    'CBRFC',
    'WY',
    NULL,
    'Reservoirs at Viva Naughton Reservoir',
    41.968601,
    -110.663063
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VIVW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLBW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Middle Fork Popo Agie River near Lander',
    42.81333,
    -108.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2041579,
    'CTHG1',
    '02331000',
    'SERFC',
    'GA',
    '3130001',
    'CHATTAHOOCHEE RIVER NEAR LEAF  GA',
    34.57694,
    -83.63583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTHG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DRXP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lycoming Creek above Deer Crossing',
    41.54222,
    -76.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRXP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'APAM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Severn River at Annapolis',
    38.98277,
    -76.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APAM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DYET1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'North Fork Forked Deer River at Dyersburg',
    36.01694,
    -89.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DYET1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15735941,
    'CCHM6',
    '02487900',
    'LMRFC',
    'MS',
    '3180003',
    'COPIAH CREEK NR HAZLEHURST  MS',
    31.89805,
    -90.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCHM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MMTW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Kanawha River above Marmet Locks',
    38.25416,
    -81.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MMTW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KKLN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Keuka Lake at Hammondsport',
    42.40666,
    -77.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KKLN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLBK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Cottonwood River at Marion Reservoir',
    38.37277,
    -97.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLBK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WPSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Pearl River near Slidell',
    30.22027,
    -89.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WPSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6685315,
    'BRGM5',
    '05062090',
    'NCRFC',
    'MN',
    NULL,
    'Georgetown 3SE',
    47.0497,
    -96.7536
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRGM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4086148,
    'ODAM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Odessa - Hwy 75 Dam',
    45.2489,
    -96.2975
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ODAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LPSC2',
    NULL,
    'CBRFC',
    'CO',
    NULL,
    'La Plata River at State Line',
    36.999722,
    -108.188056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPSC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SJSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Saint John at Southlake at New Orleans',
    29.98277,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SJSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLDT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Ft. Loudon Dam (Lenoir City 1E)',
    35.79638,
    -84.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLDT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GFPV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Pound River near Norland',
    37.1525,
    -82.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GFPV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KGTT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Kingston',
    35.86416,
    -84.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KGTT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TKSV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Tinker Creek at Tinker Creek South',
    37.32194,
    -79.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TKSV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCKO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'McKay Creek near Pendleton',
    45.61,
    -118.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NADA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Little Missouri River (AR) at Narrows Dam',
    34.13555,
    -93.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NADA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12754833,
    'OCAM8',
    '06307740',
    'MBRFC',
    'MT',
    '10090102',
    'Otter Creek at Ashland MT',
    45.59305,
    -106.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCAM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18122518,
    'CRBM6',
    '02480273',
    'LMRFC',
    'MS',
    '3170006',
    'PASCAGOULA RIVER AT INTERSTATE 10 AT CROOKED BAYOU',
    30.44055,
    -88.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRBM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12913595,
    'PYRM8',
    '06216900',
    'MBRFC',
    'MT',
    '10070008',
    'Pryor Creek nr Huntley MT',
    45.83027,
    -108.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PYRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBOT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Watts Bar Dam',
    35.62694,
    -84.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBOT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HOGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Big Sunflower River at Holly Bluff',
    32.81333,
    -90.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5334729,
    'HWCM8',
    '06307600',
    'MBRFC',
    'MT',
    '10090101',
    'Hanging Woman Creek near Birney MT',
    45.28805,
    -106.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HWCM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23981225,
    'WSTW1',
    '12100500',
    'NWRFC',
    'WA',
    '17110014',
    'WHITE RIVER NEAR SUMNER  WA',
    47.25028,
    -122.2425
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSTW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EGZT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Big Sandy Creek (TX) near Elgin',
    30.25416,
    -97.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGZT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LTGW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Little Goose Creek at Big Horn',
    44.69472,
    -106.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LTGW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9555125,
    'ANGS2',
    '06401500',
    'MBRFC',
    'SD',
    '10120109',
    'CHEYENNE R BELOW ANGOSTURA DAM SD',
    43.34306,
    -103.43778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANGS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Borgne at Chef Menteur Pass near Lake Borgne',
    30.06777,
    -89.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12752129,
    'PMKM8',
    '06308400',
    'MBRFC',
    'MT',
    '10090102',
    'Pumpkin Creek near Miles City MT',
    46.22027,
    -105.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PMKM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HEFW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'East Fork Black River at East Fork Rd',
    44.42361,
    -90.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HEFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NKJT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Nickajack Dam (Jasper 5S)',
    35.0,
    -85.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NKJT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12483647,
    'VNRM8',
    '06131000',
    'MBRFC',
    'MT',
    '10040105',
    'Big Dry Creek near Van Norman MT',
    47.33888,
    -106.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VNRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12654961,
    'CBCM8',
    '06098500',
    'MBRFC',
    'MT',
    '10030202',
    'Cut Bank Creek near Browning MT',
    48.62694,
    -113.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBCM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3222059,
    'EDBN5',
    '08361000',
    'WGRFC',
    'NM',
    '13030101',
    'RIO GRANDE BELOW ELEPHANT BUTTE DAM  NM',
    33.13555,
    -107.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDBN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRBM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Mississippi Sound at Grand Bay RAWS near Orange Gr',
    30.44055,
    -88.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRBM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16016410,
    'WKAS2',
    '06479000',
    'MBRFC',
    'SD',
    '10170102',
    'VERMILLION R NEAR WAKONDA SD',
    42.99972,
    -96.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKAS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11049850,
    'FRPP1',
    '03049000',
    'OHRFC',
    'PA',
    '5010009',
    'Buffalo Creek at Iron Bridge~ PA',
    40.73447,
    -79.67811
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRPP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BREV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'James River (VA) at Bremo Bluff',
    37.71166,
    -78.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BREV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12954006,
    'OVEM4',
    '04137715',
    'NCRFC',
    'MI',
    NULL,
    'Oscoda 2NNW',
    44.4469,
    -83.3392
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OVEM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EDNW4',
    NULL,
    'CBRFC',
    'WY',
    NULL,
    'Reservoirs at Eden Reservoir',
    42.22027,
    -109.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDNW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9202887,
    'GOSN7',
    '02124692',
    'SERFC',
    'NC',
    '3040105',
    'GOOSE CR AT FAIRVIEW  NC',
    35.1525,
    -80.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GOSN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5124970,
    'LVZM7',
    '06904050',
    'MBRFC',
    'MO',
    '10280201',
    'Chariton River at Livonia  MO',
    40.49138,
    -92.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LVZM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12943300,
    'AUHM4',
    '04138540',
    'NCRFC',
    'MI',
    NULL,
    'Au Gres - Hwy 23',
    44.0481,
    -83.6869
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AUHM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NECL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Boeuf River near Fort Necessity',
    32.06777,
    -91.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NECL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WRRV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'South River at Waynesboro near Rife Road',
    38.05083,
    -78.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7733259,
    'NW225',
    '01209105',
    'NERFC',
    'CT',
    '1100006',
    'ASPETUCK RIVER AT ASPETUCK  CT',
    41.22874167,
    -73.3241194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW225'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EMPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Empire',
    29.38972,
    -89.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7014399,
    'DOBM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Austin - 21st St NE',
    43.6772,
    -92.9397
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DOBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MWBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at West Bay',
    29.23722,
    -89.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MWBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WBOL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at West Bay Receiving Area Outlf',
    29.22027,
    -89.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBOL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Canutillo',
    31.915,
    -106.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14278316,
    'MADN8',
    '05055260',
    'NCRFC',
    'ND',
    NULL,
    'Maddock 5S',
    47.8906,
    -99.5328
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MADN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HFEW2',
    NULL,
    'MARFC',
    'WV',
    NULL,
    'Potomac River at Harpers Ferry',
    39.32194,
    -77.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HFEW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BFLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Twelvepole Creek at Beech Fork Dam',
    38.305,
    -82.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7079240,
    'TRSM5',
    '05091500',
    'NCRFC',
    'MN',
    NULL,
    'Stephen 5NW',
    48.4919,
    -96.955
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CKBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Southwest Pass Mile 7.5 near',
    29.05083,
    -89.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CKBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLEN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Oneida Lake at Cleveland',
    43.22027,
    -75.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLEN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCLM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River above Price Landing',
    37.01694,
    -89.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCLM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MPBV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Bull Run near Manassas Park',
    38.81333,
    -77.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MPBV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22327903,
    'WNBM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Ball Club 9NW-Lk Winnibigosh (D',
    47.4283,
    -94.05
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SRDM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tallahatchie River at Sardis Dam',
    34.38972,
    -89.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRDM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13294374,
    'MNAW3',
    '05429000',
    'NCRFC',
    'WI',
    NULL,
    'Madison - Lk Monona',
    43.0633,
    -89.3969
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNAW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at Southwest Pass at East Jetty',
    28.93194,
    -89.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PNLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Middle Fork Zumbro River at Pine Island',
    44.18638,
    -92.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PNLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WSJM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Branch Middle Fork Zumbro River at Wasioja',
    44.06777,
    -92.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSJM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River Delta Basin at Bayou Black at Gi',
    29.69472,
    -90.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13554687,
    'LKCI2',
    '05580500',
    'NCRFC',
    'IL',
    '7130009',
    'KICKAPOO CREEK NEAR LINCOLN  IL',
    40.19170945,
    -89.3612071
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKCI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15673583,
    'NW557',
    '402913084285400',
    'OHRFC',
    'OH',
    '5120101',
    'Chickasaw Creek at St. Marys OH',
    40.48694444,
    -84.4816667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW557'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2719891,
    'SGOM5',
    NULL,
    'NCRFC',
    'MN',
    '7010203',
    'ST. FRANCIS RIVER AT SANTIAGO  MN',
    45.5416335,
    -93.8141406
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGOM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NCMM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Mustinka River near Norcross',
    45.89805,
    -96.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCMM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23977622,
    'TUKW1',
    '12113350',
    'NWRFC',
    'WA',
    '17110013',
    'GREEN RIVER AT TUKWILA  WA',
    47.46528,
    -122.24722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WFMI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'West Fork Ditch at Moville',
    42.49138,
    -96.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WFMI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARKA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Black Warrior River at Smith Dam',
    33.94888,
    -87.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARKA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHOM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Chocolay River near Skandia',
    46.40666,
    -87.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHOM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13625727,
    'GMIW3',
    '05410000',
    'NCRFC',
    'WI',
    '7070006',
    'KICKAPOO RIVER AT GAYS MILLS  WI',
    43.3194231,
    -90.8523502
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GMIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6794135,
    'MRNM4',
    '04031500',
    'NCRFC',
    'MI',
    '4020101',
    'PRESQUE ISLE RIVER AT MARENISCO  MI',
    46.3721704,
    -89.6923791
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10205115,
    'LAFI3',
    '03335500',
    'OHRFC',
    'IN',
    '5120108',
    'WABASH RIVER AT LAFAYETTE  IN',
    40.42194,
    -86.89694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAFI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12960375,
    'BONM4',
    '04134000',
    'NCRFC',
    'MI',
    '4070006',
    'NORTH BRANCH THUNDER BAY RIVER NR BOLTON  MI',
    45.14167905,
    -83.6058168
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BONM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBLO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Salmon River at Brightwood Loop Road',
    45.37277,
    -122.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'COMM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River above Commerce',
    37.1525,
    -89.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COMM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JAHM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Rabbit River at MN HWY 75',
    46.10166,
    -96.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JAHM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10204967,
    'LWCI3',
    '03335673',
    'OHRFC',
    'IN',
    '5120108',
    'LITTLE WEA CREEK AT SOUTH RAUB  IN',
    40.90408,
    -85.04839
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWCI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9019175,
    'NW464',
    '04102776',
    'NCRFC',
    'MI',
    '4050002',
    'MIDDLE BRANCH BLACK RIVER NEAR SOUTH HAVEN  MI',
    42.4325306,
    -86.2069742
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW464'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18470962,
    'NWBI3',
    '03360500',
    'OHRFC',
    'IN',
    '5120202',
    'WHITE RIVER AT NEWBERRY  IN',
    38.92811,
    -87.01928
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWBI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9027549,
    'MLKW3',
    '04074548',
    'NCRFC',
    'WI',
    '4030202',
    'SWAMP CREEK BELOW RICE LAKE AT MOLE LAKE  WI',
    45.4794072,
    -88.9978921
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLKW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12173492,
    'MISW3',
    '04085281',
    'NCRFC',
    'WI',
    '4030101',
    'EAST TWIN RIVER AT MISHICOT  WI',
    44.23777309,
    -87.6364725
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MISW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11947289,
    'RCLM4',
    '04035500',
    'NCRFC',
    'MI',
    '4020102',
    'MIDDLE BRANCH ONTONAGON RIVER NEAR ROCKLAND  MI',
    46.6991073,
    -89.160141
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBOM2',
    NULL,
    'MARFC',
    'MD',
    NULL,
    'Western Branch at Upper Marlboro / Marlboro Countr',
    38.83027,
    -76.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBOM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14444612,
    'CRYM4',
    '04061500',
    'NCRFC',
    'MI',
    '4030106',
    'PAINT RIVER AT CRYSTAL FALLS  MI',
    46.1057841,
    -88.3348576
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRYM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAUW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Milwaukee River at Waubeka',
    43.47444,
    -87.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAUW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11951991,
    'TRCM4',
    '04034500',
    'NCRFC',
    'MI',
    '4020102',
    'MIDDLE BRANCH ONTONAGON RIVER NR TROUT CREEK  MI',
    46.4777221,
    -89.090419
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRCM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CEAS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Congaree River at Carolina Eastman',
    33.88111,
    -81.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CEAS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GVAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Joaquin River above Gravelly Ford',
    36.79638,
    -120.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GVAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SSTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Joaquin River near Stevinson',
    37.28805,
    -120.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11946925,
    'EWNM4',
    '04039500',
    'NCRFC',
    'MI',
    '4020102',
    'SOUTH BRANCH ONTONAGON RIVER AT EWEN  MI',
    46.5347222,
    -89.2763889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EWNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1238529,
    'NW381',
    '09035800',
    'CBRFC',
    'CO',
    '14010001',
    'DARLING CREEK NEAR LEAL  CO.',
    39.8005418,
    -106.0264066
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW381'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MEEC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Bear Creek at McKee Road',
    37.305,
    -120.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MEEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARLW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Stillaguamish River at Arlington',
    48.20333,
    -122.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNFW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'North Fork Stillaguamish River near Oso',
    48.27111,
    -121.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNFW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LPRI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'West Fork Little Sioux River near Lake Park',
    43.42361,
    -95.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AVOM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'West Fork Des Moines River near Avoca',
    43.94888,
    -95.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AVOM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BITS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'South Dakota Glacial Lakes at Bitter Lake',
    45.18638,
    -97.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BITS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALFW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Pend Oreille River below Albeni Falls Dam',
    48.16944,
    -116.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALFW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BVCM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Blue River at Colorado Avenue',
    39.03388,
    -94.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVCM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLST1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'South Fork Forked Deer River near Bells 2SW',
    35.69472,
    -89.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLST1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GFKM4',
    '04047500',
    'NCRFC',
    'MI',
    NULL,
    'Germfask 1S',
    46.43,
    -85.93
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GFKM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAHI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Lake Waha at Lake Waha',
    46.20333,
    -116.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAHI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12256082,
    'HDKM4',
    '04096600',
    'NCRFC',
    'MI',
    '4050001',
    'COLDWATER RIVER NEAR HODUNK  MI',
    42.0292142,
    -85.1063625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HDKM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TNRK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Kansas River at Turner Bridge',
    39.08472,
    -94.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TNRK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHJW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Chief Joseph Dam',
    47.99972,
    -119.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHJW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WELW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Wells Dam',
    47.96583,
    -119.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WELW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRHW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Rocky Reach Dam',
    47.52527,
    -120.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRHW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MISW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Mission Creek near Cashmere',
    47.52527,
    -120.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MISW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ICEW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Icicle Creek near Leavenworth',
    47.55916,
    -120.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ICEW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHUW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Chumstick Creek near Leavenworth',
    47.61,
    -120.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHUW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'QLDI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Quincy Lock and Dam 21',
    39.915,
    -91.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'QLDI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SVRM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Mississippi River at Saverton Lock and Dam 22',
    39.64388,
    -91.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SVRM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LUSM7',
    NULL,
    'NCRFC',
    'MO',
    NULL,
    'Mississippi River at Louisiana',
    39.4575,
    -91.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LUSM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3473541,
    'PLAM4',
    '04106906',
    'NCRFC',
    'MI',
    '4050003',
    'KALAMAZOO RIVER AT PLAINWELL  MI',
    42.4486111,
    -85.6494444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLAM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3472799,
    'PTGM4',
    '04106300',
    'NCRFC',
    'MI',
    '4050003',
    'PORTAGE CREEK NEAR KALAMAZOO  MI',
    42.2461111,
    -85.575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12256064,
    'ATNM4',
    '04096900',
    'NCRFC',
    'MI',
    '4050001',
    'NOTTAWA CREEK NEAR ATHENS  MI',
    42.05560298,
    -85.308318
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4123614,
    'HAWM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Granite Falls 7SE',
    44.7622,
    -95.4289
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2442280,
    'THLM5',
    NULL,
    'NCRFC',
    'MN',
    '7040004',
    'ZUMBRO RIVER AT THEILMAN  MN',
    44.28746666,
    -92.1904497
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'THLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4087232,
    'SAGM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Watson 2N - Sag Weir',
    45.025,
    -95.7972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAGM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13229242,
    'BLIM4',
    '04176140',
    'NCRFC',
    'MI',
    NULL,
    'Blissfield 1SW',
    41.8342,
    -83.8667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLIM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRNM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yalobusha River at Grenada Dam',
    33.81333,
    -89.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRNM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9535873,
    'BKLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'TOLEDO BD RES NR BURKEVILLE TX',
    31.18638,
    -93.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1771812,
    'AURM5',
    '04016500',
    'NCRFC',
    'MN',
    '4010201',
    'ST. LOUIS RIVER NEAR AURORA  MN',
    47.49159248,
    -92.239067
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AURM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DELM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'SOUTH FORK CROW RIVER AT DELANO MN',
    45.03388,
    -93.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DELM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARKM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Coldwater River at Arkabutla Dam',
    34.7625,
    -90.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARKM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2462091,
    'LNSM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Lanesboro',
    43.7219,
    -91.9789
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2120026,
    'WABM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Wabasha (Pool 4 CP)',
    44.3867,
    -92.0369
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WABM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15259548,
    'MKSM6',
    '07279950',
    'LMRFC',
    'MS',
    NULL,
    'Coldwater River at Marks',
    34.25416,
    -90.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MKSM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6610898,
    'PROI4',
    '05483300',
    'NCRFC',
    'IA',
    NULL,
    'Perry 1W',
    41.8353,
    -94.1317
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PROI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TBRM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Marias River at Tiber Reservoir / Lake Elwell',
    48.305,
    -111.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'La Crescent L&D 7',
    43.8669,
    -91.3114
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1101436,
    'HSTM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Hastings L&D 2',
    44.7594,
    -92.8678
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HSTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLOV2',
    NULL,
    'SERFC',
    'VA',
    NULL,
    'Tinker Creek near Cloverdale IFLOWS SG/RG',
    37.37277,
    -79.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLOV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14172643,
    'TOWN8',
    '05121500',
    'NCRFC',
    'ND',
    NULL,
    'Towner 1NW',
    48.3528,
    -100.4189
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TOWN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17541421,
    'TAMI4',
    '05451810',
    'NCRFC',
    'IA',
    NULL,
    'Tama',
    41.9531,
    -92.5767
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TAMI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13296064,
    'NVLW3',
    '05427235',
    'NCRFC',
    'WI',
    NULL,
    'Newville - Lk Koshkonong',
    42.8575,
    -88.9408
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NVLW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13211694,
    'LYNW3',
    '05388410',
    'NCRFC',
    'WI',
    NULL,
    'Lynxville L&D 9',
    43.2117,
    -91.0986
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LYNW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1010003783,
    'VBOM1',
    '01018500',
    'NERFC',
    'ME',
    '1050001',
    'St. Croix River at Vanceboro  Maine',
    45.56833,
    -67.42833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VBOM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7098203,
    'WTNM5',
    '05127500',
    'NCRFC',
    'MN',
    '9030001',
    'BASSWOOD RIVER NEAR WINTON  MN',
    48.0825,
    -91.6525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WTNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6041700,
    'PTAO2',
    '07249000',
    'ABRFC',
    'OK',
    '11110105',
    'POTEAU RIVER AT POTEAU OK',
    35.05083,
    -94.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTAO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 371305,
    'HSKO2',
    '07165570',
    'ABRFC',
    'OK',
    '11110101',
    'Arkansas River near Haskell  OK',
    35.82278,
    -95.63778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HSKO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13754389,
    'SHAT2',
    '07301300',
    'ABRFC',
    'TX',
    '11120302',
    'N Fk Red Rv nr Shamrock  TX',
    35.26417,
    -100.24139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHAT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23503302,
    'NW337',
    '13306385',
    'NWRFC',
    'ID',
    '17060203',
    'NAPIAS CREEK BELOW ARNETT CREEK NEAR LEESBURG  ID',
    45.20555556,
    -114.1338889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW337'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23606608,
    'NW338',
    '13339500',
    'NWRFC',
    'ID',
    '17060306',
    'LOLO CREEK NR GREER ID',
    46.37166667,
    -116.1625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW338'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7732387,
    'NW228',
    '01209700',
    'NERFC',
    'CT',
    '1100006',
    'NORWALK RIVER AT SOUTH WILTON  CT',
    41.16376667,
    -73.4195444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW228'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5781917,
    'ACRT2',
    '08158000',
    'WGRFC',
    'TX',
    '12090205',
    'Colorado Rv at Austin  TX',
    30.24614,
    -97.68006
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACRT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11165045,
    'HRIN2',
    '10333000',
    'CNRFC',
    'NV',
    '16040108',
    'HUMBOLDT RV NR IMLAY  NV',
    40.6925,
    -118.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRIN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9454525,
    'HRRN4',
    '01410000',
    'MARFC',
    'NJ',
    '2040301',
    'Oswego River at Harrisville NJ',
    39.66083,
    -74.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRRN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SPTC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'South Platte River at South Platte',
    39.40666,
    -105.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPTC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10664532,
    'CHOT2',
    NULL,
    'WGRFC',
    'TX',
    '12110108',
    'Frio River at Choke Canyon Dam',
    28.49138,
    -98.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBYM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Fishing River near Mosby',
    39.32194,
    -94.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBYM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CCKN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Canasawacta Creek at Norwich City Line',
    42.54222,
    -75.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCKN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGLI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Little Grassy Creek at Little Grassy Lake near Mar',
    37.64388,
    -89.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WEGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at West End',
    30.01694,
    -90.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WEGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRNM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Grand River near Brunswick',
    39.42361,
    -93.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRNM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TMPS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Vermillion River at Lake Thompson',
    44.32194,
    -97.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TMPS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Sellers Canal at Hwy',
    29.915,
    -90.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6129219,
    'NW199',
    '01116905',
    'NERFC',
    'RI',
    '1090004',
    'HUNT R 250 FT DS FRY BRK AT FRENCHTOWN  RI',
    41.63,
    -71.47888889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW199'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6129703,
    'NW200',
    '01117000',
    'NERFC',
    'RI',
    '1090004',
    'HUNT RIVER NEAR EAST GREENWICH  RI',
    41.6412122,
    -71.4445016
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW200'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6177058,
    'NW215',
    '01196561',
    'NERFC',
    'CT',
    '1100004',
    'MUDDY RIVER NEAR EAST WALLINGFORD  CT',
    41.4356083,
    -72.7794917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW215'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6177558,
    'NW214',
    '01195100',
    'NERFC',
    'CT',
    '1100004',
    'INDIAN RIVER NEAR CLINTON  CT',
    41.3061722,
    -72.5310333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW214'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 937010741,
    'BTNM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Brownton',
    44.7358,
    -94.3506
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23021792,
    'NW553',
    '12426000',
    'NWRFC',
    'WA',
    '17010307',
    'SPOKANE RIVER BELOW NINE MILE DAM AT SPOKANE  WA',
    47.78044505,
    -117.5455016
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW553'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23956534,
    'NW552',
    '12212050',
    'NWRFC',
    'WA',
    '17110004',
    'FISHTRAP CREEK AT FRONT STREET AT LYNDEN  WA',
    48.9387257,
    -122.4790532
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW552'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7731877,
    'NW224',
    '01209005',
    'NERFC',
    'CT',
    '1100006',
    'SAUGATUCK R BELOW SAUGATUCK RES NR LYONS PLAIN  CT',
    41.24551389,
    -73.3492361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW224'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7733285,
    'NW220',
    '01208873',
    'NERFC',
    'CT',
    '1100006',
    'ROOSTER RIVER AT FAIRFIELD  CT',
    41.1798189,
    -73.21900219
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW220'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7733309,
    'NW222',
    '01208950',
    'NERFC',
    'CT',
    '1100006',
    'SASCO BROOK NEAR SOUTHPORT  CT',
    41.15287436,
    -73.3059495
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW222'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WRGW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Fox River (North) at Rapid Croche',
    44.305,
    -88.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BMPN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Swannanoa River at Black Mountain Park',
    35.61,
    -82.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BMPN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23955904,
    'NW551',
    '12210900',
    'NWRFC',
    'WA',
    '17110004',
    'ANDERSON CREEK AT SMITH ROAD NEAR GOSHEN  WA',
    48.8326141,
    -122.3390502
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW551'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4495680,
    'NW249',
    '01475548',
    'MARFC',
    'PA',
    '2040202',
    'Cobbs Creek at Mt. Moriah Cemetery  Philadelphia',
    39.9327861,
    -75.2376361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW249'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9202601,
    'REYN7',
    '0212427947',
    'SERFC',
    'NC',
    '3040105',
    'REEDY CREEK AT SR 2803 NR CHARLOTTE  NC',
    35.25639,
    -80.70056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REYN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13617901,
    'LWLI2',
    '05555500',
    'NCRFC',
    'IL',
    '7130002',
    'VERMILION RIVER AT LOWELL  IL',
    41.25531294,
    -89.01230329
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14732500,
    'EPLW3',
    '05399600',
    'NCRFC',
    'WI',
    NULL,
    'Eau Pleine Reservoir',
    44.7306,
    -89.7592
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EPLW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6821248,
    'CRIW3',
    '04068000',
    'NCRFC',
    'WI',
    '4030105',
    'PESHTIGO RIVER AT HIGH FALLS NEAR CRIVITZ  WI',
    45.2797222,
    -88.1994444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13015191,
    'FOSM4',
    '04149000',
    'NCRFC',
    'MI',
    '4080204',
    'FLINT RIVER NEAR FOSTERS  MI',
    43.3083594,
    -83.9535826
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12943258,
    'MCIM4',
    '04138000',
    'NCRFC',
    'MI',
    '4080101',
    'EAST BRANCH AU GRES RIVER NEAR McIVOR  MI',
    44.23418498,
    -83.701094
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCIM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21160795,
    'CHEK1',
    '07144795',
    'ABRFC',
    'KS',
    '11030014',
    'NF NINNESCAH R AT CHENEY DAM  KS',
    37.72861,
    -97.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHEK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6831537,
    'MICM4',
    '04062230',
    'NCRFC',
    'MI',
    '4030107',
    'MICHIGAMME RIVER NR MICHIGAMME  MI',
    46.46660426,
    -88.0745797
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MICM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7329862,
    'PDSK1',
    '06867500',
    'MBRFC',
    'KS',
    '10260009',
    'PARADISE C NR PARADISE  KS',
    39.05919,
    -98.84229
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDSK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23980375,
    'PUYW1',
    '12101500',
    'NWRFC',
    'WA',
    '17110014',
    'PUYALLUP RIVER AT PUYALLUP  WA',
    47.20861,
    -122.32583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PUYW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13175955,
    'DXTM4',
    '04173000',
    'NCRFC',
    'MI',
    '4090005',
    'HURON RIVER NEAR DEXTER  MI',
    42.38698,
    -83.9116119
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DXTM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13195808,
    'MCBM4',
    '04160625',
    'NCRFC',
    'MI',
    '4090001',
    'BELLE RIVER AT KING RD NEAR MARINE CITY  MI',
    42.76836606,
    -82.5121348
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCBM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KELW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Cowlitz River at Kelso',
    46.13555,
    -122.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KELW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13634009,
    'PDSW3',
    '05406000',
    'NCRFC',
    'WI',
    '7070005',
    'WISCONSIN RIVER AT PRAIRIE DU SAC  WI',
    43.29137748,
    -89.718456
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDSW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4858843,
    'FTRM5',
    NULL,
    'NCRFC',
    'MN',
    '7010104',
    'MISSISSIPPI RIVER NEAR FORT RIPLEY  MN',
    46.1805222,
    -94.3658366
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4111698,
    'PVRM5',
    NULL,
    'NCRFC',
    'MN',
    '7020003',
    'LAC QUI PARLE RIVER NEAR PROVIDENCE  MN',
    44.8852384,
    -96.0522583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PVRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 166171720,
    'NW207',
    NULL,
    'NERFC',
    'CT',
    '1100003',
    'LATIMER BROOK NR I-95N EXIT 75 NR FLANDERS  CT',
    41.3686111,
    -72.2022222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW207'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7038041,
    'TRFM5',
    '05076500',
    'NCRFC',
    'MN',
    '9020303',
    'RED LAKE RIVER AT THIEF RIVER FALLS  MN',
    48.11107957,
    -96.1808698
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2456318,
    'LACW3',
    '05383500',
    'NCRFC',
    'WI',
    '7040006',
    'MISSISSIPPI RIVER AT LA CROSSE  WI',
    43.8136111,
    -91.2588889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LACW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13031415,
    'BYRM4',
    '04144000',
    'NCRFC',
    'MI',
    '4080203',
    'SHIAWASSEE RIVER AT BATH ROAD AT BYRON  MI',
    42.8236424,
    -83.94579169
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BYRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2442556,
    'KELM5',
    '05374900',
    'NCRFC',
    'MN',
    '7040004',
    'ZUMBRO RIVER AT KELLOGG  MN',
    44.31191029,
    -92.0040541
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KELM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14150260,
    'UCBN8',
    '05123750',
    'NCRFC',
    'ND',
    '9010005',
    'CUT BANK CREEK AT UPHAM  ND',
    48.57472866,
    -100.7445825
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UCBN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7069373,
    'SRAM5',
    '05085420',
    'NCRFC',
    'MN',
    '9020309',
    'SNAKE RIVER ABOVE RADIUM  MN',
    48.2683333,
    -96.5113889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRAM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4083844,
    'BCPS2',
    '05289985',
    'NCRFC',
    'SD',
    '7020001',
    'BIG COULEE CR NEAR PEEVER SD',
    45.4874332,
    -96.9584379
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCPS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14299803,
    'PENN8',
    '05056410',
    'NCRFC',
    'ND',
    '9020201',
    'CHANNEL A NEAR PENN  ND',
    48.1666675,
    -98.9801277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PENN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14827429,
    'PRPN8',
    '05060550',
    'NCRFC',
    'ND',
    '9020204',
    'RUSH RIVER NEAR PROSPER  ND',
    46.96636038,
    -97.0514749
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRPN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14182140,
    'KMRN8',
    '05116150',
    'NCRFC',
    'ND',
    '9010002',
    'DES LACS RIVER NR KENMARE  ND',
    48.5897449,
    -101.9973846
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KMRN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7111641,
    'GDNM5',
    '05127000',
    'NCRFC',
    'MN',
    '9030001',
    'KAWISHIWI RIVER NEAR WINTON  MN',
    47.9346207,
    -91.7640262
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7110353,
    'IRIM5',
    '05124500',
    'NCRFC',
    'MN',
    '9030001',
    'ISABELLA RIVER NEAR ISABELLA  MN',
    47.799903,
    -91.5209696
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IRIM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BXTK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Cumberland River at Baxter',
    36.86416,
    -83.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BXTK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KBNM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Little Blue River (MO) at Knobtown',
    38.96583,
    -94.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KBNM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WRFI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Winnebago River (Northern IA) near Rockford',
    43.08472,
    -93.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRFI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8869528,
    'CCRN7',
    '0210166029',
    'SERFC',
    'NC',
    '3030003',
    'ROCKY R AT SR1300 NR CRUTCHFIELD CROSSROADS  NC',
    35.80694,
    -79.5275
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731486,
    'LSHN7',
    '02146420',
    'SERFC',
    'NC',
    '3050103',
    'LITTLE SUGAR CR AT HILLSIDE AVE  CHARLOTTE  NC',
    35.16944,
    -80.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSHN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14611982,
    'BVSN1',
    '06845200',
    'MBRFC',
    'NE',
    '10250001',
    'SAPPA CREEK NEAR BEAVER CITY  NEBR.',
    40.03388,
    -99.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVSN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731324,
    'MCCN7',
    '02146614',
    'SERFC',
    'NC',
    '3050103',
    'MCALPINE CR AT COLONY RD NEAR OLDE PROVIDENCE  NC',
    35.11861,
    -80.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCCN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8762653,
    'LXRN7',
    '0208250410',
    'SERFC',
    'NC',
    '3020101',
    'TAR RIVER BELOW DAM NEAR LANGLEY CROSSROADS  NC',
    35.89972,
    -77.88444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LXRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2287383,
    'WCLF1',
    '02326526',
    'SERFC',
    'FL',
    '3110103',
    'WACISSA RIVER NR WACISSA FLA',
    30.30111,
    -83.97972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCLF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 25386921,
    'BTWL1',
    '07385820',
    'LMRFC',
    'LA',
    '8080102',
    'Bayou Teche W of Calumet Flood Gate at Calumet  LA',
    29.70389,
    -91.37278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1268578,
    'ADOT2',
    '08045995',
    'WGRFC',
    'TX',
    '12030102',
    'Clear Fork Trinity Rv at Kelly Rd nr Aledo  TX',
    32.65306,
    -97.58639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMOT2',
    '08168913',
    'WGRFC',
    'TX',
    '12100202',
    'Comal Rv (oc) nr Landa Lk  New Braunfels  TX',
    29.71008,
    -98.13166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SWPV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    's Point',
    36.94888,
    -76.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWPV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MBRW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Middle Island Creek near Middlebourne',
    39.47444,
    -80.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MBRW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17665505,
    'PAJC1',
    '11159500',
    'CNRFC',
    'CA',
    NULL,
    'Pajaro River at Main Street',
    36.90561,
    -121.75189
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PAJC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18055960,
    'ARSA4',
    '07265450',
    'LMRFC',
    'AR',
    '8030100',
    'MISSISSIPPI RIV NR ARKANSAS CITY  ARK.',
    33.55916,
    -91.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARSA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PFSN5',
    '08385503',
    'WGRFC',
    'NM',
    '13060003',
    'SAND GATE DIV FROM FT SUMNER CANAL AT FT SUMNER NM',
    34.47583,
    -104.25833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PFSN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3808859,
    'HOYM2',
    '03076100',
    'OHRFC',
    'MD',
    '5020006',
    'YOUGHIOGHENY RIVER AT HOYES  MD',
    39.52581,
    -79.41075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOYM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21038219,
    'PCYO2',
    '07148140',
    'ABRFC',
    'OK',
    '11060001',
    'Arkansas River near Ponca City  OK',
    36.69472,
    -96.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCYO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19088319,
    'BTRL1',
    '07374000',
    'LMRFC',
    'LA',
    '8070100',
    'Mississippi River at Baton Rouge  LA',
    30.42361,
    -91.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTRL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RBYA1',
    NULL,
    'LMRFC',
    'AL',
    NULL,
    'Bear Creek (AL) near Red Bay',
    34.44055,
    -88.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RBYA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9130810,
    'PMBN7',
    '02133651',
    'SERFC',
    'NC',
    '3040203',
    'LUMBER RIVER AT STATE HIGHWAY 710 NR PEMBROKE  NC',
    34.67777,
    -79.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PMBN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WSLC2',
    NULL,
    'CBRFC',
    'CO',
    NULL,
    'West Salt Creek below Landslde Toe  - RAPID DEPLOY',
    39.20333,
    -107.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSLC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ATMO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Muddy Boggy Creek at Atoka',
    34.38972,
    -96.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATMO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NBOI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at New Boston',
    41.18638,
    -91.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NBOI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRAO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Deschutes River (OR) below Crane Prairie Reservoir',
    43.7625,
    -121.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LBDN5',
    NULL,
    'WGRFC',
    'NM',
    NULL,
    'Rio Grande below Leasburg Dam',
    32.49138,
    -106.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LBDN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSLN5',
    NULL,
    'WGRFC',
    'NM',
    NULL,
    'Rio Grande near Mesilla',
    32.20333,
    -106.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSLN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731272,
    'WSTN7',
    '02146315',
    'SERFC',
    'NC',
    '3050103',
    'TAGGART CREEK AT WEST BOULEVARD NR CHARLOTTE  NC',
    35.20333,
    -80.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WSTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21358611,
    'GSFN5',
    '09444000',
    'CBRFC',
    'NM',
    '15040004',
    'SAN FRANCISCO RIVER NEAR GLENWOOD  NM',
    33.23722,
    -108.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GSFN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20773124,
    'RHHN5',
    '08390020',
    'WGRFC',
    'NM',
    '13060008',
    'RIO HONDO ABOVE CHAVEZ CANYON NEAR HONDO  NM',
    33.37277,
    -105.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHHN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CAFW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Peshtigo River at Caldron Falls',
    45.35583,
    -88.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SGGC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Gabriel River (CA) at Spring Street',
    33.81333,
    -118.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JOFW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Peshtigo River at Johnson Falls',
    45.28805,
    -88.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JOFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SSDW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Peshtigo River at Sandstone Dam',
    45.23722,
    -88.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSDW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WNCW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wolf River (WI) near Lake Poygan',
    44.10166,
    -88.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNCW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCVN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Bull Creek (NC) at Riceville road near Riceville',
    35.62694,
    -82.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCVN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TUKN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Tuckasegee River at TUCKASEGEE DAM',
    35.23722,
    -83.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUKN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IRBN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Tuckasegee River at Rock Bridge',
    35.20333,
    -82.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IRBN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCTN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Tuckasegee River near Scott''s Creek inflow',
    35.37277,
    -83.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TIGG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tallulah River at BURTON DAM',
    34.79638,
    -83.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TIGG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NACG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tallulah River at NACOOCHEE DAM',
    34.7625,
    -83.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NACG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TERG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tallulah River at MATHIS-TERRORA DAM',
    34.71166,
    -83.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TERG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TLUG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tallulah River at TALLULAH FALLS DAM',
    34.74555,
    -83.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLUG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TUGG1',
    NULL,
    'SERFC',
    'GA',
    NULL,
    'Tallulah River at TUGALO DAM',
    34.71166,
    -83.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TUGG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBBN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Wood River near Gibbon',
    40.77944,
    -98.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBBN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4252572,
    'SPCM5',
    NULL,
    'NCRFC',
    'MN',
    '7010204',
    'MIDDLE FORK CROW RIVER NEAR SPICER  MN',
    45.26385277,
    -94.8058379
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCKN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Middle Loup River at Rockville',
    41.10166,
    -98.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCKN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DBGN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Turkey Creek (trib. to Middle Loup) near Dannebrog',
    41.1525,
    -98.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DBGN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VCAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Santa Clara River (CA) at Victoria Avenue',
    34.23722,
    -119.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VCAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6829663,
    'REPM4',
    '04062300',
    'NCRFC',
    'MI',
    '4030107',
    'MICHIGAMME RIVER AT REPUBLIC  MI',
    46.38410625,
    -87.9801345
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'REPM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3468027,
    'FNVM4',
    '04108500',
    'NCRFC',
    'MI',
    '4050003',
    'KALAMAZOO RIVER NEAR FENNVILLE  MI',
    42.59364079,
    -85.9841986
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FNVM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13182884,
    'MCWM4',
    '04164980',
    'NCRFC',
    'MI',
    '4090003',
    'MIDDLE BRANCH CLINTON RIVER NEAR WALDENBURG  MI',
    42.6428109,
    -82.9332572
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCWM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALMW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Mississippi River at Alma',
    44.32194,
    -91.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALMW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14143919,
    'SBGN8',
    '05065870',
    'NCRFC',
    'ND',
    NULL,
    'Portland 2W - Hwy 200',
    47.5011,
    -97.405
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBGN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13297236,
    'INFW3',
    '05427570',
    'NCRFC',
    'WI',
    '7090001',
    'ROCK RIVER AT INDIANFORD  WI',
    42.80416667,
    -89.09
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'INFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GDLM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Grand Ledge',
    42.7625,
    -84.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13291376,
    'HUSW3',
    '05424082',
    'NCRFC',
    'WI',
    '7090001',
    'ROCK RIVER AT HUSTISFORD  WI',
    43.3455534,
    -88.5978793
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HUSW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13125142,
    'HOLW3',
    '05362500',
    'NCRFC',
    'WI',
    '7050005',
    'CHIPPEWA RIVER AT HOLCOMBE  WI',
    45.22774518,
    -91.120975
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOLW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PICC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Piru Creek below Buck Creek',
    34.66083,
    -118.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PICC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14820569,
    'SPFI2',
    '05577500',
    'NCRFC',
    'IL',
    '7130008',
    'SPRING CREEK AT SPRINGFIELD  IL',
    39.81333,
    -89.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPFI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13122868,
    'WERW3',
    '05356000',
    'NCRFC',
    'WI',
    '7050001',
    'CHIPPEWA RIVER AT BISHOPS BRIDGE NEAR WINTER  WI',
    45.84722,
    -91.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WERW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2651708,
    'RFSW3',
    '05342000',
    'NCRFC',
    'WI',
    '7030005',
    'KINNICKINNIC RIVER NEAR RIVER FALLS  WI',
    44.83027,
    -92.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RFSW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPEL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at City Park East Lagoon near L',
    30.0,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPEL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18408390,
    'NLVT1',
    '03430550',
    'OHRFC',
    'TN',
    '5130202',
    'MILL CREEK NEAR NOLENSVILLE  TN',
    36.0,
    -86.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLVT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9167928,
    'BLFN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'BLEWETT FALLS LAKE ON PEE DEE RIVER NC',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLFN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23719531,
    'NW520',
    '14096300',
    'NWRFC',
    'OR',
    '17070306',
    'MILL CREEK NR BADGER BUTTE  NR WARM SPRINGS  OR',
    44.86150588,
    -121.6275668
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW520'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2440872,
    'PILM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'North Branch MF Zumbro at Pine Island',
    44.2028,
    -92.645
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PILM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7014739,
    'LANM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Lansing',
    43.7467,
    -92.9586
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LANM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HHSM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Coldwater River near Coldwater River at Hernando',
    34.81333,
    -89.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HHSM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNJC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Conejo Creek above Highway 101',
    34.23722,
    -118.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNJC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VCRC2',
    NULL,
    'CBRFC',
    'CO',
    NULL,
    'Los Pinos River at Vallecito Reservoir',
    37.37277,
    -107.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VCRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GBRW4',
    NULL,
    'CBRFC',
    'WY',
    NULL,
    'Reservoirs at Fontenelle Reservoir',
    42.026836,
    -110.06398
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2441798,
    'ROCM5',
    NULL,
    'NCRFC',
    'MN',
    '7040004',
    'SILVER CREEK AT DNR GAGE IN ROCHESTER  MN',
    44.02885299,
    -92.429064
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROCM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731484,
    'BRPN7',
    '02146449',
    'SERFC',
    'NC',
    '3050103',
    'BRIAR CREEK AT PROVIDENCE ROAD AT CHARLOTTE  NC',
    35.16944,
    -80.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRPN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BARK1',
    NULL,
    'MBRFC',
    'KS',
    NULL,
    'Little Blue River near Barnes 5N',
    39.77944,
    -96.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BARK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13350862,
    'BGFW3',
    '05360000',
    'NCRFC',
    'WI',
    '7050002',
    'FLAMBEAU RIVER NEAR LADYSMITH  WI',
    45.5555234,
    -90.9584793
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGFW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18991252,
    'ALLL1',
    '07378745',
    'LMRFC',
    'LA',
    '8070204',
    'Alligator Bayou near Kleinpeter  LA',
    30.32194,
    -91.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALLL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 940170461,
    'GYVS2',
    '06478515',
    'MBRFC',
    'SD',
    '10170101',
    'MISSOURI R NEAR GAYVILLE SD',
    42.86416,
    -97.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GYVS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1152351,
    'LUFT2',
    '08037000',
    'WGRFC',
    'TX',
    '12020005',
    'Angelina Rv nr Lufkin  TX',
    31.4575,
    -94.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LUFT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5453388,
    'HRSS2',
    '06436760',
    'MBRFC',
    'SD',
    '10120202',
    'HORSE CR ABOVE VALE SD',
    44.66083,
    -103.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRSS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12882658,
    'LANW4',
    '06231600',
    'MBRFC',
    'WY',
    '10080003',
    'POPO AGIE RIVER BELOW THE SINKS  NEAR LANDER  WY',
    42.7625,
    -108.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LANW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14795283,
    'OXJI4',
    '05421760',
    'NCRFC',
    'IA',
    '7080103',
    'Wapsipinicon River at Oxford Mills  IA',
    41.98277,
    -90.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OXJI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14536442,
    'CHCS2',
    '06439000',
    'MBRFC',
    'SD',
    '10120113',
    'CHERRY CR NEAR PLAINVIEW SD',
    44.74555,
    -102.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHCS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6950486,
    'PRAI4',
    '05421682',
    'NCRFC',
    'IA',
    '7080102',
    'Buffalo Creek South of Prairieburg  IA',
    42.18638,
    -91.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASNC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Arroyo Simi near Simi Valley',
    34.27111,
    -118.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13137899,
    'HATW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Hatfield Hydro Plant',
    44.3892,
    -90.7603
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HATW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11777377,
    'SCGA4',
    '07075250',
    'LMRFC',
    'AR',
    '11010014',
    'S Fk Lit Red Riv us of Gulf Mt WMA nr Scotland  AR',
    35.54222,
    -92.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13361862,
    'SABI4',
    '05420150',
    'NCRFC',
    'IA',
    NULL,
    'Sabula',
    42.0642,
    -90.1683
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SABI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6833557,
    'MFSM4',
    '04062850',
    'NCRFC',
    'MI',
    NULL,
    'Michigamme Falls Dam',
    45.9544,
    -88.1958
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MFSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 456134,
    'CCKK2',
    '03277450',
    'OHRFC',
    'KY',
    '5100201',
    'CARR FORK NEAR SASSAFRAS  KY',
    37.23322,
    -83.03387
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCKK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1131001158,
    'TELT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Johnson Ranch',
    29.03388,
    -103.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TELT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LMBM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cottonwood River (MN) near Lamberton',
    44.25416,
    -95.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LMBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SOGM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Little Cannon River at Sogn',
    44.40666,
    -92.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SOGM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10312430,
    'BOMV1',
    NULL,
    'NERFC',
    'VT',
    '4150401',
    'LAKE BOMOSEEN AT OUTLET  NEAR FAIR HAVEN  VT',
    43.61,
    -73.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOMV1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10906553,
    'KEYW4',
    '06427000',
    'MBRFC',
    'WY',
    NULL,
    'Belle Fourche River at Keyhole Reservoir',
    44.37277,
    -104.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KEYW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 487964,
    'HYDK2',
    '03280600',
    'OHRFC',
    'KY',
    '5100202',
    'MIDDLE FORK KENTUCKY RIVER NEAR HYDEN  KY',
    37.14611,
    -83.38139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HYDK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLMT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Obion River near Palmersville',
    36.44055,
    -88.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLMT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WFRM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Rapid River 1E',
    45.9256,
    -86.9458
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WFRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20585806,
    'NCNA3',
    '09383500',
    'CBRFC',
    'AZ',
    '15020001',
    'NUTRIOSO CREEK ABV NELSON RES NR SPRINGERVILLE  AZ',
    34.01694,
    -109.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCNA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EAGI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Boise River at Eagle Island',
    43.67777,
    -116.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EAGI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SQWI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Squaw Creek near Sweet',
    43.98277,
    -116.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SQWI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CRSW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Kanawha River at South Side Bridge',
    38.33888,
    -81.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRSW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VASV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Levisa Fork River above Grundy',
    37.25416,
    -82.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VASV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23780851,
    'NW523',
    '14181900',
    'NWRFC',
    'OR',
    '17090005',
    'LITTLE N SANTIAM RIVER ABV EVANS CR  AT ELKHORN OR',
    44.8356775,
    -122.354803
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW523'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1827692,
    'FODK2',
    '03284000',
    'OHRFC',
    'KY',
    '5100205',
    'KENTUCKY RIVER AT LOCK 10 NEAR WINCHESTER  KY',
    37.89389,
    -84.26056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FODK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCPI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'South Skunk River near Ames McFarland Park',
    42.08472,
    -93.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCPI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4973611,
    'SCLM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'St Cloud - Regis Papermill',
    45.6158,
    -94.2014
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21331123,
    'FCTA3',
    '09460150',
    'CBRFC',
    'AZ',
    '15040005',
    'FRYE CREEK NEAR THATCHER  AZ',
    32.74555,
    -109.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FCTA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21785290,
    'HULO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Hulah Lake',
    36.93194,
    -96.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HULO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2553629,
    'KLLO3',
    '11507500',
    'CNRFC',
    'OR',
    '18010204',
    'LINK RIVER AT KLAMATH FALLS  OR',
    42.22361,
    -121.79306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KLLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BNGM1',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Kennebec River at Bingham',
    45.05083,
    -69.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BNGM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BEHM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Blue Earth River at Blue Earth (105th St)',
    43.64388,
    -94.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEHM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SKOM1',
    NULL,
    'NERFC',
    'ME',
    NULL,
    'Kennebec River at Skowhegan',
    44.7625,
    -69.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SKOM1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLKM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Beaverhead River at Clark Canyon Dam near Dillon',
    45.0,
    -112.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLKM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALRM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Ruby River at Ruby Reservoir',
    45.25416,
    -112.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGSM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River above Augusta',
    47.61,
    -112.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGSM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WILW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Tomahawk River at Willow Reservoir',
    45.71166,
    -89.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WILW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRVW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Tomahawk River above Rice Reservoir',
    45.54222,
    -89.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRVW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JERW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Tomahawk River below Jersey Dam',
    45.49138,
    -89.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JERW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DCDN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Davis Creek at Davis Creek Dam',
    41.40666,
    -98.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCDN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARPN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Muddy Creek at Arapahoe',
    40.305,
    -99.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4916220,
    'BEAA3',
    '09414900',
    'CBRFC',
    'AZ',
    '15010010',
    'BEAVER DAM WASH AT BEAVER DAM  AZ',
    36.915,
    -113.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEAA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RECN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Franklin Canal near Republican City',
    40.05083,
    -99.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RECN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NAPN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Turkey Creek (trib. to Republican River) at Napone',
    40.06777,
    -99.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NAPN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EDIN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Turkey Creek (trib. to Republican River) below Edi',
    40.27111,
    -99.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDIN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FRDF1',
    NULL,
    'SERFC',
    'FL',
    NULL,
    'Atlantic Coast at Fernandina Beach',
    30.67777,
    -81.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRDF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WHIW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Trempealeau River at Whitehall',
    44.37277,
    -91.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TBLW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Trempealeau River at Blair',
    44.28805,
    -91.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBLW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HAAW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Black River (WI) at Hwy 95',
    44.4575,
    -90.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAAW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FTAI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Rogers Creek at Fort Atkinson',
    43.13555,
    -91.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KRZL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Atchafalaya River at Krotz Springs',
    30.57611,
    -91.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KRZL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLVL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Atchafalaya River at Melville',
    30.69472,
    -91.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLVL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AEXL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Red River at Alexandria',
    31.305,
    -92.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AEXL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Red River above Red River Lock 2',
    31.18638,
    -92.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRAL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Red River above Red River Lock 1',
    31.25416,
    -91.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JYLT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Little Pine Island Bayou near Thicket',
    30.35583,
    -94.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JYLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MVSA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Virgin River at Scenic Bridge',
    36.81333,
    -114.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MVSA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHLI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Illinois River at Chillicothe',
    40.93194,
    -89.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDLI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Sangamon River near Chandlerville',
    40.05083,
    -90.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NTNI2',
    NULL,
    'OHRFC',
    'IL',
    NULL,
    'Embarras River (IL) at Newton',
    38.99972,
    -88.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NTNI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DSCA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'White River at Des Arc',
    34.98277,
    -91.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DSCA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLDA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'White River at Clarendon',
    34.69472,
    -91.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLDA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SCHA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'White River at St. Charles',
    34.37277,
    -91.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCHA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BSGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'White River at Bull Shoals Dam',
    36.35583,
    -92.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRRA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'Little Red River at Greers Ferry Dam',
    35.52527,
    -91.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRRA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24255169,
    'NEKW1',
    '12178100',
    'NWRFC',
    'WA',
    '17110005',
    'NEWHALEM CREEK NEAR NEWHALEM  WA',
    48.66028,
    -121.24639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NEKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TEHC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Tehama Bridge',
    40.01694,
    -122.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TEHC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LRTC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Los Angeles River at Tujunga Avenue',
    34.13555,
    -118.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LRTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OKDL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Calcasieu River near Oakdale',
    30.83027,
    -92.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OKDL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BMTA4',
    NULL,
    'ABRFC',
    'AR',
    NULL,
    'Petit Jean River at Blue Mountain Dam',
    35.10166,
    -93.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BMTA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15840868,
    'SSPA3',
    '09535100',
    'CBRFC',
    'AZ',
    '15080101',
    'SAN SIMON WASH NEAR PISINIMO  AZ.',
    32.03388,
    -112.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSPA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NMLA4',
    NULL,
    'ABRFC',
    'AR',
    NULL,
    'Fourche LaFave River at Nimrod Dam',
    34.96583,
    -93.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NMLA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NACC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Nacimiento River at Nacimiento Reservoir',
    35.7625,
    -120.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NACC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WNBA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Jackrabbit Wash near Wickenburg',
    33.71166,
    -112.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WNBA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5217811,
    'HBGO1',
    '03230450',
    'OHRFC',
    'OH',
    '5060001',
    'Hellbranch Run near Harrisburg OH',
    39.84722,
    -83.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HBGO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21897359,
    'VRLL1',
    '07386850',
    'LMRFC',
    'LA',
    '8080103',
    'Vermilion River near Lafayette  LA',
    30.21917,
    -91.95583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VRLL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ALFI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Fourmile Creek (Central IA) near IFC--Altoona NE 5',
    41.66083,
    -93.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALFI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24279014,
    'SNAW1',
    '12155500',
    'NWRFC',
    'WA',
    '17110011',
    'SNOHOMISH RIVER AT SNOHOMISH  WA',
    47.91273,
    -122.10646
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SSGC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Gabriel River (CA) at Parkway',
    34.0,
    -118.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLFI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Ohio River at Clifty Creek',
    38.74555,
    -85.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLFI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TELI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Ohio River at Tell City',
    37.96583,
    -86.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TELI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCHK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Green River (KY) at Rochester',
    37.20333,
    -86.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCHK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WMNM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Snake River (MN) near Warman 3SE',
    46.01694,
    -93.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WMNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WPHL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Mississippi River at West Pointe a la Hache',
    29.57611,
    -89.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WPHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DDMN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Mohawk River at Delta Dam',
    43.27111,
    -75.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DDMN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MDBN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Schoharie Creek at Middleburgh',
    42.59305,
    -74.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MDBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at Bonnet Carre Spillway',
    30.05083,
    -90.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EPCN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Schoharie Creek at Esperance',
    42.74555,
    -74.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EPCN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FOXN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Fox Creek near Schoharie',
    42.67777,
    -74.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOXN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ASEN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Esopus Creek at Ashokan Reservoir East',
    41.96583,
    -74.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASEN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RONN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Rondout Creek at Rondout Rsvr',
    41.79638,
    -74.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RONN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MFDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Lake Marble Falls',
    30.55916,
    -98.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MFDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EGYT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Wilbarger Creek at Elgin',
    30.22027,
    -97.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGYT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRBT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Blanco River at Blanco',
    30.08472,
    -98.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRBT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PEPN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'East Branch Delaware River at Pepacton Reservoir',
    42.06777,
    -74.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PEPN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BKCT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Devils River at Bakers Crossing near Juno',
    29.96583,
    -101.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKCT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DLRT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Del Rio',
    29.32194,
    -100.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLRT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EPPT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Eagle Pass',
    28.71166,
    -100.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EPPT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELNT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at El Indio',
    28.35583,
    -100.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DLWA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Delaney Wash at Delaney Wash',
    33.47444,
    -112.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLWA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBNL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain near Seabrook Bridge near Genti',
    30.01694,
    -90.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBNL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CBCL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Cross Bayou Canal near St. Rose',
    29.99972,
    -90.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CBCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WDSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Walker Drainage Structure near St. Rose',
    29.99972,
    -90.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PNLM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tide Station (LIX) at Pascagoula NOAA Lab',
    30.35583,
    -88.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PNLM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14045813,
    'CLBN8',
    '05113750',
    'NCRFC',
    'ND',
    NULL,
    'Columbus 6N (Rsvr)',
    48.99056,
    -102.78528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLBN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 673192,
    'MJCO2',
    '07309435',
    'ABRFC',
    'OK',
    '11130202',
    'Jimmy Creek nr Meers  OK',
    34.79638,
    -98.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MJCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947100158,
    'NW525',
    '14319835',
    'NWRFC',
    'OR',
    '17100303',
    'NORTH FORK HINKLE CREEK NEAR NONPAREIL  OR',
    43.4234526,
    -123.039232
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW525'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNNN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'West Branch Delaware River at Cannonsville Reservo',
    42.05083,
    -75.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNNN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PMPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at Pass Manchac near Ponchatoul',
    30.27111,
    -90.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PMPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23597681,
    'SFCI1',
    '13337500',
    'NWRFC',
    'ID',
    '17060305',
    'SF CLEARWATER RIVER NR ELK CITY ID',
    45.83027,
    -115.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFCI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WYCM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tide Station (LIX) near Waveland Yacht',
    30.32194,
    -89.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WYCM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NWCL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tide Station (LIX) near Lakefront',
    30.01694,
    -90.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SHBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tide Station (LIX) near Shell Beach',
    29.88111,
    -89.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Catherine Creek near Union',
    45.1525,
    -117.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CATO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Catherine Creek at Union',
    45.20333,
    -117.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CATO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IMNO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Imnaha River at Imnaha',
    45.55916,
    -116.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IMNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PDTO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Umatilla River at Pendleton',
    45.67777,
    -118.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'YOKO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Umatilla River near Yoakum',
    45.67777,
    -119.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YOKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PICO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Butter Creek near Pine City',
    45.54222,
    -119.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PICO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WAHP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Chartiers Creek at Wylie',
    40.16944,
    -80.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WAHP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNBP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Chartiers Creek at S. Central Ave',
    40.25416,
    -80.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNBP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CATP1',
    NULL,
    'OHRFC',
    'PA',
    NULL,
    'Catfish Run at West Maiden',
    40.16944,
    -80.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CATP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LOPW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Longview',
    46.10166,
    -122.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOPW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AFRI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Eastern Idaho Reservoirs at American Falls',
    42.77944,
    -112.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AFRI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RIDI1',
    NULL,
    'NWRFC',
    'ID',
    NULL,
    'Eastern Idaho Reservoirs at Ririe Dam',
    43.57611,
    -111.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RIDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GYBW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Big Horn River at Greybull',
    44.49138,
    -108.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GYBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MGHW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Clear Creek at Mosier Gulch',
    44.32194,
    -106.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MGHW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KAYW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Middle Fork Powder River near Kaycee',
    43.64388,
    -106.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KAYW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCCW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Clear Creek at Buffalo',
    44.33888,
    -106.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCCW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BARW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Middle Fork Powder River at Bar C Ranch',
    43.61,
    -106.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BARW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PFSC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Willow Brook at Penngrove Park',
    38.28805,
    -122.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PFSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPRW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'North Platte River at Casper',
    42.86416,
    -106.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRLW4',
    NULL,
    'NWRFC',
    'WY',
    NULL,
    'Reservoirs at Grassy Lake Reservoir',
    44.11861,
    -110.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRLW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BLRW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Bull Lake Reservoir',
    43.20333,
    -109.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SBDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Boysen Reservoir',
    43.40666,
    -108.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GVDA1',
    NULL,
    'LMRFC',
    'AL',
    NULL,
    'Tennessee River below Guntersville Dam',
    34.42361,
    -86.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GVDA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDYW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Buffalo BIll Reservoir',
    44.50833,
    -109.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDYW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTDW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Reservoirs at Pathfinder Reservoir',
    42.47444,
    -106.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTDW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HAMC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Hamilton City',
    39.7625,
    -121.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ORFC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Ord Ferry',
    39.62694,
    -121.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ORFC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FBLC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Feather River at Boyd''s Landing',
    39.03388,
    -121.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FBLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NCOC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Feather River at Nicolaus',
    38.89805,
    -121.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NFEC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Feather River at East Branch',
    40.0,
    -121.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NFEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SAMC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'American River at H Street',
    38.57611,
    -121.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LSBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Yolo Bypass at Lisbon',
    38.47444,
    -121.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PATC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'San Joaquin River at Patterson',
    37.49138,
    -121.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PATC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MLIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Mallard Island',
    38.03388,
    -121.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LPML1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain near Mandeville',
    30.35583,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPML1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCRC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Petaluma River at Corona Road',
    38.25416,
    -122.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 30580,
    'FIMF1',
    NULL,
    'SERFC',
    'FL',
    '3090202',
    'FIVE MILE CANAL ABOVE S-29-1-4 NR FT. PIERCE  FL',
    27.42361,
    -80.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FIMF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VNCC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Venice Island',
    38.05083,
    -121.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VNCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DEKC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Decker Island - Sa',
    38.08472,
    -121.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DEKC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14708170,
    'PETW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Necedah 3NE-Petenwell Dam',
    44.0575,
    -90.0219
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PETW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OBIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Old River At Bacon',
    37.98277,
    -121.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OBIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Bacon Island at Ol',
    37.94888,
    -121.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OCIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento-San Joaquin Delta at Old River At Coney',
    37.84722,
    -121.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BIGU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Big Cottonwood Creek at Cottonwood Lane',
    40.66083,
    -111.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BIGU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCTU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Big Cottonwood Creek near Salt Lake City',
    40.62694,
    -111.77944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCTU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LLYN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Tioga River near Lindley',
    42.01694,
    -77.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLYN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EMIU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Emigration Creek near Salt Lake City',
    40.7625,
    -111.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMIU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCTU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Little Cottonwood Creek near Salt Lake City',
    40.57611,
    -111.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCTU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCWU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Little Cottonwood Creek at Crestwood Park',
    40.61,
    -111.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCWU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HLZU1',
    NULL,
    'CBRFC',
    'UT',
    NULL,
    'Little Bear River at Hyrum',
    41.62694,
    -111.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLZU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LLNC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Napa River at Lodi Lane',
    38.52527,
    -122.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2602823,
    'LFBP1',
    '01539700',
    'MARFC',
    'PA',
    '2050107',
    'Little Fishing Creek near Bloomsburg  PA',
    41.03388,
    -76.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFBP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NRXC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Napa River at Yountville Cross Road',
    38.42361,
    -122.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NRXC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NAAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Napa River at Lincoln Avenue',
    38.305,
    -122.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NAAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRGI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'Maple River at Galva',
    42.50833,
    -95.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRGI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GUDC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Guadalupe River (CA) above Alamaden Expressway',
    37.27111,
    -121.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GUDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4995345,
    'EDYI4',
    '05489200',
    'NCRFC',
    'IA',
    NULL,
    'Eddyville',
    41.1511,
    -92.6361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDYI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CTQC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek  Tide Gage',
    37.47444,
    -122.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTQC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UCAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Salinas River at San Lucas Bridge',
    36.11861,
    -121.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UCAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KCBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Salinas River at King City Pedestrian Bridge',
    36.20333,
    -121.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CMRC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Carmel River at Highway 1',
    36.54222,
    -121.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TBNM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Big Piney at Fort Leonard Wood',
    37.74555,
    -92.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBNM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NSOK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Neosho River near Oswego 3E',
    37.1525,
    -95.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NSOK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2790443,
    'RACC1',
    '11182500',
    'CNRFC',
    'CA',
    '18050001',
    'SAN RAMON C A SAN RAMON CA',
    37.77306,
    -121.99361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RACC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GSCM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Missouri River at Gasconade',
    38.67777,
    -91.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GSCM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MOAM7',
    NULL,
    'MBRFC',
    'MO',
    NULL,
    'Osage River at Mari-Osa Campground',
    38.49138,
    -92.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOAM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2572334,
    'BLNT2',
    NULL,
    'WGRFC',
    'TX',
    '12070201',
    'Belton Lk nr Belton  TX',
    31.10166,
    -97.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1327111,
    'HUNC2',
    '09074000',
    'CBRFC',
    'CO',
    '14010004',
    'HUNTER CREEK NEAR ASPEN  CO',
    39.20333,
    -106.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HUNC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2649240,
    'SOMW3',
    '05341500',
    'NCRFC',
    'WI',
    '7030005',
    'APPLE RIVER NEAR SOMERSET  WI',
    45.1575,
    -92.7163889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SOMW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCYP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'West Branch Susquehanna River near Muncy',
    41.20333,
    -76.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCYP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Petaluma River at D Street Bridge',
    38.23722,
    -122.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PYSC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Petaluma River at Payran Street Bridge',
    38.23722,
    -122.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PYSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4817023,
    'LLRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Ball Club 5SSW - Abv Mud Lk Dam',
    47.2708,
    -93.9489
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PTKC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Petaluma River at Twin Bridges',
    38.27111,
    -122.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PTKC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DOSL1',
    '292800090060000',
    'LMRFC',
    'LA',
    NULL,
    'Barataria Bay and Waterway at Bay Dosgris near Gal',
    29.466667,
    -90.1
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DOSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16807563,
    'NCTF1',
    '02297105',
    'SERFC',
    'FL',
    '3100101',
    'PEACE RIVER AT NOCATEE FL',
    27.1525,
    -81.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCTF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22725225,
    'FRTG1',
    '02196835',
    'SERFC',
    'GA',
    '3060106',
    'BUTLER CREEK BELOW 7TH AVENUE  AT FT. GORDON  GA',
    33.44055,
    -82.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRTG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MGLT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Obion River near Mengelwood',
    36.03388,
    -89.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MGLT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11546898,
    'BBDS2',
    '06442700',
    'MBRFC',
    'SD',
    NULL,
    'Missouri River at Big Bend Dam',
    44.03388,
    -99.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBDS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5781955,
    'MSDT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Colorado River (TX) at Lake Travis',
    30.38972,
    -97.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HCNM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Fork Crow River at Hutchinson',
    44.88111,
    -94.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCNM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12801362,
    'BHRM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Bighorn River at Bighorn Reservoir',
    45.305,
    -107.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 285570,
    'AMIT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Rio Grande at Lake Amistad',
    29.4575,
    -101.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AMIT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8440399,
    'NW418',
    '01635090',
    'MARFC',
    'VA',
    '2070006',
    'CEDAR CREEK ABOVE HWY 11 NEAR MIDDLETOWN  VA',
    39.00677495,
    -78.3163924
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW418'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DNGV2',
    NULL,
    'LMRFC',
    'VA',
    NULL,
    'Clinch River at Dungannon',
    36.83027,
    -82.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNGV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Pine Creek (East Oregon) at Halfway',
    44.88111,
    -117.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24282032,
    'LGRW1',
    '12086500',
    'NWRFC',
    'WA',
    '17110015',
    'NISQUALLY RIVER AT LA GRANDE  WA',
    46.83944,
    -122.32806
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRDP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Pequea Creek at Paradise',
    40.0,
    -76.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRDP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGEM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Lodge Creek below McRae Creek  at int''l boundary',
    49.0,
    -109.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGEM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20850229,
    'NW051',
    '08480595',
    'WGRFC',
    'NM',
    '13050003',
    'SALT CREEK NEAR TULAROSA  NM',
    33.27555556,
    -106.3972222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW051'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HTVI2',
    NULL,
    'OHRFC',
    'IL',
    NULL,
    'Wabash River at Hutsonville',
    39.10166,
    -87.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HTVI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCXI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'Tippecanoe River at Oakdale Dam',
    40.66083,
    -86.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCXI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ARAN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Muddy Creek at Furnas-Gosper County Line',
    40.35583,
    -99.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARAN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EDNN1',
    NULL,
    'MBRFC',
    'NE',
    NULL,
    'Turkey Creek (trib. to Republican River) at Furnas',
    40.35583,
    -99.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDNN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WATS1',
    NULL,
    'SERFC',
    'SC',
    NULL,
    'Wateree River at Wateree Dam',
    34.33888,
    -80.71166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WATS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BBPO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Burnt River near Bridgeport',
    44.50833,
    -117.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBPO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Burnt River at Huntington',
    44.35583,
    -117.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCOO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Pine Creek (East Oregon) near Oxbow',
    44.96583,
    -116.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCOO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16963867,
    'MRAC2',
    '09370600',
    'CBRFC',
    'CO',
    '14080107',
    'MANCOS RIVER AT ANITAS FLAT BELOW MANCOS  CO',
    37.25416,
    -108.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRAC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WATN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Black River at Watson',
    43.77944,
    -75.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WATN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CNDN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Canandaigua Lake at Canandaigua',
    42.88111,
    -77.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNDN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BHLV2',
    NULL,
    'OHRFC',
    'VA',
    NULL,
    'Russell Fork River at Birchleaf',
    37.16944,
    -82.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHLV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BUFN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Lake Erie near Buffalo',
    42.88111,
    -78.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BUFN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FTDC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Cache La Poudre River (CO) at Canyon Mouth above F',
    40.66083,
    -105.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTDC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ILRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cloquet River at Island Lake Reservoir',
    46.99972,
    -92.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ILRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17533381,
    'SEWS2',
    '06418900',
    'MBRFC',
    'SD',
    '10120110',
    'RAPID CR BL SEWAGE TREATMENT PL NR RAPID CITY  SD',
    44.01694,
    -103.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SEWS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CQRM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Cloquet River near Burnett',
    46.89805,
    -92.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CQRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NOPM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Rabbit River above North Ottawa Imppoundment nr Ti',
    45.99972,
    -96.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NOPM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RLFM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Red Lake River near Red Lake Falls',
    47.89805,
    -96.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RLFM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TRGM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Thief River at Agassiz NWR near Gatzke',
    48.42361,
    -95.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRGM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGDM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Thief River above Agassiz NWR @ JD 11',
    48.305,
    -96.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGPM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Thief River at Agassiz Pool',
    48.32194,
    -95.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGPM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LWLM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Lowell',
    42.93194,
    -85.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LWLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLLM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River at Willow Creek Reservoir',
    47.54222,
    -112.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLLM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GSTM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Snake River (MN) at Grasston',
    45.79638,
    -93.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GSTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KNGW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River at Alice Lake Reservoir',
    45.47444,
    -89.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KNGW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TKDW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River below Tomahawk Dam',
    45.44055,
    -89.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TKDW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHEN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Little Tennessee River at CHEOAH DAM',
    35.44055,
    -83.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHEN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FONN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Little Tennessee River at FONTANA DAM TVA',
    35.4575,
    -83.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FONN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EMRN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Little Tennessee River at LAKE EMORY DAM',
    35.22027,
    -83.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OTTN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Little Tennessee River near Otto',
    35.05083,
    -83.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OTTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SNTN7',
    NULL,
    'LMRFC',
    'NC',
    NULL,
    'Cheoah river above SANTEETLAH DAM',
    35.37277,
    -83.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNTN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RHSC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Rio Hondo (CA) above Stewart and Gray Road',
    33.94888,
    -118.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OTRI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Cedar River near Otranto',
    43.49138,
    -93.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OTRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGRI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Cedar River near St. Ansgar',
    43.35583,
    -92.93194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGRI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CROI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Cedar River near Orchard',
    43.20333,
    -92.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CROI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCOI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Little Cedar River near Orchard 5E',
    43.22027,
    -92.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCOI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RICW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Richland Center',
    43.3347,
    -90.3867
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RICW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6581252,
    'TLKM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Dundee 3NE - Talcot Lk',
    43.8847,
    -95.4311
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLKM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WEOT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Oso Creek at Merrett Road',
    27.72861,
    -97.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WEOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CWAN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Catawba River at Cowans Ford Dam',
    35.44055,
    -80.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWAN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'JYNT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Pine Island Bayou near Bevil Oaks',
    30.13555,
    -94.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JYNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GLDW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Dry Fork River at Gladwin',
    39.0,
    -79.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLDW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PIDO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Stillwater Creek at Piedmont Dam Pool',
    40.18638,
    -81.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PIDO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'POBM8',
    NULL,
    'NWRFC',
    'MT',
    NULL,
    'North Fork Flathead River at Polebridge',
    48.79638,
    -114.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'POBM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ESSM8',
    NULL,
    'NWRFC',
    'MT',
    NULL,
    'Middle Fork Flathead River near Essex',
    48.27111,
    -113.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESSM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CFVK1',
    NULL,
    'ABRFC',
    'KS',
    NULL,
    'Verdigris River at Coffeyville',
    37.05083,
    -95.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CFVK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947020242,
    'CHDW1',
    NULL,
    'NWRFC',
    'WA',
    '17020009',
    'LAKE CHELAN AT CHELAN  WA',
    47.83639,
    -120.06028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21411625,
    'NW063',
    '09522400',
    'CBRFC',
    'AZ',
    '15030107',
    'MITTRY LAKE DIVERSION AT IMPERIAL DAM  AZ',
    32.8794873,
    -114.461059
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW063'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8450128,
    'NW420',
    '01642438',
    'MARFC',
    'MD',
    '2070009',
    'LINGANORE CREEK NEAR LIBERTYTOWN  MD',
    39.441,
    -77.26963889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW420'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7373061,
    'STZM7',
    '06919000',
    'MBRFC',
    'MO',
    '10290106',
    'Sac River near Stockton  MO',
    37.70105,
    -93.75678
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STZM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCFO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Willamette River at Canby Ferry near Canby',
    45.28805,
    -122.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCFO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LONO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Coast Fork Willamette River at Willamette',
    43.64388,
    -123.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LONO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLAO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'South Yamhill River near Willamina',
    45.03388,
    -123.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CYIC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Coyote Creek  Percolation Pond',
    37.23722,
    -121.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GALO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Gales Creek near Forest Grove',
    45.54222,
    -123.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GALO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DCHO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Dairy Creek at Hwy 8 near Hillsboro',
    45.52527,
    -123.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCHO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ACRO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Abernethy Creek near Redland',
    45.32194,
    -122.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RSPW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Baraboo River at Rock Springs',
    43.47444,
    -89.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSPW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7733091,
    'NW231',
    '01212500',
    'NERFC',
    'CT',
    '1100006',
    'BYRAM RIVER AT PEMBERWICK  CT',
    41.0272972,
    -73.66175
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW231'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6607956,
    'GJTI4',
    '05483210',
    'NCRFC',
    'IA',
    NULL,
    'Grand Junction 3W',
    42.0181,
    -94.2944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GJTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23780805,
    'LSMO3',
    '14182500',
    'NWRFC',
    'OR',
    '17090005',
    'LITTLE NORTH SANTIAM RIVER NEAR MEHAMA  OR',
    44.79638,
    -122.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22337781,
    'WATD2',
    '01651800',
    'MARFC',
    'DC',
    '2070010',
    'WATTS BRANCH AT WASHINGTON  DC',
    38.915,
    -76.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WATD2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RCKI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Mississippi River at Rock Island',
    41.52527,
    -90.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCKI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SLDW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Conconully Lake at Salmon Lake Dam at Conconully',
    48.55916,
    -119.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MRBI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Shell Rock River (Northeast IA) at IFC--Marble Roc',
    42.94888,
    -92.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18046514,
    'LOGM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Tallahatchie River at Locopolis',
    33.98277,
    -90.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOGM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MINW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Knapps Creek at Minnehaha',
    38.1525,
    -79.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MINW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PINW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Guyandotte River at Pineville',
    37.57611,
    -81.54222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PINW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ORMW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Island Creek near OMAR',
    37.77944,
    -81.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ORMW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SLSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Atchafalaya River at Bayou Sorrel Landside',
    30.11861,
    -91.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SLSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PALL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Intracoastal Waterway at Port Allen Lock',
    30.42361,
    -91.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PALL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UGRL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Upper Grand River near Plaquemine',
    30.22027,
    -91.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UGRL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14062259,
    'ARLT1',
    '07030240',
    'LMRFC',
    'TN',
    '8010209',
    'LOOSAHATCHIE RIVER NEAR ARLINGTON  TN',
    35.305,
    -89.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARLT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'KILL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tickfaw River near Killian',
    30.37277,
    -90.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KILL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TRCL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Tchefuncte River near Three Rivers at Covington',
    30.44055,
    -90.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLEL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Pearl River at Lock #3 Chamber',
    30.64388,
    -89.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLEL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EPPL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Pearl River at U.S. Highway 90 near Pearlington MS',
    30.23722,
    -89.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EPPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24126167,
    'KEEW1',
    '12474500',
    'NWRFC',
    'WA',
    '17030001',
    'YAKIMA RIVER NEAR MARTIN  WA',
    47.32194,
    -121.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KEEW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23977884,
    'SBKW1',
    '12113346',
    'NWRFC',
    'WA',
    '17110013',
    'SPRINGBROOK CREEK AT ORILLIA  WA',
    47.43139,
    -122.22639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBKW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELLW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Middle Fork Tygart Valley River at Ellamore',
    38.93194,
    -80.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELLW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23773393,
    'NW349',
    '14158790',
    'NWRFC',
    'OR',
    '17090004',
    'SMITH RIVER ABV SMITH R RESV NR BELKNAP SPRNGS OR',
    44.3345666,
    -122.0470074
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW349'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23774369,
    'NW351',
    '14164700',
    'NWRFC',
    'OR',
    '17090004',
    'CEDAR CREEK AT SPRINGFIELD  OR',
    44.059348,
    -122.9196644
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW351'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2235919,
    'FWBF1',
    '02323590',
    'SERFC',
    'FL',
    '3110205',
    'SUWANNEE RIVER AT FOWLERS BLUFF',
    29.38972,
    -83.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FWBF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HAVM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Milk River at Fresno Reservoir near Havre',
    48.61,
    -109.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAVM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LTCW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Green River (WA) above Twin Camp',
    47.16944,
    -121.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LTCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7972453,
    'GRIC1',
    '11407150',
    'CNRFC',
    'CA',
    '18020106',
    'FEATHER R NR GRIDLEY CA',
    39.37277,
    -121.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3505817,
    'SGDU1',
    '10205000',
    'CBRFC',
    'UT',
    '16030003',
    'SEVIER RIVER NEAR SIGURD  UT',
    38.88111,
    -111.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SGDU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLSC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Moulton Weir',
    39.33888,
    -122.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23815128,
    'NW303',
    '14211499',
    'NWRFC',
    'OR',
    '17090012',
    'KELLEY CREEK AT SE 159TH DRIVE AT PORTLAND  OR',
    45.4767869,
    -122.4984239
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW303'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293784,
    'NW323',
    '12323840',
    'NWRFC',
    'MT',
    '17010201',
    'Lost Creek near Anaconda MT',
    46.161325,
    -112.8937972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW323'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10814786,
    'MYSU1',
    '10191500',
    'CBRFC',
    'UT',
    '16030003',
    'SEVIER RIVER BELOW PIUTE DAM  NEAR MARYSVALE  UT',
    38.32194,
    -112.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MYSU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLAC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Colusa Weir',
    39.23722,
    -121.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10319918,
    'ARNF1',
    '02327033',
    'SERFC',
    'FL',
    '3120001',
    'LOST CREEK AT ARRAN FLA',
    30.18638,
    -84.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARNF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TISC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Tisdale Weir',
    39.01694,
    -121.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TISC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FMWC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Fremont Weir',
    38.7625,
    -121.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FMWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SACC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at I Street Bridge',
    38.59305,
    -121.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SACC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RVBC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Sacramento River at Rio Vista Bridge',
    38.1525,
    -121.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1670127,
    'SHEC1',
    '11456000',
    'CNRFC',
    'CA',
    '18050002',
    'NAPA R NR ST HELENA CA',
    38.51139,
    -122.45472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18182257,
    'WYNM6',
    '02477500',
    'LMRFC',
    'MS',
    '3170002',
    'CHICKASAWHAY RIVER NR WAYNESBORO  MS',
    31.68239,
    -88.68347
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WYNM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17508398,
    'HENN1',
    '06674500',
    'MBRFC',
    'NE',
    '10180009',
    'NORTH PLATTE RIVER AT WYOMING-NEBRASKA STATE LINE',
    41.98861,
    -104.05278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HENN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16875644,
    'FTHF1',
    NULL,
    'SERFC',
    'FL',
    '3100202',
    'MANATEE RIVER AT FORT HAMER FL',
    27.52527,
    -82.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTHF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21476322,
    'CCCF1',
    '02264003',
    'SERFC',
    'FL',
    '3090101',
    'CYPRESS CREEK CANAL AT S-103A NEAR VINELAND  FL',
    28.38917,
    -81.52528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCCF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7069401,
    'SRBM5',
    '05085430',
    'NCRFC',
    'MN',
    NULL,
    'Radium 2WNW - Retention Pond',
    48.24194,
    -96.55694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRBM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BEVW2',
    '390707081443202',
    'OHRFC',
    'WV',
    NULL,
    'OHIO RIVER AT BELLEVILLE DAM W. VA.',
    39.119017,
    -81.737869
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEVW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4841848,
    'SDYM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Libby - Sandy Lake Dam',
    46.7889,
    -93.3194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SDYM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17309846,
    'CLMN1',
    '06794500',
    'MBRFC',
    'NE',
    '10210009',
    'Loup River at Columbus',
    41.42361,
    -97.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLMN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4841688,
    'PLSM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Palisade',
    46.7347,
    -93.485
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SAKW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Milwaukee River at Saukville',
    43.37277,
    -87.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAKW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BGBW4',
    NULL,
    'MBRFC',
    'WY',
    NULL,
    'Big Goose Creek near Story',
    44.59305,
    -107.20333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16916762,
    'LFRF1',
    '02307323',
    'SERFC',
    'FL',
    '3100206',
    'BROOKER CREEK NEAR LAKE FERN FL',
    28.13555,
    -82.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFRF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6658151,
    'FOXM5',
    '05046250',
    'NCRFC',
    'MN',
    NULL,
    'Foxhome 4S',
    46.2136,
    -96.3069
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOXM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7184606,
    'SRAM8',
    '06205000',
    'MBRFC',
    'MT',
    '10070005',
    'Stillwater River near Absarokee MT',
    45.53674,
    -109.42206
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRAM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1306945,
    'EAMT2',
    NULL,
    'WGRFC',
    'TX',
    '12030101',
    'Eagle Mtn Res abv Ft Worth  TX',
    32.87425,
    -97.46089
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EAMT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23022044,
    'BLUW1',
    '12433542',
    'NWRFC',
    'WA',
    '17010307',
    'BLUE CR AB MIDNITE MINE DRAINAGE NR WELLPINIT  WA',
    47.9243282,
    -118.0894203
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLUW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9202603,
    'RDCN7',
    '0212430293',
    'SERFC',
    'NC',
    '3040105',
    'REEDY CREEK BELOW I-485 NR PINE RIDGE  NC',
    35.25416,
    -80.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDCN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14222341,
    'WLNM6',
    '07029270',
    'LMRFC',
    'MS',
    '8010207',
    'HATCHIE RIVER NR WALNUT  MS',
    34.94167,
    -88.7875
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLNM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15633989,
    'HOLO1',
    '04193999',
    'OHRFC',
    'OH',
    '4100009',
    'Wolf Creek at Holland OH',
    41.60944,
    -83.68417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10834924,
    'LSLT2',
    '08180945',
    'WGRFC',
    'TX',
    '12100302',
    'Leon Ck at Scenic Loop Rd nr Leon Springs  TX',
    29.67777,
    -98.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9903653,
    'SBNG1',
    '022261794',
    'SERFC',
    'GA',
    '3070203',
    'BRUNSWICK RIVER AT BRUNSWICK  GA',
    31.11861,
    -81.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SBNG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8777415,
    'NW429',
    NULL,
    'SERFC',
    'NC',
    '3020201',
    'FLAT RIVER TRIB NR WILLARDVILLE  NC',
    36.13194444,
    -78.8333333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW429'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12038177,
    'NW435',
    NULL,
    'SERFC',
    'SC',
    '3050105',
    'GILKEY CREEK NEAR WILKINSVILLE  SC',
    34.96485285,
    -81.5575949
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW435'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8446278,
    'NW419',
    NULL,
    'MARFC',
    'VA',
    '2070007',
    'MANASSAS RUN AT RT 645 NEAR FRONT ROYAL  VA',
    38.93416667,
    -78.1280556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW419'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PLAL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at Lakefront Airport',
    30.05083,
    -90.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLAL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 166758629,
    'WTMF1',
    '02319300',
    'SERFC',
    'FL',
    '3110203',
    'WITHLACOOCHEE RIVER NR MADISON FLA',
    30.47444,
    -83.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WTMF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4085694,
    'MLDM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Louisburg - Marsh Lake Dam',
    45.17139,
    -96.09333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12517334,
    'PLRM8',
    '06181000',
    'MBRFC',
    'MT',
    '10060003',
    'Poplar River near Poplar MT',
    48.11792,
    -105.19282
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22725757,
    'FORG1',
    NULL,
    'SERFC',
    'GA',
    '3060106',
    'BUTLER CREEK RESERVOIR AT FORT GORDON  GA',
    33.42361,
    -82.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FORG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6496136,
    'BGDG1',
    '02390475',
    'SERFC',
    'GA',
    '3150104',
    'LONG SWAMP CREEK AT REAVIS MTN RD  NR NELSON  GA',
    34.37277,
    -84.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BGDG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20107219,
    'EBAG1',
    '02199000',
    'SERFC',
    'GA',
    '3060109',
    'SOUTH CHANNEL (SAVANNAH RIVER) NEAR SAVANNAH  GA',
    32.06777,
    -81.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EBAG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19735951,
    'CARN7',
    '03500240',
    'LMRFC',
    'NC',
    '6010202',
    'CARTOOGECHAYE CREEK NEAR FRANKLIN  NC',
    35.15777,
    -83.42437
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CARN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7732311,
    'NW229',
    '01209761',
    'NERFC',
    'CT',
    '1100006',
    'FIVEMILE RIVER NEAR NEW CANAAN  CT',
    41.1743222,
    -73.51107778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW229'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947110178,
    'NW295',
    '12143700',
    'NWRFC',
    'WA',
    '17110010',
    'BOXLEY CREEK NEAR CEDAR FALLS  WA',
    47.43260287,
    -121.7523308
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW295'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3917058,
    'YREC1',
    '11517500',
    'CNRFC',
    'CA',
    '18010207',
    'SHASTA R NR YREKA CA',
    41.82306,
    -122.59444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YREC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LAIP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Little Muncy Creek at Lairdsville',
    41.22027,
    -76.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LAIP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24166358,
    'EMMI1',
    '13249500',
    'NWRFC',
    'ID',
    '17050122',
    'PAYETTE RIVER NR EMMETT ID',
    43.93194,
    -116.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EMMI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3021550,
    'TMHM8',
    '06063000',
    'MBRFC',
    'MT',
    '10030101',
    'Tenmile Creek near Helena MT',
    46.60501,
    -112.08826
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TMHM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24254981,
    'CSCW1',
    '12182500',
    'NWRFC',
    'WA',
    '17110005',
    'CASCADE RIVER AT MARBLEMOUNT  WA',
    48.52639,
    -121.41417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12375905,
    'JDRM8',
    '06114700',
    'MBRFC',
    'MT',
    '10040103',
    'Judith River nr mouth  nr Winifred MT',
    47.66516,
    -109.65201
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JDRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RLBP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lycoming Creek at Ralston',
    41.50833,
    -76.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RLBP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19918022,
    'GREL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Red River at Grand Ecore',
    31.83027,
    -93.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GREL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ODAK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'South Fork Kentucky River at Oneida',
    37.27111,
    -83.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ODAK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12007785,
    'GREW3',
    NULL,
    'NCRFC',
    'WI',
    '4030204',
    'EAST RIVER AT MONROE STREET AT GREEN BAY  WI',
    44.5172147,
    -88.0067706
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GREW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9032957,
    'WITW3',
    NULL,
    'NCRFC',
    'WI',
    '4030202',
    'MIDDLE BRANCH EMBARRASS RIVER NEAR WITTENBERG  WI',
    44.8252512,
    -89.1181668
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WITW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13293430,
    'WDRW3',
    '05427718',
    'NCRFC',
    'WI',
    '7090001',
    'YAHARA RIVER AT WINDSOR  WI',
    43.20888889,
    -89.3525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDRW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8933152,
    'LDDC1',
    '10341950',
    'CNRFC',
    'CA',
    '16050102',
    'LITTLE TRUCKEE R BL DIV DAM NR SIERRAVILLE CA',
    39.49138,
    -120.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LDDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14567692,
    'MDAN8',
    '06336000',
    'MBRFC',
    'ND',
    '10110203',
    'LITTLE MISSOURI RIVER AT MEDORA  ND',
    46.91807,
    -103.53034
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MDAN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14469195,
    'WTFN8',
    '06337000',
    'MBRFC',
    'ND',
    '10110205',
    'LITTLE MISSOURI RIVER NR WATFORD CITY  ND',
    47.59544,
    -103.26337
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WTFN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ELCM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Sun River below Elk Creek near Augusta',
    47.50833,
    -112.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ELCM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CHEI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Iowa River at Chelsea',
    41.915,
    -92.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHEI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2629936,
    'SANM5',
    '05336700',
    'NCRFC',
    'MN',
    '7030003',
    'KETTLE RIVER BELOW SANDSTONE  MN',
    46.10556,
    -92.86389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SANM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24534748,
    'NW299',
    '12202300',
    'NWRFC',
    'WA',
    '17110002',
    'OLSEN CREEK NEAR BELLINGHAM  WA',
    48.7512221,
    -122.3534976
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW299'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1090007027,
    'SHWN8',
    '05114000',
    'NCRFC',
    'ND',
    '9010008',
    'SOURIS RIVER NR SHERWOOD  ND',
    48.99,
    -101.95778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHWN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'NRMT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Duck River at Normandy Dam',
    35.4575,
    -86.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NRMT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ANFI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Fourmile Creek (Central IA) at IFC--Ankeny NE 47th',
    41.77944,
    -93.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANFI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4315464,
    'PBRM8',
    '06027600',
    'MBRFC',
    'MT',
    '10020005',
    'Jefferson River at Parsons Bdg nr Silver Star  MT',
    45.7475,
    -112.18723
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PBRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12644287,
    'SHLM8',
    '06099500',
    'MBRFC',
    'MT',
    '10030203',
    'Marias River near Shelby MT',
    48.4272,
    -111.88984
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHLM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17415854,
    'ASLN1',
    '06801000',
    'MBRFC',
    'NE',
    '10200202',
    'Platte River near Ashland  Nebr.',
    41.06222,
    -96.32472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASLN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6421210,
    'TMSG1',
    '02346180',
    'SERFC',
    'GA',
    NULL,
    'Flint River near Thomaston',
    32.83889,
    -84.42417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TMSG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BAXK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Cumberland River above Baxter',
    36.86416,
    -83.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BAXK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RECW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Entiat River at Tomie Bridge',
    47.96583,
    -120.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RECW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CWWA3',
    NULL,
    'CBRFC',
    'AZ',
    NULL,
    'Centennial Wash near Wenden',
    33.83027,
    -113.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWWA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17286493,
    'NLIN1',
    '06798500',
    'MBRFC',
    'NE',
    NULL,
    'Elkhorn River at Neligh',
    42.11861,
    -98.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NLIN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MVHC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Mojave River at Helendale',
    34.74555,
    -117.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MVHC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLTA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Coosa River at Lay Dam',
    32.96583,
    -86.52527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLTA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2066534,
    'VDSG1',
    '023177483',
    'SERFC',
    'GA',
    '3110203',
    'WITHLACOOCHEE RIVER AT MCMILLAN RD NEAR BEMISS  GA',
    30.94917,
    -83.27167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VDSG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPLL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at City Park South Lagoon near',
    29.99972,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPLL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8306880,
    'NW509',
    '11472160',
    'CNRFC',
    'CA',
    '18010103',
    'WILLITS C AB LK EMILY NR WILLITS CA',
    39.449329,
    -123.3980667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW509'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BVCK2',
    NULL,
    'OHRFC',
    'KY',
    NULL,
    'Beaver Creek (KY) at Martin',
    37.57611,
    -82.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BVCK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14523345,
    'BBCN8',
    '06342450',
    'MBRFC',
    'ND',
    '10130101',
    'BURNT CREEK NR BISMARCK  ND',
    46.915,
    -100.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BBCN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16224323,
    'CRSN8',
    '06347000',
    'MBRFC',
    'ND',
    '10130203',
    'ANTELOPE CREEK NR CARSON  ND',
    46.54528,
    -101.645
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRSN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WELW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Ohio River at Wellsburg',
    40.27111,
    -80.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WELW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CPWL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Lake Pontchartrain at City Park West lagoon near L',
    30.0,
    -90.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPWL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14787485,
    'ROMI2',
    '05536995',
    'NCRFC',
    'IL',
    '7120004',
    'CHICAGO SANITARY AND SHIP CANAL AT ROMEOVILLE  IL',
    41.64388,
    -88.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROMI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WANW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Columbia River at Wanapum Dam',
    46.88111,
    -119.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WANW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VIOW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Kickapoo River at Viola',
    43.50833,
    -90.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VIOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6860618,
    'CCRM4',
    '04059754',
    'NCRFC',
    'MI',
    NULL,
    'Cedar River 2N',
    45.4383,
    -87.36
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WATP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'West Branch Susquehanna River at Watsontown',
    41.06777,
    -76.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WATP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13174033,
    'KTLM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'New Hudson 3W - Kent Lk',
    42.5125,
    -83.6761
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KTLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'COBI4',
    NULL,
    'MBRFC',
    'IA',
    NULL,
    'East Nishnabotna River near Coburg',
    40.915,
    -95.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COBI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 938020696,
    'LONA4',
    '07264000',
    'LMRFC',
    'AR',
    '8020402',
    'Bayou Meto near Lonoke  AR',
    34.73667,
    -91.91583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LONA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LGDW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Snake River (WA) at Lower Granite',
    46.66083,
    -117.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRLI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Mississippi River at Burlington',
    40.79638,
    -91.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRLI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FOLA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Pea River at Folsom Bridge (SR 167)',
    31.47444,
    -85.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FOLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OKTM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Okatibbee Creek at Okatibbee Creek/Hwy 80',
    32.35583,
    -88.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OKTM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18375594,
    'SMPC2',
    '09172500',
    'CBRFC',
    'CO',
    '14030003',
    'SAN MIGUEL RIVER NEAR PLACERVILLE  CO',
    38.03071,
    -108.11029
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMPC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17013793,
    'ANBC2',
    '09359020',
    'CBRFC',
    'CO',
    '14080104',
    'ANIMAS RIVER BELOW SILVERTON  CO',
    37.78833,
    -107.66822
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANBC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17014207,
    'ATTC2',
    '09359500',
    'CBRFC',
    'CO',
    '14080104',
    'ANIMAS RIVER AT TALL TIMBER RESORT ABOVE TACOMA CO',
    37.59742,
    -107.77697
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ATTC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9773517,
    'TMCC2',
    '09115500',
    'CBRFC',
    'CO',
    '14020003',
    'TOMICHI CREEK AT SARGENTS  CO',
    38.39503,
    -106.42263
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TMCC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FVLP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Loyalsock Creek at Forksville',
    41.49138,
    -76.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FVLP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VRBA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Coosa River at Mitchell Dam',
    32.81333,
    -86.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VRBA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CKDT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Tennessee River at Chickamauga Dam',
    35.10166,
    -85.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CKDT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FEDV2',
    NULL,
    'MARFC',
    'VA',
    NULL,
    'Rappahannock River at Fredericksburg',
    38.28805,
    -77.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FEDV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'COGL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Bayou Macon near Como',
    32.08472,
    -91.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COGL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PCRO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Paint Creek at Paint Creek lake Pool',
    39.25416,
    -83.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4819627,
    'FEDM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Leech Lake Dam',
    47.2467,
    -94.2228
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FEDM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6331754,
    'ACYG1',
    '02208450',
    'SERFC',
    'GA',
    '3070103',
    'ALCOVY RIVER ABOVE COVINGTON  GA',
    33.64,
    -83.77917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACYG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24255181,
    'GORW1',
    '12178000',
    'NWRFC',
    'WA',
    '17110005',
    'SKAGIT RIVER AT NEWHALEM  WA',
    48.67194,
    -121.245
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GORW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GRAK2',
    '03216300',
    'OHRFC',
    'KY',
    NULL,
    'Little Sandy River at Grayson Lake (Lake Level)',
    38.2525,
    -82.985556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRAK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2044799,
    'SWAG1',
    '02334578',
    'SERFC',
    'GA',
    '3130001',
    'LEVEL CREEK AT SUWANEE DAM ROAD  NEAR SUWANEE  GA',
    34.09639,
    -84.07806
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWAG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AUTM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Au Train River near Au Train',
    46.40666,
    -86.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AUTM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24084452,
    'BTYO3',
    '11497500',
    'CNRFC',
    'OR',
    '18010202',
    'SPRAGUE RIVER NEAR BEATTY  OR',
    42.44055,
    -121.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTYO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRPI3',
    NULL,
    'OHRFC',
    'IN',
    NULL,
    'White River (IN) at Rocky Ripple',
    39.86416,
    -86.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRPI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCLN6',
    NULL,
    'MARFC',
    'NY',
    NULL,
    'Meads Creek near Coopers Plains',
    42.18638,
    -77.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCLN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'AGCW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Asotin Creek above George Creek',
    46.32194,
    -117.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSPN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Raquette River at Massena Springs',
    44.915,
    -74.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSPN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLAS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Big Sioux River at Flandreau',
    44.05083,
    -96.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLAS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HAGT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Arroyo Colorado at Harlingen',
    26.16944,
    -97.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAGT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'IBRN7',
    NULL,
    'SERFC',
    'NC',
    NULL,
    'Briar Creek at Independence Blvd',
    35.20333,
    -80.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'IBRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ETNM4',
    NULL,
    'NCRFC',
    'MI',
    NULL,
    'Grand River at Eaton Rapids',
    42.50833,
    -84.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ETNM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MTWW2',
    NULL,
    'OHRFC',
    'WV',
    NULL,
    'Tug Fork River at Matewan',
    37.62694,
    -82.16944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTWW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FTCN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Salmon River at Fort Covington',
    44.99972,
    -74.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTCN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'HGBN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'St. Regis River at Hogansburg',
    44.98277,
    -74.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HGBN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WLVO1',
    NULL,
    'OHRFC',
    'OH',
    NULL,
    'Ohio River at Wellsville',
    40.61,
    -80.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLVO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RHIW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Wisconsin River above Rhinelander',
    45.64388,
    -89.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RHIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17533759,
    'PACS2',
    NULL,
    'MBRFC',
    'SD',
    NULL,
    'Rapid Creek at Pactola Reservoir',
    44.06777,
    -103.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PACS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1827564,
    'JSBK2',
    '03284552',
    'OHRFC',
    'KY',
    '5100205',
    'WEST HICKMAN CR AT VETERANS PARK NR LEXINGTON  KY',
    37.96583,
    -84.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JSBK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 281390,
    'PRDT2',
    '08374200',
    'WGRFC',
    'TX',
    '13040203',
    'Rio Grande bl Rio Conchos nr Presidio  TX',
    29.52527,
    -104.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20635126,
    'PREN2',
    '09415510',
    'CBRFC',
    'NV',
    '15010011',
    'PRESTON BIG SPRG NR PRESTON  NV',
    38.93333,
    -115.08
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PREN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16802977,
    'NW439',
    '02295013',
    'SERFC',
    'FL',
    '3100101',
    'BOWLEGS CREEK NEAR FORT MEADE FL',
    27.70003166,
    -81.6953579
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW439'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15034761,
    'CIBC1',
    '11452600',
    'CNRFC',
    'CA',
    '18020109',
    'CACHE C INFLOW TO SETTLING BASIN NR YOLO CA',
    38.72861,
    -121.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CIBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CDAW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Salmon Creek at Conconully Reservoir',
    48.32194,
    -119.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CDAW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16770070,
    'PRDF1',
    '255732081363700',
    'SERFC',
    'FL',
    '3090204',
    'PALM RIVER NEAR GOODLAND  FL',
    25.96583,
    -81.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRDF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PHLO3',
    NULL,
    'NWRFC',
    'OR',
    NULL,
    'Powder River (OR) below Mason Dam',
    44.67777,
    -117.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PHLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18445356,
    'FCLI3',
    '03373686',
    'OHRFC',
    'IN',
    '5120208',
    'FRENCH LICK CREEK AT FRENCH LICK  IN',
    38.54222,
    -86.61
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FCLI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8118867,
    'AVCN6',
    '01527500',
    'MARFC',
    'NY',
    '2050105',
    'COHOCTON RIVER AT AVOCA NY',
    42.41106,
    -77.42636
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AVCN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ESLN8',
    '05056665',
    'NCRFC',
    'ND',
    NULL,
    'Lakota 11S',
    47.868611,
    -98.3575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESLN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21633883,
    'ALLN6',
    '04232050',
    'NERFC',
    'NY',
    '4140101',
    'ALLEN CREEK NEAR ROCHESTER NY',
    43.12803,
    -77.527
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALLN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7083758,
    'HLLM5',
    '05095000',
    'NCRFC',
    'MN',
    '9020312',
    'TWO RIVERS AT HALLOCK  MN',
    48.7749817,
    -96.9314462
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HLLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13047433,
    'NBRM4',
    '04153500',
    'NCRFC',
    'MI',
    '4080201',
    'SALT RIVER NEAR NORTH BRADLEY  MI',
    43.7030836,
    -84.4711157
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NBRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731498,
    'AWRN7',
    '02146330',
    'SERFC',
    'NC',
    '3050103',
    'SUGAR CREEK AT ARROWOOD ROAD NEAR CHARLOTTE  NC',
    35.13555,
    -80.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AWRN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9496622,
    'PECN6',
    '01304500',
    'NERFC',
    'NY',
    '2030202',
    'PECONIC RIVER AT RIVERHEAD NY',
    40.91361,
    -72.68667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PECN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8914771,
    'EBSN2',
    '10293050',
    'CNRFC',
    'NV',
    '16050301',
    'E WALKER RV BLW SWEETWATER CK NR BRIDGEPORT  CA',
    38.44055,
    -119.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EBSN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11689272,
    'ERDM2',
    '01589035',
    'MARFC',
    'MD',
    '2060003',
    'PATAPSCO RIVER NEAR ELKRIDGE  MD',
    39.22027,
    -76.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ERDM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15594653,
    'BRRO1',
    '04201500',
    'OHRFC',
    'OH',
    '4110001',
    'Rocky River near Berea OH',
    41.4075,
    -81.88278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRRO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'UCAN6',
    NULL,
    'NERFC',
    'NY',
    '2020004',
    'MOHAWK RIVER NEAR UTICA NY',
    43.10166,
    -75.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UCAN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 918765,
    'SALC2',
    '07091500',
    'ABRFC',
    'CO',
    '11020001',
    'ARKANSAS RIVER AT SALIDA  CO.',
    38.54222,
    -106.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SALC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24355989,
    'NW515',
    '12387450',
    'NWRFC',
    'MT',
    '17010212',
    'Valley Creek near Arlee MT',
    47.1702972,
    -114.2307944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW515'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21872287,
    'NW475',
    '06329597',
    'MBRFC',
    'ND',
    '10100004',
    'CHARBONNEAU CREEK NR CHARBONNEAU  ND',
    47.85085328,
    -103.7940907
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW475'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BMMI2',
    NULL,
    'NCRFC',
    'IL',
    NULL,
    'Big Muddy River above Mount Vernon',
    38.305,
    -88.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BMMI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19944597,
    'SVPL1',
    '07348500',
    'LMRFC',
    'LA',
    '11140202',
    '(COE) Red River at Shreveport  LA',
    32.50833,
    -93.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SVPL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19945017,
    'CSHL1',
    '07350500',
    'LMRFC',
    'LA',
    '11140202',
    '(COE) Red River at Coushatta',
    32.0,
    -93.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CSHL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10189156,
    'PVLK2',
    '03402900',
    'OHRFC',
    'KY',
    '5130101',
    'CUMBERLAND R AT PINE ST BR AT PINEVILLE  KY',
    36.7625,
    -83.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PVLK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 833496,
    'INOO2',
    '07178600',
    'ABRFC',
    'OK',
    '11070105',
    'Verdigris River near Inola  OK',
    36.1525,
    -95.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'INOO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PRSL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Gulf Intracoastal Waterway at Paris Road Bridge ne',
    30.0,
    -89.94888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRSL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15650217,
    'JUNO1',
    '04191444',
    'OHRFC',
    'OH',
    '4100007',
    'Little Flatrock Creek near Junction OH',
    41.18638,
    -84.49138
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JUNO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4722109,
    'MANP1',
    '01574000',
    'MARFC',
    'PA',
    '2050306',
    'West Conewago Creek near Manchester  PA',
    40.08081,
    -76.71839
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MANP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4722221,
    'MRTP1',
    '01576000',
    'MARFC',
    'PA',
    '2050306',
    'Susquehanna River at Marietta  PA',
    40.05444,
    -76.53111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRTP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5215441,
    'BLPO1',
    '03220000',
    'OHRFC',
    'OH',
    '5060001',
    'Mill Creek near Bellepoint OH',
    40.24833,
    -83.17389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLPO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18841714,
    'MHKK1',
    '06879820',
    'MBRFC',
    'KS',
    '10270101',
    'KANSAS R AT MANHATTAN  KS',
    39.16944,
    -96.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MHKK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17906875,
    'DNRC2',
    '08220000',
    'WGRFC',
    'CO',
    '13010001',
    'RIO GRANDE NEAR DEL NORTE  CO',
    37.69472,
    -106.4575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DNRC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20081756,
    'AGAK1',
    '07146895',
    'ABRFC',
    'KS',
    '11030017',
    'WALNUT R AT AUGUSTA  KS',
    37.67777,
    -96.98277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGAK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8818319,
    'RDKN7',
    '02107544',
    'SERFC',
    'NC',
    '3030006',
    'BLACK RIVER NEAR CURRIE  NC',
    34.42361,
    -78.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDKN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5712857,
    'SNCT2',
    '08135000',
    'WGRFC',
    'TX',
    '12090104',
    'N Concho Rv at San Angelo  TX',
    31.4575,
    -100.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SNCT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14294129,
    'CHRN8',
    NULL,
    'NCRFC',
    'ND',
    NULL,
    'Churchs Ferry 1NE',
    48.2825,
    -99.1736
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHRN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11554136,
    'FRDS2',
    '06452500',
    'MBRFC',
    'SD',
    NULL,
    'Missouri River at Fort Randall Dam',
    43.06777,
    -98.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRDS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14787309,
    'JOLI2',
    '05538008',
    'NCRFC',
    'IL',
    NULL,
    'Joliet - Brandon Rd L&D 3',
    41.5033,
    -88.1028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JOLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'GCTI2',
    NULL,
    'LMRFC',
    'IL',
    NULL,
    'Ohio River at Grand Chain Lock and Dam',
    37.20333,
    -89.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCTI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4782313,
    'RDRP1',
    '01471510',
    'MARFC',
    'PA',
    '2040203',
    'Schuylkill River at Reading  PA',
    40.33164,
    -75.93867
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDRP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23713918,
    'COBO3',
    '14087380',
    'NWRFC',
    'OR',
    '17070305',
    'CROOKED RIVER BLW OSBORNE CANYON  NR OPAL CITY  OR',
    44.42361,
    -121.22027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23737123,
    'BCTO3',
    '14142800',
    'NWRFC',
    'OR',
    '17080001',
    'BEAVER CREEK AT TROUTDALE  OR',
    45.52527,
    -122.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23815106,
    'FAIO3',
    '14211814',
    'NWRFC',
    'OR',
    '17090012',
    'FAIRVIEW CREEK AT GLISAN ST NEAR GRESHAM  OR',
    45.52527,
    -122.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FAIO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23894478,
    'LCKO3',
    '14312500',
    'NWRFC',
    'OR',
    '17100301',
    'LAKE CREEK NEAR DIAMOND LAKE  OR',
    43.18638,
    -122.1525
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9869414,
    'CHPS1',
    '02166500',
    'SERFC',
    'SC',
    '3050109',
    'LAKE GREENWOOD NEAR CHAPPELLS  SC',
    34.17278,
    -81.90347
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHPS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23002228,
    'CCRI1',
    '12413125',
    'NWRFC',
    'ID',
    '17010302',
    'CANYON CREEK AB MOUTH AT WALLACE  ID',
    47.47444,
    -115.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCRI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14787569,
    'JRSI2',
    '05537980',
    'NCRFC',
    'IL',
    '7120004',
    'DES PLAINES RIVER AT ROUTE 53 AT JOLIET  IL',
    41.54222,
    -88.06777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JRSI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8076762,
    'NW414',
    '01484000',
    'MARFC',
    'DE',
    '2040207',
    'MURDERKILL RIVER NEAR FELTON  DE',
    38.97602778,
    -75.5669167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW414'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20107141,
    'HRDS1',
    '02198760',
    'SERFC',
    'SC',
    '3060109',
    'SAVANNAH RIVER ABOVE HARDEEVILLE  SC',
    32.34944,
    -81.125
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRDS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9069040,
    'LNGS1',
    '02110500',
    'SERFC',
    'SC',
    '3040206',
    'WACCAMAW RIVER NEAR LONGS  SC',
    33.9125,
    -78.71528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LNGS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'WCWI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Little Walnut Creek (Central IA) near IFC--Clive 1',
    41.62694,
    -93.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCWI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18989734,
    'GRYL1',
    NULL,
    'LMRFC',
    'LA',
    '8070202',
    'Grays Creek at Hwy 16 near Port Vincent  LA',
    30.40666,
    -90.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRYL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1392811,
    'NW057',
    '09265500',
    'CBRFC',
    'UT',
    '14060002',
    'ASHLEY CR ABV SP NR VERNAL UT',
    40.58884697,
    -109.6229194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW057'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RRLM7',
    NULL,
    'LMRFC',
    'MO',
    NULL,
    'Mississippi River above Red Rock Landing',
    37.74555,
    -89.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RRLM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3123676,
    'RSNT2',
    '08116400',
    'WGRFC',
    'TX',
    '12070104',
    'Dry Ck nr Rosenberg  TX',
    29.51167,
    -95.74667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RSNT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7053799,
    'RDLM5',
    '05078500',
    'NCRFC',
    'MN',
    '9020305',
    'CLEARWATER RIVER AT RED LAKE FALLS  MN',
    47.88621,
    -96.27658
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDLM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CWAI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Walnut Creek (Central IA) at IFC--Clive NW 128th S',
    41.61,
    -93.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWAI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4780921,
    'SPGP1',
    '01471875',
    'MARFC',
    'PA',
    '2040203',
    'Manatawny Creek near Spangsville  PA',
    40.33888,
    -75.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPGP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8922549,
    'BRYN2',
    '10308800',
    'CNRFC',
    'NV',
    '16050201',
    'BRYANT CK NR GARDNERVILLE  NV',
    38.79638,
    -119.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRYN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22995329,
    'OCMW1',
    '12397100',
    'NWRFC',
    'WA',
    '17010216',
    'OUTLET CREEK NEAR METALINE FALLS  WA',
    48.84722,
    -117.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCMW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2172289,
    'BRPF1',
    '02376500',
    'SERFC',
    'FL',
    '3140106',
    'PERDIDO RIVER AT BARRINEAU PARK  FL',
    30.69028,
    -87.44028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14837693,
    'LSLI2',
    '05556000',
    'NCRFC',
    'IL',
    NULL,
    'La Salle 1S',
    41.3233,
    -89.1142
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18422725,
    'CAFT1',
    '03419800',
    'OHRFC',
    'TN',
    '5130108',
    'CALFKILLER RIVER AT HWY 111 BELOW SPARTA  TN',
    35.9265,
    -85.46743
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAFT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23791305,
    'NEBO3',
    '14197900',
    'NWRFC',
    'OR',
    '17090007',
    'WILLAMETTE RIVER AT NEWBERG  OR',
    45.28805,
    -122.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NEBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BEAT2',
    NULL,
    'WGRFC',
    'TX',
    NULL,
    'Neches River at Beaumont',
    30.11861,
    -94.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BEAT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2454518,
    'ANOW3',
    '05382284',
    'NCRFC',
    'WI',
    '7040006',
    'SILVER CREEK AT STATE HIGHWAY 21 NEAR ANGELO  WI',
    43.9672222,
    -90.765
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ANOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12901126,
    'CROW4',
    '06225500',
    'MBRFC',
    'WY',
    '10080001',
    'WIND RIVER NEAR CROWHEART  WY',
    43.23722,
    -109.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CROW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1854633,
    'TGOW3',
    '05332500',
    'NCRFC',
    'WI',
    '7030002',
    'NAMEKAGON RIVER NEAR TREGO  WI',
    45.9480012,
    -91.888235
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TGOW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10388500,
    'NW068',
    '10167170',
    'CBRFC',
    'UT',
    '16020204',
    'BUTTERFIELD CREEK NEAR LARK  UTAH',
    40.50777778,
    -112.1075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW068'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'TYGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River near Tyronza',
    35.50833,
    -90.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TYGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RFGA4',
    NULL,
    'LMRFC',
    'AR',
    NULL,
    'St. Francis River at Riverfront',
    35.25416,
    -90.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RFGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2613340,
    'NW409',
    '01422738',
    'MARFC',
    'NY',
    '2040101',
    'WOLF CREEK AT MUNDALE NY',
    42.25944444,
    -75.0419444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW409'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10742454,
    'DCWN2',
    '10299100',
    'CNRFC',
    'NV',
    '16050302',
    'DESERT CK NR WELLINGTON  NV',
    38.64388,
    -119.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCWN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'PXNP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Paxton Creek at Cameron',
    40.27111,
    -76.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PXNP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13359262,
    'GLAI2',
    '05416000',
    'NCRFC',
    'IL',
    '7060005',
    'GALENA RIVER AT GALENA  IL',
    42.41055556,
    -90.4308333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLAI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24125193,
    'UMTW1',
    '12484500',
    'NWRFC',
    'WA',
    '17030001',
    'YAKIMA RIVER AT UMTANUM  WA',
    46.86278,
    -120.47889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UMTW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOIW3',
    NULL,
    'NCRFC',
    'WI',
    NULL,
    'Turtle Creek at Beloit',
    42.49138,
    -89.01694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13175549,
    'FLRM4',
    '04175100',
    'NCRFC',
    'MI',
    NULL,
    'Flatrock',
    42.0939,
    -83.2953
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7068915,
    'ALVM5',
    '05086000',
    'NCRFC',
    'MN',
    NULL,
    'Alvarado',
    48.1947,
    -97.0056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALVM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12121802,
    'LMSM4',
    '04126500',
    'NCRFC',
    'MI',
    NULL,
    'Stronach 1ESE',
    44.21,
    -86.245
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LMSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13325582,
    'DLDI4',
    '05414700',
    'NCRFC',
    'IA',
    NULL,
    'Dubuque L&D 11',
    42.5406,
    -90.6458
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLDI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23800604,
    'PUWO3',
    '14201340',
    'NWRFC',
    'OR',
    '17090009',
    'PUDDING RIVER NEAR WOODBURN  OR',
    45.1525,
    -122.81333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PUWO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23239256,
    'MACI1',
    '13126000',
    'NWRFC',
    'ID',
    '17040218',
    'MACKAY RES NR MACKAY ID',
    43.96583,
    -113.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MACI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9731476,
    'STEN7',
    '0214627970',
    'SERFC',
    'NC',
    '3050103',
    'STEWART CREEK AT STATE ST AT CHARLOTTE  NC',
    35.23722,
    -80.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'STEN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17562626,
    'CLLC1',
    '11106550',
    'CNRFC',
    'CA',
    '18070103',
    'CALLEGUAS C NR CAMARILLO CA',
    34.16944,
    -119.03388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2827158,
    'ORSC1',
    '11274538',
    'CNRFC',
    'CA',
    '18040002',
    'ORESTIMBA CR AT RIVER RD NR CROWS LANDING CA',
    37.40666,
    -121.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ORSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17082195,
    'LEDC1',
    '11277100',
    'CNRFC',
    'CA',
    '18040009',
    'LK ELEANOR DIV TO CHERRY LAKE NR HETCH HETCHY CA',
    37.98277,
    -119.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23997160,
    'EAMW1',
    '12044900',
    'NWRFC',
    'WA',
    '17110020',
    'ELWHA RIVER ABOVE LAKE MILLS NR PORT ANGELES  WA',
    47.98277,
    -123.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EAMW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23195742,
    'HAGI1',
    '13108150',
    'NWRFC',
    'ID',
    '17040213',
    'SALMON FALLS CREEK NR HAGERMAN ID',
    42.69472,
    -114.86416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAGI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5329621,
    'LTSC1',
    '11460400',
    'CNRFC',
    'CA',
    '18050005',
    'LAGUNITAS C A SAMUEL P TAYLOR STATE PARK CA',
    38.01694,
    -122.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LTSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23251191,
    'HALI1',
    '13139510',
    'NWRFC',
    'ID',
    '17040219',
    'BIG WOOD RIVER AT HAILEY ID TOTAL FLOW',
    43.52527,
    -114.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HALI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23791015,
    'OCUO3',
    '14207740',
    'NWRFC',
    'OR',
    '17090007',
    'WILLAMETTE RIVER ABOVE FALLS  AT OREGON CITY  OR',
    45.33888,
    -122.62694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OCUO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23796555,
    'NYFO3',
    '14194300',
    'NWRFC',
    'OR',
    '17090008',
    'NORTH YAMHILL RIVER NEAR FAIRDALE  OR',
    45.35583,
    -123.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NYFO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23800674,
    'DCSO3',
    '14200100',
    'NWRFC',
    'OR',
    '17090009',
    'DRIFT CREEK NEAR SILVERTON  OR',
    44.98277,
    -122.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCSO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23804876,
    'FRMO3',
    '14206500',
    'NWRFC',
    'OR',
    '17090010',
    'TUALATIN RIVER AT FARMINGTON OREG.',
    45.44055,
    -122.96583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23880730,
    'YRCO3',
    '14306030',
    'NWRFC',
    'OR',
    '17100204',
    'YAQUINA RIVER NEAR CHITWOOD OREG.',
    44.66083,
    -123.84722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YRCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23970355,
    'MFSW1',
    '12141500',
    'NWRFC',
    'WA',
    '17110010',
    'MIDDLE FORK SNOQUALMIE RIVER NEAR NORTH BEND  WA',
    47.49138,
    -121.7625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MFSW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23762877,
    'CORO3',
    '14171600',
    'NWRFC',
    'OR',
    '17090003',
    'WILLAMETTE RIVER AT CORVALLIS  OR',
    44.55916,
    -123.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CORO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22904823,
    'KRMI1',
    '12308000',
    'NWRFC',
    'ID',
    '17010104',
    'KOOTENAI RIVER BEL MOYIE RIVER NR BONNERS FERRY ID',
    48.71166,
    -116.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KRMI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10840818,
    'SAOT2',
    '08178000',
    'WGRFC',
    'TX',
    '12100301',
    'San Antonio Rv at San Antonio  TX',
    29.40944,
    -98.49472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAOT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23251487,
    'BWKI1',
    '13135500',
    'NWRFC',
    'ID',
    '17040219',
    'BIG WOOD RIVER NR KETCHUM ID',
    43.79638,
    -114.42361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BWKI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'DBQI4',
    NULL,
    'NCRFC',
    'IA',
    NULL,
    'Mississippi River at Dubuque (Railroad Bridge)',
    42.49138,
    -90.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DBQI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5491439,
    'ACWT2',
    '08083480',
    'WGRFC',
    'TX',
    '12060102',
    'Cedar Ck at IH 20  Abilene  TX',
    32.48661,
    -99.71456
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACWT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15823427,
    'COOG1',
    '02397530',
    'SERFC',
    'GA',
    '3150105',
    'COOSA RIVER AT STATE LINE  AL/GA',
    34.20167,
    -85.4475
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COOG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23700413,
    'BENO3',
    '14064500',
    'NWRFC',
    'OR',
    '17070301',
    'DESCHUTES R AT BENHAM FALLS NR BEND OREG.',
    43.93194,
    -121.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BENO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23700425,
    'DEBO3',
    '14070500',
    'NWRFC',
    'OR',
    '17070301',
    'DESCHUTES RIVER BELOW BEND OREG.',
    44.06777,
    -121.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DEBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14835191,
    'SRDI2',
    '05553700',
    'NCRFC',
    'IL',
    NULL,
    'Utica-Starved Rock L&D 6',
    41.3247,
    -88.9858
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRDI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCPM8',
    NULL,
    'MBRFC',
    'MT',
    NULL,
    'Lake Creek (MT) near Power',
    47.71166,
    -111.40666
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCPM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1670231,
    'PMAC1',
    '11459150',
    'CNRFC',
    'CA',
    '18050002',
    'PETALUMA R A COPLAND PUMPING STATION A PETALUMA CA',
    38.23722,
    -122.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PMAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24357131,
    'NW387',
    '12383500',
    'NWRFC',
    'MT',
    '17010212',
    'Big Knife Creek near Arlee MT',
    47.1472611,
    -113.974475
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW387'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24355913,
    'NW388',
    '12388400',
    'NWRFC',
    'MT',
    '17010212',
    'Revais Cr bl West Fork nr Dixon MT',
    47.26630278,
    -114.4068444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW388'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6269342,
    'CYNG1',
    '02177000',
    'SERFC',
    'GA',
    '3060102',
    'CHATTOOGA RIVER NEAR CLAYTON  GA',
    34.81389,
    -83.30611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CYNG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11975975,
    'LFAU1',
    '09289500',
    'CBRFC',
    'UT',
    '14060003',
    'LAKE FORK RIVER AB MOON LAKE  NR MOUNTAIN HOME  UT',
    40.60667,
    -110.52639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFAU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23413355,
    'MADO3',
    '13214000',
    'NWRFC',
    'OR',
    '17050116',
    'MALHEUR RIVER NEAR DREWSEY  OR',
    43.79638,
    -118.32194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MADO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22027232,
    'NW466',
    '04245200',
    'NERFC',
    'NY',
    '4140202',
    'BUTTERNUT CREEK NEAR JAMESVILLE NY',
    42.93388889,
    -76.0619444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW466'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24207657,
    'EGCO3',
    '13288200',
    'NWRFC',
    'OR',
    '17050203',
    'EAGLE CREEK ABV SKULL CREEK  NR NEW BRIDGE  OR',
    44.88111,
    -117.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EGCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CLWM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Clearwater River (Central MN) near Clearwater 1SW',
    45.40666,
    -94.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLWM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8890408,
    'BCMN7',
    '0209553650',
    'SERFC',
    'NC',
    '3030002',
    'BUFFALO CREEK AT SR2819 NR MCLEANSVILLE  NC',
    36.12806,
    -79.66167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCMN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'RDCW1',
    NULL,
    'NWRFC',
    'WA',
    '17110008',
    'NF STILLAGUAMISH R AT C-POST BRIDGE NEAR OSO  WA',
    47.521389,
    -120.858889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RDCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13779262,
    'RNDI2',
    '05595950',
    'NCRFC',
    'IL',
    '7140106',
    'Benton 3NW - Rend Lk',
    38.0375,
    -88.96167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RNDI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5077820,
    'SPBM7',
    '07016000',
    'NCRFC',
    'MO',
    '7140103',
    'Bourbeuse River near Spring Bluff  MO',
    38.31116017,
    -91.2793159
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPBM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2268959,
    'GTBW3',
    '05336000',
    'NCRFC',
    'WI',
    '7030001',
    'ST. CROIX RIVER NEAR GRANTSBURG  WI',
    45.9235613,
    -92.639088
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GTBW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18258887,
    'MNIG1',
    '02228500',
    'SERFC',
    'GA',
    '3070204',
    'NORTH PRONG ST. MARYS RIVER AT MONIAC  GA',
    30.5175,
    -82.23056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNIG1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22042575,
    'WDLA1',
    '02414500',
    'SERFC',
    'AL',
    '3150109',
    'TALLAPOOSA RIVER AT WADLEY AL',
    33.1175,
    -85.55972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WDLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18490768,
    'DLPI3',
    '03333050',
    'OHRFC',
    'IN',
    '5120106',
    'TIPPECANOE RIVER NEAR DELPHI  IN',
    40.61722,
    -86.76083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLPI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9398900,
    'BLTM5',
    '05068500',
    'NCRFC',
    'MN',
    '9020301',
    'SAND HILL DITCH AT BELTRAMI  MN',
    47.53607946,
    -96.5336777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLTM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1392781,
    'BRUU1',
    '09261700',
    'CBRFC',
    'UT',
    '14060002',
    'BIG BRUSH CRK ABV RED FLEET RES  NR VERNAL  UT',
    40.58889,
    -109.46472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRUU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SFZM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'South Fork Zumbro River near Rochester 5SW',
    43.98277,
    -92.55916
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SFZM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11966319,
    'CNTU1',
    '09288000',
    'CBRFC',
    'UT',
    '14060004',
    'CURRANT CREEK NEAR FRUITLAND  UT',
    40.20028,
    -110.90694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNTU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23805292,
    'FNNO3',
    '14206900',
    'NWRFC',
    'OR',
    '17090010',
    'FANNO CREEK AT 56TH AVE  AT PORTLAND  OR',
    45.49138,
    -122.74555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FNNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23977690,
    'HAHW1',
    '12105900',
    'NWRFC',
    'WA',
    '17110013',
    'GREEN RIVER BELOW HOWARD A HANSON DAM  WA',
    47.28805,
    -121.79638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HAHW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23977660,
    'BKDW1',
    '12108500',
    'NWRFC',
    'WA',
    '17110013',
    'NEWAUKUM CREEK NEAR BLACK DIAMOND  WA',
    47.27111,
    -122.05083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKDW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23719673,
    'PERO3',
    '14092500',
    'NWRFC',
    'OR',
    '17070306',
    'DESCHUTES RIVER NEAR MADRAS  OR',
    44.72861,
    -121.23722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PERO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3907351,
    'FCNU1',
    '09310500',
    'CBRFC',
    'UT',
    '14060007',
    'FISH CREEK ABOVE RESERVOIR  NEAR SCOFIELD  UT',
    39.77444,
    -111.19028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FCNU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3906485,
    'MCAU1',
    '09310700',
    'CBRFC',
    'UT',
    '14060007',
    'MUD CRK BL WINTER QUARTERS CYN @ SCOFIELD  UT',
    39.72167,
    -111.16056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCAU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3906361,
    'WRSU1',
    '09312600',
    'CBRFC',
    'UT',
    '14060007',
    'WHITE R BL TABBYUNE CRK NR SOLDIER SUMMIT  UT',
    39.87583,
    -111.03667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WRSU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1385518,
    'BFFU1',
    '09379500',
    'CBRFC',
    'UT',
    '14080205',
    'SAN JUAN RIVER NEAR BLUFF  UT',
    37.15068,
    -109.86669
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFFU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10025746,
    'EFFU1',
    '09404450',
    'CBRFC',
    'UT',
    '15010008',
    'EAST FORK VIRGIN RIVER NEAR GLENDALE  UT',
    37.33944,
    -112.60361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFFU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10026004,
    'ESTU1',
    '09404900',
    'CBRFC',
    'UT',
    '15010008',
    'EAST FORK VIRGIN RIVER NEAR SPRINGDALE  UT',
    37.16417,
    -112.95778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESTU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20653582,
    'FPWU1',
    '09408195',
    'CBRFC',
    'UT',
    '15010009',
    'FORT PEARCE WASH NEAR ST. GEORGE  UT',
    37.00167,
    -113.46806
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FPWU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1374702,
    'GROU1',
    '09272400',
    'CBRFC',
    'UT',
    '14060001',
    'GREEN RIVER AT OURAY  UTAH',
    40.08472,
    -109.67611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GROU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17416032,
    'LOUN1',
    '06805500',
    'MBRFC',
    'NE',
    '10200202',
    'Platte River at Louisville  Nebr.',
    41.01528,
    -96.15778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOUN1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11967717,
    'SWBU1',
    '09285900',
    'CBRFC',
    'UT',
    '14060004',
    'STRAWBERRY RIVER AT PINNACLES NEAR FRUITLAND  UT',
    40.12722,
    -110.74111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWBU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11976201,
    'LFRU1',
    '09291000',
    'CBRFC',
    'UT',
    '14060003',
    'LAKE FORK RIVER BL MOON LAKE NR MOUNTAIN HOME  UT',
    40.55639,
    -110.48389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LFRU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4879781,
    'SRFU1',
    '09328500',
    'CBRFC',
    'UT',
    '14060009',
    'SAN RAFAEL RIVER NEAR GREEN RIVER  UT',
    38.85833,
    -110.36944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SRFU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3272718,
    'SCMU1',
    '09378170',
    'CBRFC',
    'UT',
    '14080203',
    'SOUTH CREEK ABOVE RESERVOIR NEAR MONTICELLO  UT',
    37.84667,
    -109.36889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCMU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10024000,
    'VLLU1',
    '09406100',
    'CBRFC',
    'UT',
    '15010008',
    'VIRGIN RIVER AB LA VERKIN CREEK NR LA VERKIN  UT',
    37.19694,
    -113.28444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VLLU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10023748,
    'LEEU1',
    '09408000',
    'CBRFC',
    'UT',
    '15010008',
    'LEEDS CREEK NEAR LEEDS  UT',
    37.2675,
    -113.37
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEEU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10022980,
    'SCVU1',
    '09409100',
    'CBRFC',
    'UT',
    '15010008',
    'SANTA CLARA RIVER ABV BAKER RES  NR CENTRAL  UT',
    37.38472,
    -113.63111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCVU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11079201,
    'LPRL1',
    NULL,
    'LMRFC',
    'LA',
    '8090302',
    'Bayou Terrebonne at Ctrl Str near Lapeyrouse  LA',
    29.38972,
    -90.59305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPRL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18519967,
    'NW139',
    '02471019',
    'SERFC',
    'AL',
    '3160204',
    'TENSAW RIVER NR MOUNT VERNON  ALA',
    31.06712274,
    -87.9586086
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW139'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24460038,
    'HCFI1',
    '13041010',
    'NWRFC',
    'ID',
    '17040202',
    'HENRYS FORK BLW COFFEE POT RAPIDS NR MACKS INN  ID',
    44.49138,
    -111.38972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCFI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7732355,
    'NW221',
    '01208925',
    'NERFC',
    'CT',
    '1100006',
    'MILL RIVER NEAR FAIRFIELD  CT',
    41.165475,
    -73.2700083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW221'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'VNCL1',
    '07374550',
    'LMRFC',
    'LA',
    '8090100',
    '(COE) Mississippi River at Venice  LA',
    29.275833,
    -89.352778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VNCL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17900327,
    'ALAC2',
    '08223000',
    'WGRFC',
    'CO',
    '13010002',
    'RIO GRANDE AT ALAMOSA  CO.',
    37.47444,
    -105.88111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALAC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5894482,
    'LEEW2',
    '01616425',
    'MARFC',
    'WV',
    '2070004',
    'HOPEWELL RUN AT LEETOWN  WV',
    39.35464,
    -77.93361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEEW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5791670,
    'FRLT2',
    '08160800',
    'WGRFC',
    'TX',
    '12090301',
    'Redgate Ck nr Columbus  TX',
    29.79889,
    -96.53194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22912482,
    'BLAM8',
    '12335100',
    'NWRFC',
    'MT',
    '17010203',
    'Blackfoot R ab Nevada Cr nr Helmville MT',
    46.93194,
    -113.0
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLAM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22913128,
    'NFRM8',
    '12338300',
    'NWRFC',
    'MT',
    '17010203',
    'NF Blackfoot R ab Dry Gulch nr Ovando MT',
    46.98277,
    -113.08472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NFRM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19419557,
    'GRTW2',
    '03153500',
    'OHRFC',
    'WV',
    '5030203',
    'LITTLE KANAWHA RIVER AT GRANTSVILLE  WV',
    38.92164,
    -81.09492
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GRTW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24338716,
    'FRBM8',
    '12369000',
    'NWRFC',
    'MT',
    '17010208',
    'Flathead River near Bigfork MT',
    48.08472,
    -114.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRBM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4548546,
    'LCKW2',
    '03191500',
    'OHRFC',
    'WV',
    '5050005',
    'PETERS CREEK NEAR LOCKWOOD  WV',
    38.26461,
    -81.02311
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCKW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EFRA1',
    NULL,
    'SERFC',
    'AL',
    NULL,
    'Fowl River at EAST FOWL RIVER BRIDGE',
    30.44055,
    -88.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EFRA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ENDM6',
    NULL,
    'LMRFC',
    'MS',
    NULL,
    'Yocona River at Enid Dam',
    34.1525,
    -89.915
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ENDM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18302986,
    'BSRW4',
    '09213500',
    'CBRFC',
    'WY',
    '14040104',
    'BIG SANDY RIVER NEAR FARSON  WY',
    42.3296,
    -109.5119
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSRW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1129533,
    'TLCT2',
    '07343200',
    'LMRFC',
    'TX',
    '11140302',
    'Sulphur Rv nr Talco  TX',
    33.38611,
    -95.13222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLCT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3910095,
    'DSWU1',
    '09314280',
    'CBRFC',
    'UT',
    '14060007',
    'DESERT SEEP WASH NEAR WELLINGTON  UTAH',
    39.42361,
    -110.64388
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DSWU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BCRW1',
    NULL,
    'NWRFC',
    'WA',
    NULL,
    'Bonaparte Creek at Tonasket',
    48.71166,
    -119.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCRW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9210446,
    'LITN7',
    '02128000',
    'SERFC',
    'NC',
    '3040104',
    'LITTLE RIVER NEAR STAR  NC',
    35.38972,
    -79.83027
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LITN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6250624,
    'NMLN4',
    '01378500',
    'MARFC',
    'NJ',
    '2030103',
    'Hackensack River at New Milford NJ',
    40.94833,
    -74.02667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NMLN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23815040,
    'PRTO3',
    '14211720',
    'NWRFC',
    'OR',
    '17090012',
    'WILLAMETTE RIVER AT PORTLAND  OR',
    45.52527,
    -122.67777
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PRTO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7087517,
    'ROSM5',
    '05105000',
    'NCRFC',
    'MN',
    NULL,
    'Roseau - Center St Brdg',
    48.8464,
    -95.76
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ROSM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20296767,
    'SUSC1',
    '10356500',
    'CNRFC',
    'CA',
    '18080003',
    'SUSAN R A SUSANVILLE CA',
    40.40666,
    -120.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SUSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 948020312,
    'MFTC1',
    '11392100',
    'CNRFC',
    'CA',
    '18020123',
    'MF FEATHER R NR PORTOLA CA',
    39.83027,
    -120.44055
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MFTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2852705,
    'BTCC1',
    '11389000',
    'CNRFC',
    'CA',
    '18020104',
    'SACRAMENTO R A BUTTE CITY CA',
    39.4575,
    -121.99972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BTCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1909424,
    'NW307',
    '11313405',
    'CNRFC',
    'CA',
    '18040003',
    'OLD R A BACON ISLAND CA',
    37.96992306,
    -121.572174
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW307'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23815084,
    'NW368',
    '14211820',
    'NWRFC',
    'OR',
    '17090012',
    'COLUMBIA SLOUGH AT PORTLAND  OR',
    45.63900515,
    -122.763155
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW368'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23850501,
    'CPLW1',
    '12019310',
    'NWRFC',
    'WA',
    '17100103',
    'CHEHALIS RIVER ABOVE MAHAFFEY CREEK NR PE ELL  WA',
    46.54222,
    -123.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPLW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24527150,
    'ECDO3',
    '14322000',
    'NWRFC',
    'OR',
    '17100303',
    'ELK CREEK NEAR DRAIN  OREG.',
    43.64388,
    -123.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECDO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22340339,
    'ACRV2',
    '01653000',
    'MARFC',
    'VA',
    '2070010',
    'CAMERON RUN AT ALEXANDRIA  VA',
    38.81333,
    -77.10166
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACRV2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4576576,
    'RCHV1',
    '04288230',
    'NERFC',
    'VT',
    '4150403',
    'RANCH BROOK AT RANCH CAMP  NEAR STOWE  VT',
    44.50389,
    -72.78222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCHV1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6261174,
    'WBRN4',
    '01394000',
    'MARFC',
    'NJ',
    '2030104',
    'West Branch Rahway River at Millburn NJ',
    40.73167,
    -74.3075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WBRN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11777113,
    'CIGA4',
    '07075300',
    'LMRFC',
    'AR',
    '11010014',
    'South Fork of Little Red River at Clinton  AR',
    35.58694,
    -92.45139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CIGA4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11866736,
    'SHNI2',
    '03381700',
    'OHRFC',
    'IL',
    '5140203',
    'OHIO RIVER AT OLD SHAWNEETOWN  IL-KY',
    37.69194,
    -88.13333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHNI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ONIM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Rum River near Onamia',
    46.05083,
    -93.66083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ONIM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23990667,
    'NW293',
    '12091100',
    'NWRFC',
    'WA',
    '17110019',
    'FLETT CREEK AT TACOMA  WA',
    47.1888583,
    -122.5201028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW293'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13055102,
    'BOYM4',
    '04127850',
    'NCRFC',
    'MI',
    NULL,
    'Boyne City 3ESE',
    45.1967,
    -84.9572
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOYM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5521636,
    'ABYT2',
    '08085500',
    'WGRFC',
    'TX',
    '12060104',
    'Clear Fk Brazos Rv at Ft Griffin  TX',
    32.93298,
    -99.21539
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ABYT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8701361,
    'LSBN7',
    '02077200',
    'SERFC',
    'NC',
    '3010104',
    'HYCO CREEK NEAR LEASBURG  NC',
    36.39778,
    -79.19667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSBN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6844445,
    'TWFM4',
    '04063500',
    'NCRFC',
    'MI',
    '4030108',
    'MENOMINEE RIVER AT TWIN FALLS NEAR IRON MT  MI',
    45.86611,
    -88.07444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TWFM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LCRL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Calcasieu River at Sam Houston Jones State Park',
    30.28805,
    -93.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCRL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 373089,
    'HEYO2',
    NULL,
    'ABRFC',
    'OK',
    NULL,
    'Eastern Oklahoma Lakes at Heyburn Lake',
    35.94888,
    -96.28805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HEYO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16012802,
    'LVSS2',
    '06478540',
    'MBRFC',
    'SD',
    '10170102',
    'LITTLE VERMILLION R NEAR SALEM SD',
    43.79638,
    -97.37277
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LVSS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17016047,
    'AZRN5',
    '09364010',
    'CBRFC',
    'NM',
    '14080104',
    'ANIMAS RIVER BELOW AZTEC  NM',
    36.81837,
    -108.02299
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AZRN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CAYN6',
    NULL,
    'NERFC',
    'NY',
    NULL,
    'Cayuga Lake at Mud Lock',
    42.96583,
    -76.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAYN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2161778,
    'OLPF1',
    '02321898',
    'SERFC',
    'FL',
    '3110206',
    'leno State Park',
    29.92656,
    -82.55965
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OLPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LKWP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Lackawaxen River at Lake Wallenpaupack',
    41.4575,
    -75.18638
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LKWP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'FLMP1',
    NULL,
    'MARFC',
    'PA',
    NULL,
    'Little Conestoga Creek at Flory Mill',
    40.06777,
    -76.35583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLMP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1399324,
    'RCBU1',
    '09378630',
    'CBRFC',
    'UT',
    '14080201',
    'RECAPTURE CREEK NEAR BLANDING  UT',
    37.75556,
    -109.47583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCBU1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9998136,
    'CPDC1',
    '09427520',
    'CBRFC',
    'CA',
    '15030104',
    'COLORADO RIVER BELOW PARKER DAM  AZ-CA',
    34.29556,
    -114.13944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10010646,
    'CPVC1',
    '09429100',
    'CBRFC',
    'CA',
    '15030104',
    'COLORADO RIVER BELOW PALO VERDE DAM  AZ-CA',
    33.71944,
    -114.49722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CPVC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21412675,
    'LGDC1',
    '09429600',
    'CBRFC',
    'CA',
    '15030107',
    'COLORADO RIVER BELOW LAGUNA DAM  AZ-CA',
    32.81222,
    -114.51417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LGDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5489939,
    'HWLT2',
    '08083240',
    'WGRFC',
    'TX',
    '12060102',
    'Clear Fk Brazos Rv at Hwy 83 nr Hawley  TX',
    32.5985,
    -99.81456
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HWLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13020013,
    'FLSM4',
    '04148295',
    'NCRFC',
    'MI',
    '4080204',
    'SWARTZ CREEK AT CLAUDE AVENUE AT FLINT  MI',
    42.98583,
    -83.73889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLSM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14668501,
    'BCSN8',
    '06354490',
    'MBRFC',
    'ND',
    '10130104',
    'BEAVER CREEK NEAR STRASBURG  ND',
    46.22806,
    -99.98278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCSN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14519511,
    'CETN8',
    '06342260',
    'MBRFC',
    'ND',
    '10130101',
    'SQUARE BUTTE CREEK BELOW CENTER  ND',
    47.0575,
    -101.19528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CETN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3964460,
    'BFOW2',
    '03207057',
    'OHRFC',
    'WV',
    '5090102',
    'BEECH FORK BELOW BEECH FORK DAM  WV',
    38.305,
    -82.42444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BFOW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16223819,
    'JUDN8',
    '06348300',
    'MBRFC',
    'ND',
    '10130203',
    'HEART RIVER AT STARK BRIDGE NR JUDSON  ND',
    46.70333,
    -101.21361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JUDN8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20929432,
    'RCDK1',
    '07179700',
    'ABRFC',
    'KS',
    '11070201',
    'ROCK C NR DUNLAP  KS',
    38.61056,
    -96.37028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCDK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3102283,
    'NW471',
    '06183850',
    'MBRFC',
    'MT',
    '10060006',
    'Sand Creek near Dagmar MT',
    48.4989472,
    -104.2725889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW471'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5570685,
    'SMVT2',
    '08110000',
    'WGRFC',
    'TX',
    '12070102',
    'Yegua Ck nr Somerville  TX',
    30.32167,
    -96.50722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SMVT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2888828,
    'SVLC2',
    '06730525',
    'MBRFC',
    'CO',
    '10190005',
    'ST VRAIN CR BLW BOULDER CR AT HWY 119 NR LONGMONT',
    40.16047,
    -105.00794
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SVLC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1467944,
    'WCGT2',
    '08067650',
    'WGRFC',
    'TX',
    '12040101',
    'W Fk San Jacinto Rv bl Lk Conroe nr Conroe  TX',
    30.34194,
    -95.54278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCGT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16838064,
    'BNPF1',
    '02299472',
    'SERFC',
    'FL',
    '3100102',
    'BIG SLOUGH AT WEST PRICE BLVD NEAR NORTH PORT FL',
    27.06933,
    -82.22033
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BNPF1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8897336,
    'MGCN7',
    '02097517',
    'SERFC',
    'NC',
    '3030002',
    'MORGAN CREEK NEAR CHAPEL HILL  NC',
    35.89333,
    -79.01972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MGCN7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23850487,
    'DOTW1',
    '12020000',
    'NWRFC',
    'WA',
    '17100103',
    'CHEHALIS RIVER NEAR DOTY  WA',
    46.6175,
    -123.27639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DOTW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15409409,
    'SHLO1',
    '03129197',
    'OHRFC',
    'OH',
    '5040002',
    'Black Fork Mohican River at Shelby OH',
    40.88111,
    -82.65972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHLO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1643099,
    'TVLT2',
    '08188810',
    'WGRFC',
    'TX',
    '12100204',
    'Guadalupe Rv at SH 35 nr Tivoli  TX',
    28.47806,
    -96.8625
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TVLT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LOSO1',
    '03118050',
    'OHRFC',
    'OH',
    '5040001',
    'East Branch Nimishillen Creek at Louisville OH',
    40.8425,
    -81.259444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOSO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'ENMO1',
    '03118131',
    'OHRFC',
    'OH',
    '5040001',
    'E Branch Nimishillen Crk at Trump Ave nr Canton OH',
    40.811944,
    -81.323056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ENMO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5987041,
    'TVCM7',
    '06926290',
    'MBRFC',
    'MO',
    '10290111',
    'Tavern Creek below St. Elizabeth  MO',
    38.27778,
    -92.23333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TVCM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7898927,
    'BRBW4',
    '10039500',
    'CBRFC',
    'WY',
    '16010102',
    'BEAR RIVER AT BORDER  WY',
    42.21111,
    -111.05306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRBW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 16742571,
    'NW126',
    '02276877',
    'SERFC',
    'FL',
    '3090202',
    'ST. LUCIE CANAL BLW S-308  NR PORT MAYACA (AUX) FL',
    26.985777,
    -80.6153891
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW126'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10247723,
    'NW129',
    '02292900',
    'SERFC',
    'FL',
    '3090205',
    'CALOOSAHATCHEE RIVER AT S-79  NR.OLGA  FLA',
    26.723957,
    -81.6984149
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW129'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6186102,
    'NMKN6',
    '01359528',
    'NERFC',
    'NY',
    '2020006',
    'NORMANS KILL AT ALBANY NY',
    42.63364,
    -73.80428
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NMKN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'SXLA1',
    '02377560',
    'SERFC',
    'AL',
    '3140106',
    'STYX R NR LOXLEY  AT SMITHS SIDING  ALA',
    30.641389,
    -87.611389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SXLA1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LSSW4',
    NULL,
    'CBRFC',
    'WY',
    NULL,
    'Little Snake River near Savery',
    41.0,
    -107.47444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSSW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'LOSK2',
    '03292557',
    'OHRFC',
    'KY',
    '5140101',
    'S FK BEARGRASS CR AT MASON AVE NR LOUISVILLE  KY',
    38.239167,
    -85.737778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LOSK2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18490578,
    'BLOI3',
    '03332345',
    'OHRFC',
    'IN',
    '5120106',
    'TIPPECANOE RIVER AT BUFFALO  IN',
    40.87786,
    -86.75119
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLOI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19595982,
    'NW528',
    '03584020',
    'LMRFC',
    'TN',
    '6030004',
    'RICHLAND CREEK AT HWY 64 NEAR PULASKI  TN',
    35.2108329,
    -87.100402
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW528'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15678101,
    'NVLI3',
    '04178000',
    'OHRFC',
    'IN',
    '4100003',
    'ST. JOSEPH RIVER NEAR NEWVILLE  IN',
    41.38556,
    -84.80167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NVLI3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5736533,
    'BWDT2',
    '08143500',
    'WGRFC',
    'TX',
    '12090107',
    'Pecan Bayou at Brownwood  TX',
    31.7364,
    -98.97549
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BWDT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4709644,
    'FALP1',
    '01573710',
    'MARFC',
    'PA',
    '2050305',
    'Conewago Creek near Falmouth  PA',
    40.14931,
    -76.68775
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FALP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2702013,
    'FRNC1',
    '11479560',
    'CNRFC',
    'CA',
    '18010105',
    'EEL R A FERNBRIDGE CA',
    40.61583,
    -124.20167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3642794,
    'LISK1',
    '06888300',
    'MBRFC',
    'KS',
    '10270102',
    'ROCK C NR LOUISVILLE  KS',
    39.24917,
    -96.31472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LISK1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5280888,
    'LPTL1',
    '08022500',
    'WGRFC',
    'LA',
    '12010004',
    'Sabine Rv at Logansport  LA',
    31.97222,
    -94.00611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LPTL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6744772,
    'MTHM3',
    '01100561',
    'NERFC',
    'MA',
    '1070002',
    'SPICKET RIVER NEAR METHUEN  MA',
    42.74306,
    -71.20889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTHM3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14364980,
    'LUKM2',
    '01598500',
    'MARFC',
    'MD',
    '2070002',
    'NORTH BRANCH POTOMAC RIVER AT LUKE  MD',
    39.47897,
    -79.06378
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LUKM2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 909020730,
    'WHRM5',
    '05050000',
    'NCRFC',
    'MN',
    '9020101',
    'BOIS DE SIOUX RIVER NEAR WHITE ROCK  SD',
    45.8625,
    -96.57361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WHRM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'EVNO1',
    '03255420',
    'OHRFC',
    'OH',
    '5090203',
    'Mill Creek at Evendale OH',
    39.254444,
    -84.425278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EVNO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4151628,
    'MTGN4',
    '01438500',
    'MARFC',
    'NJ',
    '2040104',
    'Delaware River at Montague NJ',
    41.30917,
    -74.79528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MTGN4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17863208,
    'CCSN5',
    '08261000',
    'WGRFC',
    'NM',
    '13020101',
    'COSTILLA CREEK NEAR GARCIA  CO',
    36.98903,
    -105.53246
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCSN5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8103737,
    'WVYN6',
    '01515000',
    'MARFC',
    'NY',
    '2050103',
    'SUSQUEHANNA RIVER NEAR WAVERLY NY',
    41.98472,
    -76.50111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WVYN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 941040164,
    'FRGO2',
    '07156900',
    'ABRFC',
    'OK',
    '11040006',
    'Cimarron River near Forgan  OK',
    37.01111,
    -100.49139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRGO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5891210,
    'WANP1',
    '01619000',
    'MARFC',
    'PA',
    '2070004',
    'ANTIETAM CREEK NEAR WAYNESBORO  PA',
    39.71625,
    -77.60664
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WANP1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22151081,
    'HRFT1',
    '03460795',
    'LMRFC',
    'TN',
    '6010106',
    'PIGEON R BL POWER PLANT NR WATERVILLE  NC',
    35.78361,
    -83.11194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HRFT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 425086,
    'GSVT2',
    '07316000',
    'ABRFC',
    'TX',
    '11130201',
    'Red River near Gainesville  TX',
    33.72778,
    -97.15972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GSVT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8348933,
    'ARCT2',
    '07335500',
    'ABRFC',
    'TX',
    '11140101',
    'Red River at Arthur City  TX',
    33.875,
    -95.50167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARCT2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8431820,
    'PAWW2',
    '01610000',
    'MARFC',
    'WV',
    '2070003',
    'POTOMAC RIVER AT PAW PAW  WV',
    39.53892,
    -78.45639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PAWW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3821351,
    'NCUW2',
    '03110690',
    'OHRFC',
    'WV',
    '5030101',
    'OHIO R AT NEW CUMBERLAND LOCK & DAM (LOWER)  OH',
    40.52806,
    -80.62583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NCUW2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14446262,
    'FLRW3',
    '04060993',
    'NCRFC',
    'WI',
    '4030106',
    'BRULE RIVER AT US HIGHWAY 2 NEAR FLORENCE  WI',
    45.96083,
    -88.31583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FLRW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20436512,
    'FCSA3',
    '09507480',
    'CBRFC',
    'AZ',
    '15060203',
    'FOSSIL CREEK NEAR STRAWBERRY  AZ',
    34.39431,
    -111.63
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FCSA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5450580,
    'BWSW4',
    '06428500',
    'MBRFC',
    'WY',
    '10120202',
    'BELLE FOURCHE R AT WY-SD STATE LINE',
    44.74889,
    -104.05111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BWSW4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MSCC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Mission Creek (CA) near Santa Barbara',
    34.42361,
    -119.72861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MSCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8933532,
    'FARC1',
    '10346000',
    'CNRFC',
    'CA',
    '16050102',
    'TRUCKEE R A FARAD CA',
    39.42806,
    -120.03306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FARC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5329357,
    'WKEC1',
    '11460750',
    'CNRFC',
    'CA',
    '18050005',
    'WALKER C NR MARSHALL CA',
    38.17583,
    -122.81722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2930767,
    'CAGM7',
    '390019090412801',
    'NCRFC',
    'MO',
    '7110004',
    'Cap Au Gris (Winfield) L&D 25',
    39.00222,
    -90.68861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CAGM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24219835,
    'HCDI1',
    '13290450',
    'NWRFC',
    'ID',
    '17060101',
    'SNAKE RIVER AT HELLS CANYON DAM ID-OR STATE LINE',
    45.25139,
    -116.69722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BONO3',
    '453845121562000',
    'NWRFC',
    'OR',
    '17070105',
    'COLUMBIA RIVER AT BONNEVILLE DAM FOREBAY  WA',
    45.633079,
    -121.960731
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BONO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BRFO1',
    '03126395',
    'OHRFC',
    'OH',
    NULL,
    'Brushy Fork above Clendening Lake',
    40.247778,
    -81.148333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRFO1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10850310,
    'DFWM4',
    '04165710',
    'NCRFC',
    'MI',
    '4090004',
    'DETROIT RIVER AT FORT WAYNE AT DETROIT  MI',
    42.29806,
    -83.09278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DFWM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23751880,
    'OAKO3',
    '14148000',
    'NWRFC',
    'OR',
    '17090001',
    'MF WILLAMETTE RIVER BLW N FORK  NR OAKRIDGE  OR.',
    43.80139,
    -122.55972
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OAKO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23763139,
    'FRNO3',
    '14169000',
    'NWRFC',
    'OR',
    '17090003',
    'LONG TOM RIVER NEAR ALVADORE  OR',
    44.12361,
    -123.29861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FRNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8935820,
    'GCPN2',
    '10348850',
    'CNRFC',
    'NV',
    '16050102',
    'GALENA CK AT GALENA CK STATE PARK  NV',
    39.35444,
    -119.8575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GCPN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2809681,
    'MPTC1',
    '11172945',
    'CNRFC',
    'CA',
    '18050004',
    'ALAMEDA C AB DIV DAM NR SUNOL CA',
    37.4975,
    -121.7725
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MPTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23064753,
    'OKCW1',
    '12445900',
    'NWRFC',
    'WA',
    '17020006',
    'OMAK CREEK NEAR OMAK  WA',
    48.36722,
    -119.44389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OKCW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19784319,
    'SJMC1',
    '11254000',
    'CNRFC',
    'CA',
    '18040001',
    'SAN JOAQUIN R NR MENDOTA CA',
    36.81056,
    -120.37722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SJMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19784451,
    'PNEC1',
    '11255575',
    'CNRFC',
    'CA',
    '18040001',
    'PANOCHE C A I-5 NR SILVER CREEK CA',
    36.6525,
    -120.63111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PNEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19777307,
    'SSHC1',
    '11261100',
    'CNRFC',
    'CA',
    '18040001',
    'SALT SLOUGH A HWY 165 NR STEVINSON CA',
    37.24778,
    -120.85111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSHC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2829226,
    'NWMC1',
    '11274000',
    'CNRFC',
    'CA',
    '18040002',
    'SAN JOAQUIN R NR NEWMAN CA',
    37.35056,
    -120.97611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NWMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17081597,
    'TGCC1',
    '11274790',
    'CNRFC',
    'CA',
    '18040009',
    'TUOLUMNE R A GRAND CYN OF TUOLUMNE AB HETCH HETCHY',
    37.91667,
    -119.65889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TGCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17081431,
    'CVDC1',
    '11277300',
    'CNRFC',
    'CA',
    '18040009',
    'CHERRY C BL VALLEY DAM NR HETCH HETCHY CA',
    37.96778,
    -119.91639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CVDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8269099,
    'UKAC1',
    '11461000',
    'CNRFC',
    'CA',
    '18010110',
    'RUSSIAN R NR UKIAH CA',
    39.19556,
    -123.19389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UKAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8269091,
    'CXLC1',
    '11461500',
    'CNRFC',
    'CA',
    '18010110',
    'EF RUSSIAN R NR CALPELLA CA',
    39.24667,
    -123.12917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CXLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8268521,
    'TLMC1',
    '11462080',
    'CNRFC',
    'CA',
    '18010110',
    'RUSSIAN R NR TALMAGE CA',
    39.11306,
    -123.18194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TLMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8269119,
    'HOPC1',
    '11462500',
    'CNRFC',
    'CA',
    '18010110',
    'RUSSIAN R NR HOPLAND CA',
    39.02667,
    -123.12944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOPC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8281665,
    'GAAC1',
    '11467553',
    'CNRFC',
    'CA',
    '18010109',
    'NF GUALALA R AB SF GUALALA R NR GUALALA CA',
    38.79,
    -123.50833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GAAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2665613,
    'NVRC1',
    '11468000',
    'CNRFC',
    'CA',
    '18010108',
    'NAVARRO R NR NAVARRO CA',
    39.17056,
    -123.66694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NVRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2665525,
    'FTBC1',
    '11468500',
    'CNRFC',
    'CA',
    '18010108',
    'NOYO R NR FORT BRAGG CA',
    39.42833,
    -123.73667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2546355,
    'ETTC1',
    '11468900',
    'CNRFC',
    'CA',
    '18010107',
    'MATTOLE R NR ETTERSBURG CA',
    40.13944,
    -123.99028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ETTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2706571,
    'FTSC1',
    '11475000',
    'CNRFC',
    'CA',
    '18010105',
    'EEL R A FORT SEWARD CA',
    40.21833,
    -123.63139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8287590,
    'ECBC1',
    '11475560',
    'CNRFC',
    'CA',
    '18010106',
    'ELDER C NR BRANSCOMB CA',
    39.72972,
    -123.64278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ECBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8287256,
    'LEGC1',
    '11475800',
    'CNRFC',
    'CA',
    '18010106',
    'SF EEL R A LEGGETT CA',
    39.87472,
    -123.71944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LEGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4438356,
    'KLMC1',
    '11530500',
    'CNRFC',
    'CA',
    '18010209',
    'KLAMATH R NR KLAMATH CA',
    41.51111,
    -123.97833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KLMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22226812,
    'CREC1',
    '11532500',
    'CNRFC',
    'CA',
    '18010101',
    'SMITH R NR CRESCENT CITY CA',
    41.79167,
    -124.075
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CREC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22227058,
    'FTDC1',
    '11532650',
    'CNRFC',
    'CA',
    '18010101',
    'SMITH R NR FORT DICK CA',
    41.88083,
    -124.13528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FTDC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5052497,
    'ARNM7',
    '07019300',
    'NCRFC',
    'MO',
    '7140102',
    'Meramec River at Arnold  MO',
    38.4567203,
    -90.3606735
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARNM7'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6966863,
    'EOKI4',
    '05474500',
    'NCRFC',
    'IA',
    '7080104',
    'Mississippi River at Keokuk  IA',
    40.39365535,
    -91.374318
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EOKI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6559843,
    'NTWI4',
    '05459000',
    'NCRFC',
    'IA',
    '7080202',
    'Shell Rock River near Northwood  IA',
    43.4141246,
    -93.22075939
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NTWI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOAM4',
    NULL,
    'NCRFC',
    'MI',
    '4060105',
    'BOARDMAN RIVER AT TRAVERSE CITY  MI',
    44.7652789,
    -85.6211873
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOAM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3470515,
    'MGOM4',
    '04103010',
    'NCRFC',
    'MI',
    '4050003',
    'KALAMAZOO RIVER NEAR MARENGO  MI',
    42.26170826,
    -84.8558115
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MGOM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 948060250,
    'LLGC1',
    '11153650',
    'CNRFC',
    'CA',
    '18060002',
    'LLAGAS C NR GILROY',
    36.9875,
    -121.52611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LLGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17663521,
    'HOSC1',
    '11158600',
    'CNRFC',
    'CA',
    '18060002',
    'SAN BENITO R A HWY 156 NR HOLLISTER CA',
    36.85194,
    -121.42889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17663281,
    'AROC1',
    '11159000',
    'CNRFC',
    'CA',
    '18060002',
    'PAJARO R A CHITTENDEN CA',
    36.90028,
    -121.59667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AROC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17695611,
    'CMIC1',
    '11172175',
    'CNRFC',
    'CA',
    '18050003',
    'COYOTE C AB HWY 237 A MILPITAS CA',
    37.42222,
    -121.92639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CMIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2809859,
    'AHOC1',
    '11173200',
    'CNRFC',
    'CA',
    '18050004',
    'ARROYO HONDO NR SAN JOSE CA',
    37.46167,
    -121.76833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AHOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2806979,
    'ACZC1',
    '11173510',
    'CNRFC',
    'CA',
    '18050004',
    'ALAMEDA C BL CALAVERAS C NR SUNOL CA',
    37.50361,
    -121.82361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACZC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3437900,
    'NW376',
    '02342933',
    'SERFC',
    'AL',
    '3130003',
    'SOUTH FORK COWIKEE CREEK NEAR BATESVILLE AL',
    32.0176572,
    -85.2957704
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW376'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12264914,
    'BSDM4',
    '04102000',
    'NCRFC',
    'MI',
    '4050001',
    'ST. JOSEPH RIVER AT BERRIEN SPRINGS  MI',
    41.94893417,
    -86.333905
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BSDM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 14787487,
    'RVLI2',
    '05534000',
    'NCRFC',
    'IL',
    '7120004',
    'DES PLAINES RIVER AT ROMEOVILLE  IL',
    41.64027778,
    -88.0672222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RVLI2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17665491,
    'CCFC1',
    '11159200',
    'CNRFC',
    'CA',
    '18060002',
    'CORRALITOS C A FREEDOM CA',
    36.93944,
    -121.76944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CCFC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2806865,
    'AWEC1',
    '11173575',
    'CNRFC',
    'CA',
    '18050004',
    'ALAMEDA C BL WELCH C NR SUNOL CA',
    37.54056,
    -121.85528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AWEC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2806745,
    'ACSC1',
    '11174000',
    'CNRFC',
    'CA',
    '18050004',
    'SAN ANTONIO C NR SUNOL CA',
    37.5775,
    -121.85667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2806611,
    'ADLC1',
    '11176900',
    'CNRFC',
    'CA',
    '18050004',
    'ARROYO DE LA LAGUNA A VERONA CA',
    37.62667,
    -121.88194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ADLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2804369,
    'DYUC1',
    '11180500',
    'CNRFC',
    'CA',
    '18050004',
    'DRY C A UNION CITY CA',
    37.60611,
    -122.02278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DYUC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2803935,
    'KCRC1',
    '11180900',
    'CNRFC',
    'CA',
    '18050004',
    'CROW C NR HAYWARD CA',
    37.705,
    -122.04278
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2804901,
    'CULC1',
    '11180960',
    'CNRFC',
    'CA',
    '18050004',
    'CULL C AB CULL C RES NR CASTRO VALLEY CA',
    37.71778,
    -122.05333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CULC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2803985,
    'CVCC1',
    '11181008',
    'CNRFC',
    'CA',
    '18050004',
    'CASTRO VALLEY C A HAYWARD CA',
    37.68,
    -122.07944
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CVCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7932193,
    'PLYC1',
    '11345500',
    'CNRFC',
    'CA',
    '18020002',
    'SF PIT R NR LIKELY CA',
    41.23083,
    -120.43611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PLYC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8272363,
    'DRIC1',
    '11465350',
    'CNRFC',
    'CA',
    '18010110',
    'DRY C NR MOUTH NR HEALDSBURG CA',
    38.5875,
    -122.86111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DRIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11338977,
    'CVCN2',
    '10243700',
    'CNRFC',
    'NV',
    '16060008',
    'CLEVE CK NR ELY  NV',
    39.21658,
    -114.52964
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CVCN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8273659,
    'CTIC1',
    '11465680',
    'CNRFC',
    'CA',
    '18010110',
    'LAGUNA DE SANTA ROSA A STONY PT RD NR COTATI CA',
    38.35222,
    -122.74306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CTIC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9203175,
    'NW391',
    '02125000',
    'SERFC',
    'NC',
    '3040105',
    'BIG BEAR CR NR RICHFIELD  NC',
    35.3347222,
    -80.3355556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NW391'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20351631,
    'LCOC1',
    '11046100',
    'CNRFC',
    'CA',
    '18070301',
    'LAS FLORES C NR OCEANSIDE CA',
    33.29361,
    -117.45306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7981844,
    'MRYC1',
    '11421000',
    'CNRFC',
    'CA',
    '18020107',
    'YUBA R NR MARYSVILLE CA',
    39.17583,
    -121.52389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MRYC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 17078425,
    'BCWC1',
    '11284400',
    'CNRFC',
    'CA',
    '18040009',
    'BIG C AB WHITES GULCH NR GROVELAND CA',
    37.84194,
    -120.18389
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 348419,
    'BCCC1',
    '11299600',
    'CNRFC',
    'CA',
    '18040010',
    'BLACK C NR COPPEROPOLIS CA',
    37.96111,
    -120.61417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 7966063,
    'DLTC1',
    '11342000',
    'CNRFC',
    'CA',
    '18020005',
    'SACRAMENTO R A DELTA CA',
    40.93972,
    -122.41611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DLTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2495212,
    'CWCC1',
    '11374000',
    'CNRFC',
    'CA',
    '18020101',
    'COW C NR MILLVILLE CA',
    40.505,
    -122.23194
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23886298,
    'TIDO3',
    '14306500',
    'NWRFC',
    'OR',
    '17100205',
    'ALSEA RIVER NEAR TIDEWATER  OR',
    44.38611,
    -123.83056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TIDO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 4296241,
    'CWAC1',
    '11376000',
    'CNRFC',
    'CA',
    '18020102',
    'COTTONWOOD C NR COTTONWOOD CA',
    40.38722,
    -122.2375
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWAC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2496048,
    'COTC1',
    '11376550',
    'CNRFC',
    'CA',
    '18020101',
    'BATTLE C BL COLEMAN FISH HATCHERY NR COTTONWOOD CA',
    40.39833,
    -122.14528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'COTC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12068830,
    'BDBC1',
    '11377100',
    'CNRFC',
    'CA',
    '18020103',
    'SACRAMENTO R AB BEND BRIDGE NR RED BLUFF CA',
    40.28861,
    -122.18556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BDBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12068798,
    'EDCC1',
    '11379500',
    'CNRFC',
    'CA',
    '18020103',
    'ELDER C NR PASKENTA CA',
    40.02389,
    -122.51083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'EDCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8020924,
    'DCVC1',
    '11383500',
    'CNRFC',
    'CA',
    '18020103',
    'DEER C NR VINA CA',
    40.01417,
    -121.94722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCVC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24688709,
    'CLUC1',
    '11389500',
    'CNRFC',
    'CA',
    '18020104',
    'SACRAMENTO R A COLUSA CA',
    39.21417,
    -121.99917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLUC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1680009,
    'BKCC1',
    '11390000',
    'CNRFC',
    'CA',
    '18020105',
    'BUTTE C NR CHICO CA',
    39.72611,
    -121.70778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BKCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8058675,
    'GYRC1',
    '11413000',
    'CNRFC',
    'CA',
    '18020125',
    'N YUBA R BL GOODYEARS BAR CA',
    39.525,
    -120.93694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GYRC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8061235,
    'DCSC1',
    '11418500',
    'CNRFC',
    'CA',
    '18020125',
    'DEER C NR SMARTSVILLE CA',
    39.22444,
    -121.2675
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCSC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 948020363,
    'BRWC1',
    '11424000',
    'CNRFC',
    'CA',
    '18020108',
    'BEAR R NR WHEATLAND CA',
    39.00028,
    -121.40556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BRWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15069312,
    'DCWC1',
    '11424500',
    'CNRFC',
    'CA',
    '18020108',
    'DRY C NR WHEATLAND CA',
    39.02639,
    -121.43611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DCWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 948021150,
    'AFOC1',
    '11446500',
    'CNRFC',
    'CA',
    '18020111',
    'AMERICAN R A FAIR OAKS CA',
    38.63556,
    -121.22667
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AFOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8009269,
    'CLFC1',
    '11451000',
    'CNRFC',
    'CA',
    '18020116',
    'CACHE C NR LOWER LAKE CA',
    38.92417,
    -122.56472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CLFC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8007863,
    'CKKC1',
    '11451300',
    'CNRFC',
    'CA',
    '18020116',
    'NF CACHE C NR CLEARLAKE OAKS CA',
    39.07556,
    -122.53306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CKKC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8009213,
    'HCHC1',
    '11451715',
    'CNRFC',
    'CA',
    '18020116',
    'BEAR C AB HOLSTEN CHIMNEY CYN NR RUMSEY CA',
    38.95778,
    -122.34167
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HCHC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15040999,
    'LCWC1',
    '11336585',
    'CNRFC',
    'CA',
    '18020109',
    'LAGUNA C NR ELK GROVE CA',
    38.42333,
    -121.35222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCWC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8019544,
    'MLMC1',
    '11381500',
    'CNRFC',
    'CA',
    '18020103',
    'MILL C NR LOS MOLINOS CA',
    40.05472,
    -122.02306
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MLMC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2851625,
    'WLKC1',
    '11390500',
    'CNRFC',
    'CA',
    '18020104',
    'SACRAMENTO R BL WILKINS SLOUGH NR GRIMES CA',
    39.01,
    -121.82361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WLKC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8027910,
    'SCBC1',
    '11402000',
    'CNRFC',
    'CA',
    '18020122',
    'SPANISH C AB BLACKHAWK C AT KEDDIE CA',
    40.00306,
    -120.95333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCBC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15039097,
    'VONC1',
    '11425500',
    'CNRFC',
    'CA',
    '18020109',
    'SACRAMENTO R A VERONA CA',
    38.77444,
    -121.59722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VONC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8005975,
    'HOUC1',
    '11451100',
    'CNRFC',
    'CA',
    '18020116',
    'NF CACHE C A HOUGH SPRING NR CLEARLAKE OAKS CA',
    39.16556,
    -122.61889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HOUC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15030099,
    'YLOC1',
    '11452500',
    'CNRFC',
    'CA',
    '18020110',
    'CACHE C A YOLO CA',
    38.72722,
    -121.80611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'YLOC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8015823,
    'PCGC1',
    '11453500',
    'CNRFC',
    'CA',
    '18020117',
    'PUTAH C NR GUENOC CA',
    38.77889,
    -122.51639
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PCGC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 15033009,
    'PUCC1',
    '11454000',
    'CNRFC',
    'CA',
    '18020109',
    'PUTAH C NR WINTERS CA',
    38.51528,
    -122.08083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PUCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8246406,
    'RCLC1',
    '11525530',
    'CNRFC',
    'CA',
    '18010211',
    'RUSH C NR LEWISTON CA',
    40.72472,
    -122.83361
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RCLC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BOCC2',
    NULL,
    'MBRFC',
    'CO',
    NULL,
    'Boulder Creek (CO) at Boulder',
    40.0,
    -105.27111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOCC2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 1752137,
    'FSHN6',
    '01421000',
    'MARFC',
    'NY',
    '2040102',
    'EAST BRANCH DELAWARE RIVER AT FISHS EDDY NY',
    41.97356,
    -75.17519
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'FSHN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2617324,
    'LDVN6',
    '01427207',
    'MARFC',
    'NY',
    '2040101',
    'DELAWARE RIVER AT LORDVILLE NY',
    41.86728,
    -75.21375
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LDVN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'BWVT1',
    NULL,
    'LMRFC',
    'TN',
    NULL,
    'Hatchie River near Brownsville 3S',
    35.52527,
    -89.25416
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BWVT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'MCNC1',
    NULL,
    'CNRFC',
    'CA',
    NULL,
    'Cosumnes River at McConnell',
    38.35583,
    -121.33888
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCNC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'CWOL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Calcasieu River at White Oak Park',
    30.28805,
    -93.11861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CWOL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 3473207,
    'ALLM4',
    '04107850',
    'NCRFC',
    'MI',
    '4050003',
    'KALAMAZOO RIVER NEAR ALLEGAN  MI',
    42.48225575,
    -85.798355
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ALLM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24177469,
    'PYDI1',
    '13238500',
    'NWRFC',
    'ID',
    '17050123',
    'PAYETTE LAKE AT MCCALL ID',
    44.91222,
    -116.11917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PYDI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13204453,
    'SAGM4',
    '04157005',
    'NCRFC',
    'MI',
    '4080206',
    'SAGINAW RIVER AT HOLLAND AVENUE AT SAGINAW  MI',
    43.4219699,
    -83.951918
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAGM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11919769,
    'CJTI4',
    '05465100',
    'NCRFC',
    'IA',
    NULL,
    'Columbus Junction',
    41.2783,
    -91.3467
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CJTI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23735991,
    'LSNO3',
    '14141500',
    'NWRFC',
    'OR',
    '17080001',
    'LITTLE SANDY RIVER NEAR BULL RUN  OR',
    45.41556,
    -122.17028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LSNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 12256014,
    'VCKM4',
    '04097170',
    'NCRFC',
    'MI',
    '4050001',
    'PORTAGE RIVER AT W AVENUE NEAR VICKSBURG  MI',
    42.1147685,
    -85.4855509
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VCKM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13653556,
    'HILW3',
    '05404116',
    'NCRFC',
    'WI',
    '7070004',
    'WEST BRANCH BARABOO RIVER AT HILLSBORO  WI',
    43.65277778,
    -90.3358333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'HILW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9499614,
    'CNQN6',
    '01306460',
    'NERFC',
    'NY',
    '2030202',
    'CONNETQUOT BK NR CENTRAL ISLIP NY',
    40.77194,
    -73.15861
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CNQN6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT NULL,
    'OTBL1',
    NULL,
    'LMRFC',
    'LA',
    NULL,
    'Calcasieu River near Old Town Bay',
    30.28805,
    -93.13555
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'OTBL1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23300546,
    'SWAI1',
    '13172500',
    'NWRFC',
    'ID',
    '17050103',
    'SNAKE RIVER NR MURPHY ID',
    43.25481,
    -116.39064
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SWAI1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2387088,
    'SAVM5',
    NULL,
    'NCRFC',
    'MN',
    NULL,
    'Savage',
    44.7867,
    -93.3344
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SAVM5'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21434295,
    'BHDA3',
    '09421500',
    'CBRFC',
    'AZ',
    '15030101',
    'COLORADO RV BLW HOOVER DAM  AZ-NV',
    36.01528,
    -114.73778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BHDA3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293902,
    'MCAM8',
    '12323670',
    'NWRFC',
    'MT',
    '17010201',
    'Mill Creek nr Anaconda  MT',
    46.08297,
    -112.91719
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCAM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293900,
    'MCOM8',
    '12323700',
    'NWRFC',
    'MT',
    '17010201',
    'Mill Creek at Opportunity  MT',
    46.11438,
    -112.81978
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCOM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293950,
    'WCAM8',
    '12323710',
    'NWRFC',
    'MT',
    '17010201',
    'Willow Creek nr Anaconda  MT',
    46.06451,
    -112.89353
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCAM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293942,
    'WCOM8',
    '12323720',
    'NWRFC',
    'MT',
    '17010201',
    'Willow Creek at Opportunity  MT',
    46.10716,
    -112.81061
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WCOM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19643650,
    'SPTT1',
    '03571850',
    'LMRFC',
    'TN',
    '6030001',
    'TENNESSEE RIVER AT SOUTH PITTSBURG  TN',
    35.0,
    -85.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPTT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24293772,
    'LCGM8',
    '12323850',
    'NWRFC',
    'MT',
    '17010201',
    'Lost Creek near Galen  MT',
    46.21857,
    -112.77417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'LCGM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 19696547,
    'CHAT1',
    '03568000',
    'LMRFC',
    'TN',
    '6020001',
    'TENNESSEE RIVER AT CHATTANOOGA  TN',
    35.05083,
    -85.305
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CHAT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20104065,
    'ESLS1',
    '02198375',
    'SERFC',
    'SC',
    '3060109',
    'SAVANNAH RIVER NEAR ESTILL  SC',
    32.70333,
    -81.42833
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ESLS1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 9008387,
    'GDRM4',
    '04119000',
    'NCRFC',
    'MI',
    '4050006',
    'GRAND RIVER AT GRAND RAPIDS  MI',
    42.96306,
    -85.67722
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GDRM4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 21876099,
    'GLNM8',
    '06327500',
    'MBRFC',
    'MT',
    '10100004',
    'Yellowstone River at Glendive  MT',
    47.10589,
    -104.71843
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GLNM8'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 22143174,
    'SEVT1',
    '03470000',
    'LMRFC',
    'TN',
    '6010107',
    'LITTLE PIGEON RIVER AT SEVIERVILLE  TN',
    35.88111,
    -83.57611
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SEVT1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11916061,
    'NEPI4',
    '05455270',
    'NCRFC',
    'IA',
    NULL,
    'North English 4E (Near Parnell)',
    41.5267,
    -91.9875
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'NEPI4'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 18181115,
    'SHBM6',
    '02477350',
    'LMRFC',
    'MS',
    '3170002',
    'CHICKASAWHAY RIVER AT SHUBUTA  MS',
    31.86416,
    -88.69472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SHBM6'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 10693693,
    'KCCN2',
    '10249280',
    'CNRFC',
    'NV',
    '16060004',
    'KINGSTON CK BLW COUGAR CYN NR AUSTIN  NV',
    39.2125,
    -117.1125
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KCCN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8919959,
    'ACLN2',
    '10311200',
    'CNRFC',
    'NV',
    '16050201',
    'ASH CYN CK NR CARSON CITY  NV',
    39.17639,
    -119.80472
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACLN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 430036,
    'RPCO2',
    '07331300',
    'ABRFC',
    'OK',
    '11130304',
    'Pennington Creek near Reagan  OK',
    34.35133,
    -96.71039
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RPCO2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 13082255,
    'RILW3',
    '05367425',
    'NCRFC',
    'WI',
    '7050007',
    'RED CEDAR RIVER AT HWY 8 NEAR CAMERON  WI',
    45.40134729,
    -91.7776713
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RILW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 5482173,
    'SPFS2',
    '06430900',
    'MBRFC',
    'SD',
    '10120203',
    'SPEARFISH CREEK ABOVE SPEARFISH  SD',
    44.40666,
    -103.89805
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SPFS2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8942877,
    'THCN2',
    '10336698',
    'CNRFC',
    'NV',
    '16050101',
    'THIRD CK NR CRYSTAL BAY  NV',
    39.24056,
    -119.94556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'THCN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8942501,
    'GBKN2',
    '10336730',
    'CNRFC',
    'NV',
    '16050101',
    'GLENBROOK CK AT GLENBROOK  NV',
    39.0875,
    -119.93889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GBKN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8931976,
    'DOGN2',
    '10347310',
    'CNRFC',
    'NV',
    '16050102',
    'DOG CK AT VERDI  NV',
    39.52444,
    -119.99444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'DOGN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8932132,
    'MOGN2',
    '10347460',
    'CNRFC',
    'NV',
    '16050102',
    'TRUCKEE RV NR MOGUL  NV',
    39.50722,
    -119.93083
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MOGN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8932012,
    'TRRN2',
    '10348000',
    'CNRFC',
    'NV',
    '16050102',
    'TRUCKEE RV AT RENO  NV',
    39.53028,
    -119.79444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRRN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8935004,
    'SSLN2',
    '10349849',
    'CNRFC',
    'NV',
    '16050102',
    'STEAMBOAT CK AT SHORT LN AT RENO  NV',
    39.46583,
    -119.7275
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SSLN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8932212,
    'SCWN2',
    '10349980',
    'CNRFC',
    'NV',
    '16050102',
    'STEAMBOAT CK AT CLEANWATER WAY NR RENO  NV',
    39.51306,
    -119.71139
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'SCWN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8932092,
    'VISN2',
    '10350000',
    'CNRFC',
    'NV',
    '16050102',
    'TRUCKEE RV AT VISTA  NV',
    39.52056,
    -119.7
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'VISN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 20355400,
    'AQCC1',
    '11048200',
    'CNRFC',
    'CA',
    '18070204',
    'AGUA CHINON WASH NR IRVINE CA',
    33.68708,
    -117.69542
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AQCC1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 8931712,
    'TBDN2',
    '10351600',
    'CNRFC',
    'NV',
    '16050102',
    'TRUCKEE RV BLW DERBY DAM NR WADSWORTH  NV',
    39.58472,
    -119.44028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TBDN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 11313919,
    'WADN2',
    '10351650',
    'CNRFC',
    'NV',
    '16050103',
    'TRUCKEE RV AT WADSWORTH  NV',
    39.63222,
    -119.28222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WADN2'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23659574,
    'BLMO3',
    '14034480',
    'NWRFC',
    'OR',
    '17070104',
    'BALM FORK NEAR HEPPNER  OR',
    45.33222,
    -119.54
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BLMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947110179,
    'BOXW1',
    '12143900',
    'NWRFC',
    'WA',
    '17110010',
    'BOXLEY CREEK NEAR EDGEWICK  WA',
    47.44889,
    -121.73056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOXW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23970199,
    'CRNW1',
    '12149000',
    'NWRFC',
    'WA',
    '17110010',
    'SNOQUALMIE RIVER NEAR CARNATION  WA',
    47.66611,
    -121.92417
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'CRNW1'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24091974,
    'ACLO3',
    '11503000',
    'CNRFC',
    'OR',
    '18010203',
    'ANNIE SPRING NEAR CRATER LAKE  OR',
    42.87167,
    -122.16778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ACLO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23901297,
    'AZAO3',
    '14309000',
    'NWRFC',
    'OR',
    '17100302',
    'COW CREEK NEAR AZALEA  OR',
    42.825,
    -123.17778
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AZAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23894558,
    'BODO3',
    '14316495',
    'NWRFC',
    'OR',
    '17100301',
    'BOULDER CREEK NEAR TOKETEE FALLS  OR',
    43.30361,
    -122.52917
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BODO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 6841945,
    'PBIW3',
    '04066003',
    'NCRFC',
    'WI',
    '4030108',
    'MENOMINEE RIVER BELOW PEMENE CREEK NEAR PEMBINE WI',
    45.5794444,
    -87.7869444
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PBIW3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23930882,
    'ASCO3',
    '14353000',
    'NWRFC',
    'OR',
    '17100308',
    'WEST FORK ASHLAND CREEK NEAR ASHLAND  OR',
    42.14889,
    -122.71556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ASCO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23930872,
    'BCAO3',
    '14354200',
    'NWRFC',
    'OR',
    '17100308',
    'BEAR CREEK BLW ASHLAND CREEK AT ASHLAND  OR',
    42.21611,
    -122.72111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BCAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23936033,
    'APPO3',
    '14362000',
    'NWRFC',
    'OR',
    '17100309',
    'APPLEGATE RIVER NEAR COPPER  OR',
    42.06389,
    -123.11028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APPO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23935947,
    'APRO3',
    '14366000',
    'NWRFC',
    'OR',
    '17100309',
    'APPLEGATE RIVER NEAR APPLEGATE  OR',
    42.24167,
    -123.13889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'APRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23935811,
    'ARWO3',
    '14369500',
    'NWRFC',
    'OR',
    '17100309',
    'APPLEGATE RIVER NEAR WILDERVILLE  OR',
    42.35417,
    -123.40556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'ARWO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23940255,
    'AGNO3',
    '14372300',
    'NWRFC',
    'OR',
    '17100310',
    'ROGUE RIVER NEAR AGNESS  OR',
    42.57861,
    -124.05694
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'AGNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 24081559,
    'WKAO3',
    '11493500',
    'CNRFC',
    'OR',
    '18010201',
    'WILLIAMSON RIVER NEAR KLAMATH AGENCY  OR',
    42.74028,
    -121.83333
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WKAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 2553639,
    'KEOO3',
    '11509500',
    'CNRFC',
    'OR',
    '18010206',
    'KLAMATH RIVER AT KENO  OR',
    42.13333,
    -121.96111
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'KEOO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 358949,
    'BOYO3',
    '11510700',
    'CNRFC',
    'OR',
    '18010206',
    'KLAMATH RIVER BLW JOHN C.BOYLE PWRPLNT  NR KENO OR',
    42.08472,
    -122.07222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'BOYO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23436993,
    'MNMO3',
    '13331500',
    'NWRFC',
    'OR',
    '17060105',
    'MINAM RIVER AT MINAM  OR',
    45.62,
    -117.72556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MNMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23442119,
    'TRYO3',
    '13333000',
    'NWRFC',
    'OR',
    '17060106',
    'GRANDE RONDE RIVER AT TROY  OR',
    45.94583,
    -117.45
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'TRYO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23648622,
    'GIBO3',
    '14020000',
    'NWRFC',
    'OR',
    '17070103',
    'UMATILLA RIVER ABOVE MEACHAM CREEK  NR GIBBON  OR',
    45.71972,
    -118.32222
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'GIBO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23648490,
    'MCGO3',
    '14020300',
    'NWRFC',
    'OR',
    '17070103',
    'MEACHAM CREEK AT GIBBON  OR',
    45.68889,
    -118.35556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MCGO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23648422,
    'PDUO3',
    '14020850',
    'NWRFC',
    'OR',
    '17070103',
    'UMATILLA R AT W RESERVATION BNDY NR PENDLETON  OR',
    45.67167,
    -118.73556
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'PDUO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23647724,
    'UMAO3',
    '14033500',
    'NWRFC',
    'OR',
    '17070103',
    'UMATILLA RIVER NEAR UMATILLA  OR',
    45.90306,
    -119.32583
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'UMAO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23659572,
    'WILO3',
    '14034500',
    'NWRFC',
    'OR',
    '17070104',
    'WILLOW CREEK AT HEPPNER  OR',
    45.35056,
    -119.54889
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'WILO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23822685,
    'JBMO3',
    '14036860',
    'NWRFC',
    'OR',
    '17070201',
    'JOHN DAY R AT BLUE MTN HOT SPGS NR PRAIRIE CITY OR',
    44.35806,
    -118.575
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JBMO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23822553,
    'JHNO3',
    '14038530',
    'NWRFC',
    'OR',
    '17070201',
    'JOHN DAY RIVER NEAR JOHN DAY  OR',
    44.41861,
    -118.90528
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'JHNO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 23681167,
    'RTRO3',
    '14044000',
    'NWRFC',
    'OR',
    '17070203',
    'MIDDLE FORK JOHN DAY RIVER AT RITTER  OR',
    44.88889,
    -119.14028
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'RTRO3'
);

INSERT INTO wres.Feature (
    comid,
    lid,
    gage_id,
    region,
    state,
    huc,
    feature_name,
    latitude,
    longitude
)
SELECT 947070134,
    'MONO3',
    '14046000',
    'NWRFC',
    'OR',
    '17070202',
    'NORTH FORK JOHN DAY RIVER AT MONUMENT  OR',
    44.81389,
    -119.43056
WHERE NOT EXISTS (
    SELECT 1
    FROM wres.Feature F
    WHERE F.lid = 'MONO3'
);

INSERT INTO wres.Feature (
)
);