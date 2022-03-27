#' Element lists for different *CLDR* data tables
#' 
#' Several element lists are available for use in the various `cldr_*()`
#' functions. The list object names, the number of elements they hold, and the
#' functions they nicely pair with are:
#' 
#' `locale_names_elements` (4) -> `cldr_locale_names()`
#' `currency_codes` (303) -> `cldr_currency()`
#' `currencies_elements` (5) -> `cldr_currency()`
#' `dates_elements` (28) -> `cldr_dates()`
#' `numbers_elements` (26) -> `cldr_numbers()`
#' `characters_elements` (12) -> `cldr_characters()`
#' 
#' @name element_lists
NULL

#' @rdname element_lists
#' @export
locale_names_elements <-
  list(
    lang_names = "lang_names",
    script_names = "script_names",
    territory_names = "territory_names",
    variant_names = "variant_names"
  )

#' @rdname element_lists
#' @export
locale_list <-
  list(
    af = "af", `af-NA` = "af-NA", agq = "agq", ak = "ak", am = "am", 
    ar = "ar", `ar-AE` = "ar-AE", `ar-BH` = "ar-BH", `ar-DJ` = "ar-DJ", 
    `ar-DZ` = "ar-DZ", `ar-EG` = "ar-EG", `ar-EH` = "ar-EH", 
    `ar-ER` = "ar-ER", `ar-IL` = "ar-IL", `ar-IQ` = "ar-IQ", 
    `ar-JO` = "ar-JO", `ar-KM` = "ar-KM", `ar-KW` = "ar-KW", 
    `ar-LB` = "ar-LB", `ar-LY` = "ar-LY", `ar-MA` = "ar-MA", 
    `ar-MR` = "ar-MR", `ar-OM` = "ar-OM", `ar-PS` = "ar-PS", 
    `ar-QA` = "ar-QA", `ar-SA` = "ar-SA", `ar-SD` = "ar-SD", 
    `ar-SO` = "ar-SO", `ar-SS` = "ar-SS", `ar-SY` = "ar-SY", 
    `ar-TD` = "ar-TD", `ar-TN` = "ar-TN", `ar-YE` = "ar-YE", 
    as = "as", asa = "asa", ast = "ast", az = "az", `az-Cyrl` = "az-Cyrl", 
    `az-Latn` = "az-Latn", bas = "bas", be = "be", `be-tarask` = "be-tarask", 
    bem = "bem", bez = "bez", bg = "bg", bm = "bm", bn = "bn", 
    `bn-IN` = "bn-IN", bo = "bo", `bo-IN` = "bo-IN", br = "br", 
    brx = "brx", bs = "bs", `bs-Cyrl` = "bs-Cyrl", `bs-Latn` = "bs-Latn", 
    ca = "ca", `ca-AD` = "ca-AD", `ca-ES-valencia` = "ca-ES-valencia", 
    `ca-FR` = "ca-FR", `ca-IT` = "ca-IT", ccp = "ccp", `ccp-IN` = "ccp-IN", 
    ce = "ce", ceb = "ceb", cgg = "cgg", chr = "chr", ckb = "ckb", 
    `ckb-IR` = "ckb-IR", cs = "cs", cy = "cy", da = "da", `da-GL` = "da-GL", 
    dav = "dav", de = "de", `de-AT` = "de-AT", `de-BE` = "de-BE", 
    `de-CH` = "de-CH", `de-IT` = "de-IT", `de-LI` = "de-LI", 
    `de-LU` = "de-LU", dje = "dje", doi = "doi", dsb = "dsb", 
    dua = "dua", dyo = "dyo", dz = "dz", ebu = "ebu", ee = "ee", 
    `ee-TG` = "ee-TG", el = "el", `el-CY` = "el-CY", en = "en", 
    `en-001` = "en-001", `en-150` = "en-150", `en-AE` = "en-AE", 
    `en-AG` = "en-AG", `en-AI` = "en-AI", `en-AS` = "en-AS", 
    `en-AT` = "en-AT", `en-AU` = "en-AU", `en-BB` = "en-BB", 
    `en-BE` = "en-BE", `en-BI` = "en-BI", `en-BM` = "en-BM", 
    `en-BS` = "en-BS", `en-BW` = "en-BW", `en-BZ` = "en-BZ", 
    `en-CA` = "en-CA", `en-CC` = "en-CC", `en-CH` = "en-CH", 
    `en-CK` = "en-CK", `en-CM` = "en-CM", `en-CX` = "en-CX", 
    `en-CY` = "en-CY", `en-DE` = "en-DE", `en-DG` = "en-DG", 
    `en-DK` = "en-DK", `en-DM` = "en-DM", `en-ER` = "en-ER", 
    `en-FI` = "en-FI", `en-FJ` = "en-FJ", `en-FK` = "en-FK", 
    `en-FM` = "en-FM", `en-GB` = "en-GB", `en-GD` = "en-GD", 
    `en-GG` = "en-GG", `en-GH` = "en-GH", `en-GI` = "en-GI", 
    `en-GM` = "en-GM", `en-GU` = "en-GU", `en-GY` = "en-GY", 
    `en-HK` = "en-HK", `en-IE` = "en-IE", `en-IL` = "en-IL", 
    `en-IM` = "en-IM", `en-IN` = "en-IN", `en-IO` = "en-IO", 
    `en-JE` = "en-JE", `en-JM` = "en-JM", `en-KE` = "en-KE", 
    `en-KI` = "en-KI", `en-KN` = "en-KN", `en-KY` = "en-KY", 
    `en-LC` = "en-LC", `en-LR` = "en-LR", `en-LS` = "en-LS", 
    `en-MG` = "en-MG", `en-MH` = "en-MH", `en-MO` = "en-MO", 
    `en-MP` = "en-MP", `en-MS` = "en-MS", `en-MT` = "en-MT", 
    `en-MU` = "en-MU", `en-MW` = "en-MW", `en-MY` = "en-MY", 
    `en-NA` = "en-NA", `en-NF` = "en-NF", `en-NG` = "en-NG", 
    `en-NL` = "en-NL", `en-NR` = "en-NR", `en-NU` = "en-NU", 
    `en-NZ` = "en-NZ", `en-PG` = "en-PG", `en-PH` = "en-PH", 
    `en-PK` = "en-PK", `en-PN` = "en-PN", `en-PR` = "en-PR", 
    `en-PW` = "en-PW", `en-RW` = "en-RW", `en-SB` = "en-SB", 
    `en-SC` = "en-SC", `en-SD` = "en-SD", `en-SE` = "en-SE", 
    `en-SG` = "en-SG", `en-SH` = "en-SH", `en-SI` = "en-SI", 
    `en-SL` = "en-SL", `en-SS` = "en-SS", `en-SX` = "en-SX", 
    `en-SZ` = "en-SZ", `en-TC` = "en-TC", `en-TK` = "en-TK", 
    `en-TO` = "en-TO", `en-TT` = "en-TT", `en-TV` = "en-TV", 
    `en-TZ` = "en-TZ", `en-UG` = "en-UG", `en-UM` = "en-UM", 
    `en-VC` = "en-VC", `en-VG` = "en-VG", `en-VI` = "en-VI", 
    `en-VU` = "en-VU", `en-WS` = "en-WS", `en-ZA` = "en-ZA", 
    `en-ZM` = "en-ZM", `en-ZW` = "en-ZW", eo = "eo", es = "es", 
    `es-419` = "es-419", `es-AR` = "es-AR", `es-BO` = "es-BO", 
    `es-BR` = "es-BR", `es-BZ` = "es-BZ", `es-CL` = "es-CL", 
    `es-CO` = "es-CO", `es-CR` = "es-CR", `es-CU` = "es-CU", 
    `es-DO` = "es-DO", `es-EA` = "es-EA", `es-EC` = "es-EC", 
    `es-GQ` = "es-GQ", `es-GT` = "es-GT", `es-HN` = "es-HN", 
    `es-IC` = "es-IC", `es-MX` = "es-MX", `es-NI` = "es-NI", 
    `es-PA` = "es-PA", `es-PE` = "es-PE", `es-PH` = "es-PH", 
    `es-PR` = "es-PR", `es-PY` = "es-PY", `es-SV` = "es-SV", 
    `es-US` = "es-US", `es-UY` = "es-UY", `es-VE` = "es-VE", 
    et = "et", eu = "eu", ewo = "ewo", fa = "fa", `fa-AF` = "fa-AF", 
    ff = "ff", `ff-Adlm` = "ff-Adlm", `ff-Adlm-BF` = "ff-Adlm-BF", 
    `ff-Adlm-CM` = "ff-Adlm-CM", `ff-Adlm-GH` = "ff-Adlm-GH", 
    `ff-Adlm-GM` = "ff-Adlm-GM", `ff-Adlm-GW` = "ff-Adlm-GW", 
    `ff-Adlm-LR` = "ff-Adlm-LR", `ff-Adlm-MR` = "ff-Adlm-MR", 
    `ff-Adlm-NE` = "ff-Adlm-NE", `ff-Adlm-NG` = "ff-Adlm-NG", 
    `ff-Adlm-SL` = "ff-Adlm-SL", `ff-Adlm-SN` = "ff-Adlm-SN", 
    `ff-Latn` = "ff-Latn", `ff-Latn-BF` = "ff-Latn-BF",
    `ff-Latn-CM` = "ff-Latn-CM", 
    `ff-Latn-GH` = "ff-Latn-GH", `ff-Latn-GM` = "ff-Latn-GM", 
    `ff-Latn-GN` = "ff-Latn-GN", `ff-Latn-GW` = "ff-Latn-GW", 
    `ff-Latn-LR` = "ff-Latn-LR", `ff-Latn-MR` = "ff-Latn-MR", 
    `ff-Latn-NE` = "ff-Latn-NE", `ff-Latn-NG` = "ff-Latn-NG", 
    `ff-Latn-SL` = "ff-Latn-SL", fi = "fi", fil = "fil", fo = "fo", 
    `fo-DK` = "fo-DK", fr = "fr", `fr-BE` = "fr-BE", `fr-BF` = "fr-BF", 
    `fr-BI` = "fr-BI", `fr-BJ` = "fr-BJ", `fr-BL` = "fr-BL", 
    `fr-CA` = "fr-CA", `fr-CD` = "fr-CD", `fr-CF` = "fr-CF", 
    `fr-CG` = "fr-CG", `fr-CH` = "fr-CH", `fr-CI` = "fr-CI", 
    `fr-CM` = "fr-CM", `fr-DJ` = "fr-DJ", `fr-DZ` = "fr-DZ", 
    `fr-GA` = "fr-GA", `fr-GF` = "fr-GF", `fr-GN` = "fr-GN", 
    `fr-GP` = "fr-GP", `fr-GQ` = "fr-GQ", `fr-HT` = "fr-HT", 
    `fr-KM` = "fr-KM", `fr-LU` = "fr-LU", `fr-MA` = "fr-MA", 
    `fr-MC` = "fr-MC", `fr-MF` = "fr-MF", `fr-MG` = "fr-MG", 
    `fr-ML` = "fr-ML", `fr-MQ` = "fr-MQ", `fr-MR` = "fr-MR", 
    `fr-MU` = "fr-MU", `fr-NC` = "fr-NC", `fr-NE` = "fr-NE", 
    `fr-PF` = "fr-PF", `fr-PM` = "fr-PM", `fr-RE` = "fr-RE", 
    `fr-RW` = "fr-RW", `fr-SC` = "fr-SC", `fr-SN` = "fr-SN", 
    `fr-SY` = "fr-SY", `fr-TD` = "fr-TD", `fr-TG` = "fr-TG", 
    `fr-TN` = "fr-TN", `fr-VU` = "fr-VU", `fr-WF` = "fr-WF", 
    `fr-YT` = "fr-YT", fur = "fur", fy = "fy", ga = "ga", `ga-GB` = "ga-GB", 
    gd = "gd", gl = "gl", gsw = "gsw", `gsw-FR` = "gsw-FR", `gsw-LI` = "gsw-LI", 
    gu = "gu", guz = "guz", gv = "gv", ha = "ha", `ha-GH` = "ha-GH", 
    `ha-NE` = "ha-NE", haw = "haw", he = "he", hi = "hi", hr = "hr", 
    `hr-BA` = "hr-BA", hsb = "hsb", hu = "hu", hy = "hy", ia = "ia", 
    id = "id", ig = "ig", ii = "ii", is = "is", it = "it", `it-CH` = "it-CH", 
    `it-SM` = "it-SM", `it-VA` = "it-VA", ja = "ja", jgo = "jgo", 
    jmc = "jmc", jv = "jv", ka = "ka", kab = "kab", kam = "kam", 
    kde = "kde", kea = "kea", kgp = "kgp", khq = "khq", ki = "ki", 
    kk = "kk", kkj = "kkj", kl = "kl", kln = "kln", km = "km", 
    kn = "kn", ko = "ko", `ko-KP` = "ko-KP", kok = "kok", ks = "ks", 
    `ks-Arab` = "ks-Arab", ksb = "ksb", ksf = "ksf", ksh = "ksh", 
    ku = "ku", kw = "kw", ky = "ky", lag = "lag", lb = "lb", 
    lg = "lg", lkt = "lkt", ln = "ln", `ln-AO` = "ln-AO", `ln-CF` = "ln-CF", 
    `ln-CG` = "ln-CG", lo = "lo", lrc = "lrc", `lrc-IQ` = "lrc-IQ", 
    lt = "lt", lu = "lu", luo = "luo", luy = "luy", lv = "lv", 
    mai = "mai", mas = "mas", `mas-TZ` = "mas-TZ", mer = "mer", 
    mfe = "mfe", mg = "mg", mgh = "mgh", mgo = "mgo", mi = "mi", 
    mk = "mk", ml = "ml", mn = "mn", mni = "mni", `mni-Beng` = "mni-Beng", 
    mr = "mr", ms = "ms", `ms-BN` = "ms-BN", `ms-ID` = "ms-ID", 
    `ms-SG` = "ms-SG", mt = "mt", mua = "mua", my = "my", mzn = "mzn", 
    naq = "naq", nb = "nb", `nb-SJ` = "nb-SJ", nd = "nd", nds = "nds", 
    `nds-NL` = "nds-NL", ne = "ne", `ne-IN` = "ne-IN", nl = "nl", 
    `nl-AW` = "nl-AW", `nl-BE` = "nl-BE", `nl-BQ` = "nl-BQ", 
    `nl-CW` = "nl-CW", `nl-SR` = "nl-SR", `nl-SX` = "nl-SX", 
    nmg = "nmg", nn = "nn", nnh = "nnh", no = "no", nus = "nus", 
    nyn = "nyn", om = "om", `om-KE` = "om-KE", or = "or", os = "os", 
    `os-RU` = "os-RU", pa = "pa", `pa-Arab` = "pa-Arab", `pa-Guru` = "pa-Guru", 
    pcm = "pcm", pl = "pl", ps = "ps", `ps-PK` = "ps-PK", pt = "pt", 
    `pt-AO` = "pt-AO", `pt-CH` = "pt-CH", `pt-CV` = "pt-CV", 
    `pt-GQ` = "pt-GQ", `pt-GW` = "pt-GW", `pt-LU` = "pt-LU", 
    `pt-MO` = "pt-MO", `pt-MZ` = "pt-MZ", `pt-PT` = "pt-PT", 
    `pt-ST` = "pt-ST", `pt-TL` = "pt-TL", qu = "qu", `qu-BO` = "qu-BO", 
    `qu-EC` = "qu-EC", rm = "rm", rn = "rn", ro = "ro", `ro-MD` = "ro-MD", 
    rof = "rof", ru = "ru", `ru-BY` = "ru-BY", `ru-KG` = "ru-KG", 
    `ru-KZ` = "ru-KZ", `ru-MD` = "ru-MD", `ru-UA` = "ru-UA", 
    rw = "rw", rwk = "rwk", sa = "sa", sah = "sah", saq = "saq", 
    sat = "sat", `sat-Olck` = "sat-Olck", sbp = "sbp", sc = "sc", 
    sd = "sd", `sd-Arab` = "sd-Arab", `sd-Deva` = "sd-Deva", 
    se = "se", `se-FI` = "se-FI", `se-SE` = "se-SE", seh = "seh", 
    ses = "ses", sg = "sg", shi = "shi", `shi-Latn` = "shi-Latn", 
    `shi-Tfng` = "shi-Tfng", si = "si", sk = "sk", sl = "sl", 
    smn = "smn", sn = "sn", so = "so", `so-DJ` = "so-DJ", `so-ET` = "so-ET", 
    `so-KE` = "so-KE", sq = "sq", `sq-MK` = "sq-MK", `sq-XK` = "sq-XK", 
    sr = "sr", `sr-Cyrl` = "sr-Cyrl", `sr-Cyrl-BA` = "sr-Cyrl-BA", 
    `sr-Cyrl-ME` = "sr-Cyrl-ME", `sr-Cyrl-XK` = "sr-Cyrl-XK", 
    `sr-Latn` = "sr-Latn", `sr-Latn-BA` = "sr-Latn-BA",
    `sr-Latn-ME` = "sr-Latn-ME", `sr-Latn-XK` = "sr-Latn-XK", su = "su",
    `su-Latn` = "su-Latn", sv = "sv", `sv-AX` = "sv-AX", `sv-FI` = "sv-FI",
    sw = "sw", `sw-CD` = "sw-CD", `sw-KE` = "sw-KE", `sw-UG` = "sw-UG", 
    ta = "ta", `ta-LK` = "ta-LK", `ta-MY` = "ta-MY", `ta-SG` = "ta-SG", 
    te = "te", teo = "teo", `teo-KE` = "teo-KE", tg = "tg", th = "th", 
    ti = "ti", `ti-ER` = "ti-ER", tk = "tk", to = "to", tr = "tr", 
    `tr-CY` = "tr-CY", tt = "tt", twq = "twq", tzm = "tzm", ug = "ug", 
    uk = "uk", und = "und", ur = "ur", `ur-IN` = "ur-IN", uz = "uz", 
    `uz-Arab` = "uz-Arab", `uz-Cyrl` = "uz-Cyrl", `uz-Latn` = "uz-Latn", 
    vai = "vai", `vai-Latn` = "vai-Latn", `vai-Vaii` = "vai-Vaii", 
    vi = "vi", vun = "vun", wae = "wae", wo = "wo", xh = "xh", 
    xog = "xog", yav = "yav", yi = "yi", yo = "yo", `yo-BJ` = "yo-BJ", 
    yrl = "yrl", `yrl-CO` = "yrl-CO", `yrl-VE` = "yrl-VE", yue = "yue", 
    `yue-Hans` = "yue-Hans", `yue-Hant` = "yue-Hant", zgh = "zgh", 
    zh = "zh", `zh-Hans` = "zh-Hans", `zh-Hans-HK` = "zh-Hans-HK", 
    `zh-Hans-MO` = "zh-Hans-MO", `zh-Hans-SG` = "zh-Hans-SG", 
    `zh-Hant` = "zh-Hant", `zh-Hant-HK` = "zh-Hant-HK",
    `zh-Hant-MO` = "zh-Hant-MO", zu = "zu"
  )

