#Запрос на мейлы
select payture_users.user_id, u.email
from payture_users
join u 
on payture_users.user_id = u.zuid
where payture_users.is_deleted = false
and u.email is not NULL
and payture_users.user_id not in
(
    select
    app_subscription.user_id
    from app_subscription
    where is_trial = false
      and expiration_date > '2015-09-09'
      and start_date < '2015-11-09'
      and status = 'confirmed'
      and price > 5
      and platform in ('apple', 'google', 'zvooq')
)
;

#Запрос на мейлы
select count(distinct user_id)
from playevent
where ok_flag = true
and day >= '2015-09-09'
and day < '2015-11-09'
and user_id in 
(
21696857 ,
5560852 ,
4178965 ,
13654542 ,
22151704 ,
21338871 ,
3493185 ,
23450010 ,
22137252 ,
22163479 ,
22172216 ,
22175456 ,
22179100 ,
17458082 ,
22180708 ,
21972477 ,
22184008 ,
22190584 ,
22190785 ,
22190814 ,
22192430 ,
22194489 ,
22195347 ,
21769465 ,
8264788 ,
22201503 ,
22204129 ,
22174592 ,
22198662 ,
22229805 ,
22234940 ,
22237331 ,
22185413 ,
22271853 ,
22261724 ,
22282567 ,
22228581 ,
22292367 ,
17954200 ,
22297532 ,
22232003 ,
22303822 ,
22640706 ,
22329991 ,
22343731 ,
23478126 ,
22302975 ,
22349167 ,
22304073 ,
21757890 ,
22385183 ,
22385273 ,
22468642 ,
22475707 ,
22476125 ,
22134283 ,
22522297 ,
22538727 ,
22548885 ,
22556552 ,
22590836 ,
22606420 ,
22606653 ,
22612627 ,
22623755 ,
22627869 ,
22526493 ,
4586533 ,
22632564 ,
21670113 ,
22384209 ,
22635765 ,
22647729 ,
22648406 ,
22652837 ,
22655155 ,
22643366 ,
22648933 ,
21470003 ,
22693521 ,
22693592 ,
12480568 ,
22754795 ,
23383719 ,
22757382 ,
22759081 ,
22761576 ,
4591337 ,
22767013 ,
22649053 ,
22767024 ,
22766079 ,
22773519 ,
22776048 ,
22782061 ,
4582192 ,
22805741 ,
22804799 ,
22806148 ,
22791176 ,
22690624 ,
3111657 ,
22793713 ,
4406765 ,
23517888 ,
23465238 ,
22805467 ,
22807340 ,
22615994 ,
22806894 ,
10759341 ,
22807995 ,
22807192 ,
22805735 ,
22808777 ,
22809059 ,
22819084 ,
22813176 ,
22809337 ,
22815863 ,
22587842 ,
23507591 ,
22811847 ,
20039947 ,
22812273 ,
10778035 ,
22810716 ,
22812351 ,
22816453 ,
22812526 ,
22811414 ,
22811408 ,
22812602 ,
22813521 ,
22819956 ,
4579333 ,
22829648 ,
22820291 ,
22823731 ,
4582349 ,
8494415 ,
22837020 ,
22677252 ,
22833759 ,
22840677 ,
22903506 ,
22868016 ,
6503574 ,
22944279 ,
22869436 ,
7366817 ,
22871288 ,
22962456 ,
5541668 ,
22876969 ,
6577958 ,
22448195 ,
22134562 ,
22891067 ,
22867236 ,
4225386 ,
22899683 ,
22984678 ,
23040505 ,
22165469 ,
23063688 ,
22702065 ,
23104317 ,
23158779 ,
23463406 ,
4619756 ,
10405426 ,
23116544 ,
22546379 ,
23120922 ,
23122163 ,
4651085 ,
23124657 ,
23124973 ,
6562830 ,
19791963 ,
23133387 ,
13818221 ,
23121288 ,
23140185 ,
22918365 ,
22850365 ,
23142372 ,
21327531 ,
23151899 ,
23153453 ,
23166861 ,
22253139 ,
23173381 ,
22223231 ,
2460559 ,
23412036 ,
23185038 ,
22795069 ,
23188371 ,
21315577 ,
23119479 ,
23194222 ,
22142564 ,
23200090 ,
23209423 ,
22442620 ,
23223232 ,
21454478 ,
22942959 ,
23111902 ,
23124696 ,
23236653 ,
21391541 ,
22654562 ,
23232597 ,
21532857 ,
23240342 ,
23244537 ,
23247329 ,
22513281 ,
23248278 ,
23248399 ,
23249285 ,
23085753 ,
23256047 ,
23257781 ,
15471720 ,
22585701 ,
23273074 ,
23193220 ,
2587264 ,
21888087 ,
23280678 ,
14118090 ,
23289527 ,
23289669 ,
23201040 ,
23291419 ,
23292528 ,
23291436 ,
22891385 ,
21344124 ,
23299127 ,
23221519 ,
23300119 ,
23302103 ,
23237850 ,
2697179 ,
22819741 ,
8140856 ,
23308314 ,
23083572 ,
14510789 ,
23311468 ,
21698585 ,
23317083 ,
22522051 ,
4564114 ,
23320211 ,
23155569 ,
4523412 ,
22112465 ,
22941486 ,
5535542 ,
22492001 ,
13105414 ,
3445370 ,
23138923 ,
3726663 ,
22291164 ,
2995029 ,
23365897 ,
23470011 ,
23368003 ,
23382916 ,
23383267 ,
21619450 ,
22981085 ,
4580168 ,
23405871 ,
23406638 ,
5282120 ,
23413584 ,
23463751 ,
23416706 ,
23420722 ,
4404297 ,
23417231 ,
23428110 ,
4580062 ,
23415440 ,
21912886 ,
23433359 ,
4434973 ,
23473867 ,
23480177 ,
21940433 ,
3104035 ,
2676492 ,
23406279 ,
23550538 ,
23555657 ,
16295774 ,
8995398 ,
6724271 ,
23560948 ,
23559806 ,
23561515 ,
23193239 ,
22959200 ,
23565507 ,
23565813 ,
22314885 ,
23567265 ,
21344663 ,
23480392 ,
23571466 ,
22210895 ,
23575117 ,
23371094 ,
23582381 ,
23586940 ,
17737256 ,
2820329 ,
2592628 ,
23572834 ,
4375496 ,
3434621 ,
22798341 ,
2281312 ,
23620731 ,
2337411 ,
21176423 ,
4042621 ,
23641427 ,
22753239 ,
23659458 ,
21610417 ,
23287943 ,
22691799 ,
3701772 ,
23679830 ,
23681035 ,
21716115 ,
22853008 ,
23687203 ,
23704242 ,
2430387 ,
22979178 ,
22935685 ,
4541798 ,
23686780 ,
4636441 ,
4630212 ,
23742873 ,
23755730 ,
16545133 ,
2753378 ,
23769896 ,
2696320 ,
23782154 ,
23779550 ,
23791374 ,
22023029 ,
23796368 ,
23800756 ,
23645044 ,
23803172 ,
4555263 ,
16783140 ,
22358807 ,
23180381 ,
23821257 ,
22250088 ,
23460940 ,
17897868 ,
3313721 ,
23848198 ,
23826339 ,
2516061 ,
22368513 ,
4314163 ,
23870366 ,
2370619 ,
22525043 ,
12131584 ,
23556402 ,
23807583 ,
21662065 ,
22806182 ,
22274699 ,
20805793 ,
23912394 ,
23641322 ,
6875705 ,
4624933 ,
23920439 ,
6335763 ,
2519843 ,
2658130 ,
5730997 ,
23932738 ,
23931285 ,
4586736 ,
23934470 ,
23945686 ,
4166036 ,
23954412 ,
22706116 ,
23943299 ,
23957133 ,
23960689 ,
23961494 ,
23960728 ,
21535951 ,
23973647 ,
23985856 ,
15505688 ,
22338227 ,
24005863 ,
6958208 ,
17961240 ,
22108897 ,
24031712 ,
22587002 ,
13313638 ,
22307724 ,
4624409 ,
24036405 ,
6122026 ,
24043242 ,
21944148 ,
3514989 ,
23646013 ,
24065171 ,
2959201 ,
22393465 ,
4681129 ,
24073620 ,
24076551 ,
24088510 ,
2284555 ,
3968121 ,
22612534 ,
24131599 ,
22555142 ,
23830293 ,
22396970 ,
24132331 ,
21561149 ,
24132632 ,
22841274 ,
24132714 ,
22483599 ,
23911627 ,
24132941 ,
24133065 ,
22998451 ,
24080900 ,
24133191 ,
24128399 ,
21386646 ,
23580978 ,
24134013 ,
24134105 ,
23224671 ,
23529472 ,
23659049 ,
22909076 ,
24134328 ,
23114087 ,
23785234 ,
24135307 ,
23146139 ,
24131728 ,
24135805 ,
24121489 ,
24136104 ,
24126420 ,
24120970 ,
24004794 ,
23295888 ,
24067257 ,
23838732 ,
24136545 ,
24137002 ,
21368664 ,
24137309 ,
23233215 ,
24137345 ,
4578329 ,
23264305 ,
21630165 ,
24010889 ,
21486541 ,
3667140 ,
9755867 ,
23974442 ,
23842837 ,
24089992 ,
24071332 ,
4686972 ,
24138325 ,
22343013 ,
4621047 ,
24125854 ,
23464488 ,
23964144 ,
24139193 ,
24102457 ,
22769939 ,
24138236 ,
21245050 ,
23609788 ,
23701534 ,
4058913 ,
18367704 ,
23373996 ,
24138919 ,
24139025 ,
22303954 ,
22713334 ,
4623591 ,
23989571 ,
23764410 ,
24136423 ,
23730361 ,
24139539 ,
23690292 ,
4623630 ,
22987460 ,
24139602 ,
21601805 ,
2444604 ,
21365433 ,
23981106 ,
24140126 ,
23920927 ,
24104921 ,
24140323 ,
23832289 ,
24140821 ,
4140505 ,
22720871 ,
20737996 ,
23980883 ,
2386286 ,
24013064 ,
22341193 ,
23261267 ,
2780377 ,
24142231 ,
23718003 ,
24142318 ,
22113953 ,
22756002 ,
24142623 ,
24142633 ,
24143036 ,
21907404 ,
24143083 ,
24143013 ,
24143244 ,
24143508 ,
5434643 ,
23469891 ,
23649964 ,
23890288 ,
22203830 ,
23618273 ,
23985358 ,
10630154 ,
19845311 ,
4598618 ,
22611537 ,
24143874 ,
24033249 ,
24144661 ,
24144695 ,
24144771 ,
24144738 ,
24144895 ,
23343205 ,
23749199 ,
23823709 ,
22638758 ,
24145178 ,
23715498 ,
24143044 ,
24142767 ,
23698549 ,
23466193 ,
22344490 ,
22344490 ,
24139701 ,
24145943 ,
24071847 ,
23557137 ,
23771360 ,
24065313 ,
21596404 ,
23775716 ,
23029331 ,
24092140 ,
24147262 ,
24121649 ,
22336673 ,
24147513 ,
24097005 ,
23851625 ,
24119309 ,
23267115 ,
23388454 ,
24146963 ,
24072444 ,
23852195 ,
23913364 ,
24148731 ,
24008055 ,
10320450 ,
21313596 ,
23762987 ,
24149447 ,
22918685 ,
24150607 ,
23349991 ,
23821181 ,
23407922 ,
24151410 ,
24105433 ,
21610227 ,
23395190 ,
24152094 ,
24125695 ,
24152309 ,
24151653 ,
23220033 ,
24152734 ,
24153145 ,
24153218 ,
23496757 ,
22958822 ,
24154349 ,
2665928 ,
24155263 ,
24155918 ,
12002189 ,
24156208 ,
24092087 ,
24062582 ,
24156516 ,
11405979 ,
3465297 ,
22542317 ,
24157045 ,
23209638 ,
24157337 ,
24157479 ,
24088539 ,
24157757 ,
24158046 ,
23932956 ,
24158014 ,
24158176 ,
24158703 ,
4587599 ,
24159193 ,
24159457 ,
24159579 ,
24159802 ,
24160097 ,
24015521 ,
23924988 ,
22442998 ,
23799606 ,
22351626 ,
24160604 ,
24160781 ,
22725010 ,
23391886 ,
10883056 ,
23820633 ,
23684370 ,
24161416 ,
24161122 ,
23977313 ,
24161839 ,
22168263 ,
24162415 ,
21923162 ,
21593980 ,
22168873 ,
24116877 ,
23771457 ,
22126837 ,
21441139 ,
23938073 ,
22637768 ,
22537984 ,
24165493 ,
24165629 ,
23981730 ,
24076238 ,
24142521 ,
22158009 ,
24166946 ,
24167433 ,
21807714 ,
23459346 ,
23961248 ,
24168350 ,
8065141 ,
24168852 ,
24169006 ,
24169110 ,
24027920 ,
23807182 ,
24169302 ,
24169381 ,
3938835 ,
4581145 ,
22647659 ,
24169718 ,
24169735 ,
24170024 ,
22964023 ,
4552010 ,
9025927 ,
23938173 ,
22370290 ,
23649794 ,
24171507 ,
24171563 ,
24171738 ,
23355537 ,
24172161 ,
23456015 ,
24172440 ,
24122903 ,
23590494 ,
24174214 ,
24174199 ,
22729397 ,
24174558 ,
21954067 ,
23349335 ,
23736634 ,
22254172 ,
24176823 ,
4591282 ,
24177777 ,
24177680 ,
23842405 ,
24177261 ,
24136781 ,
24178692 ,
24179021 ,
24179250 ,
22277487 ,
21891536 ,
22694559 ,
23953667 ,
24180352 ,
5774789 ,
23972921 ,
24180705 ,
24181025 ,
24181525 ,
23916303 ,
23669717 ,
24181888 ,
23915559 ,
23996899 ,
24182930 ,
23422191 ,
24183148 ,
24183604 ,
13495596 ,
22214470 ,
23491520 ,
24183893 ,
23606011 ,
24184123 ,
16107534 ,
22585580 ,
23968158 ,
24185221 ,
21423121 ,
24185100 ,
24185287 ,
24186566 ,
24173590 ,
23849899 ,
21394122 ,
24034660 ,
23193756 ,
24187640 ,
7560176 ,
24188099 ,
24188140 ,
23158507 ,
24187466 ,
18487992 ,
23525316 ,
24188919 ,
24189217 ,
21528709 ,
24021025 ,
23438356 ,
23348866 ,
24169238 ,
24191441 ,
22441786 ,
21716677 ,
24192724 ,
24188116 ,
24193430 ,
24185447 ,
4228093 ,
23003512 ,
24116735 ,
4383231 ,
24193799 ,
21415786 ,
24195026 ,
23539171 ,
24071303 ,
24195532 ,
24194794 ,
24114054 ,
24196133 ,
21818720 ,
24198963 ,
22258042 ,
24142968 ,
22608300 ,
23339467 ,
24199264 ,
24199111 ,
24191543 ,
24199758 ,
22023264 ,
3634424 ,
24200102 ,
24018343 ,
21563146 ,
21980065 ,
24200464 ,
24201486 ,
24201514 ,
23502801 ,
24093150 ,
24085462 ,
24202986 ,
24203007 ,
24203103 ,
24203277 ,
24203125 ,
24203362 ,
21488277 ,
23948068 ,
23580181 ,
24198885 ,
24152079 ,
24205073 ,
22493201 ,
24181719 ,
23994529 ,
23110937 ,
23723096 ,
23985291 ,
23114620 ,
21964524 ,
24207962 ,
24081795 ,
23748150 ,
21971150 ,
22988042 ,
21412461 ,
23337193 ,
24208819 ,
23460381 ,
24209347 ,
22888260 ,
23361131 ,
21793457 ,
22722877 ,
16908736 ,
23898618 ,
24210351 ,
22074209 ,
24210208 ,
24210968 ,
24211017 ,
23168919 ,
24210492 ,
23996268 ,
23450854 ,
24213081 ,
23589139 ,
21342732 ,
23462206 ,
21701026 ,
23329354 ,
22279995 ,
22846223 ,
24216310 ,
24216571 ,
24217400 ,
24217147 ,
22297258 ,
24217797 ,
24218227 ,
22469052 ,
23928448 ,
24218708 ,
24218927 ,
21898863 ,
21697849 ,
24220366 ,
24220891 ,
21897066 ,
24221589 ,
24221899 ,
23121399 ,
24222604 ,
23904285 ,
24201936 ,
24222895 ,
24107089 ,
22500837 ,
24223307 ,
24223350 ,
15430212 ,
24223837 ,
23588618 ,
24215942 ,
23849194 ,
23872248 ,
24225463 ,
22445079 ,
24226766 ,
24132218 ,
24226954 ,
23338916 ,
23580300 ,
24227625 ,
24210346 ,
23656059 ,
24227750 ,
24227840 ,
21742133 ,
24227995 ,
24228101 ,
24227933 ,
23737376 ,
21971704 ,
24230543 ,
23823783 ,
24230653 ,
24230727 ,
24231189 ,
23650376 ,
24232091 ,
24075659 ,
23422513 ,
22875527 ,
23127625 ,
24146861 ,
24234761 ,
13251574 ,
24227889 ,
23599991 ,
24008250 ,
21438454 ,
22381019 ,
21582460 ,
24230142 ,
21561021 ,
24238049 ,
23135076 ,
9461396 ,
23588836 ,
24239507 ,
2885561 ,
23934466 ,
23891632 ,
23377246 ,
23682336 ,
23455653 ,
23214163 ,
23107548 ,
24010090 ,
23263896 ,
24140469 ,
24017862 ,
24244073 ,
23281660 ,
23485064 ,
21971052 ,
23380256 ,
24244622 ,
24244679 ,
2284073 ,
24244837 ,
24210699 ,
24246362 ,
10291517 ,
24246643 ,
24096642 ,
24247202 ,
22923459 ,
21723582 ,
22672328 ,
24248505 ,
24182469 ,
23721092 ,
22539730 ,
24108464 ,
24249854 ,
24250510 ,
21923582 ,
24250788 ,
24252371 ,
21578444 ,
23679962 ,
24253428 ,
23170447 ,
23441327 ,
22730461 ,
24253228 ,
21787838 ,
24255922 ,
23529562 ,
24258232 ,
21931776 ,
24258344 ,
24258369 ,
21909520 ,
24258548 ,
22876166 ,
23500422 ,
22813844 ,
24259928 ,
24260175 ,
23492780 ,
24260114 ,
24260656 ,
24152241 ,
24261149 ,
24261705 ,
21920273 ,
21689789 ,
24262337 ,
21713696 ,
24262851 ,
23608657 ,
23271874 ,
24263625 ,
24264032 ,
22050412 ,
24264675 ,
22658375 ,
21745026 ,
24018122 ,
23843513 ,
23823622 ,
24266007 ,
22922928 ,
23709534 ,
23400981 ,
23295719 ,
23607037 ,
24251188 ,
24266895 ,
24267057 ,
22495453 ,
23341161 ,
24268370 ,
22771467 ,
23570144 ,
24269529 ,
24269830 ,
22852733 ,
21769324 ,
24163163 ,
5793828 ,
22071768 ,
24176417 ,
22549725 ,
21574302 ,
24272574 ,
24272872 ,
24250716 ,
24273174 ,
23287855 ,
24273600 ,
24274240 ,
21579752 ,
23480838 ,
24274832 ,
24273894 ,
23823363 ,
24274888 ,
22315647 ,
23005348 ,
24039924 ,
24276383 ,
23926620 ,
24277379 ,
4701744 ,
21588229 ,
24277851 ,
24276806 ,
24278875 ,
23805262 ,
24278936 ,
23180526 ,
23202484 ,
24280983 ,
24282799 ,
24004504 ,
16225954 ,
24283165 ,
24283351 ,
23865723 ,
24284387 ,
24284716 ,
24284997 ,
24284985 ,
24285460 ,
24285495 ,
21315503 ,
23092300 ,
22692435 ,
23813288 ,
21629068 ,
22158004 ,
23396736 ,
24121462 ,
24287605 ,
23792576 ,
4141650 ,
24044775 ,
22680038 ,
24112086 ,
22992459 ,
3139305 ,
21471286 ,
23971564 ,
24290102 ,
23850280 ,
24290192 ,
24290400 ,
23441879 ,
24290627 ,
24290478 ,
23092164 ,
21717498 ,
24291836 ,
22727137 ,
23460368 ,
24106663 ,
24293079 ,
22975271 ,
3777501 ,
23009821 ,
24008102 ,
24245246 ,
24295321 ,
21428837 ,
23244340 ,
24067457 ,
23488582 ,
24297571 ,
24297703 ,
8331520 ,
24298178 ,
24298932 ,
23109177 ,
23370484 ,
24292840 ,
23181694 ,
3171771 ,
23040900 ,
24301477 ,
24245702 ,
24303045 ,
21726588 ,
23819922 ,
24273444 ,
24305518 ,
24305568 ,
24305635 ,
21379952 ,
23331294 ,
23327867 ,
24307805 ,
23532494 ,
23988227 ,
23121928 ,
24308275 ,
22337679 ,
2587740 ,
24308465 ,
24303865 ,
24308933 ,
24131171 ,
24229513 ,
23145874 ,
24306903 ,
24006119 ,
22791170 ,
24121359 ,
23649243 ,
10670859 ,
21374460 ,
2687968 ,
24310512 ,
24310747 ,
24304988 ,
21896859 ,
21455694 ,
24117997 ,
24270927 ,
24103172 ,
24312878 ,
21569544 ,
4595768 ,
24311550 ,
24313306 ,
21478257 ,
24312952 ,
23702806 ,
23280813 ,
24314462 ,
22127331 ,
23377566 ,
22220988 ,
23086981 ,
24228734 ,
24314883 ,
24136758 ,
24316334 ,
24313298 ,
23760303 ,
23269720 ,
24007085 ,
24318067 ,
24318364 ,
22273461 ,
21791744 ,
23607516 ,
5959147 ,
23036442 ,
24058686 ,
22646968 ,
24321744 ,
24321836 ,
24114817 ,
23435027 ,
24314467 ,
24138289 ,
24322953 ,
24323435 ,
24324825 ,
24325000 ,
24325350 ,
24325554 ,
23999487 ,
24326385 ,
21697968 ,
11178849 ,
24051808 ,
24328651 ,
23170399 ,
23561342 ,
24329941 ,
24330179 ,
24329998 ,
24236972 ,
8738147 ,
23923764 ,
21776366 ,
24331440 ,
23844979 ,
24332139 ,
24332300 ,
21825310 ,
23476443 ,
24332834 ,
24332867 ,
23428789 ,
24299229 ,
22380027 ,
23295260 ,
23606471 ,
24316591 ,
22180628 ,
24041813 ,
24335049 ,
22536779 ,
24335892 ,
24244966 ,
24337126 ,
24337329 ,
24337679 ,
24176760 ,
24337263 ,
24338677 ,
24327270 ,
24339371 ,
24340158 ,
23658896 ,
24341277 ,
21753507 ,
24016195 ,
24181093 ,
24342566 ,
23221394 ,
24187239 ,
23347670 ,
6426967 ,
22371139 ,
24320082 ,
24344612 ,
24344812 ,
24003932 ,
24345342 ,
24345387 ,
22678514 ,
24345967 ,
24146187 ,
6443365 ,
23830064 ,
24346493 ,
23206260 ,
24347820 ,
24347794 ,
23429373 ,
24102930 ,
23134066 ,
22160262 ,
24348736 ,
24349064 ,
23940680 ,
24351113 ,
24304254 ,
24351553 ,
21351088 ,
24304799 ,
22580505 ,
23505223 ,
22400375 ,
23131423 ,
23199667 ,
21691263 ,
22531936 ,
24120933 ,
24354941 ,
24354916 ,
24355124 ,
22885240 ,
24143554 ,
24041813 ,
24335049 ,
22536779 ,
24335892 ,
24244966 ,
24337126 ,
24337329 ,
24337679 ,
24176760 ,
24337263 ,
24338677 ,
24327270 ,
24339371 ,
24340158 ,
23658896 ,
24341277 ,
21753507 ,
24016195 ,
24181093 ,
24342566 ,
23221394 ,
24187239 ,
23347670 ,
6426967 ,
22371139 ,
24320082 ,
24344612 ,
24344812 ,
24003932 ,
24345342 ,
24345387 ,
22678514 ,
24345967 ,
24146187 ,
6443365 ,
23830064 ,
24346493 ,
23206260 ,
24347820 ,
24347794 ,
23429373 ,
24102930 ,
23134066 ,
22160262 ,
24348736 ,
24349064 ,
23940680 ,
24351113 ,
24304254 ,
24351553 ,
21351088 ,
24304799 ,
22580505 ,
23505223 ,
22400375 ,
23131423 ,
23199667 ,
21691263 ,
22531936 ,
24120933 ,
24354941 ,
24354916 ,
24355124 ,
22885240 ,
24143554 ,
21504426 ,
24356942 ,
24357155 ,
24150487 ,
24102254 ,
24348441 ,
23340135 ,
24358967 ,
24242473 ,
23200706 ,
21840293 ,
24359630 ,
21519818 ,
24154497 ,
24005566 ,
24361511 ,
22198454 ,
24362665 ,
21595163 ,
24363401 ,
24364518 ,
24364658 ,
23824190 ,
21892109 ,
24357861 ,
22724459 ,
22552323 ,
22326134 ,
24366967 ,
21783813 ,
24227104 ,
23337672 ,
23431162 ,
16140615 ,
22617355 ,
23564920 ,
24367928 ,
24142688 ,
22392604 ,
24332332 ,
24365731 ,
24288053 ,
23921838 ,
24325829 ,
22157153 ,
23652530 ,
24294578 ,
23983692 ,
21427795 ,
24370282 ,
22878035 ,
22586587 ,
21523005 ,
24298402 ,
23810799 ,
23836388 ,
24281686 ,
24369462 ,
24045979 ,
24186148 ,
24375448 ,
24304994 ,
3002037 ,
24234029 ,
24102554 ,
24377641 ,
23597218 ,
2582197 ,
24379696 ,
24005097 ,
24380043 ,
24380091 ,
22339084 ,
24346491 ,
24380929 ,
24381296 ,
16461392 ,
21470045 ,
23038600 ,
24383516 ,
22072617 ,
24384126 ,
22231441 ,
21898713 ,
24385316 ,
21990053 ,
22778940 ,
23148383 ,
22174952 ,
22587950 ,
21850903 ,
23459754 ,
24386311 ,
23349835 ,
22041464 ,
24387352 ,
24387304 ,
21379239 ,
23882402 ,
22490464 ,
24388305 ,
24387759 ,
24369552 ,
24389035 ,
24389154 ,
24389256 ,
24152802 ,
21840171 ,
24390027 ,
24042314 ,
21431594 ,
24390471 ,
23445675 ,
24390897 ,
23739453 ,
23372868 ,
22122529 ,
22511040 ,
24391921 ,
22111995 ,
21765363 ,
24205657 ,
22652602 ,
24394897 ,
3198955 ,
21572265 ,
24396108 ,
24396134 ,
24396419 ,
22803019 ,
22828027 ,
24394985 ,
24357017 ,
24397695 ,
21596717 ,
22445678 ,
24399576 ,
24400294 ,
23520171 ,
24392023 ,
24401048 ,
22482771 ,
24401807 ,
23472577 ,
24402214 ,
24243033 ,
24235227 ,
21908472 ,
12943573 ,
24403091 ,
24399761 ,
24330423 ,
24403502 ,
4005482 ,
22905793 ,
24404026 ,
21405588 ,
24404551 ,
22726395 ,
22435264 ,
24340844 ,
23609487 ,
22621728 ,
22612503 ,
24406349 ,
24404065 ,
21858797 ,
24405305 ,
24407072 ,
23325905 ,
24407665 ,
22065116 ,
21449022 ,
24408867 ,
24409274 ,
23488562 ,
24228234 ,
21500188 ,
21443423 ,
23692824 ,
21940016 ,
4275546 ,
22906820 ,
24410881 ,
14907066 ,
24411418 ,
24024385 ,
24411718 ,
24413274 ,
21316272 ,
24414625 ,
22535331 ,
21601110 ,
24127336 ,
22854241 ,
24416239 ,
24415267 ,
22314207 ,
24417221 ,
22989047 ,
22551849 ,
24418209 ,
24204646 ,
21678005 ,
24418443 ,
5870487 ,
22337747 ,
21512250 ,
24230540 ,
22728133 ,
24256654 ,
21894645 ,
24419666 ,
24419857 ,
24052663 ,
24420020 ,
24420218 ,
22147552 ,
22270138 ,
24421335 ,
21585928 ,
24421485 ,
24422241 ,
21651809 ,
23117036 ,
23839931 ,
24422883 ,
23782188 ,
23884383 ,
24423846 ,
24424584 ,
21324017 ,
24425062 ,
24289374 ,
24403431 ,
24425284 ,
15843996 ,
24426018 ,
24028932 ,
24427004 ,
24427360 ,
23111055 ,
23517637 ,
24427618 ,
21790426 ,
7498513 ,
22923881 ,
24429275 ,
24429385 ,
22805805 ,
24430097 ,
23800987 ,
24262503 ,
24430502 ,
22255373 ,
19701809 ,
24430740 ,
23855859 ,
23203797 ,
24431418 ,
22041882 ,
24432459 ,
13289034 ,
22004433 ,
22705941 ,
24219044 ,
24433311 ,
22755917 ,
2782442 ,
24434765 ,
24289013 ,
24436112 ,
23453075 ,
24437418 ,
21614108 ,
23967681 ,
24123013 ,
24435800 ,
24438376 ,
21521500 ,
24439242 ,
24439387 ,
23525386 ,
24440297 ,
24440956 ,
24440882 ,
24441352 ,
24113418 ,
24442149 ,
23356614 ,
24253079 ,
24442693 ,
23227761 ,
23001146 ,
23858585 ,
23606092 ,
21339979 ,
23070206 ,
22846560 ,
24444499 ,
22045701 ,
24076928 ,
23171617 ,
24406002 ,
21327587 ,
24449381 ,
23968721 ,
22523237 ,
24449542 ,
23860244 ,
24279754 ,
23462866 ,
24064000 ,
24434825 ,
24452392 ,
24452795 ,
24453065 ,
3231251 ,
24453128 ,
22209754 ,
24453996 ,
23765489 ,
24440318 ,
24453390 ,
24281188 ,
23320916 ,
24456682 ,
23610684 ,
21379385 ,
24457038 ,
23517554 ,
24457183 ,
24138843 ,
21622619 ,
24458180 ,
24442961 ,
24244730 ,
24458717 ,
24190940 ,
23797855 ,
23880118 ,
24460108 ,
24274518 ,
23781432 ,
23044729 ,
23974230 ,
22226065 ,
24430095 ,
24461856 ,
24454989 ,
23576139 ,
21583320 ,
24356943 ,
24464939 ,
24465312 ,
24465314 ,
24465922 ,
22078191 ,
6191202 ,
24467129 ,
22778423 ,
22967999 ,
22981436 ,
24339349 ,
24469247 ,
24273881 ,
24306557 ,
22257979 ,
24471680 ,
24472464 ,
23569455 ,
24472878 ,
24472908 ,
24473129 ,
24473248 ,
24342016 ,
22997871 ,
23423010 ,
24442546 ,
23710803 ,
4586701 ,
24476100 ,
18031978 ,
24119153 ,
23579188 ,
24477363 ,
24477824 ,
24477939 ,
23782926 ,
24478372 ,
24477448 ,
24051087 ,
24479633 ,
23329665 ,
22960551 ,
22641375 ,
22366307 ,
24481323 ,
22568692 ,
24482151 ,
21455827 ,
24482269 ,
24482514 ,
23258068 ,
24424193 ,
22239633 ,
24481628 ,
24484749 ,
24486259 ,
24486289 ,
24486579 ,
23383839 ,
24486962 ,
23620221 ,
24488250 ,
24488318 ,
24488447 ,
23835004 ,
24417375 ,
24328567 ,
24359428 ,
24480693 ,
22283072 ,
24491533 ,
24032989 ,
24209707 ,
24514576 ,
24514732 ,
24514818 ,
24514812 ,
24203101 ,
24515620 ,
24515032 ,
21608168 ,
24492199 ,
24187254 ,
24517470 ,
22812369 ,
24517678 ,
23065097 ,
22696115 ,
23401986 ,
22516814 ,
24520525 ,
23612975 ,
24520697 ,
13959468 ,
23850453 ,
24521557 ,
24443910 ,
24346135 ,
24518743 ,
24526653 ,
22532843 ,
24527582 ,
22338384 ,
24528104 ,
23522111 ,
23670605 ,
24529054 ,
24529317 ,
21826314 ,
24526897 ,
24434128 ,
22736876 ,
23523480 ,
22703008 ,
24531722 ,
24532065 ,
24532284 ,
24369170 ,
21352076 ,
23330082 ,
24533276 ,
24402035 ,
24013316 ,
24382725 ,
24535985 ,
21682351 ,
2442440 ,
8424187 ,
24545437 ,
14032997 ,
24548168 ,
24441738 ,
22966500 ,
24562639 ,
23521799 ,
24565741 ,
22125618 ,
22549940 ,
24256337 ,
22919508 ,
24562316 ,
24573286 ,
24573731 ,
23357399 ,
24575777 ,
24409262 ,
23708689 ,
22306200 ,
22562478 ,
24582386 ,
24584430 ,
22397631 ,
24587080 ,
24589446 ,
24552609 ,
23179324 ,
24513200 ,
24565726 ,
22520823 ,
24607425 ,
23662210 ,
21710905 ,
24510827 ,
3738122 ,
21686438 ,
24608933 ,
24613036 ,
11252750 ,
10860469 ,
23535227 ,
24633209 ,
24636108 ,
24604051 ,
24647734 ,
24652968 ,
24660005 ,
24230869 ,
24666501 ,
24662298 ,
24668315 ,
2452314 ,
23592790 ,
23517963 ,
24684311 ,
21305220 ,
21312106 ,
4573675 ,
22707997 ,
24711230 ,
24712509 ,
24712913 ,
24019915 ,
22806629 ,
23893899 ,
21306273 ,
22522555 ,
24735157 ,
24742379 ,
24416405 ,
22896411 ,
4072686 ,
23122420 ,
2572799 ,
4439435 ,
4590288 ,
21299555 ,
24806801 ,
24812628 ,
24818570 ,
22815000 ,
24847949 ,
24849083 ,
22640816 ,
24875289 ,
24221984 ,
19999958 ,
24885042 ,
24864065 ,
24885683 ,
22884956 ,
22598761 ,
24449625 ,
24915635 ,
24921677 ,
7000997 ,
12973559 ,
24925188 ,
2774113 ,
24918173 ,
24941342 ,
24953996 ,
22233478 ,
2393316 ,
2477390 ,
23232926 ,
2851453 ,
25014316 ,
23131887 ,
21393391 ,
21620741 ,
24975888 ,
23809926 ,
21191325 ,
24666467 ,
25067019 ,
25067377 ,
25067560 ,
25068190 ,
25068571 ,
21302635 ,
25069299 ,
25069354 ,
25069979 ,
25070180 ,
25070765 ,
25073044 ,
25073388 ,
25073738 ,
25075424 ,
25075899 ,
25076881 ,
25077527 ,
25077779 ,
25077952 ,
25078388 ,
2383828 ,
25078701 ,
25078722 ,
2944307 ,
25078728 ,
25079484 ,
25079907 ,
25080103 ,
25081718 ,
25082335 ,
25082873 ,
25083023 ,
25083829 ,
25085351 ,
25085559 ,
25086378 ,
25072792 ,
25079103 ,
25079188 ,
25091361 ,
25090064 ,
25091815 ,
16305006 ,
25088761 ,
25092486 ,
25093104 ,
25093117 ,
25093554 ,
25092953 ,
13618773 ,
25096783 ,
21658520 ,
25097128 ,
25100036 ,
25100072 ,
25100434 ,
25099991 ,
25101442 ,
25103269 ,
6455747 ,
25103892 ,
25104477 ,
25104757 ,
25106389 ,
25106604 ,
25106763 ,
25107606 ,
25098587 ,
25108871 ,
25109304 ,
25109732 ,
25110937 ,
25111039 ,
25111439 ,
25111640 ,
25111873 ,
25079025 ,
25114024 ,
3222845 ,
25114099 ,
25094839 ,
25116207 ,
25117102 ,
25117664 ,
25117713 ,
22931571 ,
25119741 ,
25122433 ,
25123088 ,
25123745 ,
25124962 ,
25125379 ,
25125530 ,
24815857 ,
25125574 ,
25126532 ,
25126640 ,
25129784 ,
21416312 ,
25131936 ,
2384413 ,
25132811 ,
25135344 ,
6388528 ,
25143581 ,
3823333 ,
25144457 ,
25151062 ,
25157606 ,
25162894 ,
13405848 ,
25072711 ,
25171400 ,
25083893 ,
24939085 ,
24987250 ,
23174768 ,
25215784 ,
25217498 ,
25217892 ,
25220778 ,
25201497 ,
25222818 ,
25224907 ,
25226604 ,
25223359 ,
3517909 ,
25228081 ,
25228171 ,
25228620 ,
25228624 ,
25231057 ,
22809867 ,
25231326 ,
25231419 ,
25232106 ,
25232255 ,
25232281 ,
25231675 ,
25233083 ,
25233208 ,
21362398 ,
25233627 ,
25233801 ,
25233947 ,
25233520 ,
22806878 ,
3960676 ,
25235307 ,
25235700 ,
24586834 ,
21904507 ,
25237095 ,
25237422 ,
7474009 ,
25239324 ,
25240304 ,
25240576 ,
25241287 ,
21607394 ,
25242146 ,
25242182 ,
25242499 ,
12380782 ,
25243011 ,
25243152 ,
25243447 ,
25243812 ,
25244293 ,
24329477 ,
25245493 ,
4633655 ,
25247976 ,
25248641 ,
25249282 ,
25249680 ,
25250183 ,
25251044 ,
25251057 ,
25251255 ,
25251407 ,
25252019 ,
25252051 ,
25252126 ,
25255228 ,
25245183 ,
21763421 ,
25257478 ,
25257668 ,
25260185 ,
21548980 ,
25260997 ,
25261588 ,
25262571 ,
25262708 ,
3169459 ,
25263370 ,
25263294 ,
4675556 ,
25264442 ,
25264668 ,
25266326 ,
25266373 ,
25266251 ,
21785911 ,
25266544 ,
25267187 ,
23937141 ,
4255631 ,
25267844 ,
25268328 ,
25270306 ,
25271785 ,
25269217 ,
25273538 ,
25273396 ,
25275910 ,
2677064 ,
25278027 ,
2560998 ,
25279738 ,
25275601 ,
25281206 ,
25282623 ,
25284539 ,
25285332 ,
25285753 ,
25288159 ,
25289700 ,
23119489 ,
25218734 ,
25294487 ,
15165995 ,
3181668 ,
25272964 ,
25297309 ,
25298667 ,
25300860 ,
25301642 ,
25302340 ,
25306212 ,
25302934 ,
5278630 ,
25308162 ,
25309928 ,
25311709 ,
22029107 ,
25314803 ,
25316155 ,
25316662 ,
25317599 ,
25319192 ,
25300187 ,
5707325 ,
25322147 ,
25327952 ,
23465264
)
;