#' @rdname element_lists
#' @export
currency_code_list <-
  list(
    ADP = "ADP", AED = "AED", AFA = "AFA", AFN = "AFN", ALK = "ALK", 
    ALL = "ALL", AMD = "AMD", ANG = "ANG", AOA = "AOA", AOK = "AOK", 
    AON = "AON", AOR = "AOR", ARA = "ARA", ARL = "ARL", ARM = "ARM", 
    ARP = "ARP", ARS = "ARS", ATS = "ATS", AUD = "AUD", AWG = "AWG", 
    AZM = "AZM", AZN = "AZN", BAD = "BAD", BAM = "BAM", BAN = "BAN", 
    BBD = "BBD", BDT = "BDT", BEC = "BEC", BEF = "BEF", BEL = "BEL", 
    BGL = "BGL", BGM = "BGM", BGN = "BGN", BGO = "BGO", BHD = "BHD", 
    BIF = "BIF", BMD = "BMD", BND = "BND", BOB = "BOB", BOL = "BOL", 
    BOP = "BOP", BOV = "BOV", BRB = "BRB", BRC = "BRC", BRE = "BRE", 
    BRL = "BRL", BRN = "BRN", BRR = "BRR", BRZ = "BRZ", BSD = "BSD", 
    BTN = "BTN", BUK = "BUK", BWP = "BWP", BYB = "BYB", BYN = "BYN", 
    BYR = "BYR", BZD = "BZD", CAD = "CAD", CDF = "CDF", CHE = "CHE", 
    CHF = "CHF", CHW = "CHW", CLE = "CLE", CLF = "CLF", CLP = "CLP", 
    CNH = "CNH", CNX = "CNX", CNY = "CNY", COP = "COP", COU = "COU", 
    CRC = "CRC", CSD = "CSD", CSK = "CSK", CUC = "CUC", CUP = "CUP", 
    CVE = "CVE", CYP = "CYP", CZK = "CZK", DDM = "DDM", DEM = "DEM", 
    DJF = "DJF", DKK = "DKK", DOP = "DOP", DZD = "DZD", ECS = "ECS", 
    ECV = "ECV", EEK = "EEK", EGP = "EGP", ERN = "ERN", ESA = "ESA", 
    ESB = "ESB", ESP = "ESP", ETB = "ETB", EUR = "EUR", FIM = "FIM", 
    FJD = "FJD", FKP = "FKP", FRF = "FRF", GBP = "GBP", GEK = "GEK", 
    GEL = "GEL", GHC = "GHC", GHS = "GHS", GIP = "GIP", GMD = "GMD", 
    GNF = "GNF", GNS = "GNS", GQE = "GQE", GRD = "GRD", GTQ = "GTQ", 
    GWE = "GWE", GWP = "GWP", GYD = "GYD", HKD = "HKD", HNL = "HNL", 
    HRD = "HRD", HRK = "HRK", HTG = "HTG", HUF = "HUF", IDR = "IDR", 
    IEP = "IEP", ILP = "ILP", ILR = "ILR", ILS = "ILS", INR = "INR", 
    IQD = "IQD", IRR = "IRR", ISJ = "ISJ", ISK = "ISK", ITL = "ITL", 
    JMD = "JMD", JOD = "JOD", JPY = "JPY", KES = "KES", KGS = "KGS", 
    KHR = "KHR", KMF = "KMF", KPW = "KPW", KRH = "KRH", KRO = "KRO", 
    KRW = "KRW", KWD = "KWD", KYD = "KYD", KZT = "KZT", LAK = "LAK", 
    LBP = "LBP", LKR = "LKR", LRD = "LRD", LSL = "LSL", LTL = "LTL", 
    LTT = "LTT", LUC = "LUC", LUF = "LUF", LUL = "LUL", LVL = "LVL", 
    LVR = "LVR", LYD = "LYD", MAD = "MAD", MAF = "MAF", MCF = "MCF", 
    MDC = "MDC", MDL = "MDL", MGA = "MGA", MGF = "MGF", MKD = "MKD", 
    MKN = "MKN", MLF = "MLF", MMK = "MMK", MNT = "MNT", MOP = "MOP", 
    MRO = "MRO", MRU = "MRU", MTL = "MTL", MTP = "MTP", MUR = "MUR", 
    MVP = "MVP", MVR = "MVR", MWK = "MWK", MXN = "MXN", MXP = "MXP", 
    MXV = "MXV", MYR = "MYR", MZE = "MZE", MZM = "MZM", MZN = "MZN", 
    NAD = "NAD", NGN = "NGN", NIC = "NIC", NIO = "NIO", NLG = "NLG", 
    NOK = "NOK", NPR = "NPR", NZD = "NZD", OMR = "OMR", PAB = "PAB", 
    PEI = "PEI", PEN = "PEN", PES = "PES", PGK = "PGK", PHP = "PHP", 
    PKR = "PKR", PLN = "PLN", PLZ = "PLZ", PTE = "PTE", PYG = "PYG", 
    QAR = "QAR", RHD = "RHD", ROL = "ROL", RON = "RON", RSD = "RSD", 
    RUB = "RUB", RUR = "RUR", RWF = "RWF", SAR = "SAR", SBD = "SBD", 
    SCR = "SCR", SDD = "SDD", SDG = "SDG", SDP = "SDP", SEK = "SEK", 
    SGD = "SGD", SHP = "SHP", SIT = "SIT", SKK = "SKK", SLL = "SLL", 
    SOS = "SOS", SRD = "SRD", SRG = "SRG", SSP = "SSP", STD = "STD", 
    STN = "STN", SUR = "SUR", SVC = "SVC", SYP = "SYP", SZL = "SZL", 
    THB = "THB", TJR = "TJR", TJS = "TJS", TMM = "TMM", TMT = "TMT", 
    TND = "TND", TOP = "TOP", TPE = "TPE", TRL = "TRL", TRY = "TRY", 
    TTD = "TTD", TWD = "TWD", TZS = "TZS", UAH = "UAH", UAK = "UAK", 
    UGS = "UGS", UGX = "UGX", USD = "USD", USN = "USN", USS = "USS", 
    UYI = "UYI", UYP = "UYP", UYU = "UYU", UYW = "UYW", UZS = "UZS", 
    VEB = "VEB", VEF = "VEF", VES = "VES", VND = "VND", VNN = "VNN", 
    VUV = "VUV", WST = "WST", XAF = "XAF", XAG = "XAG", XAU = "XAU", 
    XBA = "XBA", XBB = "XBB", XBC = "XBC", XBD = "XBD", XCD = "XCD", 
    XDR = "XDR", XEU = "XEU", XFO = "XFO", XFU = "XFU", XOF = "XOF", 
    XPD = "XPD", XPF = "XPF", XPT = "XPT", XRE = "XRE", XSU = "XSU", 
    XTS = "XTS", XUA = "XUA", XXX = "XXX", YDD = "YDD", YER = "YER", 
    YUD = "YUD", YUM = "YUM", YUN = "YUN", YUR = "YUR", ZAL = "ZAL", 
    ZAR = "ZAR", ZMK = "ZMK", ZMW = "ZMW", ZRN = "ZRN", ZRZ = "ZRZ", 
    ZWD = "ZWD", ZWL = "ZWL", ZWR = "ZWR"
  )

#' @rdname element_lists
#' @export
currencies_elements <- 
  list(
    currency_symbol = "currency_symbol",
    currency_symbol_narrow = "currency_symbol_narrow",
    currency_display_name = "currency_display_name",
    currency_display_name_count_1 = "currency_display_name_count_1",
    currency_display_name_count_other = "currency_display_name_count_other"
  )

#' @rdname element_lists
#' @export
dates_elements <-
  list(
    months_format_abbrev = "months_format_abbrev",
    months_format_narrow = "months_format_narrow", 
    months_format_wide = "months_format_wide",
    days_standalone_narrow = "days_standalone_narrow", 
    days_standalone_short = "days_standalone_short",
    days_standalone_wide = "days_standalone_wide", 
    quarters_format_abbrev = "quarters_format_abbrev",
    quarters_format_narrow = "quarters_format_narrow", 
    quarters_format_wide = "quarters_format_wide",
    quarters_standalone_abbrev = "quarters_standalone_abbrev", 
    quarters_standalone_narrow = "quarters_standalone_narrow", 
    quarters_standalone_wide = "quarters_standalone_wide",
    dayperiods_format_abbrev = "dayperiods_format_abbrev", 
    dayperiods_format_narrow = "dayperiods_format_narrow",
    dayperiods_format_wide = "dayperiods_format_wide", 
    dayperiods_standalone_abbrev = "dayperiods_standalone_abbrev", 
    dayperiods_standalone_narrow = "dayperiods_standalone_narrow", 
    dayperiods_standalone_wide = "dayperiods_standalone_wide", 
    eras_abbrev = "eras_abbrev",
    eras_names = "eras_names",
    eras_narrow = "eras_narrow", 
    date_formats = "date_formats",
    date_skeletons = "date_skeletons", 
    time_formats = "time_formats",
    time_skeletons = "time_skeletons", 
    date_time_available_formats = "date_time_available_formats", 
    date_time_append_items = "date_time_append_items",
    date_time_interval_formats = "date_time_interval_formats"
  )

#' @rdname element_lists
#' @export
numbers_elements <-
  list(
    locale = "locale",
    default_numbering_system = "default_numbering_system", 
    other_numbering_systems = "other_numbering_systems",
    minimum_grouping_digits = "minimum_grouping_digits", 
    decimal = "decimal",
    group = "group",
    list = "list",
    percent_sign = "percent_sign", 
    plus_sign = "plus_sign",
    minus_sign = "minus_sign",
    approx_sign = "approx_sign", 
    exp_sign = "exp_sign",
    sup_exp = "sup_exp",
    per_mille = "per_mille", 
    infinity = "infinity",
    nan = "nan",
    time_sep = "time_sep", 
    approx_pattern = "approx_pattern",
    at_least_pattern = "at_least_pattern", 
    at_most_pattern = "at_most_pattern",
    range_pattern = "range_pattern", 
    decimal_format = "decimal_format",
    sci_format = "sci_format", 
    percent_format = "percent_format",
    currency_format = "currency_format", 
    accounting_format = "accounting_format"
  )

#' @rdname element_lists
#' @export
characters_elements <-
  list(
    locale = "locale",
    exemplar_characters = "exemplar_characters", 
    auxiliary = "auxiliary",
    index = "index", 
    numbers = "numbers",
    punctuation = "punctuation",
    more_info = "more_info",
    ellipsis = "ellipsis", 
    leninent_scope_general = "leninent_scope_general",
    leninent_scope_date = "leninent_scope_date",
    leninent_scope_number = "leninent_scope_number", 
    stricter_scope_number = "stricter_scope_number"
  )

#' Get a single localized value from the [locale_names] dataset
#'
#' @description
#' The [locale_names] table contains information on how to express components of
#' locale codes and this is localized across `r length(all_locales)` locales.
#' The `cldr_locale_names()` function allows one to extract a named list using
#' a `locale` and one of the following element names:
#' 
#' - `"langs"`: corresponds to the `lang_names` column in [locale_names]
#' - `"scripts"`: is the `script_names` column in [locale_names]
#' - `"territories"`: is `territory_names`
#' - `"variants"`: is `variant_names`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [locale_names] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`. A valid set of [locale_names] elements can be accessed
#'   through the [locale_names_elements] list object.
#' 
#' @return A named list.
#' 
#' @export
cldr_locale_names <- function(
    locale = "en",
    element = locale_names_elements$lang_names
) {
  
  values <- locale_names[locale_names$locale == locale, ][[element]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^name\\.", "", names(values))
  
  as.list(values)
}

#' Get a single localized value from the [currencies] dataset
#'
#' @description
#' The [currencies] table contains information of currency codes and localized
#' display names and symbols across `r length(all_locales)` locales. The
#' `cldr_currencies()` function allows one to extract a single element value
#' from the table by supplying the `locale`, the currency code (`currency`), and
#' one of the following `element` names:
#' 
#' - `"currency_symbol"`
#' - `"currency_symbol_narrow"`
#' - `"currency_display_name"`
#' - `"currency_display_name_count_1"`
#' - `"currency_display_name_count_other"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [currencies] table.
#' @param currency The currency code (e.g., `"USD"`, `"EUR"`, etc.). A valid set
#'   of currency codes can be accessed through the [currency_code_list] object.
#' @param element The element from which information will be obtained for the
#'   specified `locale`. A valid set of currency elements can be accessed
#'   through the [currencies_elements] list object.
#'   
#' @section Examples:
#' 
#' If you would like to get the currency display name for the British Pound
#' (`"GBP"`) currency while in the `"de"` locale, the following invocation of
#' `cldr_currencies()` can be used.
#' 
#' ```r
#' cldr_currencies(
#'   locale = "de",
#'   currency = currency_code_list$GBP,
#'   element = currencies_elements$currency_display_name
#' )
#' ```
#' ```
#' #> [1] "Britisches Pfund"
#' ``` 
#' 
#' @return A length one character vector.
#' 
#' @export
cldr_currencies <- function(
    locale = "en",
    currency = currency_code_list$USD,
    element = currencies_elements$currency_symbol
) {

  currencies[
    currencies$locale == locale &
      currencies$currency_code == currency,
  ][[element]]
}

#' Get a single localized value from the [dates] dataset
#'
#' @description
#' The [dates] table contains information on how to express dates and this data
#' is localized across `r length(all_locales)` locales. The `cldr_dates()`
#' function allows one to extract a named list using a `locale` and a specific
#' `element`. The element values are:
#' 
#' - `"months_format_abbrev"`
#' - `"months_format_narrow"`
#' - `"months_format_wide"`
#' - `"days_standalone_narrow"`
#' - `"days_standalone_short"`
#' - `"days_standalone_wide"`
#' - `"quarters_format_abbrev"`
#' - `"quarters_format_narrow"`
#' - `"quarters_format_wide"`
#' - `"quarters_standalone_abbrev"`
#' - `"quarters_standalone_narrow"`
#' - `"quarters_standalone_wide"`
#' - `"dayperiods_format_abbrev"`
#' - `"dayperiods_format_narrow"`
#' - `"dayperiods_format_wide"`
#' - `"dayperiods_standalone_abbrev"`
#' - `"dayperiods_standalone_narrow"`
#' - `"dayperiods_standalone_wide"`
#' - `"eras_abbrev"`
#' - `"eras_names"`
#' - `"eras_narrow"`
#' - `"date_formats"`
#' - `"date_skeletons"`
#' - `"time_formats"`
#' - `"time_skeletons"`
#' - `"date_time_available_formats"`
#' - `"date_time_append_items"`
#' - `"date_time_interval_formats"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [dates] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return A named list.
#' 
#' @export
cldr_dates <- function(
    locale = "en",
    element = dates_elements$months_format_abbrev
) {
  
  values <- dates[dates$locale == locale, ][[element]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' Get a single localized value from the [numbers] dataset
#'
#' @description
#' The [numbers] table contains localization data for number usage and this data
#' is available for `r length(all_locales)` locales. The `cldr_numbers()`
#' function allows one to extract a named list using a `locale` and a specific
#' `element`. The `element` values are:
#' 
#' - `"default_numbering_system"`
#' - `"other_numbering_systems"`
#' - `"minimum_grouping_digits"`
#' - `"decimal"`
#' - `"group"`
#' - `"list"`
#' - `"percent_sign" `
#' - `"plus_sign"`
#' - `"minus_sign"`
#' - `"approx_sign"`
#' - `"exp_sign"`
#' - `"sup_exp"`
#' - `"per_mille"`
#' - `"infinity"`
#' - `"nan"`
#' - `"time_sep"`
#' - `"approx_pattern"`
#' - `"at_least_pattern"`
#' - `"at_most_pattern"`
#' - `"range_pattern"`
#' - `"decimal_format"`
#' - `"sci_format"`
#' - `"percent_format"`
#' - `"currency_format"`
#' - `"accounting_format"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [numbers] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#'   
#' @return Either a named list or a length one character vector, depending on
#'   the `element` value.
#' 
#' @export
cldr_numbers <- function(
    locale = "en",
    element = numbers_elements$default_numbering_system
) {
  
  values <- numbers[numbers$locale == locale, ][[element]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}

#' Get localized values from the [character_labels] dataset
#'
#' @description
#' The [character_labels] table contains information on character patterns
#' and character labels across `r length(all_locales)` locales. The
#' `cldr_character_labels()` function allows one to extract element values from
#' the table by supplying the `locale` and one of the following element names:
#' 
#' - `"patterns"`: corresponds to the `character_label_patterns` column in
#' [character_labels]
#' - `"labels"`: is the `character_labels` column in [character_labels]
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   `character_labels` table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return A named list.
#' 
#' @export
cldr_character_labels <- function(
    locale = "en",
    element = c("patterns", "labels")
) {
  
  element <- match.arg(element)
  
  element_full <-
    switch(
      element,
      patterns = "character_label_patterns",
      labels = "character_labels"
    )
  
  values <- character_labels[character_labels$locale == locale,][[element_full]]
  values <- unlist(values, use.names = TRUE)
  
  names(values) <- gsub("^value\\.", "", names(values))
  
  as.list(values)
}

#' Get localized values from the [characters] dataset
#'
#' @description
#' The [characters] table contains information on the usage of characters
#' and exemplar character sets across `r length(all_locales)` locales. The
#' `cldr_characters()` function allows one to extract element values from the
#' table by supplying the `locale` and one of the following element names:
#' 
#' - `"exemplar_characters"`
#' - `"auxiliary"`
#' - `"index"`
#' - `"numbers"`
#' - `"punctuation"`
#' - `"more_info"`
#' - `"ellipsis"`
#' - `"leninent_scope_general"`
#' - `"leninent_scope_date"`
#' - `"leninent_scope_number"`
#' - `"stricter_scope_number"`
#' 
#' @param locale The locale ID for which to obtain the data from the
#'   [characters] table.
#' @param element The element from which information will be obtained for the
#'   specified `locale`.
#' 
#' @return Either a named list or a length one character vector, depending on
#'   the `element` value.
#' 
#' @export
cldr_characters <- function(
    locale = "en",
    element = characters_elements$exemplar_characters
) {
  
  values <- characters[characters$locale == locale, ][[element]]
  
  if (is.list(values)) {
    
    values <- unlist(values, use.names = TRUE)
    
    names(values) <- gsub("^value\\.", "", names(values))
    
    values <- as.list(values)
  }
  
  values
}
