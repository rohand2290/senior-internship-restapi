--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: vals2019; Type: TABLE; Schema: public; Owner: rohand
--

CREATE TABLE public.vals2019 (
    id integer NOT NULL,
    num integer,
    biological_samp_name character varying(50),
    protein_name character varying(255),
    protein_acc_num character varying(255),
    protein_mol_weight numeric,
    protein_id_prob numeric,
    exclusive_uni_peptide_count integer,
    exclusive_uni_spectrum_count integer,
    exclusive_spectrum_count integer,
    percent_total_spectra numeric,
    peptide_seq character varying(255),
    prev_amino_acid character varying(5),
    next_amino_acid character varying(5),
    best_peptide_id_prob numeric,
    best_peptide_score numeric,
    mass_amu numeric,
    median_ret_time numeric,
    total_tic numeric,
    peptide_start_ind integer,
    peptide_stop_ind integer
);


ALTER TABLE public.vals2019 OWNER TO rohand;

--
-- Name: vals2019_id_seq; Type: SEQUENCE; Schema: public; Owner: rohand
--

CREATE SEQUENCE public.vals2019_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vals2019_id_seq OWNER TO rohand;

--
-- Name: vals2019_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohand
--

ALTER SEQUENCE public.vals2019_id_seq OWNED BY public.vals2019.id;


--
-- Name: vals2019pandas; Type: TABLE; Schema: public; Owner: rohand
--

CREATE TABLE public.vals2019pandas (
    index bigint,
    "Biological sample name" text,
    "Protein name" text,
    "Protein accession numbers" text,
    "Protein molecular weight (Da)" text,
    "Protein identification probability" text,
    "Exclusive unique peptide count" bigint,
    "Exclusive unique spectrum count" bigint,
    "Exclusive spectrum count" bigint,
    "Percentage of total spectra" text,
    "Peptide sequence" text,
    "Previous amino acid" text,
    "Next amino acid" text,
    "Best Peptide identification probability" text,
    "Best Peptide Score" double precision,
    "Calculated +1H Peptide Mass (AMU)" text,
    "Median Retention Time" text,
    "Total TIC" text,
    "Peptide start index" bigint,
    "Peptide stop index" bigint
);


ALTER TABLE public.vals2019pandas OWNER TO rohand;

--
-- Name: vals2020pandas; Type: TABLE; Schema: public; Owner: rohand
--

CREATE TABLE public.vals2020pandas (
    index bigint,
    "Accession #" text,
    "Uniprot ID" text,
    "Gene " text,
    "Protein Name" text,
    "Peptide" text,
    "E1 RH/L" double precision,
    "E2 RH/L" text
);


ALTER TABLE public.vals2020pandas OWNER TO rohand;

--
-- Name: vals2021pandas; Type: TABLE; Schema: public; Owner: rohand
--

CREATE TABLE public.vals2021pandas (
    index bigint,
    "Accession #" text,
    "Uniprot ID" text,
    "Gene " text,
    "Protein Name" text,
    "Peptide" text,
    "E1 RH/L" double precision,
    "E2 RH/La" text
);


ALTER TABLE public.vals2021pandas OWNER TO rohand;

--
-- Name: vals2023pandas; Type: TABLE; Schema: public; Owner: rohand
--

CREATE TABLE public.vals2023pandas (
    index bigint,
    "Accession Number" text,
    "Gene Name" text,
    "Protein Name" text,
    "Peptide" text,
    "Start Position" double precision,
    "End Position" double precision,
    "Median" text,
    "CV" double precision
);


ALTER TABLE public.vals2023pandas OWNER TO rohand;

--
-- Name: vals2019 id; Type: DEFAULT; Schema: public; Owner: rohand
--

ALTER TABLE ONLY public.vals2019 ALTER COLUMN id SET DEFAULT nextval('public.vals2019_id_seq'::regclass);


--
-- Data for Name: vals2019; Type: TABLE DATA; Schema: public; Owner: rohand
--

COPY public.vals2019 (id, num, biological_samp_name, protein_name, protein_acc_num, protein_mol_weight, protein_id_prob, exclusive_uni_peptide_count, exclusive_uni_spectrum_count, exclusive_spectrum_count, percent_total_spectra, peptide_seq, prev_amino_acid, next_amino_acid, best_peptide_id_prob, best_peptide_score, mass_amu, median_ret_time, total_tic, peptide_start_ind, peptide_stop_ind) FROM stdin;
\.


--
-- Data for Name: vals2019pandas; Type: TABLE DATA; Schema: public; Owner: rohand
--

COPY public.vals2019pandas (index, "Biological sample name", "Protein name", "Protein accession numbers", "Protein molecular weight (Da)", "Protein identification probability", "Exclusive unique peptide count", "Exclusive unique spectrum count", "Exclusive spectrum count", "Percentage of total spectra", "Peptide sequence", "Previous amino acid", "Next amino acid", "Best Peptide identification probability", "Best Peptide Score", "Calculated +1H Peptide Mass (AMU)", "Median Retention Time", "Total TIC", "Peptide start index", "Peptide stop index") FROM stdin;
0	POSITIVE 1	Alpha-enolase OS=Mus musculus GN=Eno1 PE=1 SV=3	ENOA_MOUSE	47,141.70	100.00%	2	3	8	0.15%	SCNCLLLK	K	V	99.00%	55.8	1,462.65	2,566.54	966955	336	343
1	POSITIVE 1	Alpha-enolase OS=Mus musculus GN=Eno1 PE=1 SV=3	ENOA_MOUSE	47,141.70	100.00%	2	3	8	0.15%	VNQIGSVTESLQACK	K	L	99.70%	60.4	2,020.94	2,093.62	1954540	344	358
2	POSITIVE 1	Ras-related C3 botulinum toxin substrate 1 OS=Mus musculus GN=Rac1 PE=1 SV=1	RAC1_MOUSE	21,450.60	100.00%	3	4	6	0.11%	AVLCPPPVK	R	K	99.70%	48.1	1,367.68	1,799.46	1956340	175	183
3	POSITIVE 1	Ras-related C3 botulinum toxin substrate 1 OS=Mus musculus GN=Rac1 PE=1 SV=1	RAC1_MOUSE	21,450.60	100.00%	3	4	6	0.11%	AVLCPPPVKK	R	R	99.70%	43.8	1,495.78	1,332.22	1702820	175	184
4	POSITIVE 1	Ras-related C3 botulinum toxin substrate 1 OS=Mus musculus GN=Rac1 PE=1 SV=1	RAC1_MOUSE	21,450.60	100.00%	3	4	6	0.11%	HHCPNTPIILVGTK	R	L	99.70%	42.5	1,973.97	1,703.40	1213650	103	116
5	POSITIVE 1	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	4	5	5	0.09%	DGQLWLCAPQAK	K	Q	99.70%	61	1,773.81	2,513.21	1098210	667	678
6	POSITIVE 1	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	4	5	5	0.09%	KFHIGCEK	K	G	99.00%	44.4	1,405.64	827.286	312459	1446	1453
7	POSITIVE 1	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	4	5	5	0.09%	NAGATCYMNSVIQQLYMIPSIR	K	N	99.70%	91.6	2,917.35	4,289.61	345318	1561	1582
8	POSITIVE 1	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	4	5	5	0.09%	VVIQSNDDIACR	R	A	99.70%	54	1,776.80	1,630.52	1031210	777	788
9	POSITIVE 1	GMP reductase 2 OS=Mus musculus GN=Gmpr2 PE=1 SV=2	GMPR2_MOUSE	38,018.90	100.00%	2	2	3	0.06%	GHIISDGGCSCPGDVAK	K	A	99.70%	65.7	2,184.91	1,657.16	358011	214	230
10	POSITIVE 1	GMP reductase 2 OS=Mus musculus GN=Gmpr2 PE=1 SV=2	GMPR2_MOUSE	38,018.90	100.00%	2	2	3	0.06%	VGIGPGSVCTTR	K	K	99.70%	56.9	1,590.74	1,706.71	1289120	178	189
11	POSITIVE 1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2 OS=Mus musculus GN=Gnb2 PE=1 SV=3	GBB2_MOUSE	37,331.80	99.60%	1	1	1	0.02%	KACGDSTLTQITAGLDPVGR	R	I	99.70%	71.3	2,447.17	2,784.91	402886	23	42
12	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	UBP7_MOUSE	128,478.10	100.00%	3	4	4	0.08%	GTCVEGTIPK	K	L	99.70%	33.8	1,448.65	1,448.10	177604	314	323
13	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	UBP7_MOUSE	128,478.10	100.00%	3	4	4	0.08%	NQGATCYMNSLLQTLFFTNQLR	K	K	99.70%	85.9	3,007.39	4,455.74	284741	219	240
14	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	UBP7_MOUSE	128,478.10	100.00%	3	4	4	0.08%	NQGATCYMNSLLQTLFFTNQLRK	K	A	99.70%	43.7	3,135.48	4,187.28	217583	219	241
15	POSITIVE 1	Acyl-coenzyme A thioesterase 1 OS=Mus musculus GN=Acot1 PE=1 SV=1	ACOT1_MOUSE	46,136.90	99.60%	1	1	2	0.04%	SCWDEPLSIAVR	R	G	99.70%	76.5	1,819.81	3,032.84	709520	13	24
16	POSITIVE 1	Dynamin-1-like protein OS=Mus musculus GN=Dnm1l PE=1 SV=2	DNM1L_MOUSE	82,660.20	100.00%	2	3	5	0.09%	LHDAIVEVVTCLLR	K	K	99.70%	82.1	2,025.03	3,929.02	215857	466	479
17	POSITIVE 1	Dynamin-1-like protein OS=Mus musculus GN=Dnm1l PE=1 SV=2	DNM1L_MOUSE	82,660.20	100.00%	2	3	5	0.09%	LHDAIVEVVTCLLRK	K	R	99.70%	91	2,153.12	3,519.04	150871	466	480
18	POSITIVE 1	ERO1-like protein alpha OS=Mus musculus GN=Ero1a PE=1 SV=2	ERO1A_MOUSE	54,086.10	99.60%	1	1	1	0.02%	YSEEANRIEECEQAER	K	L	99.70%	55.2	2,399.98	1,532.02	192155	120	135
19	POSITIVE 1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	KIFC1_MOUSE	74,153.00	100.00%	2	2	2	0.04%	GLQCGAPLNLVDLAGSER	R	L	99.70%	63.1	2,257.07	3,226.94	255960	555	572
20	POSITIVE 1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	KIFC1_MOUSE	74,153.00	100.00%	2	2	2	0.04%	VNQCVIGTAQANKK	K	-	99.70%	46.4	1,917.93	1,047.87	196108	661	674
21	POSITIVE 1	Aldehyde dehydrogenase family 16 member A1 OS=Mus musculus GN=Aldh16a1 PE=1 SV=2	A16A1_MOUSE	84,754.50	99.60%	1	1	1	0.02%	EIFTTLEYGPVPESHACALAWLDTHNR	R	L	99.70%	41.9	3,514.62	3,304.13	649735	12	38
22	POSITIVE 1	6-phosphogluconolactonase OS=Mus musculus GN=Pgls PE=1 SV=1	6PGL_MOUSE	27,255.30	99.60%	1	1	2	0.04%	TGALCWFLDEAAAR	R	L	99.70%	60.2	1,967.87	3,725.47	106336	232	245
23	POSITIVE 1	Eukaryotic translation initiation factor 3 subunit G OS=Mus musculus GN=Eif3g PE=1 SV=2	EIF3G_MOUSE	35,639.00	99.60%	1	1	2	0.04%	EDLNCQEEEDPMNK	K	L	99.70%	72.5	2,137.81	1,583.91	677826	135	148
24	POSITIVE 1	14-3-3 protein epsilon OS=Mus musculus GN=Ywhae PE=1 SV=1	1433E_MOUSE	29,175.00	100.00%	2	5	17	0.32%	LICCDILDVLDK	K	H	99.70%	78	1,931.89	4,130.16	1887730	95	106
25	POSITIVE 1	14-3-3 protein epsilon OS=Mus musculus GN=Ywhae PE=1 SV=1	1433E_MOUSE	29,175.00	100.00%	2	5	17	0.32%	LICCDILDVLDKHLIPAANTGESK	K	V	99.70%	84.8	3,150.53	3,977.29	1800030	95	118
26	POSITIVE 1	Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform OS=Mus musculus GN=Ppp2ca PE=1 SV=1	PP2AA_MOUSE	35,575.40	100.00%	2	2	2	0.04%	AHQLVMEGYNWCHDR	R	N	99.70%	50.4	2,302.95	1,853.73	803157	240	254
27	POSITIVE 1	Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform OS=Mus musculus GN=Ppp2ca PE=1 SV=1	PP2AA_MOUSE	35,575.40	100.00%	2	2	2	0.04%	CGNQAAIMELDDTLK	R	Y	99.70%	57.7	2,065.90	2,817.56	696216	269	283
28	POSITIVE 1	Putative GTP-binding protein 6 OS=Mus musculus GN=Gtpbp6 PE=1 SV=1	GTPB6_MOUSE	56,474.80	99.60%	1	1	1	0.02%	VDLVPGYTPPCSGALAVSAISGR	K	G	99.70%	64.2	2,674.30	3,344.37	464288	410	432
29	POSITIVE 1	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	MTG1_MOUSE	36,679.20	100.00%	4	9	11	0.21%	ECFPLQGHDVAR	R	W	99.70%	61	1,815.79	1,782.78	1145660	17	28
30	POSITIVE 1	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	MTG1_MOUSE	36,679.20	100.00%	4	9	11	0.21%	GAWRECFPLQGHDVAR	R	W	99.70%	61	2,286.03	1,985.71	3559990	13	28
31	POSITIVE 1	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	MTG1_MOUSE	36,679.20	100.00%	4	9	11	0.21%	IQVCERPLVFLLDTPGVLAPR	R	I	99.70%	71.6	2,780.46	3,859.04	253015	189	209
32	POSITIVE 1	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	MTG1_MOUSE	36,679.20	100.00%	4	9	11	0.21%	SGLLGQVMLDRDIIPAC	R	-	99.70%	86.6	2,245.08	3,572.82	1920870	310	326
33	POSITIVE 1	Mitotic spindle assembly checkpoint protein MAD2A OS=Mus musculus GN=Mad2l1 PE=1 SV=2	MD2L1_MOUSE	23,598.20	99.60%	1	1	1	0.02%	WEESGPQFITNCEEVR	K	L	99.70%	52.3	2,368.00	2,505.70	574390	167	182
34	POSITIVE 1	E3 ubiquitin-protein ligase RNF213 OS=Mus musculus GN=Rnf213 PE=1 SV=2	RN213_MOUSE	584,783.60	99.60%	1	2	2	0.04%	TLHPLLEDGCIEDDPAPYKK	K	V	99.70%	44	2,698.25	2,128.51	1529680	2820	2839
35	POSITIVE 1	Kinesin light chain 1 OS=Mus musculus GN=Klc1 PE=1 SV=3	KLC1_MOUSE	61,451.30	100.00%	2	2	2	0.04%	RLCQENQWLR	R	D	99.70%	50.9	1,789.82	1,685.73	140827	112	121
36	POSITIVE 1	Kinesin light chain 1 OS=Mus musculus GN=Klc1 PE=1 SV=3	KLC1_MOUSE	61,451.30	100.00%	2	2	2	0.04%	RLCQENQWLRDELANTQQK	R	L	99.70%	58.8	2,817.32	2,169.36	1514700	112	130
37	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	ACGSETMQK	K	K	99.70%	64.6	1,398.54	639.657	612120	1291	1299
38	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	DNYQSFCK	R	W	99.00%	45.5	1,448.56	1,428.53	1483150	905	912
39	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	KCLEDENSK	R	L	99.70%	30.9	1,509.63	461.238	73,068.30	1510	1518
40	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	LENINGVSDGYLNSLCSVR	K	A	99.70%	74.4	2,497.14	2,957.32	1505910	765	783
41	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	NYRDNYQSFCK	R	W	99.70%	56.4	1,881.76	1,364.32	530765	902	912
42	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	SLCEEVKR	R	L	99.00%	42.4	1,407.64	983.898	2349090	1416	1423
43	POSITIVE 1	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	7	9	17	0.32%	YCYLQNEIFGLFQK	K	L	99.70%	66.2	2,210.00	3,974.35	120009	751	764
44	POSITIVE 1	39S ribosomal protein L10, mitochondrial OS=Mus musculus GN=Mrpl10 PE=1 SV=2	RM10_MOUSE	29,396.10	100.00%	1	2	16	0.30%	EQNEGDCATSANEK	K	L	99.70%	80.9	1,939.74	593.4	6755290	239	252
45	POSITIVE 1	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	3	3	3	0.06%	TCTVTEGK	R	H	99.00%	28.9	1,282.54	743.4	147410	244	251
46	POSITIVE 1	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	3	3	3	0.06%	TTTQFCVSAPR	R	R	99.70%	32	1,654.73	1,810.99	604654	497	507
47	POSITIVE 1	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	3	3	3	0.06%	VRVEASGCSR	K	R	99.50%	29.8	1,507.67	549.3	72,981.60	1461	1470
48	POSITIVE 1	Fragile X mental retardation syndrome-related protein 1 OS=Mus musculus GN=Fxr1 PE=1 SV=2	FXR1_MOUSE	76,222.20	99.60%	1	2	4	0.08%	ANDQEPCGWWLAK	R	V	99.70%	63.2	1,961.83	2,661.60	3588190	71	83
49	POSITIVE 1	FAST kinase domain-containing protein 2, mitochondrial OS=Mus musculus GN=Fastkd2 PE=2 SV=2	FAKD2_MOUSE	78,950.40	100.00%	4	5	8	0.15%	CLSILSTALVSMEPCMNVNALR	R	A	99.70%	88.4	2,934.37	4,705.97	249775	255	276
50	POSITIVE 1	FAST kinase domain-containing protein 2, mitochondrial OS=Mus musculus GN=Fastkd2 PE=2 SV=2	FAKD2_MOUSE	78,950.40	100.00%	4	5	8	0.15%	LAQECNSLSDVLDTFSK	K	A	99.70%	73.5	2,314.03	3,385.25	275819	145	161
51	POSITIVE 1	FAST kinase domain-containing protein 2, mitochondrial OS=Mus musculus GN=Fastkd2 PE=2 SV=2	FAKD2_MOUSE	78,950.40	100.00%	4	5	8	0.15%	SVYCLNSCHPR	K	G	99.70%	42	1,847.76	1,684.73	1652310	625	635
52	POSITIVE 1	FAST kinase domain-containing protein 2, mitochondrial OS=Mus musculus GN=Fastkd2 PE=2 SV=2	FAKD2_MOUSE	78,950.40	100.00%	4	5	8	0.15%	VAVLCVPK	R	S	99.00%	57.1	1,272.64	2,045.98	469717	617	624
53	POSITIVE 1	Transformation/transcription domain-associated protein OS=Mus musculus GN=Trrap PE=1 SV=2	TRRAP_MOUSE	291,560.30	99.60%	1	1	1	0.02%	IYPYLVMNDACLTESR	K	R	99.70%	44.5	2,332.04	3,117.46	772060	2231	2246
54	POSITIVE 1	GDP-L-fucose synthase OS=Mus musculus GN=Tsta3 PE=1 SV=3	FCL_MOUSE	35,877.60	99.60%	1	1	1	0.02%	VVSCLSTCIFPDK	K	T	99.70%	45.8	1,980.89	3,120.83	658668	109	121
55	POSITIVE 1	Pyridoxal phosphate phosphatase OS=Mus musculus GN=Pdxp PE=1 SV=1	PLPP_MOUSE	31,512.40	99.60%	1	2	3	0.06%	DVLGQAQGVLFDCDGVLWNGER	R	I	99.70%	93.8	2,835.28	3,861.07	867071	14	35
56	POSITIVE 1	Protein RRP5 homolog OS=Mus musculus GN=Pdcd11 PE=1 SV=2	RRP5_MOUSE	207,780.00	99.60%	1	1	2	0.04%	CVLPSSVIIGLGPSVLGLAK	K	Y	99.70%	60	2,367.28	4,230.08	108200	1344	1363
57	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 5 OS=Mus musculus GN=Ndufa5 PE=1 SV=3	NDUA5_MOUSE	13,360.20	100.00%	2	4	7	0.13%	KTTGLVGLAVCDTPHER	K	L	98.70%	30.6	2,241.08	1,849.90	937933	7	23
58	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 5 OS=Mus musculus GN=Ndufa5 PE=1 SV=3	NDUA5_MOUSE	13,360.20	100.00%	2	4	7	0.13%	TTGLVGLAVCDTPHER	K	L	99.70%	87.6	2,112.98	2,201.44	1.03E+07	8	23
59	POSITIVE 1	Ubiquitin-40S ribosomal protein S27a OS=Mus musculus GN=Rps27a PE=1 SV=2	RS27A_MOUSE	17,951.60	100.00%	2	4	12	0.23%	CCLTYCFNKPEDK	K	-	99.70%	43.2	2,257.90	2,991.38	1522550	144	156
60	POSITIVE 1	Ubiquitin-40S ribosomal protein S27a OS=Mus musculus GN=Rps27a PE=1 SV=2	RS27A_MOUSE	17,951.60	100.00%	2	4	12	0.23%	ECPSDECGAGVFMGSHFDR	R	H	99.70%	75.1	2,612.99	2,528.77	8633660	120	138
61	POSITIVE 1	28S ribosomal protein S29, mitochondrial OS=Mus musculus GN=Dap3 PE=1 SV=1	RT29_MOUSE	44,699.90	100.00%	2	3	4	0.08%	FLSNCNPEQLER	R	L	99.70%	67.3	1,893.82	2,067.15	1621310	375	386
62	POSITIVE 1	28S ribosomal protein S29, mitochondrial OS=Mus musculus GN=Dap3 PE=1 SV=1	RT29_MOUSE	44,699.90	100.00%	2	3	4	0.08%	NCRELLQSTHNK	K	Q	99.70%	50.2	1,886.86	905.598	974738	157	168
63	POSITIVE 1	Kinesin-like protein KIF20A OS=Mus musculus GN=Kif20a PE=2 SV=1	KI20A_MOUSE	99,878.70	99.60%	1	1	2	0.04%	LCEDQNGNPYVK	R	D	99.70%	52.1	1,823.77	1,458.32	913904	330	341
64	POSITIVE 1	T-complex protein 1 subunit zeta OS=Mus musculus GN=Cct6a PE=1 SV=3	TCPZ_MOUSE	58,005.50	99.60%	1	1	1	0.02%	FTFIEKCNNPR	K	S	99.70%	43.2	1,812.82	1,647.94	372850	360	370
65	POSITIVE 1	LanC-like protein 1 OS=Mus musculus GN=Lancl1 PE=1 SV=1	LANC1_MOUSE	45,342.80	99.60%	1	1	2	0.04%	YLCDAQQCADVIWQYGLLK	R	K	99.70%	64.9	2,799.26	4,132.64	179394	298	316
66	POSITIVE 1	Solute carrier family 25 member 51 OS=Mus musculus GN=Slc25a51 PE=1 SV=1	S2551_MOUSE	33,690.90	99.60%	1	2	5	0.09%	CHGIAEYYR	R	G	99.70%	78	1,555.64	1,419.41	3783470	167	175
67	POSITIVE 1	Calreticulin OS=Mus musculus GN=Calr PE=1 SV=1	CALR_MOUSE	47,996.10	100.00%	1	2	3	0.06%	HEQNIDCGGGYVK	K	L	99.70%	52	1,863.78	1,121.22	812909	99	111
68	POSITIVE 1	Reticulon-4 OS=Mus musculus GN=Rtn4 PE=1 SV=2	RTN4_MOUSE	126,616.00	100.00%	2	2	2	0.04%	SEIANVQSGANSLPCSELPCDLSFK	K	N	99.70%	68.2	3,178.41	3,414.80	117590	870	894
69	POSITIVE 1	Reticulon-4 OS=Mus musculus GN=Rtn4 PE=1 SV=2	RTN4_MOUSE	126,616.00	100.00%	2	2	2	0.04%	VTEAVVATMPEGLTPDLVQEACESELNEATGTK	K	I	99.70%	74.3	3,876.78	3,540.59	84,003.80	516	548
70	POSITIVE 1	2',5'-phosphodiesterase 12 OS=Mus musculus GN=Pde12 PE=1 SV=2	PDE12_MOUSE	67,513.60	100.00%	2	4	5	0.09%	ELESLCPVEAGPGTCTFDHR	R	H	99.70%	61.8	2,730.16	2,682.52	885407	262	281
71	POSITIVE 1	2',5'-phosphodiesterase 12 OS=Mus musculus GN=Pde12 PE=1 SV=2	PDE12_MOUSE	67,513.60	100.00%	2	4	5	0.09%	VYTPCNADIGLR	R	L	99.70%	66.9	1,765.80	2,146.13	3543980	233	244
72	POSITIVE 1	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	RRBP1_MOUSE	172,876.90	100.00%	2	2	3	0.06%	CEELSSLHGQLK	K	E	99.70%	85.5	1,787.81	1,589.97	1326320	1136	1147
73	POSITIVE 1	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	RRBP1_MOUSE	172,876.90	100.00%	2	2	3	0.06%	LKELESQVSCLEK	R	E	99.70%	48	1,949.93	1,836.53	766150	1189	1201
74	POSITIVE 1	DENN domain-containing protein 4C OS=Mus musculus GN=Dennd4c PE=1 SV=1	DEN4C_MOUSE	211,461.80	99.60%	1	1	3	0.06%	CANVNNSSTTSQR	R	I	99.70%	87.9	1,825.76	529.332	352429	126	138
75	POSITIVE 1	60S ribosomal protein L3 OS=Mus musculus GN=Rpl3 PE=1 SV=3	RL3_MOUSE	46,110.70	99.60%	1	2	3	0.06%	VACIGAWHPAR	K	V	99.70%	57.2	1,624.75	1,713.25	1593000	251	261
76	POSITIVE 1	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ANLN_MOUSE	122,795.40	99.60%	1	1	1	0.02%	KPCEKPTLSQGAQPK	R	E	99.70%	60.5	2,056.00	786.048	617320	326	340
77	POSITIVE 1	Hsp90 co-chaperone Cdc37 OS=Mus musculus GN=Cdc37 PE=1 SV=1	CDC37_MOUSE	44,593.30	99.60%	1	1	1	0.02%	EKEELDRGCR	K	E	99.70%	41.9	1,678.73	468.354	76,595.90	46	55
78	POSITIVE 1	Methylthioribose-1-phosphate isomerase OS=Mus musculus GN=Mri1 PE=1 SV=1	MTNA_MOUSE	39,410.60	99.60%	1	2	2	0.04%	VTVLTHCNTGALATAGYGTALGVIR	K	S	99.70%	70.6	2,903.45	2,911.14	819226	162	186
79	POSITIVE 1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	DYHC1_MOUSE	532,043.10	100.00%	3	4	6	0.11%	LHSLQPHACFR	K	L	99.70%	38.6	1,752.81	1,274.19	1744650	4111	4121
80	POSITIVE 1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	DYHC1_MOUSE	532,043.10	100.00%	3	4	6	0.11%	LSCLPAFK	R	D	99.00%	63.4	1,322.62	2,274.33	518368	3936	3943
81	POSITIVE 1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	DYHC1_MOUSE	532,043.10	100.00%	3	4	6	0.11%	VQYPQSQACK	K	M	99.70%	42.2	1,595.69	1,000.63	1377980	623	632
82	POSITIVE 1	MICOS complex subunit Mic60 OS=Mus musculus GN=Immt PE=1 SV=1	MIC60_MOUSE	83,901.10	99.60%	1	1	2	0.04%	VNCSDNEFTQALTAAIPPESLTR	R	G	99.70%	50.2	2,921.34	3,575.77	1028410	600	622
83	POSITIVE 1	Retrovirus-related Env polyprotein from Fv-4 locus OS=Mus musculus GN=Fv4 PE=1 SV=2	ENV2_MOUSE	74,453.80	100.00%	1	1	1	0.02%	LTLSEVTGQGLCLGAVPK	K	T	99.70%	38.2	2,230.12	3,168.04	327239	0	0
84	POSITIVE 1	Calcium/calmodulin-dependent protein kinase type II subunit delta OS=Mus musculus GN=Camk2d PE=1 SV=1	KCC2D_MOUSE	56,370.70	100.00%	2	2	2	0.04%	ITASEALKHPWICQR	R	S	99.70%	34.4	2,197.06	1,989.05	873965	261	275
85	POSITIVE 1	Calcium/calmodulin-dependent protein kinase type II subunit delta OS=Mus musculus GN=Camk2d PE=1 SV=1	KCC2D_MOUSE	56,370.70	100.00%	2	2	2	0.04%	RITASEALKHPWICQR	K	S	99.70%	37.6	2,353.17	1,707.73	286238	260	275
86	POSITIVE 1	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	TADBP_MOUSE	44,547.50	100.00%	4	5	7	0.13%	NPVSQCMR	R	G	99.00%	39.5	1,378.57	1,126.52	240189	45	52
87	POSITIVE 1	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	TADBP_MOUSE	44,547.50	100.00%	4	5	7	0.13%	VAQSLCGEDLIIK	K	G	99.70%	70	1,832.89	2,487.61	2892220	239	251
88	POSITIVE 1	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	TADBP_MOUSE	44,547.50	100.00%	4	5	7	0.13%	VTEDENDEPIEIPSEDDGTVLLSTVTAQFPGACGLR	R	Y	99.70%	75.5	4,261.94	4,188.99	55,513.60	7	42
89	POSITIVE 1	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	TADBP_MOUSE	44,547.50	100.00%	4	5	7	0.13%	YRNPVSQCMR	R	G	99.70%	49.5	1,697.73	1,284.80	2687950	43	52
90	POSITIVE 1	Nucleolar protein 58 OS=Mus musculus GN=Nop58 PE=1 SV=1	NOP58_MOUSE	60,345.00	99.60%	1	1	1	0.02%	TYDPSGDSTLPTCSK	K	K	99.70%	48.6	2,015.83	1,638.74	566661	427	441
91	POSITIVE 1	THUMP domain-containing protein 3 OS=Mus musculus GN=Thumpd3 PE=1 SV=1	THUM3_MOUSE	56,431.20	99.60%	1	1	1	0.02%	HCFTSNEAAR	K	D	99.70%	60.1	1,579.64	818.838	175843	240	249
92	POSITIVE 1	Glutamyl-tRNA(Gln) amidotransferase subunit B, mitochondrial OS=Mus musculus GN=Gatb PE=1 SV=1	GATB_MOUSE	62,119.90	99.60%	1	1	2	0.04%	VTNWVLNTFLCYLK	K	Q	99.70%	67	2,158.05	4,454.71	431540	422	435
93	POSITIVE 1	Alcohol dehydrogenase class-3 OS=Mus musculus GN=Adh5 PE=1 SV=3	ADHX_MOUSE	39,547.20	100.00%	2	2	6	0.11%	AGDTVIPLYIPQCGECK	K	F	99.70%	48.1	2,376.07	3,254.27	208567	85	101
94	POSITIVE 1	Alcohol dehydrogenase class-3 OS=Mus musculus GN=Adh5 PE=1 SV=3	ADHX_MOUSE	39,547.20	100.00%	2	2	6	0.11%	VCLLGCGISTGYGAAVNTAK	K	V	99.70%	96.2	2,467.14	3,173.10	2590880	169	188
95	POSITIVE 1	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	VIGLN_MOUSE	141,745.60	100.00%	1	1	2	0.04%	AACLESAQEPAGAWSNK	K	I	99.70%	92.1	2,176.94	1,967.62	962883	51	67
96	POSITIVE 1	Fructose-bisphosphate aldolase A OS=Mus musculus GN=Aldoa PE=1 SV=2	ALDOA_MOUSE	39,356.50	100.00%	3	3	5	0.09%	ALANSLACQGK	R	Y	99.00%	29	1,519.70	1,356.55	380185	332	342
97	POSITIVE 1	Fructose-bisphosphate aldolase A OS=Mus musculus GN=Aldoa PE=1 SV=2	ALDOA_MOUSE	39,356.50	100.00%	3	3	5	0.09%	ALSDHHVYLEGTLLKPNMVTPGHACTQK	K	F	99.70%	73.1	3,504.68	2,082.53	1548080	216	243
98	POSITIVE 1	Fructose-bisphosphate aldolase A OS=Mus musculus GN=Aldoa PE=1 SV=2	ALDOA_MOUSE	39,356.50	100.00%	3	3	5	0.09%	RALANSLACQGK	K	Y	99.70%	44.3	1,675.80	1,026.03	768679	331	342
99	POSITIVE 1	Glutathione S-transferase Mu 2 OS=Mus musculus GN=Gstm2 PE=1 SV=2	GSTM2_MOUSE	25,623.00	100.00%	2	3	11	0.21%	HNLCGETEEER	K	I	99.70%	40.8	1,760.70	845.265	321102	84	94
100	POSITIVE 1	Glutathione S-transferase Mu 2 OS=Mus musculus GN=Gstm2 PE=1 SV=2	GSTM2_MOUSE	25,623.00	100.00%	2	3	11	0.21%	KHNLCGETEEER	R	I	99.70%	56.6	1,888.79	549.996	1480400	83	94
101	POSITIVE 1	DNA mismatch repair protein Msh6 OS=Mus musculus GN=Msh6 PE=1 SV=3	MSH6_MOUSE	151,087.50	99.90%	1	1	2	0.04%	RLFCNFDK	R	N	99.00%	37.3	1,486.66	1,686.07	622726	1032	1039
102	POSITIVE 1	Transcription elongation factor SPT5 OS=Mus musculus GN=Supt5h PE=1 SV=1	SPT5H_MOUSE	120,664.40	100.00%	2	3	3	0.06%	SFAFLHCK	R	K	99.00%	45.4	1,396.61	1,850.19	977910	618	625
103	POSITIVE 1	Transcription elongation factor SPT5 OS=Mus musculus GN=Supt5h PE=1 SV=1	SPT5H_MOUSE	120,664.40	100.00%	2	3	3	0.06%	VELHSTCQTISVDR	R	Q	99.70%	68	2,031.92	1,569.97	1002860	728	741
104	POSITIVE 1	V-type proton ATPase subunit G 1 OS=Mus musculus GN=Atp6v1g1 PE=1 SV=3	VATG1_MOUSE	13,724.50	100.00%	2	3	4	0.08%	EAAALGSHGSCSSEVEK	K	E	99.70%	61.9	2,105.89	998.658	839801	59	75
105	POSITIVE 1	V-type proton ATPase subunit G 1 OS=Mus musculus GN=Atp6v1g1 PE=1 SV=3	VATG1_MOUSE	13,724.50	100.00%	2	3	4	0.08%	EAAALGSHGSCSSEVEKETR	K	E	99.70%	64.1	2,492.08	1,103.38	602285	59	78
106	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L5 OS=Mus musculus GN=Uchl5 PE=1 SV=2	UCHL5_MOUSE	37,617.30	100.00%	2	3	3	0.06%	QVINNACATQAIVSVLLNCTHQDVHLGETLSEFK	K	E	99.70%	62.3	4,265.04	4,338.01	370920	82	115
107	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L5 OS=Mus musculus GN=Uchl5 PE=1 SV=2	UCHL5_MOUSE	37,617.30	100.00%	2	3	3	0.06%	SSNAGEWCLMESDPGVFTELIK	M	G	99.70%	74.1	2,899.26	4,260.68	271816	2	23
108	POSITIVE 1	Creatine kinase S-type, mitochondrial OS=Mus musculus GN=Ckmt2 PE=1 SV=1	KCRS_MOUSE	47,474.70	100.00%	3	5	8	0.15%	LGYILECPSNLGTGLR	R	A	99.70%	49.3	2,150.04	3,153.73	464481	0	0
109	POSITIVE 1	Creatine kinase S-type, mitochondrial OS=Mus musculus GN=Ckmt2 PE=1 SV=1	KCRS_MOUSE	47,474.70	100.00%	3	5	8	0.15%	LGYILTCPSNLGTGLR	R	A	99.70%	89.5	2,122.04	2,983.43	5440700	311	326
110	POSITIVE 1	Creatine kinase S-type, mitochondrial OS=Mus musculus GN=Ckmt2 PE=1 SV=1	KCRS_MOUSE	47,474.70	100.00%	3	5	8	0.15%	LIDDHFLFDKPVSPLLTCAGMAR	R	D	99.70%	71.2	3,003.45	3,301.38	639989	221	243
111	POSITIVE 1	Ubiquitin-conjugating enzyme E2 L3 OS=Mus musculus GN=Ube2l3 PE=1 SV=1	UB2L3_MOUSE	17,862.30	100.00%	2	4	7	0.13%	GQVCLPVISAENWKPATK	K	T	99.70%	82.3	2,385.17	2,738.88	1.00E+07	83	100
112	POSITIVE 1	Ubiquitin-conjugating enzyme E2 L3 OS=Mus musculus GN=Ube2l3 PE=1 SV=1	UB2L3_MOUSE	17,862.30	100.00%	2	4	7	0.13%	IYHPNIDEKGQVCLPVISAENWKPATK	K	T	99.70%	82.3	3,494.72	2,588.59	6744760	74	100
113	POSITIVE 1	E3 ubiquitin-protein ligase HECTD1 OS=Mus musculus GN=Hectd1 PE=1 SV=2	HECD1_MOUSE	290,088.80	100.00%	2	2	2	0.04%	LLQLSCNGNVK	K	S	99.70%	33.3	1,632.78	1,856.86	662708	1855	1865
114	POSITIVE 1	E3 ubiquitin-protein ligase HECTD1 OS=Mus musculus GN=Hectd1 PE=1 SV=2	HECD1_MOUSE	290,088.80	100.00%	2	2	2	0.04%	NRNCSQLIAAYK	K	D	99.70%	51.5	1,824.85	1,541.35	160521	1946	1957
115	POSITIVE 1	NHP2-like protein 1 OS=Mus musculus GN=Snu13 PE=1 SV=4	NH2L1_MOUSE	14,173.80	100.00%	2	3	4	0.08%	KLLDLVQQSCNYK	K	Q	99.70%	47.8	1,995.96	2,144.55	656667	21	33
116	POSITIVE 1	NHP2-like protein 1 OS=Mus musculus GN=Snu13 PE=1 SV=4	NH2L1_MOUSE	14,173.80	100.00%	2	3	4	0.08%	LLDLVQQSCNYK	K	Q	99.70%	42.7	1,867.87	2,363.57	1845220	22	33
117	POSITIVE 1	Signal transducer and transcription activator 6 OS=Mus musculus GN=Stat6 PE=1 SV=2	STAT6_MOUSE	93,499.40	99.60%	1	1	2	0.04%	CVSWSQFNK	R	E	99.70%	61.5	1,542.65	2,091.98	848374	496	504
118	POSITIVE 1	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	SPTN1_MOUSE	284,600.80	100.00%	2	2	2	0.04%	GACAGSEDAVK	R	A	99.70%	41.3	1,451.59	794.394	107445	1620	1630
119	POSITIVE 1	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	SPTN1_MOUSE	284,600.80	100.00%	2	2	2	0.04%	TYLLDGSCMVEESGTLESQLEATK	R	R	99.70%	97.6	3,048.35	3,542.71	206229	2226	2249
120	POSITIVE 1	Inosine-5'-monophosphate dehydrogenase 2 OS=Mus musculus GN=Impdh2 PE=1 SV=2	IMDH2_MOUSE	55,816.50	100.00%	1	3	6	0.11%	HGFCGIPITDTGR	R	M	99.70%	55.5	1,817.81	2,121.28	3783300	137	149
121	POSITIVE 1	Structural maintenance of chromosomes protein 1A OS=Mus musculus GN=Smc1a PE=1 SV=4	SMC1A_MOUSE	143,240.20	99.60%	1	1	1	0.02%	AESLIGVYPEQGDCVISK	K	V	99.70%	55.3	2,352.08	2,702.47	546287	1197	1214
122	POSITIVE 1	Membrane-associated guanylate kinase, WW and PDZ domain-containing protein 1 OS=Mus musculus GN=Magi1 PE=1 SV=1	MAGI1_MOUSE	161,974.30	99.60%	1	1	1	0.02%	SGDELICVDGTPVIGK	R	S	99.70%	69.9	2,046.95	2,743.06	579685	876	891
123	POSITIVE 1	Mitochondrial thiamine pyrophosphate carrier OS=Mus musculus GN=Slc25a19 PE=1 SV=1	TPC_MOUSE	35,619.30	99.60%	1	2	2	0.04%	LCPSDPNAK	R	Y	99.70%	37.7	1,388.59	965.085	1053870	50	58
124	POSITIVE 1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	4	5	12	0.23%	AVTEGAQAVEEPSIC	K	-	99.70%	98.2	1,947.84	2,274.95	2.60E+07	713	727
125	POSITIVE 1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	4	5	12	0.23%	HSFCEVLK	R	D	99.00%	43.4	1,406.62	1,576.33	2098360	460	467
126	POSITIVE 1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	4	5	12	0.23%	MLFLLGADGGCITR	K	Q	99.70%	70.3	1,910.89	3,385.96	413773	544	557
127	POSITIVE 1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	4	5	12	0.23%	VDSDNLCTEEIFPTEGAGTDLR	K	S	99.70%	71.9	2,826.22	2,957.41	321192	361	382
128	POSITIVE 1	Protein cereblon OS=Mus musculus GN=Crbn PE=1 SV=1	CRBN_MOUSE	50,880.90	99.60%	1	1	1	0.02%	VQILPECVLPSTMSAVQLESLNK	K	C	99.70%	57.1	2,943.46	3,822.44	171993	185	207
129	POSITIVE 1	UTP--glucose-1-phosphate uridylyltransferase OS=Mus musculus GN=Ugp2 PE=1 SV=3	UGPA_MOUSE	56,981.20	100.00%	2	4	4	0.08%	LNGGLGTSMGCK	K	G	99.70%	41.8	1,581.68	1,521.08	859252	113	124
130	POSITIVE 1	UTP--glucose-1-phosphate uridylyltransferase OS=Mus musculus GN=Ugp2 PE=1 SV=3	UGPA_MOUSE	56,981.20	100.00%	2	4	4	0.08%	LNGGLGTSMGCKGPK	K	S	99.70%	38.9	1,863.85	1,299.68	846677	113	127
131	POSITIVE 1	Exocyst complex component 3 OS=Mus musculus GN=Exoc3 PE=1 SV=2	EXOC3_MOUSE	86,456.90	99.60%	1	2	3	0.06%	DGLMCEQYR	R	M	99.70%	62.7	1,558.61	1,773.41	1217290	163	171
132	POSITIVE 1	SUN domain-containing protein 1 OS=Mus musculus GN=Sun1 PE=1 SV=2	SUN1_MOUSE	101,977.70	100.00%	2	3	3	0.06%	CSETYETK	R	T	99.00%	54.6	1,404.54	723.936	126781	759	766
133	POSITIVE 1	SUN domain-containing protein 1 OS=Mus musculus GN=Sun1 PE=1 SV=2	SUN1_MOUSE	101,977.70	100.00%	2	3	3	0.06%	VASLSAQCHNHDER	K	L	99.70%	49.6	2,010.85	680.541	382440	494	507
134	POSITIVE 1	Dimethyladenosine transferase 1, mitochondrial OS=Mus musculus GN=Tfb1m PE=1 SV=1	TFB1M_MOUSE	38,963.00	99.60%	1	1	1	0.02%	DGDPESCGF	K	-	99.70%	50.4	1,370.46	2,066.18	1331880	337	345
135	POSITIVE 1	Atypical kinase COQ8A, mitochondrial OS=Mus musculus GN=Coq8a PE=1 SV=2	COQ8A_MOUSE	71,745.00	100.00%	1	4	9	0.17%	AMFEEAYSNYCR	K	M	99.70%	69.6	1,927.74	2,231.30	1.52E+07	628	639
136	POSITIVE 1	STE20-like serine/threonine-protein kinase OS=Mus musculus GN=Slk PE=1 SV=2	SLK_MOUSE	141,458.30	99.60%	1	1	2	0.04%	CHLLVEHETQK	K	L	99.70%	75.6	1,780.81	917.145	812935	1151	1161
137	POSITIVE 1	GTP:AMP phosphotransferase AK3, mitochondrial OS=Mus musculus GN=Ak3 PE=1 SV=3	KAD3_MOUSE	25,426.90	99.70%	2	3	10	0.19%	TLTQCSWLLDGFPR	K	T	99.70%	85.8	2,080.96	3,457.09	1.66E+07	81	94
138	POSITIVE 1	Elongation factor 1-gamma OS=Mus musculus GN=Eef1g PE=1 SV=3	EF1G_MOUSE	50,061.30	100.00%	3	6	12	0.23%	AAAPAPEEEMDECEQALAAEPK	K	A	99.70%	102	2,744.15	2,230.41	3464660	254	275
139	POSITIVE 1	Elongation factor 1-gamma OS=Mus musculus GN=Eef1g PE=1 SV=3	EF1G_MOUSE	50,061.30	100.00%	3	6	12	0.23%	FPEELTQTFMSCNLITGMFQR	R	L	99.70%	95.5	2,937.30	4,258.81	217685	328	348
140	POSITIVE 1	Elongation factor 1-gamma OS=Mus musculus GN=Eef1g PE=1 SV=3	EF1G_MOUSE	50,061.30	100.00%	3	6	12	0.23%	KAAAPAPEEEMDECEQALAAEPK	K	A	99.70%	79.1	2,872.24	2,182.57	1939640	253	275
141	POSITIVE 1	Guanine nucleotide-binding protein G(i) subunit alpha-2 OS=Mus musculus GN=Gnai2 PE=1 SV=5	GNAI2_MOUSE	40,490.10	100.00%	2	3	4	0.08%	NNLKDCGLF	K	-	99.70%	36.6	1,467.64	2,246.12	709981	347	355
142	POSITIVE 1	Guanine nucleotide-binding protein G(i) subunit alpha-2 OS=Mus musculus GN=Gnai2 PE=1 SV=5	GNAI2_MOUSE	40,490.10	100.00%	2	3	4	0.08%	QLFALSCAAEEQGMLPEDLSGVIR	R	R	99.70%	84.8	3,021.41	3,954.89	530122	106	129
143	POSITIVE 1	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	ANXA6_MOUSE	75,889.10	100.00%	5	10	17	0.32%	CLIEILASR	K	T	99.70%	83.1	1,461.72	2,899.35	3179830	114	122
144	POSITIVE 1	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	ANXA6_MOUSE	75,889.10	100.00%	5	10	17	0.32%	DAISGVGTDEKCLIEILASR	K	T	99.70%	92.8	2,534.22	3,709.41	1313130	103	122
145	POSITIVE 1	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	ANXA6_MOUSE	75,889.10	100.00%	5	10	17	0.32%	GTVCAANDFNPDADAK	K	A	99.70%	88.4	2,052.84	1,783.96	2921500	355	370
146	POSITIVE 1	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	ANXA6_MOUSE	75,889.10	100.00%	5	10	17	0.32%	QEICQNYK	R	S	99.00%	36.3	1,469.61	1,005.78	914916	56	63
147	POSITIVE 1	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	ANXA6_MOUSE	75,889.10	100.00%	5	10	17	0.32%	QRQEICQNYK	K	S	99.70%	49.5	1,753.77	803.724	1437710	54	63
148	POSITIVE 1	Myosin-14 OS=Mus musculus GN=Myh14 PE=1 SV=1	MYH14_MOUSE	228,587.90	99.60%	1	2	2	0.04%	AEDMAELTCLNEASVLHNLR	K	E	99.70%	50	2,673.21	3,121.18	752428	103	122
149	POSITIVE 1	Myosin-14 OS=Mus musculus GN=Myh14 PE=1 SV=1	MYH14_MOUSE	228,587.90	99.60%	1	2	2	0.04%	CNGVLEGIR	R	I	99.70%	65.1	1,404.64	1,915.76	1616070	722	730
150	POSITIVE 1	Pyridoxal-dependent decarboxylase domain-containing protein 1 OS=Mus musculus GN=Pdxdc1 PE=1 SV=2	PDXD1_MOUSE	87,336.50	100.00%	2	2	2	0.04%	ERHSCDALNR	R	W	99.70%	33.2	1,644.70	485.43	96,059.40	421	430
151	POSITIVE 1	Pyridoxal-dependent decarboxylase domain-containing protein 1 OS=Mus musculus GN=Pdxdc1 PE=1 SV=2	PDXD1_MOUSE	87,336.50	100.00%	2	2	2	0.04%	HSCDALNR	R	W	99.00%	49.6	1,359.55	742.248	288868	423	430
152	POSITIVE 1	Baculoviral IAP repeat-containing protein 6 OS=Mus musculus GN=Birc6 PE=1 SV=2	BIRC6_MOUSE	532,169.90	99.60%	1	1	1	0.02%	VTMFLQSPCPLYK	K	G	99.70%	32.2	1,970.92	2,925.11	477786	3845	3857
153	POSITIVE 1	Phenylalanine--tRNA ligase beta subunit OS=Mus musculus GN=Farsb PE=1 SV=2	SYFB_MOUSE	65,699.80	99.60%	1	1	2	0.04%	EYTACELMNIYK	K	T	99.70%	60.4	1,921.81	2,932.46	560415	191	202
154	POSITIVE 1	28S ribosomal protein S9, mitochondrial OS=Mus musculus GN=Mrps9 PE=1 SV=3	RT09_MOUSE	44,930.00	99.60%	1	1	1	0.02%	LLTLPCGPAEEEFVQR	K	F	99.70%	33.2	2,246.06	3,010.66	613320	222	237
155	POSITIVE 1	Vesicle transport protein SEC20 OS=Mus musculus GN=Bnip1 PE=1 SV=1	SEC20_MOUSE	26,176.30	98.70%	1	1	2	0.04%	ICNQEIVK	R	F	99.00%	44.6	1,390.65	1,285.96	603569	11	18
156	POSITIVE 1	Developmentally-regulated GTP-binding protein 1 OS=Mus musculus GN=Drg1 PE=1 SV=1	DRG1_MOUSE	40,513.80	99.60%	1	1	1	0.02%	GGINLTATCPQSELDAETVK	K	S	99.70%	62.1	2,491.14	2,524.95	339639	187	206
157	POSITIVE 1	Cytoplasmic dynein 1 light intermediate chain 2 OS=Mus musculus GN=Dync1li2 PE=1 SV=2	DC1L2_MOUSE	54,219.30	99.60%	1	1	1	0.02%	EFQDYIEPEEGCQGSPQR	K	R	99.70%	52	2,556.04	2,229.30	262183	180	197
158	POSITIVE 1	Rab3 GTPase-activating protein catalytic subunit OS=Mus musculus GN=Rab3gap1 PE=1 SV=4	RB3GP_MOUSE	110,200.10	99.90%	1	1	2	0.04%	FVSCLLEQPEVSVTGAGR	R	G	99.70%	83.4	2,336.10	2,972.00	1344260	870	887
159	POSITIVE 1	Protein NipSnap homolog 2 OS=Mus musculus GN=Nipsnap2 PE=1 SV=1	NIPS2_MOUSE	32,933.60	99.60%	1	4	6	0.11%	LQFHNVKPECLDAYNK	K	I	99.70%	65.6	2,363.09	1,931.14	1.30E+07	71	86
160	POSITIVE 1	DNA-dependent protein kinase catalytic subunit OS=Mus musculus GN=Prkdc PE=1 SV=3	PRKDC_MOUSE	471,477.90	98.70%	1	1	1	0.02%	SDYCQAAK	R	L	99.00%	47.8	1,329.52	773.514	512335	2964	2971
161	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein Q OS=Mus musculus GN=Syncrip PE=1 SV=2	HNRPQ_MOUSE	69,633.50	100.00%	2	3	5	0.09%	HIGVCISVANNR	K	L	99.70%	50.4	1,726.81	1,764.53	963753	233	244
162	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein Q OS=Mus musculus GN=Syncrip PE=1 SV=2	HNRPQ_MOUSE	69,633.50	100.00%	2	3	5	0.09%	SAFLCGVMK	K	T	99.70%	57.7	1,399.62	2,424.46	3302010	92	100
163	POSITIVE 1	Succinate-semialdehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh5a1 PE=1 SV=1	SSDH_MOUSE	55,968.60	100.00%	2	3	7	0.13%	DMLCITEETFGPLAPVIK	R	F	99.70%	82.3	2,421.15	4,274.22	211492	419	436
164	POSITIVE 1	Succinate-semialdehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh5a1 PE=1 SV=1	SSDH_MOUSE	55,968.60	100.00%	2	3	7	0.13%	NAGQTCVCSNR	R	F	99.70%	52.7	1,721.68	1,209.43	2615330	323	333
165	POSITIVE 1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	16	0.30%	ALDLDSSCK	K	E	99.70%	57	1,395.59	1,450.77	4039540	454	462
166	POSITIVE 1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	16	0.30%	ALDLDSSCKEAADGYQR	K	C	99.70%	81.2	2,285.98	1,702.06	7027270	454	470
167	POSITIVE 1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	16	0.30%	ALSAGNIDDALQCYSEAIK	K	L	99.70%	72.5	2,426.10	3,358.60	1411020	14	32
168	POSITIVE 1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	16	0.30%	NLSAGNIDDALQCYSEAIK	K	L	99.70%	49.9	2,469.10	4,041.32	140827	0	0
169	POSITIVE 1	Dynamin-2 OS=Mus musculus GN=Dnm2 PE=1 SV=2	DYN2_MOUSE	98,148.90	100.00%	2	2	3	0.06%	LQDAFSSIGQSCHLDLPQIAVVGGQSAGK	K	S	99.70%	36.6	3,370.62	3,247.55	384844	16	44
170	POSITIVE 1	Dynamin-2 OS=Mus musculus GN=Dnm2 PE=1 SV=2	DYN2_MOUSE	98,148.90	100.00%	2	2	3	0.06%	TEYAEFLHCK	K	S	99.70%	62	1,684.71	1,844.62	2266010	78	87
171	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 40 OS=Mus musculus GN=Usp40 PE=1 SV=2	UBP40_MOUSE	139,956.50	99.60%	1	2	3	0.06%	NQGGTCYLSSLLQTLHFTPEFR	R	E	99.70%	70	2,956.37	4,131.04	238856	45	66
172	POSITIVE 1	Spliceosome RNA helicase Ddx39b OS=Mus musculus GN=Ddx39b PE=1 SV=1	DX39B_MOUSE	49,036.10	99.60%	1	2	3	0.06%	NCPHIVVGTPGR	K	I	99.70%	54.5	1,693.79	1,482.49	2207270	164	175
173	POSITIVE 1	Zinc phosphodiesterase ELAC protein 2 OS=Mus musculus GN=Elac2 PE=1 SV=1	RNZ2_MOUSE	92,720.30	99.60%	1	2	2	0.04%	QSSDSGSAENGQCPPEDSSAGANRK	K	A	99.70%	51.6	2,923.18	766.326	174901	203	227
174	POSITIVE 1	5'-3' exoribonuclease 2 OS=Mus musculus GN=Xrn2 PE=1 SV=1	XRN2_MOUSE	108,690.50	99.60%	1	1	2	0.04%	NSPGCQVASNPR	R	Q	99.70%	52.2	1,673.71	922.29	773205	447	458
175	POSITIVE 1	14-3-3 protein eta OS=Mus musculus GN=Ywhah PE=1 SV=2	1433F_MOUSE	28,212.60	99.60%	1	2	3	0.06%	NCNDFQYESK	K	V	99.70%	55.5	1,691.64	1,384.60	858689	111	120
176	POSITIVE 1	60S ribosomal protein L24 OS=Mus musculus GN=Rpl24 PE=1 SV=2	RL24_MOUSE	17,779.50	99.60%	1	1	2	0.04%	VELCSFSGYK	K	I	99.70%	59.3	1,576.68	2,194.77	968625	3	12
177	POSITIVE 1	Aspartate--tRNA ligase, mitochondrial OS=Mus musculus GN=Dars2 PE=1 SV=1	SYDM_MOUSE	74,104.30	99.70%	1	1	2	0.04%	ILCEAPVESVVR	R	V	99.70%	66.7	1,758.85	2,347.02	1825080	105	116
178	POSITIVE 1	Ran GTPase-activating protein 1 OS=Mus musculus GN=Rangap1 PE=1 SV=2	RAGP1_MOUSE	63,532.70	99.60%	1	1	1	0.02%	AFSCSSFNSNTFLTR	K	L	99.70%	71.4	2,125.91	2,658.14	1146190	503	517
179	POSITIVE 1	Small nuclear ribonucleoprotein-associated protein B OS=Mus musculus GN=Snrpb PE=1 SV=1	RSMB_MOUSE	23,656.50	100.00%	2	3	4	0.08%	HMNLILCDCDEFR	K	K	99.70%	55.4	2,177.89	2,993.85	452105	37	49
180	POSITIVE 1	Small nuclear ribonucleoprotein-associated protein B OS=Mus musculus GN=Snrpb PE=1 SV=1	RSMB_MOUSE	23,656.50	100.00%	2	3	4	0.08%	HMNLILCDCDEFRK	K	I	99.70%	46.2	2,305.98	2,556.82	5049640	37	50
181	POSITIVE 1	Probable methyltransferase-like protein 15 OS=Mus musculus GN=Mettl15 PE=1 SV=2	MET15_MOUSE	45,283.10	99.60%	1	2	3	0.06%	AVEGTALCGPQK	K	V	99.70%	67.7	1,617.74	1,314.14	1468010	45	56
182	POSITIVE 1	40S ribosomal protein S8 OS=Mus musculus GN=Rps8 PE=1 SV=2	RS8_MOUSE	24,206.40	99.60%	1	1	1	0.02%	LDVGNFSWGSECCTR	R	K	99.70%	51.2	2,242.90	3,060.62	346023	60	74
183	POSITIVE 1	Cysteine protease ATG4B OS=Mus musculus GN=Atg4b PE=1 SV=2	ATG4B_MOUSE	44,376.10	99.60%	1	1	2	0.04%	NFPAIGGTGPTSDTGWGCMLR	R	C	99.70%	84.6	2,582.12	3,370.39	2980800	57	77
184	POSITIVE 1	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	HSP74_MOUSE	94,133.40	100.00%	5	8	11	0.21%	AGGIETIANEYSDRCTPACVSFGPK	R	N	99.70%	76.6	3,155.39	2,948.54	635931	20	44
185	POSITIVE 1	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	HSP74_MOUSE	94,133.40	100.00%	5	8	11	0.21%	CTPACVSFGPK	R	N	99.70%	70.4	1,678.70	2,342.83	1944890	34	44
186	POSITIVE 1	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	HSP74_MOUSE	94,133.40	100.00%	5	8	11	0.21%	LMSANASDLPLSIECFMNDIDVSGTMNR	K	G	99.70%	102	3,488.53	4,383.18	82,202.30	276	303
187	POSITIVE 1	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	HSP74_MOUSE	94,133.40	100.00%	5	8	11	0.21%	NGGIETIANEYSDRCTPACVSFGPK	R	N	99.70%	36.1	3,198.39	3,492.11	247245	0	0
188	POSITIVE 1	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	HSP74_MOUSE	94,133.40	100.00%	5	8	11	0.21%	WNSPAEEGLSDCEVFPK	R	N	99.70%	78.5	2,351.99	2,722.86	3573530	406	422
189	POSITIVE 1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	QCR1_MOUSE	52,851.90	100.00%	5	8	12	0.23%	NALVSHLDGTTPVCEDIGR	R	S	99.70%	69.3	2,441.12	2,225.50	376039	397	415
190	POSITIVE 1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	QCR1_MOUSE	52,851.90	100.00%	5	8	12	0.23%	VYEEDAVPGLTPCR	R	F	99.70%	76.2	1,992.88	2,271.31	1637890	256	269
191	POSITIVE 1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	QCR1_MOUSE	52,851.90	100.00%	5	8	12	0.23%	YFYDQCPAVAGYGPIEQLPDYNR	K	I	99.70%	112	3,123.36	3,260.59	5550080	448	470
192	POSITIVE 1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	QCR1_MOUSE	52,851.90	100.00%	5	8	12	0.23%	YFYDQCPNVAGYGPIEQLPDYNR	K	I	99.70%	56.8	3,166.37	3,636.52	214617	0	0
193	POSITIVE 1	Splicing factor 45 OS=Mus musculus GN=Rbm17 PE=1 SV=1	SPF45_MOUSE	45,304.50	99.60%	1	1	1	0.02%	SDSNPLTEILKCPTK	K	V	99.70%	45.4	2,089.99	2,551.33	311369	295	309
194	POSITIVE 1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	MCCA_MOUSE	79,344.80	100.00%	3	5	6	0.11%	DQSDQCLR	K	E	99.00%	35.2	1,408.56	944.892	261892	181	188
195	POSITIVE 1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	MCCA_MOUSE	79,344.80	100.00%	3	5	6	0.11%	DQSDQCLREHAGK	K	I	99.70%	40.3	1,930.81	761.805	1744440	181	193
196	POSITIVE 1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	MCCA_MOUSE	79,344.80	100.00%	3	5	6	0.11%	VLGDLSSEDGCTYLK	R	S	99.70%	60.4	2,043.90	2,429.71	2178550	581	595
197	POSITIVE 1	Exosome complex component RRP41 OS=Mus musculus GN=Exosc4 PE=1 SV=3	EXOS4_MOUSE	26,249.70	99.60%	1	3	5	0.09%	SCEMGLQLR	K	Q	99.70%	64.8	1,480.63	2,080.02	3697710	96	104
198	POSITIVE 1	ATP-binding cassette sub-family D member 3 OS=Mus musculus GN=Abcd3 PE=1 SV=2	ABCD3_MOUSE	75,478.00	99.60%	1	1	1	0.02%	SGANVLICGPNGCGK	R	S	99.70%	46.5	1,958.85	2,219.01	676087	465	479
199	POSITIVE 1	Poly [ADP-ribose] polymerase 1 OS=Mus musculus GN=Parp1 PE=1 SV=3	PARP1_MOUSE	113,103.70	99.70%	1	1	1	0.02%	KACSTNDLK	K	E	99.70%	34.1	1,423.63	452.652	75,112.10	254	262
200	POSITIVE 1	Polymerase delta-interacting protein 2 OS=Mus musculus GN=Poldip2 PE=1 SV=1	PDIP2_MOUSE	41,869.60	100.00%	2	4	8	0.15%	DCPHISQR	R	S	99.00%	45.1	1,399.58	850.884	4740880	142	149
201	POSITIVE 1	Polymerase delta-interacting protein 2 OS=Mus musculus GN=Poldip2 PE=1 SV=1	PDIP2_MOUSE	41,869.60	100.00%	2	4	8	0.15%	THTYYQVLIDARDCPHISQR	K	S	99.70%	48.2	2,860.33	2,034.47	1940360	130	149
202	POSITIVE 1	tRNA (uracil-5-)-methyltransferase homolog A OS=Mus musculus GN=Trmt2a PE=1 SV=1	TRM2A_MOUSE	63,301.00	100.00%	1	1	1	0.02%	LLYVSCNPR	R	A	99.70%	48.6	1,508.70	1,899.28	726649	484	492
203	POSITIVE 1	Enoyl-CoA delta isomerase 2, mitochondrial OS=Mus musculus GN=Eci2 PE=1 SV=2	ECI2_MOUSE	43,268.70	99.60%	1	1	1	0.02%	WLSEECMNAIMSFVSR	R	K	99.70%	30.5	2,347.00	4,206.23	87,078.60	372	387
204	POSITIVE 1	Nitric oxide-associated protein 1 OS=Mus musculus GN=Noa1 PE=1 SV=1	NOA1_MOUSE	77,380.10	100.00%	3	4	5	0.09%	EQDEVPFEFDADSLAFDMGSEPVVSVCK	R	S	99.70%	69.6	3,534.50	3,992.87	102156	450	477
205	POSITIVE 1	Nitric oxide-associated protein 1 OS=Mus musculus GN=Noa1 PE=1 SV=1	NOA1_MOUSE	77,380.10	100.00%	3	4	5	0.09%	ESCILNLLTEK	K	E	99.70%	74.3	1,706.81	3,204.90	323541	504	514
206	POSITIVE 1	Nitric oxide-associated protein 1 OS=Mus musculus GN=Noa1 PE=1 SV=1	NOA1_MOUSE	77,380.10	100.00%	3	4	5	0.09%	FPICNPTPYR	K	M	99.70%	41.9	1,651.74	2,305.90	372016	392	401
207	POSITIVE 1	39S ribosomal protein L19, mitochondrial OS=Mus musculus GN=Mrpl19 PE=1 SV=1	RM19_MOUSE	33,579.10	99.60%	1	2	2	0.04%	DALPEYSTFDVNMKPVPQEACQEVPVNK	R	L	99.70%	79.8	3,592.64	3,039.23	744215	192	219
208	POSITIVE 1	Heat shock protein 75 kDa, mitochondrial OS=Mus musculus GN=Trap1 PE=1 SV=1	TRAP1_MOUSE	80,211.60	99.60%	1	1	2	0.04%	LVCEGQVLPEMEIHLQTDAK	K	K	99.70%	63	2,697.27	2,897.41	1689440	133	152
209	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	AHVAPCFDASK	K	V	99.70%	63.7	1,589.68	1,256.10	1387600	1152	1162
210	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	IVSPSGAAVPCK	K	V	99.70%	40	1,572.75	1,525.01	812535	1008	1019
211	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	THEAEIVEGENHTYCIR	K	F	99.70%	35.8	2,445.06	1,590.05	271594	2185	2201
212	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	VANPSGNLTDTYVQDCGDGTYK	R	V	99.70%	67.1	2,762.17	2,122.45	637476	1297	1318
213	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	VQVQDNEGCSVEATVK	R	D	99.70%	65.5	2,149.95	1,646.03	1910590	709	724
214	POSITIVE 1	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	6	7	9	0.17%	YTPCGAGSYTIMVLFADQATPTSPIR	K	V	99.70%	46.7	3,204.48	4,037.33	48,760.00	838	863
215	POSITIVE 1	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	CAP1_MOUSE	51,565.10	100.00%	2	3	4	0.08%	ALLATASQCQQPAGNK	R	L	99.70%	92.1	2,044.95	1,486.06	1312670	84	99
216	POSITIVE 1	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	CAP1_MOUSE	51,565.10	100.00%	2	3	4	0.08%	LEAVSHTSDMHCGYGDSPSK	R	G	99.70%	61.5	2,565.04	1,210.01	636982	18	37
217	POSITIVE 1	Aldehyde dehydrogenase X, mitochondrial OS=Mus musculus GN=Aldh1b1 PE=1 SV=1	AL1B1_MOUSE	57,553.50	100.00%	1	2	4	0.08%	STAAALPNPIPNPEICYNK	Y	L	99.70%	56.8	2,457.15	2,762.60	2.73E+07	22	40
218	POSITIVE 1	TIP41-like protein OS=Mus musculus GN=Tiprl PE=1 SV=1	TIPRL_MOUSE	31,254.40	99.60%	1	1	1	0.02%	VACAEEWQESR	K	T	99.70%	61.3	1,751.71	1,576.88	899275	85	95
219	POSITIVE 1	Methylmalonyl-CoA mutase, mitochondrial OS=Mus musculus GN=Mut PE=1 SV=2	MUTA_MOUSE	82,846.20	100.00%	2	2	3	0.06%	AAVQVLDDIEKCLAEK	R	Q	99.70%	50.3	2,189.06	3,233.10	970079	729	744
220	POSITIVE 1	Methylmalonyl-CoA mutase, mitochondrial OS=Mus musculus GN=Mut PE=1 SV=2	MUTA_MOUSE	82,846.20	100.00%	2	2	3	0.06%	NAVQVLDDIEKCLAEK	R	Q	98.90%	29.3	2,232.06	4,365.32	90,911.80	0	0
221	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 5 OS=Mus musculus GN=Usp5 PE=1 SV=1	UBP5_MOUSE	95,835.00	99.90%	1	1	2	0.04%	VCASEKPPK	K	D	99.70%	47.2	1,402.65	492.06	2247650	837	845
222	POSITIVE 1	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	PYC_MOUSE	129,685.90	100.00%	3	5	7	0.13%	ACTELGIR	R	T	99.00%	51.3	1,306.59	1,617.28	903717	55	62
223	POSITIVE 1	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	PYC_MOUSE	129,685.90	100.00%	3	5	7	0.13%	ADFAQACQDAGVR	R	F	99.70%	66	1,795.75	1,672.34	856480	125	137
224	POSITIVE 1	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	PYC_MOUSE	129,685.90	100.00%	3	5	7	0.13%	FLYECPWR	R	R	99.00%	48.7	1,557.66	2,651.62	6877830	618	625
225	POSITIVE 1	Probable cysteine--tRNA ligase, mitochondrial OS=Mus musculus GN=Cars2 PE=1 SV=2	SYCM_MOUSE	61,271.80	100.00%	2	3	4	0.08%	CVVDELVR	R	F	99.00%	49.5	1,376.63	2,114.30	367745	470	477
226	POSITIVE 1	Probable cysteine--tRNA ligase, mitochondrial OS=Mus musculus GN=Cars2 PE=1 SV=2	SYCM_MOUSE	61,271.80	100.00%	2	3	4	0.08%	QCVSGDSSTVTLR	R	C	99.70%	61.3	1,796.79	1,557.52	1272620	457	469
227	POSITIVE 1	UPF0598 protein C8orf82 homolog OS=Mus musculus PE=1 SV=1	CH082_MOUSE	24,330.30	99.60%	1	1	3	0.06%	YEASFPFLSLCGR	R	E	99.70%	57	1,933.86	3,496.70	1049450	90	102
228	POSITIVE 1	2-amino-3-ketobutyrate coenzyme A ligase, mitochondrial OS=Mus musculus GN=Gcat PE=1 SV=2	KBL_MOUSE	44,931.90	100.00%	2	3	6	0.11%	CILDSELEGIR	R	G	99.70%	90.5	1,691.77	2,672.30	6691970	26	36
229	POSITIVE 1	2-amino-3-ketobutyrate coenzyme A ligase, mitochondrial OS=Mus musculus GN=Gcat PE=1 SV=2	KBL_MOUSE	44,931.90	100.00%	2	3	6	0.11%	FICGTQSIHK	R	N	99.70%	62.1	1,577.72	1,283.61	844360	101	110
230	POSITIVE 1	Glycogen phosphorylase, muscle form OS=Mus musculus GN=Pygm PE=1 SV=3	PYGM_MOUSE	97,289.40	99.60%	1	3	6	0.11%	ICGGWQMEEADDWLR	K	Y	99.70%	76.4	2,252.92	3,364.24	2409810	171	185
231	POSITIVE 1	Succinate dehydrogenase assembly factor 1, mitochondrial OS=Mus musculus GN=Sdhaf1 PE=1 SV=1	SDHF1_MOUSE	13,142.10	99.60%	1	1	1	0.02%	NSCEDTGAR	K	E	99.70%	42	1,396.52	379.02	294188	103	111
232	POSITIVE 1	Condensin complex subunit 1 OS=Mus musculus GN=Ncapd2 PE=1 SV=2	CND1_MOUSE	155,668.60	99.30%	1	1	1	0.02%	EIGQKCPQELSR	R	D	99.40%	29.6	1,831.84	1,115.90	432061	281	292
233	POSITIVE 1	Metastasis-associated protein MTA2 OS=Mus musculus GN=Mta2 PE=1 SV=1	MTA2_MOUSE	75,032.10	100.00%	2	2	2	0.04%	ALDCSSSIR	R	Q	99.30%	29.4	1,395.60	1,223.95	209066	206	214
234	POSITIVE 1	Metastasis-associated protein MTA2 OS=Mus musculus GN=Mta2 PE=1 SV=1	MTA2_MOUSE	75,032.10	100.00%	2	2	2	0.04%	ALDCSSSIRQPSLHMSAAAASR	R	D	99.70%	40.3	2,703.24	1,752.19	187800	206	227
235	POSITIVE 1	Reticulon-3 OS=Mus musculus GN=Rtn3 PE=1 SV=2	RTN3_MOUSE	103,880.70	99.60%	1	1	1	0.02%	AESSAATQSPSVSSSSSGAEPSALGGGGGSPGACPALGAK	M	S	99.70%	40.4	3,918.74	2,494.15	646413	2	41
236	POSITIVE 1	CTP synthase 2 OS=Mus musculus GN=Ctps2 PE=1 SV=1	PYRG2_MOUSE	65,516.40	100.00%	2	2	3	0.06%	LCLADGILVPGGFGIR	K	G	99.70%	51.2	2,045.03	3,916.61	83,086.90	361	376
237	POSITIVE 1	CTP synthase 2 OS=Mus musculus GN=Ctps2 PE=1 SV=1	PYRG2_MOUSE	65,516.40	100.00%	2	2	3	0.06%	LGLPINDCSSNLLFK	R	W	99.70%	46.6	2,078.00	3,396.74	430438	270	284
238	POSITIVE 1	Transitional endoplasmic reticulum ATPase OS=Mus musculus GN=Vcp PE=1 SV=4	TERA_MOUSE	89,324.80	100.00%	2	3	5	0.09%	GVLFYGPPGCGK	K	T	99.70%	53.9	1,638.74	2,350.38	1742650	513	524
239	POSITIVE 1	Transitional endoplasmic reticulum ATPase OS=Mus musculus GN=Vcp PE=1 SV=4	TERA_MOUSE	89,324.80	100.00%	2	3	5	0.09%	LGDVISIQPCPDVK	R	Y	99.70%	70.9	1,927.93	2,519.21	2034720	96	109
240	POSITIVE 1	1-aminocyclopropane-1-carboxylate synthase-like protein 1 OS=Mus musculus GN=Accs PE=2 SV=1	1A1L1_MOUSE	56,879.20	99.60%	1	1	1	0.02%	LYGVGDPTATFSSDSSCLSSR	K	G	99.70%	61	2,594.11	2,757.68	624483	47	67
241	POSITIVE 1	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	CAN2_MOUSE	79,875.40	100.00%	2	2	2	0.04%	LEICNLTPDTLTCDSYK	R	K	99.70%	58.8	2,498.09	3,339.17	347547	338	354
242	POSITIVE 1	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	CAN2_MOUSE	79,875.40	100.00%	2	2	2	0.04%	WNDNCPSWNTVDPEVR	K	A	99.70%	48	2,375.98	2,559.20	553200	297	312
243	POSITIVE 1	Protein misato homolog 1 OS=Mus musculus GN=Msto1 PE=1 SV=1	MSTO1_MOUSE	61,231.30	100.00%	2	4	5	0.09%	MAEDEESPGELCPDVLYR	R	T	99.70%	98.2	2,497.03	2,691.80	2922090	35	52
244	POSITIVE 1	Protein misato homolog 1 OS=Mus musculus GN=Msto1 PE=1 SV=1	MSTO1_MOUSE	61,231.30	100.00%	2	4	5	0.09%	MNEDEESPGELCPDVLYR	R	T	99.70%	47.2	2,540.04	3,327.17	329700	0	0
245	POSITIVE 1	Guanine nucleotide-binding protein G(o) subunit alpha OS=Mus musculus GN=Gnao1 PE=1 SV=3	GNAO_MOUSE	40,085.80	98.70%	1	1	1	0.02%	MVCDVVSR	K	M	99.00%	53.5	1,352.58	1,455.49	719459	106	113
246	POSITIVE 1	Serine/threonine-protein phosphatase 6 catalytic subunit OS=Mus musculus GN=Ppp6c PE=1 SV=1	PPP6_MOUSE	35,159.70	99.60%	1	1	2	0.04%	CGNIASIMVFK	R	D	99.70%	57.9	1,626.74	2,981.06	433652	265	275
247	POSITIVE 1	Ubiquitin-conjugating enzyme E2 G2 OS=Mus musculus GN=Ube2g2 PE=1 SV=1	UB2G2_MOUSE	18,566.90	99.60%	1	1	1	0.02%	VCISILHAPGDDPMGYESSAER	R	W	99.70%	72.5	2,791.21	2,804.24	914602	88	109
248	POSITIVE 1	Charged multivesicular body protein 5 OS=Mus musculus GN=Chmp5 PE=1 SV=1	CHMP5_MOUSE	24,576.80	99.60%	1	1	1	0.02%	APPPSLTDCIGTVDSR	K	A	99.70%	53.2	2,072.94	2,353.78	604263	12	27
249	POSITIVE 1	Ryanodine receptor 2 OS=Mus musculus GN=Ryr2 PE=1 SV=1	RYR2_MOUSE	564,822.80	100.00%	3	3	5	0.09%	AEVCSGTGER	R	F	99.70%	37.2	1,452.58	640.056	337452	1075	1084
250	POSITIVE 1	Ryanodine receptor 2 OS=Mus musculus GN=Ryr2 PE=1 SV=1	RYR2_MOUSE	564,822.80	100.00%	3	3	5	0.09%	CSSLQQLISETMVR	K	W	99.70%	57.6	2,038.94	3,562.53	208820	2054	2067
251	POSITIVE 1	Ryanodine receptor 2 OS=Mus musculus GN=Ryr2 PE=1 SV=1	RYR2_MOUSE	564,822.80	100.00%	3	3	5	0.09%	FSSPSFVSISNDCYQYSPEFPLDILK	R	A	99.70%	55	3,427.55	4,271.94	34,687.60	1764	1789
252	POSITIVE 1	Prelamin-A/C OS=Mus musculus GN=Lmna PE=1 SV=2	LMNA_MOUSE	74,238.90	100.00%	2	3	4	0.08%	AQNTWGCGSSLR	K	T	99.70%	73.9	1,723.73	1,595.56	3238390	516	527
253	POSITIVE 1	Prelamin-A/C OS=Mus musculus GN=Lmna PE=1 SV=2	LMNA_MOUSE	74,238.90	100.00%	2	3	4	0.08%	GSHCSGSGDPAEYNLR	R	S	99.70%	58.1	2,093.84	1,259.98	215666	569	584
254	POSITIVE 1	Protein strawberry notch homolog 1 OS=Mus musculus GN=Sbno1 PE=1 SV=2	SBNO1_MOUSE	153,741.70	99.60%	1	1	2	0.04%	NLCPVGSSKPTK	K	T	99.70%	45.7	1,674.79	965.703	942378	441	452
255	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	GIIDCVVR	K	I	99.00%	62	1,318.62	2,423.19	2139730	53	60
256	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	GLGDCLVK	K	I	99.00%	47.8	1,248.57	1,962.23	1584430	156	163
257	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	GTDIMYTGTLDCWR	K	K	99.70%	61	2,075.86	2,939.63	564545	246	259
258	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	GTDIMYTGTLDCWRK	K	I	99.70%	62.2	2,203.96	2,463.70	1604250	246	260
259	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	KGTDIMYTGTLDCWR	R	K	99.70%	45.2	2,203.96	2,519.65	608130	245	259
260	POSITIVE 1	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	ADT2_MOUSE	32,932.60	100.00%	6	8	14	0.27%	KGTDIMYTGTLDCWRK	R	I	99.70%	65.4	2,332.05	2,129.20	3418960	245	260
261	POSITIVE 1	Cilia- and flagella-associated protein 36 OS=Mus musculus GN=Cfap36 PE=1 SV=1	CFA36_MOUSE	39,600.50	99.60%	1	1	1	0.02%	NGVLPDCLTDGADVVSDLEQEEMK	R	I	99.70%	53.6	3,021.31	3,810.91	167575	132	155
262	POSITIVE 1	Prostaglandin reductase-3 OS=Mus musculus GN=Zadh2 PE=1 SV=1	PTGR3_MOUSE	40,529.70	99.60%	1	2	3	0.06%	DCPVPLPGDGDLLVR	R	N	99.70%	75.8	2,009.94	3,237.12	1381560	54	68
263	POSITIVE 1	Exportin-2 OS=Mus musculus GN=Cse1l PE=1 SV=1	XPO2_MOUSE	110,460.00	100.00%	3	3	3	0.06%	IVEDEPNKICEADR	R	V	99.70%	45.4	2,074.92	1,373.32	240708	76	89
264	POSITIVE 1	Exportin-2 OS=Mus musculus GN=Cse1l PE=1 SV=1	XPO2_MOUSE	110,460.00	100.00%	3	3	3	0.06%	IVEDEPNKICEADRVAIK	R	A	99.70%	35	2,486.20	1,745.99	699551	76	93
265	POSITIVE 1	Exportin-2 OS=Mus musculus GN=Cse1l PE=1 SV=1	XPO2_MOUSE	110,460.00	100.00%	3	3	3	0.06%	LSTACPGR	K	V	99.00%	37.9	1,248.55	900.21	1418740	935	942
266	POSITIVE 1	Protein regulator of cytokinesis 1 OS=Mus musculus GN=Prc1 PE=1 SV=2	PRC1_MOUSE	70,291.90	100.00%	2	2	3	0.06%	RSEVLADESITCLQK	R	A	99.70%	55.8	2,136.01	1,981.48	848638	3	17
267	POSITIVE 1	Protein regulator of cytokinesis 1 OS=Mus musculus GN=Prc1 PE=1 SV=2	PRC1_MOUSE	70,291.90	100.00%	2	2	3	0.06%	SEVLADESITCLQK	R	A	99.70%	47.1	1,979.91	2,343.47	137867	4	17
268	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	ESNCYDPER	R	V	99.70%	48.3	1,556.57	1,087.03	786077	750	758
269	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	GQCDLELINVCNENSLFK	R	S	99.70%	63.1	2,608.15	3,767.75	168925	924	941
270	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	IHEGCEEPATHNALAK	R	I	99.70%	82.1	2,163.95	977.694	2.99E+07	866	881
271	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	IHEGCEEPSTHNALAK	R	I	99.70%	39.2	2,179.95	876.456	676621	0	0
272	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	LECSEELGDLVK	K	S	99.70%	73.3	1,778.79	2,468.30	1114800	457	468
273	POSITIVE 1	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	CLH1_MOUSE	191,560.90	100.00%	6	11	18	0.34%	RHEGCEEPATHNALAK	R	I	99.70%	41.8	2,206.97	1,102.06	356633	0	0
274	POSITIVE 1	Protein angel homolog 2 OS=Mus musculus GN=Angel2 PE=1 SV=1	ANGE2_MOUSE	62,413.90	100.00%	2	2	2	0.04%	FSLLSVNPVEFCR	R	R	99.70%	69.6	1,954.92	3,476.92	234097	263	275
275	POSITIVE 1	Protein angel homolog 2 OS=Mus musculus GN=Angel2 PE=1 SV=1	ANGE2_MOUSE	62,413.90	100.00%	2	2	2	0.04%	NVDSTCEDREDK	R	F	99.70%	63.8	1,854.72	484.188	431989	153	164
276	POSITIVE 1	Mitochondrial ribonuclease P protein 3 OS=Mus musculus GN=Kiaa0391 PE=2 SV=1	MRRP3_MOUSE	66,858.80	99.90%	1	1	1	0.02%	SSCEVPTK	R	W	99.00%	31.9	1,294.54	881.922	252169	565	572
277	POSITIVE 1	Integrin-linked kinase-associated serine/threonine phosphatase 2C OS=Mus musculus GN=Ilkap PE=1 SV=1	ILKAP_MOUSE	42,774.80	100.00%	2	2	4	0.08%	FILLACDGLFK	R	V	99.70%	48.1	1,683.82	3,569.99	345022	320	330
278	POSITIVE 1	Integrin-linked kinase-associated serine/threonine phosphatase 2C OS=Mus musculus GN=Ilkap PE=1 SV=1	ILKAP_MOUSE	42,774.80	100.00%	2	2	4	0.08%	RCGVTSVPDIR	K	R	99.70%	52.8	1,646.77	1,607.24	807139	300	310
279	POSITIVE 1	T-complex protein 1 subunit delta OS=Mus musculus GN=Cct4 PE=1 SV=3	TCPD_MOUSE	58,067.80	100.00%	3	5	10	0.19%	IGLIQFCLSAPK	K	T	99.70%	76.9	1,733.87	3,290.75	929865	246	257
280	POSITIVE 1	T-complex protein 1 subunit delta OS=Mus musculus GN=Cct4 PE=1 SV=3	TCPD_MOUSE	58,067.80	100.00%	3	5	10	0.19%	ITGCTSPGK	K	T	99.70%	41.6	1,307.57	707.016	374837	376	384
281	POSITIVE 1	T-complex protein 1 subunit delta OS=Mus musculus GN=Cct4 PE=1 SV=3	TCPD_MOUSE	58,067.80	100.00%	3	5	10	0.19%	SIHDALCVIR	R	C	99.70%	68.3	1,570.75	2,049.70	2156420	404	413
282	POSITIVE 1	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	5	16	35	0.66%	MSVIEEGDCK	R	R	99.70%	63.1	1,570.62	1,174.46	4.12E+07	429	438
283	POSITIVE 1	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	5	16	35	0.66%	MSVIEEGDCKR	R	I	99.70%	55	1,710.72	1,198.11	2.37E+07	429	439
284	POSITIVE 1	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	5	16	35	0.66%	RMSVIEEGDCK	R	R	99.70%	72.9	1,710.72	1,170.54	1.48E+07	428	438
285	POSITIVE 1	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	5	16	35	0.66%	RMSVIEEGDCKR	R	I	99.70%	59.1	1,882.82	951.54	2237930	428	439
286	POSITIVE 1	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	5	16	35	0.66%	TCFETFPDK	R	V	99.70%	60.4	1,531.62	2,032.05	1309460	325	333
287	POSITIVE 1	Ral GTPase-activating protein subunit alpha-2 OS=Mus musculus GN=Ralgapa2 PE=1 SV=2	RGPA2_MOUSE	210,291.80	99.90%	1	1	1	0.02%	NATEEPNECAR	K	C	99.70%	31.9	1,677.66	803.046	71,442.90	1147	1157
288	POSITIVE 1	CTP synthase 1 OS=Mus musculus GN=Ctps1 PE=1 SV=2	PYRG1_MOUSE	66,683.00	100.00%	3	6	8	0.15%	CLEEQGLK	K	F	99.00%	62.5	1,363.60	1,329.26	3803550	491	498
289	POSITIVE 1	CTP synthase 1 OS=Mus musculus GN=Ctps1 PE=1 SV=2	PYRG1_MOUSE	66,683.00	100.00%	3	6	8	0.15%	KCLEEQGLK	K	F	99.70%	57.1	1,491.69	997.908	4639220	490	498
290	POSITIVE 1	CTP synthase 1 OS=Mus musculus GN=Ctps1 PE=1 SV=2	PYRG1_MOUSE	66,683.00	100.00%	3	6	8	0.15%	LCSAHGVLVPGGFGVR	K	G	99.70%	86.4	2,012.98	2,408.54	649963	361	376
291	POSITIVE 1	28S ribosomal protein S27, mitochondrial OS=Mus musculus GN=Mrps27 PE=1 SV=2	RT27_MOUSE	47,779.70	98.30%	1	1	1	0.02%	HSPNCWYLR	R	D	98.70%	29.4	1,619.68	1,758.02	889511	97	105
292	POSITIVE 1	Acetyl-coenzyme A synthetase 2-like, mitochondrial OS=Mus musculus GN=Acss1 PE=1 SV=1	ACS2L_MOUSE	74,623.50	99.60%	1	2	3	0.06%	LPGCVPAAAQPGSYPALSAQAAQEPAAFWGPLAR	R	D	99.70%	82.9	3,807.84	3,802.54	234251	38	71
293	POSITIVE 1	Serine--tRNA ligase, mitochondrial OS=Mus musculus GN=Sars2 PE=1 SV=2	SYSM_MOUSE	58,316.90	99.60%	1	1	1	0.02%	EGYSELPYLDMESVCACPEK	R	A	99.70%	45.1	2,832.15	3,542.02	814657	50	69
294	POSITIVE 1	Multifunctional protein ADE2 OS=Mus musculus GN=Paics PE=1 SV=4	PUR6_MOUSE	47,006.70	100.00%	2	2	3	0.06%	CGETAFIAPQCEMIPIEWVCR	K	R	99.70%	80.8	3,090.33	4,463.24	160894	81	101
295	POSITIVE 1	Multifunctional protein ADE2 OS=Mus musculus GN=Paics PE=1 SV=4	PUR6_MOUSE	47,006.70	100.00%	2	2	3	0.06%	ITSCIFQLLQEAGIK	K	T	99.70%	81	2,108.05	4,126.80	84,226.00	60	74
296	POSITIVE 1	ATP synthase subunit d, mitochondrial OS=Mus musculus GN=Atp5h PE=1 SV=3	ATP5H_MOUSE	18,750.10	99.60%	1	2	3	0.06%	SCAEFVSGSQLR	K	I	99.70%	77.6	1,727.75	1,925.71	2145250	100	111
297	POSITIVE 1	Phosphoglycerate kinase 1 OS=Mus musculus GN=Pgk1 PE=1 SV=4	PGK1_MOUSE	44,551.10	100.00%	2	2	2	0.04%	DCVGPEVENACANPAAGTVILLENLR	K	F	99.70%	89.6	3,237.50	4,196.62	51,049.90	98	123
298	POSITIVE 1	Phosphoglycerate kinase 1 OS=Mus musculus GN=Pgk1 PE=1 SV=4	PGK1_MOUSE	44,551.10	100.00%	2	2	2	0.04%	FCLDNGAK	K	S	99.00%	45.5	1,311.55	1,555.66	247771	49	56
299	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	ASGVQVADEVCR	M	I	99.70%	61.9	1,719.74	2,274.34	1.41E+07	2	13
300	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	ASGVQVADEVCRIFYDMK	M	V	99.70%	66.9	2,517.12	4,274.10	1527370	2	19
301	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	AVIFCLSADKK	K	C	99.70%	34.2	1,638.80	2,065.15	273668	35	45
302	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	CIVVEEGK	K	E	99.00%	61.9	1,320.59	1,339.49	3986990	46	53
303	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	CIVVEEGKEILVGDVGATITDPFK	K	H	99.70%	81.6	2,976.47	3,538.54	152443	46	69
304	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	CSTPEEIK	K	K	99.00%	50.9	1,350.57	1,063.05	1646470	23	30
305	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	CSTPEEIKK	K	R	99.70%	63.6	1,478.66	751.458	2.76E+07	23	31
306	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	CSTPEEIKKR	K	K	99.70%	37.8	1,634.76	494.34	402036	23	32
307	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	HEYQANGPEDLNRTCIAEK	K	L	99.70%	73.3	2,632.15	1,425.56	1.61E+07	133	151
308	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	HFVGMLPEKDCR	K	Y	99.70%	44.5	1,875.83	1,477.21	909314	70	81
309	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	KCIVVEEGK	K	E	99.70%	61.1	1,448.69	1,015.69	3031380	45	53
310	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	KCIVVEEGKEILVGDVGATITDPFK	K	H	99.70%	69.7	3,104.56	3,269.55	112290	45	69
311	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	KCSTPEEIK	R	K	99.70%	39	1,478.66	823.8	2358450	22	30
312	POSITIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	14	25	44	0.83%	KCSTPEEIKK	R	R	99.70%	54.9	1,606.76	487.734	3014940	22	31
313	POSITIVE 1	3-oxoacyl-[acyl-carrier-protein] synthase, mitochondrial OS=Mus musculus GN=Oxsm PE=1 SV=1	OXSM_MOUSE	48,627.70	100.00%	3	6	10	0.19%	DHACALAISSTK	R	G	99.70%	83.3	1,660.74	1,415.83	3181310	369	380
314	POSITIVE 1	3-oxoacyl-[acyl-carrier-protein] synthase, mitochondrial OS=Mus musculus GN=Oxsm PE=1 SV=1	OXSM_MOUSE	48,627.70	100.00%	3	6	10	0.19%	LFRDHACALAISSTK	R	G	99.70%	56.3	2,077.00	1,673.01	869657	366	380
315	POSITIVE 1	3-oxoacyl-[acyl-carrier-protein] synthase, mitochondrial OS=Mus musculus GN=Oxsm PE=1 SV=1	OXSM_MOUSE	48,627.70	100.00%	3	6	10	0.19%	LPPTLNLDCTEPEFDLNYVPLESQEWK	K	A	99.70%	102	3,634.67	4,074.50	373359	407	433
316	POSITIVE 1	Voltage-dependent anion-selective channel protein 1 OS=Mus musculus GN=Vdac1 PE=1 SV=3	VDAC1_MOUSE	32,352.70	99.60%	1	2	4	0.08%	YQVDPDACFSAK	K	V	99.70%	60.7	1,787.74	2,053.06	1.12E+07	238	249
317	POSITIVE 1	Eukaryotic translation initiation factor 5B OS=Mus musculus GN=Eif5b PE=1 SV=2	IF2P_MOUSE	137,620.50	100.00%	2	2	3	0.06%	LAHCEELR	R	A	99.00%	43.1	1,414.62	911.55	2087320	846	853
318	POSITIVE 1	Eukaryotic translation initiation factor 5B OS=Mus musculus GN=Eif5b PE=1 SV=2	IF2P_MOUSE	137,620.50	100.00%	2	2	3	0.06%	RLAHCEELR	K	A	99.70%	31.8	1,570.72	750.27	118327	845	853
319	POSITIVE 1	GDP-mannose 4,6 dehydratase OS=Mus musculus GN=Gmds PE=1 SV=1	GMDS_MOUSE	41,985.20	99.60%	1	1	1	0.02%	AQAPAKCPSYPGSGDGEMGK	M	L	99.70%	31.2	2,437.02	1,693.91	365654	2	21
320	POSITIVE 1	Protein FAM185A OS=Mus musculus GN=Fam185a PE=2 SV=1	F185A_MOUSE	39,991.50	99.60%	1	1	2	0.04%	LQGSCVNISTEDGLLQAK	K	Y	99.70%	87.8	2,320.09	2,552.58	906105	211	228
321	POSITIVE 1	Protein phosphatase PTC7 homolog OS=Mus musculus GN=Pptc7 PE=1 SV=1	PPTC7_MOUSE	33,048.30	100.00%	3	3	3	0.06%	AGGGGGGGGGSSGDYGLVTAGCGFGK	R	D	99.70%	93.8	2,547.06	2,267.69	565097	26	51
322	POSITIVE 1	Protein phosphatase PTC7 homolog OS=Mus musculus GN=Pptc7 PE=1 SV=1	PPTC7_MOUSE	33,048.30	100.00%	3	3	3	0.06%	FVPSNPVGILTTSYCELLQNK	R	V	99.70%	45.3	2,767.34	4,269.08	220934	116	136
323	POSITIVE 1	Protein phosphatase PTC7 homolog OS=Mus musculus GN=Pptc7 PE=1 SV=1	PPTC7_MOUSE	33,048.30	100.00%	3	3	3	0.06%	SIAEQAHELAYDPNYMSPFAQFACDNGLNVR	R	G	99.70%	58.7	3,915.72	3,601.10	75,635.60	261	291
324	POSITIVE 1	Striatin OS=Mus musculus GN=Strn PE=1 SV=2	STRN_MOUSE	85,967.30	99.60%	1	1	1	0.02%	VLTLESNVDSTSSSSCQINR	R	V	99.70%	62	2,584.16	2,097.56	578884	650	669
325	POSITIVE 1	Adenylate kinase 2, mitochondrial OS=Mus musculus GN=Ak2 PE=1 SV=5	KAD2_MOUSE	26,469.90	100.00%	2	2	2	0.04%	GIHCAIDASQTPDIVFASILAAFSK	R	A	99.70%	86.5	3,019.47	4,449.05	145518	205	229
326	POSITIVE 1	Adenylate kinase 2, mitochondrial OS=Mus musculus GN=Ak2 PE=1 SV=5	KAD2_MOUSE	26,469.90	100.00%	2	2	2	0.04%	RGIHCAIDASQTPDIVFASILAAFSK	K	A	99.70%	58	3,175.57	4,263.08	92,789.20	204	229
327	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	FHFGDSLCSHK	K	G	99.70%	71	1,721.72	1,544.04	9952560	258	268
328	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	IVLAAAGGVCHNELLELAK	R	F	99.70%	66.6	2,365.20	2,875.01	2416850	239	257
329	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	LPDFNQICSNMR	R	W	99.70%	53.6	1,881.80	2,632.14	925105	474	485
330	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	RLCTDVTESEVAR	K	A	99.70%	40.4	1,922.87	1,450.91	394054	387	399
331	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	STQAAPQVVLNVPETQVTCLENGLR	R	V	99.70%	71.7	3,111.52	3,376.98	688436	44	68
332	POSITIVE 1	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	MPPB_MOUSE	54,615.40	100.00%	6	9	16	0.30%	TNMLLQLDGSTPICEDIGR	K	Q	99.70%	58.8	2,520.15	3,280.26	345889	406	424
333	POSITIVE 1	Transformer-2 protein homolog beta OS=Mus musculus GN=Tra2b PE=1 SV=1	TRA2B_MOUSE	33,666.70	99.70%	1	1	3	0.06%	ANPDPNCCLGVFGLSLYTTER	R	D	99.70%	68.5	2,839.25	3,991.71	219850	112	132
334	POSITIVE 1	Pyrroline-5-carboxylate reductase 3 OS=Mus musculus GN=Pycr3 PE=1 SV=2	P5CR3_MOUSE	28,720.60	100.00%	2	3	4	0.08%	AATMSAVEAATCR	R	A	99.70%	58.8	1,725.74	1,707.10	3416500	255	267
335	POSITIVE 1	Pyrroline-5-carboxylate reductase 3 OS=Mus musculus GN=Pycr3 PE=1 SV=2	P5CR3_MOUSE	28,720.60	100.00%	2	3	4	0.08%	QVLASAPTDNNLCHFR	K	A	99.70%	45.9	2,230.01	2,002.96	711455	37	52
336	POSITIVE 1	Valine--tRNA ligase OS=Mus musculus GN=Vars PE=1 SV=1	SYVC_MOUSE	140,217.10	100.00%	2	3	11	0.21%	CVVHPFLSR	K	S	99.70%	56.1	1,501.70	1,753.63	2532650	562	570
337	POSITIVE 1	Valine--tRNA ligase OS=Mus musculus GN=Vars PE=1 SV=1	SYVC_MOUSE	140,217.10	100.00%	2	3	11	0.21%	ICLQPPPSSR	R	T	99.70%	53.4	1,541.72	1,780.45	1.23E+07	40	49
338	POSITIVE 1	Cleavage and polyadenylation specificity factor subunit 6 OS=Mus musculus GN=Cpsf6 PE=1 SV=1	CPSF6_MOUSE	59,154.00	99.60%	1	1	2	0.04%	RELHGQSPVVTPCNK	K	Q	99.70%	56.8	2,109.00	976.38	421894	147	161
339	POSITIVE 1	Aldose reductase OS=Mus musculus GN=Akr1b1 PE=1 SV=3	ALDR_MOUSE	35,732.70	99.60%	1	1	3	0.06%	VCALMSCAK	R	H	99.70%	59.3	1,494.62	2,222.32	1546610	298	306
340	POSITIVE 1	Acyl-CoA synthetase family member 2, mitochondrial OS=Mus musculus GN=Acsf2 PE=1 SV=1	ACSF2_MOUSE	67,952.30	100.00%	2	2	3	0.06%	FLSCYDPINIQFTSGTTGNPK	R	G	99.70%	86.5	2,747.24	3,261.98	385685	251	271
341	POSITIVE 1	Acyl-CoA synthetase family member 2, mitochondrial OS=Mus musculus GN=Acsf2 PE=1 SV=1	ACSF2_MOUSE	67,952.30	100.00%	2	2	3	0.06%	TGDIALMDEQGFCK	R	I	99.70%	59.1	1,971.82	2,464.71	1840800	491	504
342	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	APLAFASPPGCMVMVPK	K	D	99.70%	74.1	2,160.01	3,170.03	250592	242	258
343	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	DTASSASCLTPEMVPEVHAISK	K	D	99.70%	84.2	2,717.22	2,603.55	474605	259	280
344	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	DTASSASCLTPEMVPEVHAISKDPLHYSIVSAPAAQK	K	V	99.70%	42.1	4,295.04	2,923.23	1718810	259	295
345	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	FGTCTGILTSLEEHSEQLK	K	E	99.70%	93.5	2,537.17	2,987.83	2234390	94	112
346	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	TICPQLQK	R	Y	99.00%	48.7	1,374.65	1,406.62	1008380	84	91
347	POSITIVE 1	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	GLUCM_MOUSE	66,366.40	100.00%	6	7	11	0.21%	TTVPCATIAGFCCPLVVTMRPIPK	K	D	99.70%	36.4	3,212.54	3,886.21	229166	150	173
348	POSITIVE 1	Actin, cytoplasmic 1 OS=Mus musculus GN=Actb PE=1 SV=1	ACTB_MOUSE	41,737.80	99.60%	1	2	2	0.04%	CPEALFQPSFLGMESCGIHETTFNSIMK	R	C	99.70%	67.4	3,686.61	3,883.58	2153900	257	284
349	POSITIVE 1	Actin, cytoplasmic 1 OS=Mus musculus GN=Actb PE=1 SV=1	ACTB_MOUSE	41,737.80	99.60%	1	2	2	0.04%	DDDIAALVVDNGSGMCK	M	A	99.70%	73.2	2,208.92	3,587.59	784736	2	18
350	POSITIVE 1	Actin, cytoplasmic 1 OS=Mus musculus GN=Actb PE=1 SV=1	ACTB_MOUSE	41,737.80	99.60%	1	2	2	0.04%	FRCPEALFQPSFLGMESCGIHETTFNSIMK	R	C	99.70%	64.4	3,989.78	3,715.53	6269540	255	284
351	POSITIVE 1	Polypyrimidine tract-binding protein 3 OS=Mus musculus GN=Ptbp3 PE=1 SV=1	PTBP3_MOUSE	56,702.70	99.60%	1	1	1	0.02%	KIPCDVTEAEVISLGLPFGK	R	V	99.70%	57.5	2,560.28	3,509.05	184430	36	55
352	POSITIVE 1	Methylosome protein 50 OS=Mus musculus GN=Wdr77 PE=1 SV=1	MEP50_MOUSE	36,941.50	99.60%	1	2	2	0.04%	NASCTLSSAVHSQGVTR	K	L	99.70%	53.8	2,161.97	1,508.08	776606	244	260
353	POSITIVE 1	NudC domain-containing protein 2 OS=Mus musculus GN=Nudcd2 PE=1 SV=1	NUDC2_MOUSE	17,659.90	99.60%	1	1	2	0.04%	DAANCWTSLLESEYAADPWVQDQMQR	R	K	99.70%	70.4	3,471.47	4,261.34	85,580.00	95	120
354	POSITIVE 1	Succinate--CoA ligase [ADP/GDP-forming] subunit alpha, mitochondrial OS=Mus musculus GN=Suclg1 PE=1 SV=4	SUCA_MOUSE	36,155.20	99.60%	1	1	2	0.04%	IICQGFTGK	K	Q	99.70%	49.1	1,410.65	1,563.51	1168300	58	66
355	POSITIVE 1	Atypical kinase COQ8B, mitochondrial OS=Mus musculus GN=Coq8b PE=1 SV=1	COQ8B_MOUSE	59,233.00	100.00%	2	3	3	0.06%	IVQTLCTVR	R	G	99.70%	32.9	1,476.73	1,694.59	873344	143	151
356	POSITIVE 1	Atypical kinase COQ8B, mitochondrial OS=Mus musculus GN=Coq8b PE=1 SV=1	COQ8B_MOUSE	59,233.00	100.00%	2	3	3	0.06%	VLGMELAGGIPLDQCQGLSQDIR	R	N	99.70%	57.6	2,857.36	3,472.90	206129	322	344
357	POSITIVE 1	ATP-dependent RNA helicase DDX39A OS=Mus musculus GN=Ddx39a PE=1 SV=1	DX39A_MOUSE	49,067.30	99.60%	1	1	2	0.04%	NCPHVVVGTPGR	K	I	99.70%	45.8	1,679.77	1,290.15	968568	163	174
358	POSITIVE 1	Long-chain fatty acid transport protein 1 OS=Mus musculus GN=Slc27a1 PE=1 SV=1	S27A1_MOUSE	71,277.20	99.60%	1	1	1	0.02%	AGDTIPCIFQAVAR	R	R	99.70%	66.1	1,905.89	3,354.78	491880	74	87
359	POSITIVE 1	Nuclear factor 1 C-type OS=Mus musculus GN=Nfic PE=1 SV=1	NFIC_MOUSE	48,768.90	99.70%	1	1	2	0.04%	DIRPECREDFVLAVTGK	K	K	99.70%	41.7	2,392.14	2,452.60	1330230	83	99
360	POSITIVE 1	Graves disease carrier protein homolog OS=Mus musculus GN=Slc25a16 PE=1 SV=1	GDC_MOUSE	36,220.60	99.70%	1	1	2	0.04%	CIPSQAVAFTTYELMK	R	Q	99.70%	78.9	2,246.03	3,429.70	421252	311	326
361	POSITIVE 1	ATP-binding cassette sub-family F member 1 OS=Mus musculus GN=Abcf1 PE=1 SV=1	ABCF1_MOUSE	94,947.90	99.60%	1	1	1	0.02%	FGLESHAHTIQICK	R	L	99.70%	45.9	2,027.94	1,735.30	823419	721	734
362	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L3 OS=Mus musculus GN=Uchl3 PE=1 SV=2	UCHL3_MOUSE	26,151.90	100.00%	2	3	4	0.08%	QTISNACGTIGLIHAIANNK	K	D	99.70%	66.7	2,483.21	2,792.59	720855	89	108
363	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L3 OS=Mus musculus GN=Uchl3 PE=1 SV=2	UCHL3_MOUSE	26,151.90	100.00%	2	3	4	0.08%	QTISNACGTIGLIHAIANNKDK	K	M	99.70%	60.5	2,726.34	2,504.90	2605920	89	110
364	POSITIVE 1	IgE-binding protein OS=Mus musculus GN=Iap PE=2 SV=1	IGEB_MOUSE	62,748.00	99.60%	1	1	1	0.02%	LQGPPYAESPPCVVR	R	Q	99.70%	51.3	2,056.96	2,240.48	691986	170	184
365	POSITIVE 1	Bifunctional methylenetetrahydrofolate dehydrogenase/cyclohydrolase, mitochondrial OS=Mus musculus GN=Mthfd2 PE=1 SV=1	MTDC_MOUSE	37,862.50	100.00%	2	3	4	0.08%	MCLDQYSMLPATPWGVWEIIK	R	R	99.70%	77.5	2,925.34	4,439.21	737226	165	185
366	POSITIVE 1	Bifunctional methylenetetrahydrofolate dehydrogenase/cyclohydrolase, mitochondrial OS=Mus musculus GN=Mthfd2 PE=1 SV=1	MTDC_MOUSE	37,862.50	100.00%	2	3	4	0.08%	MCLDQYSMLPATPWGVWEIIKR	R	T	99.70%	47.1	3,081.45	4,260.56	222922	165	186
367	POSITIVE 1	Pre-mRNA-processing factor 19 OS=Mus musculus GN=Prpf19 PE=1 SV=1	PRP19_MOUSE	55,239.30	99.60%	1	1	2	0.04%	IWSVPNTSCVQVVR	R	A	99.70%	48.5	2,031.97	2,688.67	838101	290	303
368	POSITIVE 1	Echinoderm microtubule-associated protein-like 4 OS=Mus musculus GN=Eml4 PE=1 SV=1	EMAL4_MOUSE	110,027.60	99.60%	1	2	2	0.04%	HYLGHTDCVR	R	C	99.70%	44.2	1,644.70	801.093	3291040	315	324
369	POSITIVE 1	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	DHX30_MOUSE	136,671.80	100.00%	4	4	6	0.11%	CQSGFAYHLFPR	R	S	99.70%	84.5	1,869.82	2,424.18	662600	809	820
370	POSITIVE 1	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	DHX30_MOUSE	136,671.80	100.00%	4	4	6	0.11%	ELGETQRRPCTIQVPEPILR	R	K	99.70%	40.9	2,779.40	2,276.98	529196	360	379
371	POSITIVE 1	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	DHX30_MOUSE	136,671.80	100.00%	4	4	6	0.11%	LATLTLLWPCPMTFVAK	K	G	99.70%	77.8	2,349.18	4,236.72	465305	300	316
372	POSITIVE 1	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	DHX30_MOUSE	136,671.80	100.00%	4	4	6	0.11%	RPCTIQVPEPILR	R	K	99.70%	61.2	1,966.00	2,380.52	154094	367	379
373	POSITIVE 1	Phosphatidylinositol transfer protein beta isoform OS=Mus musculus GN=Pitpnb PE=1 SV=2	PIPNB_MOUSE	31,487.30	99.60%	1	1	1	0.02%	KELANTPDCPR	K	M	99.70%	37.3	1,687.75	899.79	1263930	179	189
374	POSITIVE 1	Cyclin-dependent-like kinase 5 OS=Mus musculus GN=Cdk5 PE=1 SV=1	CDK5_MOUSE	33,289.80	99.60%	1	1	1	0.02%	ISAEEALQHPYFSDFCPP	R	-	99.70%	60.2	2,495.06	3,308.83	367770	275	292
375	POSITIVE 1	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MYH9_MOUSE	226,378.00	100.00%	3	5	7	0.13%	KLEEDQIIMEDQNCK	K	L	99.70%	50	2,279.99	1,755.91	525340	975	989
376	POSITIVE 1	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MYH9_MOUSE	226,378.00	100.00%	3	5	7	0.13%	LEEDQIIMEDQNCK	K	L	99.70%	59.4	2,151.90	2,087.80	1134640	976	989
377	POSITIVE 1	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MYH9_MOUSE	226,378.00	100.00%	3	5	7	0.13%	VEDMAELTCLNEASVLHNLK	K	E	99.70%	87	2,673.23	3,139.93	1663250	83	102
378	POSITIVE 1	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	MCM3_MOUSE	91,548.00	100.00%	5	5	8	0.15%	GCYTSGTFR	K	T	99.70%	31.6	1,435.57	1,447.70	318520	249	257
379	POSITIVE 1	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	MCM3_MOUSE	91,548.00	100.00%	5	5	8	0.15%	KGCYTSGTFR	K	T	99.70%	61.1	1,563.67	1,081.97	1506030	248	257
380	POSITIVE 1	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	MCM3_MOUSE	91,548.00	100.00%	5	5	8	0.15%	SVHYCPATK	R	K	99.30%	29.5	1,449.63	785.502	696573	144	152
381	POSITIVE 1	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	MCM3_MOUSE	91,548.00	100.00%	5	5	8	0.15%	TLTSCFLSCVVCVEGIVTK	R	C	99.70%	57.5	2,696.24	4,622.86	60,575.20	115	133
382	POSITIVE 1	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	MCM3_MOUSE	91,548.00	100.00%	5	5	8	0.15%	YVLCTAPR	R	A	99.00%	50.6	1,366.62	1,622.94	824385	357	364
383	POSITIVE 1	Cysteine protease ATG4A OS=Mus musculus GN=Atg4a PE=2 SV=2	ATG4A_MOUSE	45,095.60	99.60%	1	1	1	0.02%	FSPIGGTGPSSDAGWGCMLR	K	C	99.70%	63	2,440.05	3,182.57	617648	61	80
384	POSITIVE 1	S-methyl-5'-thioadenosine phosphorylase OS=Mus musculus GN=Mtap PE=1 SV=1	MTAP_MOUSE	31,062.10	100.00%	2	2	2	0.04%	ASGSACTAVK	M	I	99.10%	30.2	1,380.59	1,238.48	483695	2	11
385	POSITIVE 1	S-methyl-5'-thioadenosine phosphorylase OS=Mus musculus GN=Mtap PE=1 SV=1	MTAP_MOUSE	31,062.10	100.00%	2	2	2	0.04%	TSLRPQTFYDGSHCSAR	R	G	99.70%	49.8	2,370.04	1,446.00	324714	117	133
386	POSITIVE 1	Huntingtin OS=Mus musculus GN=Htt PE=1 SV=2	HD_MOUSE	344,689.10	99.70%	1	2	2	0.04%	CDQGQADPVVAVAR	K	D	99.70%	68	1,872.83	1,815.70	315995	922	935
387	POSITIVE 1	Proteasome subunit beta type-5 OS=Mus musculus GN=Psmb5 PE=1 SV=3	PSB5_MOUSE	28,533.00	99.60%	1	1	1	0.02%	VIEINPYLLGTMAGGAADCSFWER	K	L	99.70%	62.6	3,057.39	4,152.81	50,538.90	93	116
388	POSITIVE 1	Probable hydrolase PNKD OS=Mus musculus GN=Pnkd PE=1 SV=2	PNKD_MOUSE	43,017.70	100.00%	4	6	7	0.13%	ALQSHSSPECK	R	E	99.70%	35	1,630.69	445.848	136660	40	50
389	POSITIVE 1	Probable hydrolase PNKD OS=Mus musculus GN=Pnkd PE=1 SV=2	PNKD_MOUSE	43,017.70	100.00%	4	6	7	0.13%	LQSHSSPECKEEPEPLSPELEYIPR	A	K	99.70%	54	3,338.53	2,383.39	1997580	41	65
390	POSITIVE 1	Probable hydrolase PNKD OS=Mus musculus GN=Pnkd PE=1 SV=2	PNKD_MOUSE	43,017.70	100.00%	4	6	7	0.13%	STCPSTLGEER	K	A	99.70%	38.2	1,623.67	1,234.99	583061	327	337
391	POSITIVE 1	Probable hydrolase PNKD OS=Mus musculus GN=Pnkd PE=1 SV=2	PNKD_MOUSE	43,017.70	100.00%	4	6	7	0.13%	VYGSPQDGIPYLTHPLCHQDVVSVGR	R	L	99.70%	45.9	3,281.55	2,706.96	737282	193	218
392	POSITIVE 1	DNA replication licensing factor MCM4 OS=Mus musculus GN=Mcm4 PE=1 SV=1	MCM4_MOUSE	96,738.80	99.60%	1	2	3	0.06%	FLQCFTDPLAK	R	E	99.70%	67	1,726.79	2,974.27	1952780	168	178
393	POSITIVE 1	Exosome complex component RRP40 OS=Mus musculus GN=Exosc3 PE=1 SV=3	EXOS3_MOUSE	29,545.90	99.60%	1	1	1	0.02%	LLAPDCEIVQELGK	K	L	99.70%	72.2	1,971.95	3,026.48	813579	209	222
394	POSITIVE 1	Microtubule-associated protein 4 OS=Mus musculus GN=Map4 PE=1 SV=3	MAP4_MOUSE	117,429.20	99.60%	1	1	1	0.02%	ETPGSQPSEPCSGVSR	K	Q	99.70%	33.7	2,061.86	1,176.76	223310	626	641
395	POSITIVE 1	Eukaryotic translation initiation factor 2 subunit 3, X-linked OS=Mus musculus GN=Eif2s3x PE=1 SV=2	IF2G_MOUSE	51,066.20	99.60%	1	2	2	0.04%	SCGSSTPDEFPTDIPGTK	R	G	99.70%	57.3	2,282.95	2,421.47	1725500	104	121
396	POSITIVE 1	Inactive serine/threonine-protein kinase VRK3 OS=Mus musculus GN=Vrk3 PE=1 SV=2	VRK3_MOUSE	50,830.50	99.60%	1	1	1	0.02%	WLYGSLPWTNCLPNTEK	K	I	99.70%	38.5	2,466.12	3,536.66	200590	362	378
397	POSITIVE 1	A-kinase anchor protein 2 OS=Mus musculus GN=Akap2 PE=1 SV=3	AKAP2_MOUSE	98,578.40	100.00%	1	1	1	0.02%	APCVSESQSAGAGPANAATQGK	K	E	99.70%	80.7	2,446.07	1,366.17	254606	414	435
398	POSITIVE 1	39S ribosomal protein L46, mitochondrial OS=Mus musculus GN=Mrpl46 PE=1 SV=1	RM46_MOUSE	32,133.00	100.00%	2	3	15	0.28%	FLLDSDGLSCL	R	-	99.70%	71	1,626.71	3,931.22	2734540	273	283
399	POSITIVE 1	39S ribosomal protein L46, mitochondrial OS=Mus musculus GN=Mrpl46 PE=1 SV=1	RM46_MOUSE	32,133.00	100.00%	2	3	15	0.28%	RFLLDSDGLSCL	R	-	99.70%	85.4	1,782.82	3,323.07	2886480	272	283
400	POSITIVE 1	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	PCBP2_MOUSE	38,222.50	100.00%	2	2	2	0.04%	AITIAGIPQSIIECVK	R	Q	99.70%	42.1	2,100.08	3,565.81	143225	145	160
401	POSITIVE 1	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	PCBP2_MOUSE	38,222.50	100.00%	2	2	2	0.04%	INISEGNCPER	R	I	99.70%	73.9	1,675.72	1,383.84	1.11E+07	47	57
402	POSITIVE 1	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	PCBP2_MOUSE	38,222.50	100.00%	2	2	2	0.04%	LVVPASQCGSLIGK	R	G	99.70%	47.1	1,815.91	2,283.67	301064	102	115
403	POSITIVE 1	Kynurenine--oxoglutarate transaminase 3 OS=Mus musculus GN=Kyat3 PE=1 SV=1	KAT3_MOUSE	51,127.90	98.70%	1	2	4	0.08%	ALSCLYGK	K	I	99.00%	52.1	1,298.59	1,674.40	3722990	110	117
404	POSITIVE 1	ATP synthase subunit O, mitochondrial OS=Mus musculus GN=Atp5o PE=1 SV=1	ATPO_MOUSE	23,364.40	99.60%	1	1	1	0.02%	GEVPCTVTTASPLDDAVLSELK	R	T	99.70%	79.5	2,689.27	3,446.90	330519	137	158
405	POSITIVE 1	Membrane-associated progesterone receptor component 2 OS=Mus musculus GN=Pgrmc2 PE=1 SV=2	PGRC2_MOUSE	23,334.90	99.90%	1	1	1	0.02%	GLCSGPGAGEESPAATLPR	R	M	99.70%	78.6	2,213.99	2,092.64	646019	73	91
406	POSITIVE 1	Mitochondrial carrier homolog 2 OS=Mus musculus GN=Mtch2 PE=1 SV=1	MTCH2_MOUSE	33,500.00	100.00%	1	2	4	0.08%	QVCQLPGLFCYAQHIASIDGR	R	R	99.70%	69	2,888.33	3,917.03	619529	47	67
407	POSITIVE 1	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	KIF4_MOUSE	139,522.30	99.60%	1	1	1	0.02%	GLLCLGNVISALGDDK	R	K	99.70%	81.8	2,031.98	3,934.73	142875	267	282
408	POSITIVE 1	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	2AAA_MOUSE	65,323.70	100.00%	3	7	12	0.23%	DNTIEHLLPLFLAQLKDECPEVR	K	L	99.70%	62.2	3,137.54	4,085.27	1443200	359	381
409	POSITIVE 1	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	2AAA_MOUSE	65,323.70	100.00%	3	7	12	0.23%	LNIISNLDCVNEVIGIR	R	Q	99.70%	100	2,329.16	3,899.02	707709	382	398
410	POSITIVE 1	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	2AAA_MOUSE	65,323.70	100.00%	3	7	12	0.23%	TDLVPAFQNLMKDCEAEVR	K	A	99.70%	70.8	2,623.20	3,154.44	1504340	281	299
411	POSITIVE 1	Malonyl-CoA decarboxylase, mitochondrial OS=Mus musculus GN=Mlycd PE=1 SV=1	DCMC_MOUSE	54,736.80	100.00%	2	3	4	0.08%	ISECEAVHPVK	K	N	99.70%	55	1,655.75	1,175.11	1258450	211	221
412	POSITIVE 1	Malonyl-CoA decarboxylase, mitochondrial OS=Mus musculus GN=Mlycd PE=1 SV=1	DCMC_MOUSE	54,736.80	100.00%	2	3	4	0.08%	VTWHSPCEVLQK	R	I	99.70%	47	1,870.86	1,930.34	763402	199	210
413	POSITIVE 1	La-related protein 1 OS=Mus musculus GN=Larp1 PE=1 SV=3	LARP1_MOUSE	121,127.00	99.60%	1	1	1	0.02%	TASISSSPSEGTPAVGSYGCTPQSLPK	R	F	99.70%	64.2	3,053.38	2,246.59	107104	822	848
414	POSITIVE 1	ATPase family AAA domain-containing protein 3 OS=Mus musculus GN=Atad3 PE=1 SV=1	ATAD3_MOUSE	66,742.80	100.00%	3	6	10	0.19%	IDEMVCFALPQR	R	E	99.70%	35.5	1,865.83	2,990.40	94,377.50	466	477
415	POSITIVE 1	ATPase family AAA domain-containing protein 3 OS=Mus musculus GN=Atad3 PE=1 SV=1	ATAD3_MOUSE	66,742.80	100.00%	3	6	10	0.19%	IDEMVCFALPQREER	R	E	99.70%	42.9	2,280.02	2,587.63	1261890	466	480
416	POSITIVE 1	ATPase family AAA domain-containing protein 3 OS=Mus musculus GN=Atad3 PE=1 SV=1	ATAD3_MOUSE	66,742.80	100.00%	3	6	10	0.19%	VERPDSQTNKPPHPSLLSC	K	-	99.70%	63.5	2,549.19	1,544.00	3.35E+07	573	591
417	POSITIVE 1	1,4-alpha-glucan-branching enzyme OS=Mus musculus GN=Gbe1 PE=1 SV=1	GLGB_MOUSE	80,366.90	99.60%	1	2	2	0.04%	CSDGGIYCK	R	E	99.70%	45.3	1,514.57	1,655.57	636525	81	89
418	POSITIVE 1	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	5	8	15	0.28%	CGEEIAVQFVDMVK	R	G	99.70%	58.2	2,011.89	3,515.49	124700	295	308
419	POSITIVE 1	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	5	8	15	0.28%	NAGTCLSPAVIVGLLR	K	E	99.70%	97	2,028.04	3,894.17	6044350	365	380
420	POSITIVE 1	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	5	8	15	0.28%	NNGTCLSPAVIVGLLR	K	E	99.70%	43.2	2,071.04	4,099.04	115962	0	0
421	POSITIVE 1	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	5	8	15	0.28%	QHVLEAFQFCF	K	-	99.70%	66.4	1,812.78	3,546.67	132858	523	533
422	POSITIVE 1	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	5	8	15	0.28%	VLISDSLDPCCRK	K	I	99.70%	68.2	2,017.91	2,255.81	3446520	9	21
423	POSITIVE 1	Glutaredoxin-related protein 5, mitochondrial OS=Mus musculus GN=Glrx5 PE=1 SV=2	GLRX5_MOUSE	16,292.60	100.00%	2	2	3	0.06%	GTPEQPQCGFSNAVVQILR	K	L	99.70%	69.3	2,488.17	3,279.33	1.08E+07	56	74
424	POSITIVE 1	Glutaredoxin-related protein 5, mitochondrial OS=Mus musculus GN=Glrx5 PE=1 SV=2	GLRX5_MOUSE	16,292.60	100.00%	2	2	3	0.06%	SNPEQPQCGFSNAVVQILR	K	L	99.70%	47.3	2,531.18	3,835.30	688372	0	0
425	POSITIVE 1	Threonine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Tars PE=1 SV=2	SYTC_MOUSE	83,358.10	100.00%	2	2	2	0.04%	FMADTDLDPGCTLNK	K	K	99.70%	58	2,084.87	2,471.85	1568970	645	659
426	POSITIVE 1	Threonine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Tars PE=1 SV=2	SYTC_MOUSE	83,358.10	100.00%	2	2	2	0.04%	TTPYQIACGISQGLADNTVVAK	K	V	99.70%	69.6	2,694.29	3,479.93	308616	99	120
427	POSITIVE 1	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	COPB_MOUSE	107,069.60	100.00%	3	3	4	0.08%	ALSGYCGFMAANLYAR	K	S	99.70%	62.5	2,151.94	3,084.54	432301	883	898
428	POSITIVE 1	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	COPB_MOUSE	107,069.60	100.00%	3	3	4	0.08%	CIYNLLQSSSPAVK	R	Y	99.70%	35.8	1,966.94	2,742.74	114660	248	261
429	POSITIVE 1	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	COPB_MOUSE	107,069.60	100.00%	3	3	4	0.08%	TAAENVCYTLINVPMDSEPPSEISLK	M	N	99.70%	62.5	3,307.52	3,986.99	129896	2	27
430	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	ANACNSVIK	R	Q	99.70%	54.7	1,363.61	1,039.81	790430	468	476
431	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	CLALATHDNPLK	R	R	99.70%	42.5	1,739.82	1,912.90	831970	560	571
432	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	GTAVAICR	K	R	99.00%	32.8	1,234.57	1,235.35	354996	629	636
433	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	NYLEQPGKECVQPATK	R	S	99.70%	68.7	2,249.03	1,440.04	1482830	989	1004
434	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	TGTLTTNQMSVCR	K	M	99.70%	66.3	1,855.81	1,614.80	3244350	353	365
435	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	VEGDTCSLNEFSITGSTYAPIGEVQK	K	D	99.70%	65.2	3,189.44	3,185.07	109913	372	397
436	POSITIVE 1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	7	9	13	0.25%	VGEATETALTCLVEK	K	M	99.70%	64.4	2,007.94	2,752.68	530625	437	451
437	POSITIVE 1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	4	4	4	0.08%	ATVECVKDQFGFINYEVGDSK	R	K	99.70%	53.5	2,793.25	2,882.38	258770	676	696
438	POSITIVE 1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	4	4	4	0.08%	DKEAEDGIIAYDDCGVK	K	L	99.70%	58.8	2,284.97	2,023.19	358262	451	467
439	POSITIVE 1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	4	4	4	0.08%	QRPGQQIATCVR	K	L	99.70%	34.3	1,800.86	1,118.80	315785	497	508
440	POSITIVE 1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	4	4	4	0.08%	SPAAPGQSPTGSVCYER	K	N	99.70%	53.8	2,150.92	1,538.54	530511	116	132
441	POSITIVE 1	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	SYAC_MOUSE	106,911.00	100.00%	2	2	4	0.08%	IQSLGDCK	K	T	99.00%	41.2	1,307.57	1,103.78	2786490	397	404
442	POSITIVE 1	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	SYAC_MOUSE	106,911.00	100.00%	2	2	4	0.08%	NVGCLQEALQLATSFAQLR	K	L	99.70%	82.2	2,506.22	4,400.73	248465	944	962
443	POSITIVE 1	Eukaryotic translation initiation factor 3 subunit D OS=Mus musculus GN=Eif3d PE=1 SV=2	EIF3D_MOUSE	63,989.60	99.80%	1	1	1	0.02%	FMTPVIQDNPSGWGPCAVPEQFR	K	D	99.70%	102	3,020.35	3,455.76	1203540	4	26
444	POSITIVE 1	Serine/threonine-protein phosphatase 5 OS=Mus musculus GN=Ppp5c PE=1 SV=3	PPP5_MOUSE	56,878.10	100.00%	2	3	4	0.08%	CVTVFSAPNYCDQMGNK	R	A	99.70%	38.2	2,445.99	3,376.61	243119	442	458
445	POSITIVE 1	Serine/threonine-protein phosphatase 5 OS=Mus musculus GN=Ppp5c PE=1 SV=3	PPP5_MOUSE	56,878.10	100.00%	2	3	4	0.08%	TECYGYALGDATR	R	A	99.70%	74.9	1,863.76	2,111.84	1297270	75	87
446	POSITIVE 1	Myosin-8 OS=Mus musculus GN=Myh8 PE=2 SV=2	MYH8_MOUSE	222,712.50	99.60%	1	2	3	0.06%	AAYLQCLNSADLLK	K	A	99.70%	73.6	1,966.94	2,997.49	1247110	387	400
447	POSITIVE 1	Basic leucine zipper and W2 domain-containing protein 1 OS=Mus musculus GN=Bzw1 PE=1 SV=1	BZW1_MOUSE	48,044.70	99.60%	1	1	1	0.02%	FDPTQFQDCIIQGLTETGTDLEAVAK	R	F	99.70%	71.3	3,284.51	4,493.56	69,191.30	27	52
448	POSITIVE 1	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	2	2	3	0.06%	NSAGQAECSCQVTVDDAQTSENTKAPEMK	K	S	99.70%	67.2	3,611.50	2,023.81	61,315.50	1196	1224
449	POSITIVE 1	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	2	2	3	0.06%	QEHCGCYTLVVENK	R	L	99.70%	35.9	2,191.92	2,008.24	1354260	1324	1337
450	POSITIVE 1	Staphylococcal nuclease domain-containing protein 1 OS=Mus musculus GN=Snd1 PE=1 SV=1	SND1_MOUSE	102,089.50	100.00%	2	2	3	0.06%	ANNPEQNRLSECEEQAK	R	A	99.70%	50.6	2,404.03	1,230.92	108274	141	157
451	POSITIVE 1	Staphylococcal nuclease domain-containing protein 1 OS=Mus musculus GN=Snd1 PE=1 SV=1	SND1_MOUSE	102,089.50	100.00%	2	2	3	0.06%	MVLSGCAIIVR	K	G	99.70%	66.9	1,605.79	2,585.15	1287730	26	36
452	POSITIVE 1	Long-chain-fatty-acid--CoA ligase 4 OS=Mus musculus GN=Acsl4 PE=1 SV=2	ACSL4_MOUSE	79,080.00	100.00%	2	3	4	0.08%	TAEDYCVDENGQR	K	W	99.70%	79.1	1,943.75	1,274.09	799880	537	549
453	POSITIVE 1	Long-chain-fatty-acid--CoA ligase 4 OS=Mus musculus GN=Acsl4 PE=1 SV=2	ACSL4_MOUSE	79,080.00	100.00%	2	3	4	0.08%	WINYLEVNCR	K	V	99.70%	53.1	1,753.78	2,696.77	108232	125	134
454	POSITIVE 1	Nuclear autoantigenic sperm protein OS=Mus musculus GN=Nasp PE=1 SV=2	NASP_MOUSE	83,952.90	99.90%	1	2	2	0.04%	KPTDGASSSNCVTDISHLVR	R	K	99.70%	49.8	2,531.16	1,990.51	2111820	684	703
455	POSITIVE 1	Dihydropyrimidinase-related protein 2 OS=Mus musculus GN=Dpysl2 PE=1 SV=2	DPYL2_MOUSE	62,277.90	99.60%	1	2	2	0.04%	GLYDGPVCEVSVTPK	R	T	99.70%	65.1	2,007.92	2,473.78	2261380	497	511
456	POSITIVE 1	Protein odr-4 homolog OS=Mus musculus GN=Odr4 PE=1 SV=2	ODR4_MOUSE	49,998.00	100.00%	3	3	4	0.08%	GNDCDLLEGQK	K	K	99.70%	55.7	1,635.67	1,661.75	529879	228	238
457	POSITIVE 1	Protein odr-4 homolog OS=Mus musculus GN=Odr4 PE=1 SV=2	ODR4_MOUSE	49,998.00	100.00%	3	3	4	0.08%	VTLHICSSTK	R	K	99.70%	42.6	1,532.72	1,311.46	1188540	136	145
458	POSITIVE 1	Protein odr-4 homolog OS=Mus musculus GN=Odr4 PE=1 SV=2	ODR4_MOUSE	49,998.00	100.00%	3	3	4	0.08%	VTLHICSSTKK	R	I	99.70%	35.8	1,660.81	985.524	178382	136	146
459	POSITIVE 1	Translation initiation factor eIF-2B subunit epsilon OS=Mus musculus GN=Eif2b5 PE=1 SV=1	EI2BE_MOUSE	80,086.40	99.60%	1	1	1	0.02%	CHEDNVVMAVDSATNR	R	V	99.70%	76	2,204.91	1,939.76	477077	192	207
460	POSITIVE 1	Myoglobin OS=Mus musculus GN=Mb PE=1 SV=3	MYG_MOUSE	17,070.40	100.00%	2	2	3	0.06%	HGCTVLTALGTILK	K	K	99.70%	94.9	1,870.95	3,257.27	605399	65	78
461	POSITIVE 1	Myoglobin OS=Mus musculus GN=Mb PE=1 SV=3	MYG_MOUSE	17,070.40	100.00%	2	2	3	0.06%	HGCTVLTALGTILKK	K	K	99.70%	84.2	1,999.05	2,845.95	347671	65	79
462	POSITIVE 1	Aconitate hydratase, mitochondrial OS=Mus musculus GN=Aco2 PE=1 SV=1	ACON_MOUSE	85,465.90	100.00%	2	4	7	0.13%	CTTDHISAAGPWLK	K	F	99.70%	85.9	1,943.87	2,116.70	1941650	592	605
463	POSITIVE 1	Aconitate hydratase, mitochondrial OS=Mus musculus GN=Aco2 PE=1 SV=1	ACON_MOUSE	85,465.90	100.00%	2	4	7	0.13%	VGLIGSCTNSSYEDMGR	R	S	99.70%	90.9	2,232.93	2,307.73	2971700	379	395
464	POSITIVE 1	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	PCBP1_MOUSE	37,498.20	100.00%	3	4	9	0.17%	AITIAGVPQSVTECVK	R	Q	99.70%	45.8	2,060.02	2,658.65	783222	145	160
465	POSITIVE 1	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	PCBP1_MOUSE	37,498.20	100.00%	3	4	9	0.17%	LVVPATQCGSLIGK	R	G	99.70%	49.1	1,829.93	2,366.30	3569840	102	115
466	POSITIVE 1	High mobility group protein B2 OS=Mus musculus GN=Hmgb2 PE=1 SV=3	HMGB2_MOUSE	24,162.80	100.00%	2	2	2	0.04%	MSSYAFFVQTCREEHKK	K	K	99.70%	38.1	2,535.12	1,744.96	514295	13	29
467	POSITIVE 1	High mobility group protein B2 OS=Mus musculus GN=Hmgb2 PE=1 SV=3	HMGB2_MOUSE	24,162.80	100.00%	2	2	2	0.04%	RPPSAFFLFCSENRPK	K	I	99.70%	50.8	2,340.10	2,343.10	507842	97	112
468	POSITIVE 1	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	XPO1_MOUSE	123,095.70	100.00%	3	5	6	0.11%	DLLGLCEQK	K	R	99.70%	39	1,462.67	2,415.61	675443	523	531
469	POSITIVE 1	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	XPO1_MOUSE	123,095.70	100.00%	3	5	6	0.11%	LDINLLDNVVNCLYHGEGAQQR	K	M	99.70%	55.8	2,928.37	3,863.94	599610	23	44
470	POSITIVE 1	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	XPO1_MOUSE	123,095.70	100.00%	3	5	6	0.11%	LQMSVPGILNPHEIPEEMCD	K	-	99.70%	65.1	2,696.18	3,451.91	618469	1052	1071
471	POSITIVE 1	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	PSME4_MOUSE	211,204.20	100.00%	1	1	1	0.02%	NYECLVNTLLDGVEQR	R	N	99.70%	74.8	2,310.05	3,938.48	110224	1142	1157
472	POSITIVE 1	CAD protein OS=Mus musculus GN=Cad PE=1 SV=1	PYR1_MOUSE	243,237.40	99.90%	1	1	1	0.02%	VVEPELMGTPDGPCYPAPPVPR	K	Q	99.70%	64.3	2,765.27	2,983.10	297501	1876	1897
473	POSITIVE 1	EH domain-containing protein 4 OS=Mus musculus GN=Ehd4 PE=1 SV=1	EHD4_MOUSE	61,483.00	100.00%	2	3	5	0.09%	GYDFCQVLQWFAER	R	V	99.70%	88.5	2,205.95	4,341.12	207243	171	184
474	POSITIVE 1	EH domain-containing protein 4 OS=Mus musculus GN=Ehd4 PE=1 SV=1	EHD4_MOUSE	61,483.00	100.00%	2	3	5	0.09%	LADCDCDGMLDEEEFALAK	K	H	99.70%	89.4	2,657.05	3,323.46	717468	490	508
475	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein A/B OS=Mus musculus GN=Hnrnpab PE=1 SV=1	ROAA_MOUSE	30,831.60	99.60%	1	2	5	0.09%	FGEVVDCTIK	K	M	99.70%	64.9	1,554.69	2,096.50	2459310	98	107
476	POSITIVE 1	Protein FAM160B1 OS=Mus musculus GN=Fam160b1 PE=1 SV=2	F16B1_MOUSE	86,019.00	99.60%	1	2	3	0.06%	CLAQSTCLCELLTGR	K	L	99.70%	84.5	2,305.01	4,540.31	186855	298	312
477	POSITIVE 1	Triosephosphate isomerase OS=Mus musculus GN=Tpi1 PE=1 SV=4	TPIS_MOUSE	32,191.30	100.00%	3	3	6	0.11%	CLGELICTLNAANVPAGTEVVCAPPTAYIDFAR	K	Q	99.70%	71.9	4,086.91	4,446.30	48,421.20	71	103
478	POSITIVE 1	Triosephosphate isomerase OS=Mus musculus GN=Tpi1 PE=1 SV=4	TPIS_MOUSE	32,191.30	100.00%	3	3	6	0.11%	IAVAAQNCYK	K	V	99.70%	48.5	1,524.69	1,363.05	1722960	110	119
479	POSITIVE 1	Triosephosphate isomerase OS=Mus musculus GN=Tpi1 PE=1 SV=4	TPIS_MOUSE	32,191.30	100.00%	3	3	6	0.11%	IIYGGSVTGATCK	R	E	99.70%	44.1	1,713.79	1,694.51	2680560	257	269
480	POSITIVE 1	Propionyl-CoA carboxylase alpha chain, mitochondrial OS=Mus musculus GN=Pcca PE=1 SV=2	PCCA_MOUSE	79,921.90	99.60%	1	3	4	0.08%	MADEAVCVGPAPTSK	K	S	99.70%	81.3	1,919.83	1,725.92	4128420	101	115
481	POSITIVE 1	Acyl carrier protein, mitochondrial OS=Mus musculus GN=Ndufab1 PE=1 SV=1	ACPM_MOUSE	17,371.10	100.00%	3	4	10	0.19%	LMCPQEIVDYIADK	K	K	99.70%	79	2,081.93	3,653.41	4173760	138	151
482	POSITIVE 1	Acyl carrier protein, mitochondrial OS=Mus musculus GN=Ndufab1 PE=1 SV=1	ACPM_MOUSE	17,371.10	100.00%	3	4	10	0.19%	LMCPQEIVDYIADKK	K	D	99.70%	34.2	2,210.03	3,274.78	203539	138	152
483	POSITIVE 1	Acyl carrier protein, mitochondrial OS=Mus musculus GN=Ndufab1 PE=1 SV=1	ACPM_MOUSE	17,371.10	100.00%	3	4	10	0.19%	RMCPQEIVDYIADK	K	K	99.70%	34.3	2,124.95	4,434.63	62,781.60	0	0
484	POSITIVE 1	Caspase-8 OS=Mus musculus GN=Casp8 PE=1 SV=1	CASP8_MOUSE	55,359.30	100.00%	2	3	7	0.13%	GTDCDKEALSK	K	T	99.70%	38.4	1,610.68	713.532	106922	264	274
485	POSITIVE 1	Caspase-8 OS=Mus musculus GN=Casp8 PE=1 SV=1	CASP8_MOUSE	55,359.30	100.00%	2	3	7	0.13%	KGTDCDKEALSK	R	T	99.70%	53.5	1,738.77	438.843	755622	263	274
486	POSITIVE 1	40S ribosomal protein S12 OS=Mus musculus GN=Rps12 PE=1 SV=2	RS12_MOUSE	14,524.90	99.90%	1	1	1	0.02%	LGEWVGLCK	K	I	99.70%	55.8	1,448.67	2,388.02	878725	85	93
487	POSITIVE 1	Thioredoxin OS=Mus musculus GN=Txn PE=1 SV=3	THIO_MOUSE	11,675.30	100.00%	3	9	16	0.30%	CMPTFQFYK	K	K	99.70%	66.6	1,608.66	2,774.29	3265150	73	81
488	POSITIVE 1	Thioredoxin OS=Mus musculus GN=Txn PE=1 SV=3	THIO_MOUSE	11,675.30	100.00%	3	9	16	0.30%	CMPTFQFYKK	K	G	99.70%	62	1,736.76	2,233.70	1225470	73	82
489	POSITIVE 1	Thioredoxin OS=Mus musculus GN=Txn PE=1 SV=3	THIO_MOUSE	11,675.30	100.00%	3	9	16	0.30%	MIKPFFHSLCDK	K	Y	99.70%	55.5	1,909.88	1,987.93	1.62E+07	37	48
490	POSITIVE 1	Histone-binding protein RBBP7 OS=Mus musculus GN=Rbbp7 PE=1 SV=1	RBBP7_MOUSE	47,790.00	100.00%	3	4	4	0.08%	IECEIKINHEGEVNR	K	A	99.70%	79.7	2,227.02	1,427.53	1824040	114	128
491	POSITIVE 1	Histone-binding protein RBBP7 OS=Mus musculus GN=Rbbp7 PE=1 SV=1	RBBP7_MOUSE	47,790.00	100.00%	3	4	4	0.08%	VHIPNDDAQFDASHCDSDK	R	G	99.70%	34.8	2,558.03	1,489.04	433244	83	101
492	POSITIVE 1	Histone-binding protein RBBP7 OS=Mus musculus GN=Rbbp7 PE=1 SV=1	RBBP7_MOUSE	47,790.00	100.00%	3	4	4	0.08%	VHIPNDDAQFDASHCDSDKGEFGGFGSVTGK	R	I	99.70%	48.5	3,681.56	2,211.46	820057	83	113
493	POSITIVE 1	Succinate--CoA ligase [ADP-forming] subunit beta, mitochondrial OS=Mus musculus GN=Sucla2 PE=1 SV=2	SUCB1_MOUSE	50,114.70	100.00%	2	4	7	0.13%	CDVIAQGIVMAVK	R	D	99.70%	87.8	1,790.86	2,975.54	1930310	384	396
494	POSITIVE 1	Succinate--CoA ligase [ADP-forming] subunit beta, mitochondrial OS=Mus musculus GN=Sucla2 PE=1 SV=2	SUCB1_MOUSE	50,114.70	100.00%	2	4	7	0.13%	ILACDDLDEAAK	K	M	99.70%	63.8	1,720.75	1,952.43	1524900	427	438
495	POSITIVE 1	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	EIF2D_MOUSE	62,831.00	99.60%	1	1	1	0.02%	NLETYGLDPCSVAAILQQR	R	C	99.70%	76.2	2,535.20	3,807.32	271478	496	514
496	POSITIVE 1	Leucine-rich repeat-containing protein 40 OS=Mus musculus GN=Lrrc40 PE=1 SV=2	LRC40_MOUSE	68,079.70	100.00%	2	3	5	0.09%	LDLSNNDISSLPCSLGNLHLK	R	F	99.70%	84.2	2,697.30	3,261.19	1332900	317	337
497	POSITIVE 1	Leucine-rich repeat-containing protein 40 OS=Mus musculus GN=Lrrc40 PE=1 SV=2	LRC40_MOUSE	68,079.70	100.00%	2	3	5	0.09%	NQLCEIPQR	K	I	99.70%	46.1	1,544.69	1,578.89	1067930	435	443
498	POSITIVE 1	THO complex subunit 1 OS=Mus musculus GN=Thoc1 PE=1 SV=1	THOC1_MOUSE	75,438.50	98.70%	1	2	5	0.09%	CTLDQAFR	K	G	99.00%	71.6	1,397.59	1,870.61	2792670	49	56
499	POSITIVE 1	DNA topoisomerase 2-beta OS=Mus musculus GN=Top2b PE=1 SV=2	TOP2B_MOUSE	181,915.10	100.00%	3	4	5	0.09%	DKNMTCIK	R	V	99.00%	32	1,396.60	869.784	399305	108	115
500	POSITIVE 1	DNA topoisomerase 2-beta OS=Mus musculus GN=Top2b PE=1 SV=2	TOP2B_MOUSE	181,915.10	100.00%	3	4	5	0.09%	FTVETACK	K	E	99.00%	48.3	1,342.58	1,388.10	246621	186	193
501	POSITIVE 1	DNA topoisomerase 2-beta OS=Mus musculus GN=Top2b PE=1 SV=2	TOP2B_MOUSE	181,915.10	100.00%	3	4	5	0.09%	FTVETACKEYK	K	H	99.70%	44.4	1,762.78	1,474.13	1464840	186	196
502	POSITIVE 1	Eukaryotic translation initiation factor 5 OS=Mus musculus GN=Eif5 PE=1 SV=1	IF5_MOUSE	48,969.20	99.60%	1	1	2	0.04%	YFGCELGAQTQFDVK	K	N	99.70%	72.7	2,149.93	2,703.66	658495	56	70
503	POSITIVE 1	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	TPP2_MOUSE	139,882.30	100.00%	2	2	3	0.06%	GAGPGCYLAGSLTLSK	K	T	99.70%	65.6	1,938.91	2,761.21	1321720	962	977
504	POSITIVE 1	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	TPP2_MOUSE	139,882.30	100.00%	2	2	3	0.06%	KETGASSFLCRYPEYDGR	K	G	99.70%	62.8	2,523.10	1,942.91	776088	19	36
505	POSITIVE 1	Peroxisomal carnitine O-octanoyltransferase OS=Mus musculus GN=Crot PE=1 SV=1	OCTC_MOUSE	70,265.10	99.90%	1	2	2	0.04%	AFVFDVLHEGCLITPPELLR	R	Q	99.70%	44	2,713.35	4,081.99	169204	200	219
506	POSITIVE 1	Copper transport protein ATOX1 OS=Mus musculus GN=Atox1 PE=1 SV=1	ATOX1_MOUSE	7,338.40	100.00%	2	5	9	0.17%	KVCIDSEHSSDTLLATLNK	K	T	99.70%	70.9	2,518.19	2,208.27	3691060	39	57
507	POSITIVE 1	Copper transport protein ATOX1 OS=Mus musculus GN=Atox1 PE=1 SV=1	ATOX1_MOUSE	7,338.40	100.00%	2	5	9	0.17%	VCIDSEHSSDTLLATLNK	K	T	99.70%	79.6	2,390.10	2,546.98	5013300	40	57
508	POSITIVE 1	Myosin light polypeptide 6 OS=Mus musculus GN=Myl6 PE=1 SV=3	MYL6_MOUSE	16,929.80	99.60%	1	1	1	0.02%	CDFTEDQTAEFK	M	E	99.70%	68.4	1,919.74	2,606.57	228066	2	13
509	POSITIVE 1	Bisphosphoglycerate mutase OS=Mus musculus GN=Bpgm PE=1 SV=2	PMGE_MOUSE	29,979.20	100.00%	2	2	4	0.08%	ENRFCSWVDQK	K	L	99.70%	59.1	1,855.79	1,900.40	900669	19	29
510	POSITIVE 1	Bisphosphoglycerate mutase OS=Mus musculus GN=Bpgm PE=1 SV=2	PMGE_MOUSE	29,979.20	100.00%	2	2	4	0.08%	FCSWVDQK	R	L	99.00%	59.2	1,456.60	1,939.42	955210	22	29
511	POSITIVE 1	N-acylneuraminate cytidylyltransferase OS=Mus musculus GN=Cmas PE=1 SV=2	NEUA_MOUSE	48,058.50	100.00%	2	3	5	0.09%	RVGLSAVPADACSGAQK	K	A	99.70%	61.8	2,073.98	1,476.24	518808	381	397
512	POSITIVE 1	N-acylneuraminate cytidylyltransferase OS=Mus musculus GN=Cmas PE=1 SV=2	NEUA_MOUSE	48,058.50	100.00%	2	3	5	0.09%	VGLSAVPADACSGAQK	R	A	99.70%	69.6	1,917.88	1,788.52	1116100	382	397
513	POSITIVE 1	AT-rich interactive domain-containing protein 1A OS=Mus musculus GN=Arid1a PE=1 SV=1	ARI1A_MOUSE	242,090.60	99.60%	1	1	2	0.04%	DETPLCTLLDWQDSLAK	K	R	99.70%	74.8	2,392.08	4,380.37	110352	1961	1977
514	POSITIVE 1	GrpE protein homolog 2, mitochondrial OS=Mus musculus GN=Grpel2 PE=2 SV=2	GRPE2_MOUSE	25,029.60	100.00%	2	3	5	0.09%	CCSEGAEPEDHRR	K	T	99.70%	48.5	2,057.79	772.713	391636	125	137
515	POSITIVE 1	GrpE protein homolog 2, mitochondrial OS=Mus musculus GN=Grpel2 PE=2 SV=2	GRPE2_MOUSE	25,029.60	100.00%	2	3	5	0.09%	TAGEDCSSEDPPDGLGPSLAEQALR	R	L	99.70%	100	2,959.27	2,939.10	2192950	38	62
516	POSITIVE 1	STIP1 homology and U box-containing protein 1 OS=Mus musculus GN=Stub1 PE=1 SV=1	CHIP_MOUSE	34,910.20	99.60%	1	2	4	0.08%	AQQACIEAK	R	H	99.70%	56.9	1,405.62	867.714	1581410	196	204
517	POSITIVE 1	Muskelin OS=Mus musculus GN=Mkln1 PE=1 SV=1	MKLN1_MOUSE	84,880.90	100.00%	1	1	1	0.02%	AAGGAVAVAPECR	M	L	99.70%	45	1,657.74	2,041.85	225229	2	14
518	POSITIVE 1	E3 ubiquitin-protein ligase MARCH5 OS=Mus musculus GN=March5 PE=1 SV=1	MARH5_MOUSE	31,231.80	99.60%	1	1	1	0.02%	LQILNSIFPGIGCPVPR	K	I	99.70%	65.7	2,268.16	3,862.91	187047	176	192
519	POSITIVE 1	Cytoplasmic aconitate hydratase OS=Mus musculus GN=Aco1 PE=1 SV=3	ACOC_MOUSE	98,127.40	99.60%	1	1	1	0.02%	WGSQAFCNMR	K	I	99.70%	49.4	1,643.65	2,110.84	1067150	159	168
520	POSITIVE 1	Src substrate cortactin OS=Mus musculus GN=Cttn PE=1 SV=2	SRC8_MOUSE	61,249.50	99.60%	1	1	9	0.17%	HCSQVDSVR	K	G	99.70%	53.7	1,474.62	601.734	1738990	111	119
521	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	HNRL2_MOUSE	84,940.70	100.00%	3	3	4	0.08%	EGCTEVSLLR	K	V	99.70%	54.2	1,550.69	2,105.35	915847	304	313
522	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	HNRL2_MOUSE	84,940.70	100.00%	3	3	4	0.08%	LQEALDAEMLEDEAGVGGAGPGGACK	R	A	99.70%	61.6	2,932.28	2,958.78	283417	33	58
523	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	HNRL2_MOUSE	84,940.70	100.00%	3	3	4	0.08%	VTQNLPMKEGCTEVSLLR	K	V	99.70%	44.6	2,462.18	2,349.74	624033	296	313
524	POSITIVE 1	Prostaglandin reductase 1 OS=Mus musculus GN=Ptgr1 PE=1 SV=2	PTGR1_MOUSE	35,560.30	100.00%	2	2	2	0.04%	TGPCPQGPAPEVVIYQQLR	R	M	99.70%	94.7	2,497.20	2,915.99	608865	248	266
525	POSITIVE 1	Prostaglandin reductase 1 OS=Mus musculus GN=Ptgr1 PE=1 SV=2	PTGR1_MOUSE	35,560.30	100.00%	2	2	2	0.04%	VQCHEYVTEGFEK	K	M	99.70%	42.4	2,012.85	1,629.65	428649	296	308
526	POSITIVE 1	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	6	7	0.13%	CLTQQAVALQR	K	T	99.70%	65.4	1,674.81	1,833.51	1611650	1198	1208
527	POSITIVE 1	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	6	7	0.13%	DAAAFLLSCQIPGLVK	K	D	99.70%	79.6	2,090.04	3,762.97	338851	747	762
528	POSITIVE 1	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	6	7	0.13%	ERPLCPLQPQNR	R	D	99.70%	55.1	1,894.90	1,441.15	792317	196	207
529	POSITIVE 1	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	6	7	0.13%	IATPFQVYSWTAPQAEHAMDCVRAEDAYTSR	R	L	99.70%	48.4	3,958.76	3,392.89	468981	313	343
530	POSITIVE 1	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	6	7	0.13%	SEDSIGPEAGCEEEGSSVSGLAK	K	V	99.70%	88.8	2,682.11	2,077.94	347010	655	677
531	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial OS=Mus musculus GN=Idh3g PE=1 SV=1	IDHG1_MOUSE	42,785.60	100.00%	2	5	9	0.17%	HACVPVDFEEVHVSSNADEEDIR	R	N	99.70%	99.7	3,041.30	2,328.05	8952890	79	101
532	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial OS=Mus musculus GN=Idh3g PE=1 SV=1	IDHG1_MOUSE	42,785.60	100.00%	2	5	9	0.17%	HACVPVDFEEVHVSSNADEEDIRNAIMAIR	R	R	99.70%	61.1	3,810.73	3,242.96	6245830	79	108
533	POSITIVE 1	Cellular tumor antigen p53 OS=Mus musculus GN=Tp53 PE=1 SV=3	P53_MOUSE	43,155.40	99.60%	1	1	1	0.02%	CSDGDGLAPPQHLIR	R	V	99.70%	48.3	2,022.91	1,930.82	669866	176	190
534	POSITIVE 1	Protein TBRG4 OS=Mus musculus GN=Tbrg4 PE=1 SV=1	TBRG4_MOUSE	71,514.90	99.60%	1	2	3	0.06%	LVDSQITCVWHGTLVK	K	L	99.70%	59.7	2,243.10	2,713.12	3094370	131	146
535	POSITIVE 1	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	RINI_MOUSE	49,817.90	100.00%	3	6	7	0.13%	ELDLSNNCMGGPGVLQLLESLK	R	Q	99.70%	95.7	2,774.32	4,371.08	273896	397	418
536	POSITIVE 1	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	RINI_MOUSE	49,817.90	100.00%	3	6	7	0.13%	SLDIQCEQLSDAR	M	W	99.70%	69.6	1,963.85	2,685.90	1160100	2	14
537	POSITIVE 1	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	RINI_MOUSE	49,817.90	100.00%	3	6	7	0.13%	TNELGDGGVGLVLQGLQNPTCK	R	I	99.70%	52.7	2,657.27	3,343.83	231051	60	81
538	POSITIVE 1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial OS=Mus musculus GN=Oxct1 PE=1 SV=1	SCOT1_MOUSE	55,990.20	99.60%	1	2	2	0.04%	STGCDFAVSPNLMPMQQIST	K	-	99.70%	64.1	2,571.10	3,694.41	595208	501	520
539	POSITIVE 1	Cytosolic purine 5'-nucleotidase OS=Mus musculus GN=Nt5c2 PE=1 SV=2	5NTC_MOUSE	64,811.30	100.00%	1	2	2	0.04%	YTSCDTGFKDGDLFMSYR	R	S	99.70%	61.3	2,550.04	2,691.23	1296000	178	195
540	POSITIVE 1	ATP-citrate synthase OS=Mus musculus GN=Acly PE=1 SV=1	ACLY_MOUSE	119,731.40	100.00%	3	5	7	0.13%	GVTIIGPATVGGIKPGCFK	K	I	99.70%	95.1	2,259.16	2,721.71	1525170	607	625
541	POSITIVE 1	ATP-citrate synthase OS=Mus musculus GN=Acly PE=1 SV=1	ACLY_MOUSE	119,731.40	100.00%	3	5	7	0.13%	KPASFMTSICDER	R	G	99.70%	50.4	1,928.83	1,889.59	621134	826	838
542	POSITIVE 1	ATP-citrate synthase OS=Mus musculus GN=Acly PE=1 SV=1	ACLY_MOUSE	119,731.40	100.00%	3	5	7	0.13%	YICTTSAIQNR	K	F	99.70%	68.1	1,713.77	1,562.69	1916150	18	28
543	POSITIVE 1	Rho guanine nucleotide exchange factor 1 OS=Mus musculus GN=Arhgef1 PE=1 SV=2	ARHG1_MOUSE	102,807.30	99.60%	1	1	1	0.02%	FCAFVQEAESRPR	R	C	99.70%	35.6	1,983.88	1,950.91	470129	535	547
544	POSITIVE 1	Signal transducer and activator of transcription 3 OS=Mus musculus GN=Stat3 PE=1 SV=2	STAT3_MOUSE	88,055.60	99.70%	1	2	2	0.04%	VCIDKDSGDVAALR	K	G	99.70%	58	1,905.88	1,799.43	795483	366	379
545	POSITIVE 1	Lethal(2) giant larvae protein homolog 2 OS=Mus musculus GN=Llgl2 PE=1 SV=2	L2GL2_MOUSE	114,323.00	99.60%	1	1	1	0.02%	TICSDEVLQWLPEEAR	R	H	99.70%	54.6	2,333.05	3,523.94	556794	168	183
546	POSITIVE 1	Guanylate kinase OS=Mus musculus GN=Guk1 PE=1 SV=2	KGUA_MOUSE	21,918.60	100.00%	2	2	2	0.04%	KTDLCPIYIFVQPPSLDVLEQR	K	L	99.70%	63.6	3,018.51	3,943.08	78,410.90	112	133
547	POSITIVE 1	Guanylate kinase OS=Mus musculus GN=Guk1 PE=1 SV=2	KGUA_MOUSE	21,918.60	100.00%	2	2	2	0.04%	TDLCPIYIFVQPPSLDVLEQR	K	L	99.70%	56	2,890.41	4,349.15	106154	113	133
548	POSITIVE 1	Leucine-zipper-like transcriptional regulator 1 OS=Mus musculus GN=Lztr1 PE=1 SV=2	LZTR1_MOUSE	94,476.90	99.60%	1	1	1	0.02%	CTLHEDYGR	K	L	99.70%	51.7	1,537.62	995.076	269083	424	432
549	POSITIVE 1	Inorganic pyrophosphatase OS=Mus musculus GN=Ppa1 PE=1 SV=1	IPYR_MOUSE	32,667.60	99.60%	1	1	3	0.06%	AIVDALPPPCESACSLPTDVDK	K	W	99.70%	62.5	2,810.27	3,198.25	1205000	261	282
550	POSITIVE 1	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	PPCE_MOUSE	80,753.40	99.80%	1	1	1	0.02%	YVLLSIWEGCDPVNR	R	L	99.70%	52.8	2,208.02	3,557.78	194048	246	260
551	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	CPACFVGTITGDK	R	R	99.70%	54.4	1,880.80	2,790.55	699617	584	596
552	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	CPACFVGTITGDKR	R	I	99.70%	60.5	2,036.90	2,655.75	1170170	584	597
553	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	ERCPACFVGTITGDK	R	R	99.70%	37.3	2,165.94	2,558.67	474342	582	596
554	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	ERCPACFVGTITGDKR	R	I	99.70%	39.6	2,322.04	2,269.81	571228	582	597
555	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	FCDNSSAIQGK	K	K	99.70%	57	1,613.67	1,285.39	769670	269	279
556	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	IVLVDDRECLVGK	R	T	99.70%	42.9	1,902.94	2,125.83	717859	598	610
557	POSITIVE 1	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	7	7	11	0.21%	LMWLFGCPLVR	K	D	99.70%	59.4	1,778.85	3,923.65	166523	60	70
558	POSITIVE 1	Heat shock protein beta-6 OS=Mus musculus GN=Hspb6 PE=1 SV=1	HSPB6_MOUSE	17,520.90	99.60%	1	1	1	0.02%	FGEGLLEAELASLCPAAIAPYYLR	R	A	99.70%	100	3,011.46	4,388.45	81,564.70	33	56
559	POSITIVE 1	PAX3- and PAX7-binding protein 1 OS=Mus musculus GN=Paxbp1 PE=1 SV=3	PAXB1_MOUSE	104,839.40	99.60%	1	1	1	0.02%	VFEDVLESFYSIDCIK	K	A	99.70%	60.3	2,351.06	4,119.04	99,961.60	586	601
560	POSITIVE 1	Lipoamide acyltransferase component of branched-chain alpha-keto acid dehydrogenase complex, mitochondrial OS=Mus musculus GN=Dbt PE=1 SV=2	ODB2_MOUSE	53,247.80	99.60%	1	1	2	0.04%	AASLGLLQFPILNASVDENCQNITYK	K	A	99.70%	63.2	3,266.58	4,075.13	93,321.60	314	339
561	POSITIVE 1	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	4	4	6	0.11%	DSASETYCNK	K	Y	99.70%	52.5	1,561.59	844.302	65,933.40	321	330
562	POSITIVE 1	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	4	4	6	0.11%	LCAEENSR	K	L	99.00%	66.4	1,365.55	727.056	729936	3116	3123
563	POSITIVE 1	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	4	4	6	0.11%	SSACLQSK	R	L	99.00%	49.1	1,267.54	593.82	415603	1147	1154
564	POSITIVE 1	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	4	4	6	0.11%	TAACPNSSEVLYTNAK	R	E	99.70%	80.7	2,112.93	1,737.42	660589	6145	6160
565	POSITIVE 1	von Willebrand factor A domain-containing protein 8 OS=Mus musculus GN=Vwa8 PE=1 SV=2	VWA8_MOUSE	213,424.40	100.00%	2	4	5	0.09%	AVNQPCAPDHFIQTVSHK	R	Q	99.70%	54.9	2,436.12	1,814.31	3085940	410	427
566	POSITIVE 1	von Willebrand factor A domain-containing protein 8 OS=Mus musculus GN=Vwa8 PE=1 SV=2	VWA8_MOUSE	213,424.40	100.00%	2	4	5	0.09%	CEVVAGSLK	K	I	99.70%	49.5	1,349.62	1,442.93	826211	723	731
567	POSITIVE 1	Elongation factor Tu, mitochondrial OS=Mus musculus GN=Tufm PE=1 SV=1	EFTU_MOUSE	49,508.90	100.00%	2	3	3	0.06%	HYAHTDCPGHADYVK	R	N	99.70%	55.4	2,157.89	784.791	2258120	121	135
568	POSITIVE 1	Elongation factor Tu, mitochondrial OS=Mus musculus GN=Tufm PE=1 SV=1	EFTU_MOUSE	49,508.90	100.00%	2	3	3	0.06%	KGDECELLGHNK	K	N	99.70%	55.2	1,786.79	981.816	84,467.30	286	297
569	POSITIVE 1	H/ACA ribonucleoprotein complex subunit 2 OS=Mus musculus GN=Nhp2 PE=1 SV=1	NHP2_MOUSE	17,247.20	99.60%	1	1	1	0.02%	AAPEESEAQAEGCSEER	K	T	99.70%	48.6	2,236.87	1,162.76	245387	6	22
570	POSITIVE 1	Aldose reductase-related protein 2 OS=Mus musculus GN=Akr1b8 PE=1 SV=2	ALD2_MOUSE	36,121.30	99.60%	1	4	6	0.11%	ACLLPETVNMEEYPYDAEY	R	-	99.70%	82.5	2,694.10	3,832.41	1171360	298	316
571	POSITIVE 1	5-oxoprolinase OS=Mus musculus GN=Oplah PE=1 SV=1	OPLA_MOUSE	137,610.60	99.60%	1	1	1	0.02%	GCTGDLLEIQQPVDLAALR	K	G	99.70%	83.8	2,456.19	3,590.87	184133	155	173
572	POSITIVE 1	Isopentenyl-diphosphate Delta-isomerase 1 OS=Mus musculus GN=Idi1 PE=1 SV=1	IDI1_MOUSE	26,290.30	100.00%	2	3	4	0.08%	NCHLNENIDK	K	G	99.70%	49.8	1,643.69	1,010.14	126959	38	47
573	POSITIVE 1	Isopentenyl-diphosphate Delta-isomerase 1 OS=Mus musculus GN=Idi1 PE=1 SV=1	IDI1_MOUSE	26,290.30	100.00%	2	3	4	0.08%	SYCYVSKEEVR	K	E	99.70%	51.2	1,806.78	1,331.54	977550	170	180
574	POSITIVE 1	Annexin A11 OS=Mus musculus GN=Anxa11 PE=1 SV=2	ANX11_MOUSE	54,081.40	99.60%	1	1	1	0.02%	GAGTDEACLIEIFASR	K	S	99.70%	74.9	2,096.94	3,590.36	394051	285	300
575	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	DCMLGMEFSGR	R	D	99.70%	79.7	1,689.65	2,802.13	1168850	1589	1599
576	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	GPSIALDTACSSSLLALQNAYQAIR	K	S	99.70%	53.1	3,007.46	3,830.10	129618	152	176
577	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	LRGYDYGPQFQGICEATLEGEQGK	R	L	99.70%	42.8	3,103.39	2,669.79	162636	997	1020
578	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	MTPGCEAEAEAEALCFFIK	K	Q	99.70%	82.5	2,629.11	4,329.98	226719	2348	2366
579	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	STLATSSSQPVWLTAMDCPTSGVVGLVNCLR	K	K	99.70%	109	3,762.76	4,369.76	65,707.80	1424	1454
580	POSITIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	6	8	0.15%	WASRDCMLGMEFSGR	K	D	99.70%	70.2	2,189.90	2,508.89	830362	1585	1599
581	POSITIVE 1	LIM domain-binding protein 3 OS=Mus musculus GN=Ldb3 PE=1 SV=1	LDB3_MOUSE	76,432.10	100.00%	2	2	3	0.06%	CYEQFFAPICAK	R	C	99.70%	48.6	1,988.83	4,045.96	67,890.10	597	608
582	POSITIVE 1	LIM domain-binding protein 3 OS=Mus musculus GN=Ldb3 PE=1 SV=1	LDB3_MOUSE	76,432.10	100.00%	2	2	3	0.06%	TSLADVCFVEEQNNVYCER	K	C	99.70%	101	2,788.16	3,102.55	864879	578	596
583	POSITIVE 1	Ferrochelatase, mitochondrial OS=Mus musculus GN=Fech PE=1 SV=2	HEMH_MOUSE	47,131.20	99.60%	1	1	1	0.02%	AIAFTQYPQYSCSTTGSSLNAIYR	R	Y	99.70%	68.3	3,086.40	3,000.67	203219	182	205
584	POSITIVE 1	Protein C10 OS=Mus musculus GN=Grcc10 PE=1 SV=1	C10_MOUSE	13,194.20	99.60%	1	1	1	0.02%	DNACNDMGK	R	M	99.70%	48.4	1,411.50	710.814	44,105.00	41	49
585	POSITIVE 1	Quinone oxidoreductase OS=Mus musculus GN=Cryz PE=1 SV=1	QOR_MOUSE	35,268.70	99.60%	1	1	1	0.02%	VVVVGCRGPIEINPR	R	D	99.70%	37.7	2,052.05	2,116.01	569810	245	259
586	POSITIVE 1	28S ribosomal protein S6, mitochondrial OS=Mus musculus GN=Mrps6 PE=1 SV=3	RT06_MOUSE	14,309.10	99.90%	1	1	1	0.02%	HPLTQEVKECDGIVPVPLEEK	K	L	99.70%	36.2	2,804.36	2,266.35	3024680	96	116
587	POSITIVE 1	Methionine-R-sulfoxide reductase B3, mitochondrial OS=Mus musculus GN=Msrb3 PE=1 SV=2	MSRB3_MOUSE	26,832.40	99.60%	1	2	2	0.04%	RYCINSASLSFTPADSSEAEGSGIK	K	E	99.70%	64.3	3,034.35	2,501.25	1366890	216	240
588	POSITIVE 1	Pentatricopeptide repeat-containing protein 1, mitochondrial OS=Mus musculus GN=Ptcd1 PE=2 SV=2	PTCD1_MOUSE	77,597.10	100.00%	2	2	2	0.04%	EMSSLCSDSSK	K	L	99.70%	48.4	1,617.62	1,139.59	133092	62	72
589	POSITIVE 1	Pentatricopeptide repeat-containing protein 1, mitochondrial OS=Mus musculus GN=Ptcd1 PE=2 SV=2	PTCD1_MOUSE	77,597.10	100.00%	2	2	2	0.04%	LQPLECNYTVLIGGCGR	R	V	99.70%	30.6	2,405.11	3,407.59	339258	167	183
590	POSITIVE 1	Nucleoside diphosphate kinase B OS=Mus musculus GN=Nme2 PE=1 SV=1	NDKB_MOUSE	17,363.30	100.00%	1	1	1	0.02%	GDFCIQVGR	R	N	99.70%	67	1,438.62	2,135.07	426239	106	114
591	POSITIVE 1	Tubulin-specific chaperone D OS=Mus musculus GN=Tbcd PE=1 SV=1	TBCD_MOUSE	133,323.40	99.60%	1	1	1	0.02%	QIHQQLCDR	K	H	99.70%	34.5	1,584.70	810.96	469821	659	667
592	POSITIVE 1	Mitogen-activated protein kinase 1 OS=Mus musculus GN=Mapk1 PE=1 SV=3	MK01_MOUSE	41,277.90	100.00%	2	2	4	0.08%	DLKPSNLLLNTTCDLK	R	I	99.70%	56.8	2,232.10	2,829.46	1422430	147	162
593	POSITIVE 1	Mitogen-activated protein kinase 1 OS=Mus musculus GN=Mapk1 PE=1 SV=3	MK01_MOUSE	41,277.90	100.00%	2	2	4	0.08%	ICDFGLAR	K	V	99.00%	56.2	1,338.59	2,197.66	509873	163	170
594	POSITIVE 1	Nuclear factor 1 A-type OS=Mus musculus GN=Nfia PE=1 SV=1	NFIA_MOUSE	58,553.60	99.60%	1	1	5	0.09%	KPPCCVLSNPDQK	K	G	99.70%	62.7	1,997.89	1,780.90	3874000	122	134
595	POSITIVE 1	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	IDHP_MOUSE	50,907.20	100.00%	4	5	14	0.27%	CATITPDEARVEEFK	K	L	99.70%	40.2	2,152.96	1,995.52	376510	113	127
596	POSITIVE 1	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	IDHP_MOUSE	50,907.20	100.00%	4	5	14	0.27%	DLAGCIHGLSNVK	K	L	99.70%	82.2	1,770.83	2,402.59	1.28E+07	414	426
597	POSITIVE 1	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	IDHP_MOUSE	50,907.20	100.00%	4	5	14	0.27%	NILGGTVFREPIICK	R	N	99.70%	48.4	2,104.07	2,695.93	702475	141	155
598	POSITIVE 1	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	IDHP_MOUSE	50,907.20	100.00%	4	5	14	0.27%	VCVQTVESGAMTK	K	D	99.70%	75.1	1,796.80	1,754.86	901688	401	413
599	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L1 OS=Mus musculus GN=Uchl1 PE=1 SV=1	UCHL1_MOUSE	24,838.20	100.00%	2	2	3	0.06%	NEAIQAAHDSVAQEGQCR	K	V	99.70%	68.6	2,371.02	1,325.55	235946	136	153
600	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase isozyme L1 OS=Mus musculus GN=Uchl1 PE=1 SV=1	UCHL1_MOUSE	24,838.20	100.00%	2	2	3	0.06%	QTIGNSCGTIGLIHAVANNQDK	K	L	99.70%	55.5	2,698.27	2,422.38	1000270	84	105
601	POSITIVE 1	TFIIH basal transcription factor complex helicase XPB subunit OS=Mus musculus GN=Ercc3 PE=2 SV=1	ERCC3_MOUSE	89,128.00	99.60%	1	2	3	0.06%	SGVIVLPCGAGK	R	S	99.70%	38.4	1,544.76	2,189.11	1223780	336	347
602	POSITIVE 1	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	HS74L_MOUSE	94,383.90	100.00%	3	3	3	0.06%	CHAEHTPEEEIDHTGAK	K	A	99.70%	61.3	2,347.97	858.348	421856	540	556
603	POSITIVE 1	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	HS74L_MOUSE	94,383.90	100.00%	3	3	3	0.06%	LMSANASDLPLNIECFMNDLDVSSK	K	M	99.70%	81.8	3,171.41	4,356.64	492279	276	300
604	POSITIVE 1	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	HS74L_MOUSE	94,383.90	100.00%	3	3	3	0.06%	TSFEEGTGECEVFSK	K	N	99.70%	68.1	2,093.84	2,092.85	103455	408	422
605	POSITIVE 1	Carnitine O-palmitoyltransferase 1, liver isoform OS=Mus musculus GN=Cpt1a PE=1 SV=4	CPT1A_MOUSE	88,253.90	99.60%	1	1	1	0.02%	LLGSTIPLCSAQWER	R	L	99.70%	52.8	2,118.01	3,005.26	566231	296	310
606	POSITIVE 1	Thiosulfate sulfurtransferase/rhodanese-like domain-containing protein 3 OS=Mus musculus GN=Tstd3 PE=1 SV=1	TSTD3_MOUSE	17,271.40	100.00%	3	4	8	0.15%	LVFSCLAGVR	R	S	99.70%	62.9	1,508.73	2,778.69	1143760	110	119
607	POSITIVE 1	Thiosulfate sulfurtransferase/rhodanese-like domain-containing protein 3 OS=Mus musculus GN=Tstd3 PE=1 SV=1	TSTD3_MOUSE	17,271.40	100.00%	3	4	8	0.15%	SDRLVFSCLAGVR	K	S	99.70%	43.4	1,866.90	2,475.85	1418550	107	119
608	POSITIVE 1	Thiosulfate sulfurtransferase/rhodanese-like domain-containing protein 3 OS=Mus musculus GN=Tstd3 PE=1 SV=1	TSTD3_MOUSE	17,271.40	100.00%	3	4	8	0.15%	YCQVKPSK	K	S	99.00%	38.9	1,396.63	530.121	1661820	99	106
609	POSITIVE 1	Eukaryotic translation initiation factor 3 subunit C OS=Mus musculus GN=Eif3c PE=1 SV=1	EIF3C_MOUSE	105,533.90	100.00%	2	4	11	0.21%	GCILTLVER	R	M	99.70%	59.1	1,447.70	2,691.47	8769730	440	448
610	POSITIVE 1	Eukaryotic translation initiation factor 3 subunit C OS=Mus musculus GN=Eif3c PE=1 SV=1	EIF3C_MOUSE	105,533.90	100.00%	2	4	11	0.21%	VRGCILTLVER	R	M	99.70%	62.6	1,702.87	2,297.95	3438040	438	448
611	POSITIVE 1	KH domain-containing, RNA-binding, signal transduction-associated protein 1 OS=Mus musculus GN=Khdrbs1 PE=1 SV=2	KHDR1_MOUSE	48,371.50	99.60%	1	2	3	0.06%	SCSKDPSGAHPSVR	R	L	99.70%	55.6	1,871.81	467.742	881820	18	31
612	POSITIVE 1	Leucine-rich repeat-containing protein 59 OS=Mus musculus GN=Lrrc59 PE=1 SV=1	LRC59_MOUSE	34,878.00	99.60%	1	2	2	0.04%	ATVLDLSCNK	K	L	99.70%	36.5	1,507.69	1,907.89	2285790	41	50
613	POSITIVE 1	Coatomer subunit gamma-1 OS=Mus musculus GN=Copg1 PE=1 SV=1	COPG1_MOUSE	97,513.80	99.60%	1	1	1	0.02%	EMSCIAEDVIIVTSSLTK	K	D	99.70%	73.4	2,383.12	4,376.26	142800	94	111
614	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	ACTTEEDQEK	K	L	99.70%	60.8	1,597.61	484.641	826783	488	497
615	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	ISQMPVILTPLHFDRDPLQKQPSCQR	K	S	99.00%	27.8	3,492.72	2,808.30	328397	608	633
616	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	TVGVQGDCR	K	S	99.70%	56.1	1,378.58	901.398	3505170	516	524
617	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	VICAEEPYICK	R	D	99.70%	57.2	1,836.80	2,343.14	5798540	447	457
618	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	VICAEEPYICKDFPETNNILK	R	I	99.70%	55.1	3,008.38	3,065.32	3403130	447	467
619	POSITIVE 1	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	6	11	22	0.42%	VKACTTEEDQEK	R	L	99.70%	64.3	1,824.77	452.946	680272	486	497
620	POSITIVE 1	DNA polymerase alpha catalytic subunit OS=Mus musculus GN=Pola1 PE=1 SV=2	DPOLA_MOUSE	167,345.00	99.00%	1	1	1	0.02%	YIFDADCALEK	R	L	99.30%	30.4	1,731.74	2,618.54	216471	1401	1411
621	POSITIVE 1	PDZ and LIM domain protein 5 OS=Mus musculus GN=Pdlim5 PE=1 SV=4	PDLI5_MOUSE	63,298.10	100.00%	2	2	3	0.06%	ACTGSLNMTLQR	K	A	99.70%	57.5	1,738.77	1,989.11	1060180	72	83
622	POSITIVE 1	PDZ and LIM domain protein 5 OS=Mus musculus GN=Pdlim5 PE=1 SV=4	PDLI5_MOUSE	63,298.10	100.00%	2	2	3	0.06%	QPTVTSVCSESAQELAEGQR	R	R	99.70%	56.2	2,564.14	2,119.64	294716	206	225
623	POSITIVE 1	Cullin-associated NEDD8-dissociated protein 2 OS=Mus musculus GN=Cand2 PE=1 SV=2	CAND2_MOUSE	135,636.30	100.00%	3	3	5	0.09%	CMAALISSRPDLLPDFHCTLAPALIR	K	R	99.70%	45.1	3,393.66	4,251.89	222449	357	382
624	POSITIVE 1	Cullin-associated NEDD8-dissociated protein 2 OS=Mus musculus GN=Cand2 PE=1 SV=2	CAND2_MOUSE	135,636.30	100.00%	3	3	5	0.09%	CVVAECIGK	R	L	99.70%	53.1	1,490.64	2,085.90	1567540	953	961
625	POSITIVE 1	Cullin-associated NEDD8-dissociated protein 2 OS=Mus musculus GN=Cand2 PE=1 SV=2	CAND2_MOUSE	135,636.30	100.00%	3	3	5	0.09%	LATLCPAPVLQR	R	V	99.70%	46	1,725.88	2,401.48	1534510	1134	1145
626	POSITIVE 1	NADH dehydrogenase [ubiquinone] iron-sulfur protein 2, mitochondrial OS=Mus musculus GN=Ndufs2 PE=1 SV=1	NDUS2_MOUSE	52,626.80	99.70%	1	2	3	0.06%	IIEQCLNK	R	M	99.00%	46.9	1,404.66	1,385.04	1461620	343	350
627	POSITIVE 1	Glycine--tRNA ligase OS=Mus musculus GN=Gars PE=1 SV=1	GARS_MOUSE	81,879.10	100.00%	4	5	8	0.15%	FQSVADLCLYLYSAK	K	A	99.70%	34	2,165.00	3,413.58	39,944.60	355	369
628	POSITIVE 1	Glycine--tRNA ligase OS=Mus musculus GN=Gars PE=1 SV=1	GARS_MOUSE	81,879.10	100.00%	4	5	8	0.15%	FRQHMENEMAHYACDCWDAESK	R	T	99.70%	35.3	3,270.26	2,442.35	282107	419	440
629	POSITIVE 1	Glycine--tRNA ligase OS=Mus musculus GN=Gars PE=1 SV=1	GARS_MOUSE	81,879.10	100.00%	4	5	8	0.15%	NGECFRADHLLK	K	A	99.70%	43	1,846.83	1,616.66	1069940	198	209
630	POSITIVE 1	Glycine--tRNA ligase OS=Mus musculus GN=Gars PE=1 SV=1	GARS_MOUSE	81,879.10	100.00%	4	5	8	0.15%	SCYDLSCHAR	R	A	99.70%	54.8	1,723.66	1,646.00	2739020	455	464
631	POSITIVE 1	UPF0696 protein C11orf68 homolog OS=Mus musculus GN=Bles03 PE=1 SV=1	CK068_MOUSE	27,539.10	99.60%	1	1	2	0.04%	WHLCPTLYESR	R	F	99.70%	73	1,848.82	2,313.52	1692100	219	229
632	POSITIVE 1	39S ribosomal protein L44, mitochondrial OS=Mus musculus GN=Mrpl44 PE=1 SV=3	RM44_MOUSE	37,528.10	100.00%	1	2	5	0.09%	TAFINSCYIK	K	S	99.70%	64	1,603.72	2,299.72	7196740	90	99
633	POSITIVE 1	Arginine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Rars PE=1 SV=2	SYRC_MOUSE	75,676.70	100.00%	2	3	5	0.09%	IVFVPGCSVPLTIVK	K	S	99.70%	58.4	2,016.07	3,411.06	675449	363	377
634	POSITIVE 1	Arginine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Rars PE=1 SV=2	SYRC_MOUSE	75,676.70	100.00%	2	3	5	0.09%	LQEVFGCAIR	R	A	99.70%	54.9	1,579.74	2,323.79	2063640	80	89
635	POSITIVE 1	Puromycin-sensitive aminopeptidase OS=Mus musculus GN=Npepps PE=1 SV=2	PSA_MOUSE	103,328.10	99.90%	1	1	3	0.06%	FCASGPYGGEDCPQWMVPITISTSEDPNQAK	K	L	99.70%	70.7	3,897.65	3,675.33	264330	527	557
636	POSITIVE 1	S-adenosylhomocysteine hydrolase-like protein 1 OS=Mus musculus GN=Ahcyl1 PE=1 SV=1	SAHH2_MOUSE	66,899.40	99.60%	1	1	2	0.04%	LCVPAMNVNDSVTK	K	Q	99.70%	66.3	1,934.88	2,462.72	2218440	354	367
637	POSITIVE 1	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	RIR2_MOUSE	45,097.00	100.00%	2	2	3	0.06%	EYLFNAIETMPCVK	R	K	99.70%	50.4	2,101.94	3,328.13	429627	192	205
638	POSITIVE 1	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	RIR2_MOUSE	45,097.00	100.00%	2	2	3	0.06%	LIGMNCTLMK	K	Q	99.70%	45.2	1,567.71	2,441.84	1416820	313	322
639	POSITIVE 1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	5	7	10	0.19%	AGGIETIANEFSDRCTPSVISFGSK	R	N	99.70%	69.9	3,030.39	3,241.13	282049	20	44
640	POSITIVE 1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	5	7	10	0.19%	CTPSVISFGSK	R	N	99.70%	64.8	1,569.70	2,224.48	1935840	34	44
641	POSITIVE 1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	5	7	10	0.19%	FICEQEHEK	K	F	99.70%	63.1	1,606.66	903.948	1813270	657	665
642	POSITIVE 1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	5	7	10	0.19%	LMSSNSTDLPLNIECFMNDK	K	D	99.70%	67.2	2,716.17	3,731.97	321295	276	295
643	POSITIVE 1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	5	7	10	0.19%	NNLGAEAPHQNGECHPNEK	K	G	99.70%	52.7	2,503.05	800.598	287328	832	850
644	POSITIVE 1	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	SYRM_MOUSE	65,337.00	100.00%	4	8	14	0.27%	AVLQQVTEDGCK	K	Y	99.70%	61.7	1,734.78	1,603.84	2891790	100	111
645	POSITIVE 1	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	SYRM_MOUSE	65,337.00	100.00%	4	8	14	0.27%	AVLQQVTEDGCKYGLK	K	S	99.70%	56.9	2,196.04	2,148.83	2010580	100	115
646	POSITIVE 1	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	SYRM_MOUSE	65,337.00	100.00%	4	8	14	0.27%	CDTVVTAISAGPR	K	T	99.70%	85	1,733.79	2,120.68	2395120	74	86
647	POSITIVE 1	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	SYRM_MOUSE	65,337.00	100.00%	4	8	14	0.27%	SIACQLSR	R	V	99.00%	56.9	1,321.60	1,403.39	3745480	8	15
648	POSITIVE 1	Profilin-1 OS=Mus musculus GN=Pfn1 PE=1 SV=2	PROF1_MOUSE	14,957.30	99.60%	1	1	1	0.02%	AGWNAYIDSLMADGTCQDAAIVGYK	M	D	99.70%	56.5	3,119.35	4,463.86	36,719.60	2	26
649	POSITIVE 1	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	PPIA_MOUSE	17,971.80	100.00%	2	3	4	0.08%	ITISDCGQL	K	-	99.70%	62.8	1,393.61	2,442.20	651301	156	164
650	POSITIVE 1	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	PPIA_MOUSE	17,971.80	100.00%	2	3	4	0.08%	KITISDCGQL	K	-	99.70%	48	1,521.70	1,969.46	2013240	155	164
651	POSITIVE 1	ADP-ribosylation factor-like protein 2 OS=Mus musculus GN=Arl2 PE=1 SV=1	ARL2_MOUSE	20,865.10	99.60%	1	1	2	0.04%	QDLPGALSCNAIQEALELDSIR	K	S	99.70%	95.5	2,800.32	4,026.03	246002	127	148
652	POSITIVE 1	Conserved oligomeric Golgi complex subunit 1 OS=Mus musculus GN=Cog1 PE=1 SV=3	COG1_MOUSE	109,052.50	99.60%	1	1	1	0.02%	AQAISPCVQNFCSALDSK	K	L	99.70%	37.4	2,451.07	3,141.96	423489	504	521
653	POSITIVE 1	Peroxiredoxin-6 OS=Mus musculus GN=Prdx6 PE=1 SV=3	PRDX6_MOUSE	24,871.70	100.00%	3	4	5	0.09%	DFTPVCTTELGR	R	A	99.70%	58.2	1,782.78	2,415.05	1292090	42	53
654	POSITIVE 1	Peroxiredoxin-6 OS=Mus musculus GN=Prdx6 PE=1 SV=3	PRDX6_MOUSE	24,871.70	100.00%	3	4	5	0.09%	GESVMVVPTLSEEEAKQCFPK	K	G	99.70%	60	2,752.26	2,680.68	1028220	184	204
655	POSITIVE 1	Peroxiredoxin-6 OS=Mus musculus GN=Prdx6 PE=1 SV=3	PRDX6_MOUSE	24,871.70	100.00%	3	4	5	0.09%	KGESVMVVPTLSEEEAKQCFPK	K	G	99.70%	60.9	2,880.36	2,377.21	538936	183	204
656	POSITIVE 1	Erlin-1 OS=Mus musculus GN=Erlin1 PE=1 SV=1	ERLN1_MOUSE	38,937.70	99.60%	1	1	1	0.02%	IYFGSNIPSMFVDSSCALK	K	Y	99.70%	65.8	2,523.14	3,705.12	270964	295	313
657	POSITIVE 1	Transportin-3 OS=Mus musculus GN=Tnpo3 PE=1 SV=1	TNPO3_MOUSE	104,171.10	100.00%	2	2	3	0.06%	IVCTPGQGLGDLR	K	T	99.70%	62.4	1,772.84	2,224.97	745672	310	322
658	POSITIVE 1	Transportin-3 OS=Mus musculus GN=Tnpo3 PE=1 SV=1	TNPO3_MOUSE	104,171.10	100.00%	2	2	3	0.06%	QVTSAEECK	K	Q	99.70%	36.9	1,438.59	561.006	79,252.30	901	909
659	POSITIVE 1	Splicing factor 3B subunit 1 OS=Mus musculus GN=Sf3b1 PE=1 SV=1	SF3B1_MOUSE	145,821.30	99.60%	1	1	1	0.02%	IVQQIAILMGCAILPHLR	K	S	99.70%	41.7	2,433.29	4,018.17	99,370.20	667	684
660	POSITIVE 1	Heat shock protein HSP 90-beta OS=Mus musculus GN=Hsp90ab1 PE=1 SV=3	HS90B_MOUSE	83,284.30	100.00%	3	6	9	0.17%	LVSSPCCIVTSTYGWTANMER	R	I	99.70%	96.2	2,887.25	3,733.85	2991390	584	604
661	POSITIVE 1	Heat shock protein HSP 90-beta OS=Mus musculus GN=Hsp90ab1 PE=1 SV=3	HS90B_MOUSE	83,284.30	100.00%	3	6	9	0.17%	RVFIMDSCDELIPEYLNFIR	R	G	99.70%	58.6	2,917.37	3,992.72	251786	359	378
662	POSITIVE 1	Heat shock protein HSP 90-beta OS=Mus musculus GN=Hsp90ab1 PE=1 SV=3	HS90B_MOUSE	83,284.30	100.00%	3	6	9	0.17%	VFIMDSCDELIPEYLNFIR	R	G	99.70%	90.4	2,761.27	4,280.67	1059930	360	378
663	POSITIVE 1	Sepiapterin reductase OS=Mus musculus GN=Spr PE=1 SV=1	SPRE_MOUSE	27,883.80	100.00%	2	3	7	0.13%	SDGALVDCGESAQK	K	L	99.70%	35.1	1,823.75	1,572.41	121809	0	0
664	POSITIVE 1	Sepiapterin reductase OS=Mus musculus GN=Spr PE=1 SV=1	SPRE_MOUSE	27,883.80	100.00%	2	3	7	0.13%	SDGALVDCGTSAQK	K	L	99.70%	82.5	1,795.76	1,301.72	5350940	228	241
665	POSITIVE 1	Golgi to ER traffic protein 4 homolog OS=Mus musculus GN=Get4 PE=1 SV=2	GET4_MOUSE	36,525.90	98.70%	1	1	1	0.02%	EQNYCESR	K	Y	99.00%	34.5	1,472.55	757.356	246601	156	163
666	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 2 OS=Mus musculus GN=Usp2 PE=1 SV=2	UBP2_MOUSE	68,848.10	99.60%	1	1	1	0.02%	NLGNTCFMNSILQCLSNTR	R	E	99.70%	84.3	2,698.18	4,358.80	160700	279	297
667	POSITIVE 1	Inositol monophosphatase 1 OS=Mus musculus GN=Impa1 PE=1 SV=1	IMPA1_MOUSE	30,436.60	99.60%	1	1	1	0.02%	EKYPCHSFIGEESVAAGEK	K	T	99.70%	75.2	2,525.11	1,714.90	752540	60	78
668	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	HNRPM_MOUSE	77,650.50	100.00%	3	6	10	0.19%	DKFNECGHVLYADIK	K	M	99.70%	55.7	2,195.99	2,007.80	537135	670	684
669	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	HNRPM_MOUSE	77,650.50	100.00%	3	6	10	0.19%	GCAVVEFK	R	M	99.00%	42.4	1,296.57	1,817.19	138402	112	119
670	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	HNRPM_MOUSE	77,650.50	100.00%	3	6	10	0.19%	MEEESGAPCVPSGNGAPGPK	K	G	99.70%	66.3	2,357.98	1,643.97	3075750	18	37
671	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	CGVQTPPS	R	-	99.00%	46.5	1,232.50	1,350.18	638778	247	254
672	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	LLYAVNTHCHADHITGTGVLR	K	S	99.70%	66.6	2,735.31	1,868.81	1416830	72	92
673	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	LTLSCEEFIK	R	V	99.70%	53.3	1,626.75	2,500.52	2262590	215	224
674	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	SCTYTYLLGDR	K	E	99.70%	80.9	1,735.74	2,531.54	1923510	33	43
675	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	SCTYTYLLGDRESR	K	E	99.70%	57.7	2,107.92	2,144.78	670412	33	46
676	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	SLLPGCQSVISR	R	L	99.70%	53.5	1,703.82	2,274.03	3631030	93	104
677	POSITIVE 1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	ETHE1_MOUSE	27,738.90	100.00%	7	12	18	0.34%	TDFQQGCAK	R	T	99.70%	52.3	1,441.58	923.214	8782020	164	172
678	POSITIVE 1	Myosin-10 OS=Mus musculus GN=Myh10 PE=1 SV=2	MYH10_MOUSE	229,002.00	100.00%	2	4	6	0.11%	QGLETDNKELACEVK	K	V	99.70%	49.5	2,120.96	1,638.68	2997280	1227	1241
679	POSITIVE 1	Myosin-10 OS=Mus musculus GN=Myh10 PE=1 SV=2	MYH10_MOUSE	229,002.00	100.00%	2	4	6	0.11%	VEDMAELTCLNEASVLHNLKDR	K	Y	99.70%	69.2	2,944.36	2,923.53	1563200	87	108
680	POSITIVE 1	Copine-3 OS=Mus musculus GN=Cpne3 PE=1 SV=2	CPNE3_MOUSE	59,585.90	99.60%	1	1	1	0.02%	EALAQCVLAEIPQQVVGYFNTYK	K	L	99.70%	93.7	3,028.45	4,435.89	39,887.50	501	523
681	POSITIVE 1	ATPase family AAA domain-containing protein 1 OS=Mus musculus GN=Atad1 PE=1 SV=1	ATAD1_MOUSE	40,745.10	99.60%	1	1	1	0.02%	DAAFQNVLTHVCLD	K	-	99.70%	54.2	1,989.88	3,402.56	406562	348	361
682	POSITIVE 1	Squamous cell carcinoma antigen recognized by T-cells 3 OS=Mus musculus GN=Sart3 PE=1 SV=1	SART3_MOUSE	109,620.20	99.60%	1	1	1	0.02%	AVQCTSDYPEHVCEVLLTMER	R	T	99.70%	48.4	2,992.29	3,661.09	104479	535	555
683	POSITIVE 1	Constitutive coactivator of PPAR-gamma-like protein 1 OS=Mus musculus GN=FAM120A PE=1 SV=2	F120A_MOUSE	121,647.10	99.60%	1	1	1	0.02%	AHQLVLPPCDVVIK	R	A	99.70%	36.4	1,976.01	2,373.34	612421	271	284
684	POSITIVE 1	Tyrosine--tRNA ligase, mitochondrial OS=Mus musculus GN=Yars2 PE=1 SV=2	SYYM_MOUSE	52,598.60	100.00%	3	5	7	0.13%	EALSAECVR	R	A	99.70%	47.3	1,421.61	1,376.90	3461060	125	133
685	POSITIVE 1	Tyrosine--tRNA ligase, mitochondrial OS=Mus musculus GN=Yars2 PE=1 SV=2	SYYM_MOUSE	52,598.60	100.00%	3	5	7	0.13%	EASFSELVLDPGTSVIDTCRK	K	A	99.70%	42	2,711.27	3,068.89	245825	390	410
686	POSITIVE 1	Tyrosine--tRNA ligase, mitochondrial OS=Mus musculus GN=Yars2 PE=1 SV=2	SYYM_MOUSE	52,598.60	100.00%	3	5	7	0.13%	GREALSAECVR	K	A	99.70%	38.6	1,634.74	1,095.97	3239640	123	133
687	POSITIVE 1	Condensin-2 complex subunit D3 OS=Mus musculus GN=Ncapd3 PE=1 SV=3	CNDD3_MOUSE	169,437.30	100.00%	2	2	2	0.04%	AWLMGVIPVVMDCESTVQEK	K	A	99.70%	57.3	2,679.23	4,020.06	88,384.30	614	633
688	POSITIVE 1	Condensin-2 complex subunit D3 OS=Mus musculus GN=Ncapd3 PE=1 SV=3	CNDD3_MOUSE	169,437.30	100.00%	2	2	2	0.04%	EQSPNSNTLGYMLCVIGHIAK	R	H	99.70%	37.7	2,719.26	4,194.06	62,292.70	742	762
689	POSITIVE 1	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	ISCU_MOUSE	18,098.50	100.00%	4	10	20	0.38%	ELCLPPVK	K	L	99.00%	47.7	1,342.65	2,280.52	6976020	129	136
690	POSITIVE 1	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	ISCU_MOUSE	18,098.50	100.00%	4	10	20	0.38%	LHCSMLAEDAIK	K	A	99.70%	64.7	1,774.79	1,908.70	4181590	137	148
691	POSITIVE 1	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	ISCU_MOUSE	18,098.50	100.00%	4	10	20	0.38%	NVGTGLVGAPACGDVMK	K	L	99.70%	71.3	2,032.93	2,259.73	6047850	59	75
692	POSITIVE 1	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	ISCU_MOUSE	18,098.50	100.00%	4	10	20	0.38%	TFGCGSAIASSSLATEWVK	K	G	99.70%	91.5	2,359.07	3,109.27	798884	93	111
693	POSITIVE 1	Carbonyl reductase [NADPH] 1 OS=Mus musculus GN=Cbr1 PE=1 SV=3	CBR1_MOUSE	30,641.40	100.00%	3	3	4	0.08%	DVCKELLPLIKPQGR	R	V	99.70%	65.4	2,153.12	2,465.07	225763	120	134
694	POSITIVE 1	Carbonyl reductase [NADPH] 1 OS=Mus musculus GN=Cbr1 PE=1 SV=3	CBR1_MOUSE	30,641.40	100.00%	3	3	4	0.08%	ILLNACCPGWVR	K	T	99.70%	69	1,913.88	3,110.04	1531460	221	232
695	POSITIVE 1	Carbonyl reductase [NADPH] 1 OS=Mus musculus GN=Cbr1 PE=1 SV=3	CBR1_MOUSE	30,641.40	100.00%	3	3	4	0.08%	NCRLELQQK	K	F	99.70%	40.3	1,575.74	1,148.85	175902	149	157
696	POSITIVE 1	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	C1TM_MOUSE	105,731.00	100.00%	5	6	8	0.15%	EAGLDITHICLPPDSGEDEIIDEILK	K	I	99.70%	75.5	3,279.54	4,174.09	40,613.30	120	145
697	POSITIVE 1	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	C1TM_MOUSE	105,731.00	100.00%	5	6	8	0.15%	EYTEENIQLVADGCCNLQK	K	Q	99.70%	66.9	2,739.17	2,928.61	707354	764	782
698	POSITIVE 1	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	C1TM_MOUSE	105,731.00	100.00%	5	6	8	0.15%	GDAPECFVSPLAK	R	A	99.70%	62.9	1,777.79	2,494.76	1059230	192	204
699	POSITIVE 1	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	C1TM_MOUSE	105,731.00	100.00%	5	6	8	0.15%	KEYTEENIQLVADGCCNLQK	K	Q	99.70%	70.2	2,867.26	2,525.06	600210	763	782
700	POSITIVE 1	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	C1TM_MOUSE	105,731.00	100.00%	5	6	8	0.15%	LVRGDAPECFVSPLAK	K	A	99.70%	36.2	2,146.04	2,315.72	576826	189	204
701	POSITIVE 1	Proteasome assembly chaperone 1 OS=Mus musculus GN=Psmg1 PE=1 SV=1	PSMG1_MOUSE	33,103.90	100.00%	2	4	5	0.09%	HITDYKTPESTCSLSSPFLR	R	A	99.70%	54.6	2,726.26	2,252.54	1706860	172	191
702	POSITIVE 1	Proteasome assembly chaperone 1 OS=Mus musculus GN=Psmg1 PE=1 SV=1	PSMG1_MOUSE	33,103.90	100.00%	2	4	5	0.09%	TPESTCSLSSPFLR	K	A	99.70%	59.8	1,968.88	2,503.50	2816010	178	191
703	POSITIVE 1	Transcription activator BRG1 OS=Mus musculus GN=Smarca4 PE=1 SV=1	SMCA4_MOUSE	181,431.10	99.60%	1	1	1	0.02%	SCSTFEQWFNAPFAMTGEK	K	V	99.70%	76.8	2,625.08	3,987.48	102704	935	953
704	POSITIVE 1	Eukaryotic translation initiation factor 3 subunit B OS=Mus musculus GN=Eif3b PE=1 SV=1	EIF3B_MOUSE	91,371.20	99.60%	1	2	4	0.08%	FSHQGVQLIDFSPCER	R	Y	99.70%	92.1	2,307.03	2,501.39	5763440	360	375
705	POSITIVE 1	GrpE protein homolog 1, mitochondrial OS=Mus musculus GN=Grpel1 PE=1 SV=1	GRPE1_MOUSE	24,307.60	100.00%	2	10	17	0.32%	NNGQNLDEDLGHCEPK	K	T	99.70%	63.4	2,226.91	1,474.69	9356480	35	50
706	POSITIVE 1	GrpE protein homolog 1, mitochondrial OS=Mus musculus GN=Grpel1 PE=1 SV=1	GRPE1_MOUSE	24,307.60	100.00%	2	10	17	0.32%	NNGQNLDEDLGHCEPKTDPPSADK	K	T	99.70%	66.2	3,038.29	1,512.56	8405560	35	58
707	POSITIVE 1	Phosphate carrier protein, mitochondrial OS=Mus musculus GN=Slc25a3 PE=1 SV=1	MPCP_MOUSE	39,633.10	100.00%	2	2	2	0.04%	CRMQVDPQK	K	Y	99.70%	31.5	1,548.67	854.964	371364	86	94
708	POSITIVE 1	Phosphate carrier protein, mitochondrial OS=Mus musculus GN=Slc25a3 PE=1 SV=1	MPCP_MOUSE	39,633.10	100.00%	2	2	2	0.04%	YYALCGFGGVLSCGLTHTAVVPLDLVK	K	C	99.70%	92.6	3,365.64	4,283.36	362230	59	85
709	POSITIVE 1	Ribosome-releasing factor 2, mitochondrial OS=Mus musculus GN=Gfm2 PE=1 SV=2	RRF2M_MOUSE	86,110.00	99.60%	1	2	5	0.09%	IEYADCVGEDLLQASR	K	E	99.70%	95.7	2,225.98	3,077.29	2469670	606	621
710	POSITIVE 1	RUS1 family protein C16orf58 homolog OS=Mus musculus PE=1 SV=1	RUS1_MOUSE	50,469.60	99.60%	1	1	1	0.02%	QLVEGHHEPYLLCWNK	K	S	99.70%	50	2,410.11	2,251.22	767420	343	358
711	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	AVLFCLSEDK	K	K	99.70%	37.6	1,568.71	2,609.25	1078100	35	44
712	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	AVLFCLSEDKK	K	N	99.70%	58.5	1,696.80	2,104.66	1293310	35	45
713	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	DRCTLAEK	K	L	99.00%	31.9	1,379.60	735.846	295695	145	152
714	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	HELQANCYEEVK	K	D	99.70%	60.9	1,906.81	1,335.61	456680	133	144
715	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	HELQANCYEEVKDR	K	C	99.70%	72.8	2,177.93	1,226.89	1.35E+07	133	146
716	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	HELQANCYEEVKDRCTLAEK	K	L	99.70%	44.1	2,948.30	1,757.74	8623120	133	152
717	POSITIVE 1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	7	11	22	0.42%	KAVLFCLSEDK	K	K	99.70%	49.5	1,696.80	2,123.72	185149	34	44
718	POSITIVE 1	S-formylglutathione hydrolase OS=Mus musculus GN=Esd PE=1 SV=1	ESTD_MOUSE	31,320.40	100.00%	2	4	6	0.11%	AYDATCLVK	K	A	99.70%	48.7	1,427.63	1,904.52	1333560	201	209
719	POSITIVE 1	S-formylglutathione hydrolase OS=Mus musculus GN=Esd PE=1 SV=1	ESTD_MOUSE	31,320.40	100.00%	2	4	6	0.11%	CPALYWLSGLTCTEQNFISK	K	S	99.70%	76.5	2,843.28	4,356.47	872375	45	64
720	POSITIVE 1	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	BAG3_MOUSE	61,859.40	100.00%	2	2	2	0.04%	SQSPAASDCSSSSSSASLPSSGR	R	S	99.70%	82.1	2,587.06	1,277.32	309166	177	199
721	POSITIVE 1	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	BAG3_MOUSE	61,859.40	100.00%	2	2	2	0.04%	VSSAPIPCPSPSPAPSAVPSPPK	K	N	99.70%	78.8	2,614.26	2,320.97	323773	371	393
722	POSITIVE 1	Nuclear pore complex protein Nup85 OS=Mus musculus GN=Nup85 PE=1 SV=1	NUP85_MOUSE	74,778.90	100.00%	3	3	3	0.06%	CLEDLASGRPECGEPDAQR	R	L	99.70%	63.3	2,615.09	2,717.47	605937	603	621
723	POSITIVE 1	Nuclear pore complex protein Nup85 OS=Mus musculus GN=Nup85 PE=1 SV=1	NUP85_MOUSE	74,778.90	100.00%	3	3	3	0.06%	GCFSDLDLIDNLGSAMMLSDR	R	L	99.70%	62.2	2,717.17	4,379.24	30,849.30	514	534
724	POSITIVE 1	Nuclear pore complex protein Nup85 OS=Mus musculus GN=Nup85 PE=1 SV=1	NUP85_MOUSE	74,778.90	100.00%	3	3	3	0.06%	MEELDCEPAVTWIPGVNSK	-	K	99.70%	74.3	2,604.14	4,095.50	180306	1	19
725	POSITIVE 1	Dynamin-like 120 kDa protein, mitochondrial OS=Mus musculus GN=Opa1 PE=1 SV=1	OPA1_MOUSE	111,342.50	99.60%	1	1	1	0.02%	EGCTVSPETISLNVK	K	G	99.70%	68.6	2,020.93	2,462.82	302849	373	387
726	POSITIVE 1	Polyadenylate-binding protein 1 OS=Mus musculus GN=Pabpc1 PE=1 SV=2	PABP1_MOUSE	70,671.30	99.60%	1	2	3	0.06%	VVCDENGSK	K	G	99.70%	49.7	1,394.57	498.93	2397510	130	138
727	POSITIVE 1	UPF0568 protein C14orf166 homolog OS=Mus musculus PE=1 SV=1	CN166_MOUSE	28,153.40	100.00%	2	6	8	0.15%	LTALDYHNPSGFNCK	K	D	99.70%	68.6	2,123.93	1,944.79	3091920	6	20
728	POSITIVE 1	UPF0568 protein C14orf166 homolog OS=Mus musculus PE=1 SV=1	CN166_MOUSE	28,153.40	100.00%	2	6	8	0.15%	LTALDYHNPSGFNCKDETEFR	K	N	99.70%	75.9	2,901.26	2,134.83	4513580	6	26
729	POSITIVE 1	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	1433T_MOUSE	27,779.40	100.00%	3	4	5	0.09%	LAEQAERYDDMATCMK	K	A	99.70%	61.4	2,318.95	1,858.79	317241	12	27
730	POSITIVE 1	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	1433T_MOUSE	27,779.40	100.00%	3	4	5	0.09%	YLAEVACGDDR	R	K	99.70%	54.7	1,655.68	1,660.85	625872	128	138
731	POSITIVE 1	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	1433T_MOUSE	27,779.40	100.00%	3	4	5	0.09%	YLAEVACGDDRK	R	Q	99.70%	57.9	1,783.77	1,291.70	5887170	128	139
732	POSITIVE 1	Peptidyl-prolyl cis-trans isomerase FKBP8 OS=Mus musculus GN=Fkbp8 PE=1 SV=2	FKBP8_MOUSE	43,529.60	99.60%	1	1	2	0.04%	VDMTCEEEEELLQLK	K	V	99.70%	91.9	2,252.97	3,093.23	536783	247	261
733	POSITIVE 1	Mediator of DNA damage checkpoint protein 1 OS=Mus musculus GN=Mdc1 PE=1 SV=1	MDC1_MOUSE	184,667.00	99.60%	1	1	1	0.02%	AGCFLPPDDYLVTDPEQEK	K	N	99.70%	51.8	2,581.12	3,085.58	342291	1577	1595
734	POSITIVE 1	Enoyl-CoA hydratase, mitochondrial OS=Mus musculus GN=Echs1 PE=1 SV=1	ECHM_MOUSE	31,475.30	99.60%	1	2	2	0.04%	TFQDCYSSK	R	F	99.70%	49.5	1,522.59	1,370.94	1323960	107	115
735	POSITIVE 1	BRO1 domain-containing protein BROX OS=Mus musculus GN=Brox PE=1 SV=1	BROX_MOUSE	46,203.60	100.00%	2	4	5	0.09%	LYAEAEALCK	K	E	99.70%	62.7	1,554.69	1,850.37	2709390	280	289
736	POSITIVE 1	BRO1 domain-containing protein BROX OS=Mus musculus GN=Brox PE=1 SV=1	BROX_MOUSE	46,203.60	100.00%	2	4	5	0.09%	LYAEAEALCKEYGETK	K	G	99.70%	62.4	2,262.01	2,208.73	1163820	280	295
737	POSITIVE 1	Probable ATP-dependent RNA helicase DDX5 OS=Mus musculus GN=Ddx5 PE=1 SV=2	DDX5_MOUSE	69,291.90	99.60%	1	2	5	0.09%	LIDFLECGK	R	T	99.70%	57.9	1,481.68	2,731.84	2352530	228	236
738	POSITIVE 1	39S ribosomal protein L15, mitochondrial OS=Mus musculus GN=Mrpl15 PE=1 SV=1	RM15_MOUSE	33,543.70	99.60%	1	2	5	0.09%	GCGTSLDLLR	R	S	99.70%	86	1,478.67	2,381.66	5977540	7	16
739	POSITIVE 1	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	4	4	6	0.11%	AQPLEDLTCFQELFISPVPTNIIK	K	K	99.70%	57.6	3,160.57	4,440.33	64,295.20	1085	1108
740	POSITIVE 1	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	4	4	6	0.11%	CKESGELSEGSEK	R	T	99.70%	76	1,826.75	678.084	169572	868	880
741	POSITIVE 1	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	4	4	6	0.11%	LATAAEQTCSGLPGLSSVDISNFGDSINK	K	S	99.70%	77.4	3,339.55	3,439.28	130261	427	455
742	POSITIVE 1	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	4	4	6	0.11%	SPGTPAPVQEENDCTAFMETPK	K	Q	99.70%	73.6	2,793.18	2,303.66	335320	2103	2124
743	POSITIVE 1	Peroxiredoxin-5, mitochondrial OS=Mus musculus GN=Prdx5 PE=1 SV=2	PRDX5_MOUSE	21,897.60	100.00%	3	8	17	0.32%	ALNVEPDGTGLTCSLAPNILSQL	K	-	99.70%	87.4	2,770.34	4,340.00	1.08E+07	188	210
744	POSITIVE 1	Peroxiredoxin-5, mitochondrial OS=Mus musculus GN=Prdx5 PE=1 SV=2	PRDX5_MOUSE	21,897.60	100.00%	3	8	17	0.32%	GVLFGVPGAFTPGCSK	K	T	99.70%	64.8	1,980.93	3,205.60	6955800	83	98
745	POSITIVE 1	Peroxiredoxin-5, mitochondrial OS=Mus musculus GN=Prdx5 PE=1 SV=2	PRDX5_MOUSE	21,897.60	100.00%	3	8	17	0.32%	KGVLFGVPGAFTPGCSK	K	T	99.70%	81.8	2,109.03	2,673.03	1.28E+07	82	98
746	POSITIVE 1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	5	10	16	0.30%	GANDFMCDEMER	R	S	99.70%	66.6	1,861.66	2,138.80	3879990	379	390
747	POSITIVE 1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	5	10	16	0.30%	ICDDELILIK	R	N	99.70%	83	1,618.78	2,927.84	903678	356	365
748	POSITIVE 1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	5	10	16	0.30%	SLHDALCVVK	R	R	99.70%	62.9	1,528.72	1,811.62	5354540	391	400
749	POSITIVE 1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	5	10	16	0.30%	SLHDALCVVKR	R	V	99.70%	50.2	1,684.83	1,551.04	2956660	391	401
750	POSITIVE 1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	5	10	16	0.30%	YINENLIINTDELGRDCLINAAK	R	T	99.70%	45.8	3,049.47	3,103.37	737062	131	153
751	POSITIVE 1	Caspase-3 OS=Mus musculus GN=Casp3 PE=1 SV=1	CASP3_MOUSE	31,595.40	98.70%	1	1	1	0.02%	IFIIQACR	K	G	99.00%	57	1,407.69	2,413.24	242216	140	147
752	POSITIVE 1	E3 ubiquitin-protein ligase HUWE1 OS=Mus musculus GN=Huwe1 PE=1 SV=5	HUWE1_MOUSE	482,635.70	100.00%	2	2	3	0.06%	HIIEDPCTLR	R	H	99.70%	42.3	1,640.75	1,613.20	1766140	1826	1835
753	POSITIVE 1	E3 ubiquitin-protein ligase HUWE1 OS=Mus musculus GN=Huwe1 PE=1 SV=5	HUWE1_MOUSE	482,635.70	100.00%	2	2	3	0.06%	NPDIFTEVANCCIR	R	I	99.70%	36.5	2,163.93	3,549.00	198548	1881	1894
754	POSITIVE 1	Mitochondrial import receptor subunit TOM34 OS=Mus musculus GN=Tomm34 PE=1 SV=1	TOM34_MOUSE	34,279.20	99.60%	1	1	1	0.02%	YSESLLCSSLESATYSNR	K	A	99.70%	99.4	2,454.05	2,808.58	707677	216	233
755	POSITIVE 1	Mitochondrial intermediate peptidase OS=Mus musculus GN=Mipep PE=1 SV=1	MIPEP_MOUSE	80,854.40	100.00%	4	4	4	0.08%	ANKPQQDCHFTIR	R	G	99.70%	45.3	2,001.90	1,099.87	332445	439	451
756	POSITIVE 1	Mitochondrial intermediate peptidase OS=Mus musculus GN=Mipep PE=1 SV=1	MIPEP_MOUSE	80,854.40	100.00%	4	4	4	0.08%	EAAQEACR	R	S	98.90%	30	1,321.53	384.474	79,529.40	134	141
757	POSITIVE 1	Mitochondrial intermediate peptidase OS=Mus musculus GN=Mipep PE=1 SV=1	MIPEP_MOUSE	80,854.40	100.00%	4	4	4	0.08%	GEVWCNDIR	K	K	99.70%	47.8	1,535.64	1,970.64	561909	408	416
758	POSITIVE 1	Mitochondrial intermediate peptidase OS=Mus musculus GN=Mipep PE=1 SV=1	MIPEP_MOUSE	80,854.40	100.00%	4	4	4	0.08%	GEVWCNDIRK	K	L	99.70%	45.4	1,663.73	1,529.38	1121380	408	417
759	POSITIVE 1	Malate dehydrogenase, cytoplasmic OS=Mus musculus GN=Mdh1 PE=1 SV=3	MDHC_MOUSE	36,512.10	100.00%	1	2	2	0.04%	VIVVGNPANTNCLTASK	K	S	99.70%	63.3	2,145.04	2,179.22	1944910	126	142
760	POSITIVE 1	Protein mago nashi homolog 2 OS=Mus musculus GN=Magohb PE=2 SV=1	MGN2_MOUSE	17,164.40	99.60%	1	1	1	0.02%	CLVFSLIGLHFK	K	I	99.70%	101	1,820.92	3,595.15	127268	131	142
761	POSITIVE 1	Myosin light chain kinase 3 OS=Mus musculus GN=Mylk3 PE=1 SV=1	MYLK3_MOUSE	86,372.30	99.60%	1	1	1	0.02%	SGVSEEDPEGLAPQGLPALGGACLATMDK	M	K	99.70%	65.8	3,299.49	3,868.64	225253	2	30
762	POSITIVE 1	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	3	4	5	0.09%	EGVVECSFVQSK	K	E	99.70%	67.7	1,755.77	1,941.04	2960080	270	281
763	POSITIVE 1	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	3	4	5	0.09%	ETECTYFSTPLLLGK	K	K	99.70%	51.1	2,145.98	3,275.70	812481	282	296
764	POSITIVE 1	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	3	4	5	0.09%	TIIPLISQCTPK	K	V	99.70%	63.3	1,757.89	2,740.37	235047	204	215
765	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	AALQENECLLASSTFAQAEVK	R	N	99.70%	92.9	2,667.24	2,952.44	9157340	492	512
766	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	GICNLLNTYHVPELIK	K	D	99.70%	79.4	2,271.13	3,328.83	728690	624	639
767	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	NALQENECLLASSTFAQAEVK	R	N	99.70%	55.3	2,710.24	3,629.68	344658	0	0
768	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	SCGSLLPELSLAER	R	T	99.70%	56.5	1,918.90	3,174.62	51,759.10	128	141
769	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	VFESTCSSGSPGSNQALLLLR	R	S	99.70%	111	2,610.23	3,015.80	2365500	107	127
770	POSITIVE 1	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	6	10	16	0.30%	VGVDPDQETYINYVFPCFDSAQSVR	K	A	99.70%	47.2	3,293.45	3,749.29	61,209.40	467	491
771	POSITIVE 1	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	1	4	4	0.08%	GVILTSECPGIFSAGLDLLEMYGR	R	N	99.70%	113	2,985.42	4,442.08	1041550	80	103
772	POSITIVE 1	60 kDa heat shock protein, mitochondrial OS=Mus musculus GN=Hspd1 PE=1 SV=1	CH60_MOUSE	60,956.80	99.60%	1	1	2	0.04%	AAVEEGIVLGGGCALLR	R	C	99.70%	82.7	2,072.03	3,027.66	956972	430	446
773	POSITIVE 1	Myosin light chain 4 OS=Mus musculus GN=Myl4 PE=1 SV=3	MYL4_MOUSE	21,159.50	100.00%	2	3	5	0.09%	ITYGQCGDVLR	K	A	99.70%	48.4	1,668.75	1,878.51	1239130	69	79
774	POSITIVE 1	Myosin light chain 4 OS=Mus musculus GN=Myl4 PE=1 SV=3	MYL4_MOUSE	21,159.50	100.00%	2	3	5	0.09%	MSEAEVEQLLSGQEDANGCINYEAFVK	K	H	99.70%	83.1	3,418.49	3,731.62	199594	162	188
775	POSITIVE 1	Non-POU domain-containing octamer-binding protein OS=Mus musculus GN=Nono PE=1 SV=3	NONO_MOUSE	54,540.90	99.60%	1	3	5	0.09%	FACHSASLTVR	R	N	99.70%	62.4	1,635.74	1,414.31	6620520	145	155
776	POSITIVE 1	Protein FAM98B OS=Mus musculus GN=Fam98b PE=1 SV=1	FA98B_MOUSE	45,350.80	100.00%	2	2	3	0.06%	INDALSCEYECR	R	R	99.70%	42.3	1,984.78	2,228.81	571748	210	221
777	POSITIVE 1	Protein FAM98B OS=Mus musculus GN=Fam98b PE=1 SV=1	FA98B_MOUSE	45,350.80	100.00%	2	2	3	0.06%	NSEICQEVQAVCDALGVPK	K	S	99.70%	60.2	2,572.15	4,193.04	141369	143	161
778	POSITIVE 1	Porphobilinogen deaminase OS=Mus musculus GN=Hmbs PE=1 SV=2	HEM3_MOUSE	39,344.80	100.00%	2	2	2	0.04%	HLEGGCSVPVAVHTVMK	R	D	99.70%	38.2	2,208.04	1,836.73	848607	256	272
779	POSITIVE 1	Porphobilinogen deaminase OS=Mus musculus GN=Hmbs PE=1 SV=2	HEM3_MOUSE	39,344.80	100.00%	2	2	2	0.04%	RENPCDAVVFHPK	K	F	99.70%	44	1,955.89	1,406.33	413122	116	128
780	POSITIVE 1	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	MAP2_MOUSE	52,922.50	100.00%	2	2	2	0.04%	GQECEYPPTQDGR	K	T	99.70%	31.3	1,923.76	1,233.46	304615	132	144
781	POSITIVE 1	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	MAP2_MOUSE	52,922.50	100.00%	2	2	2	0.04%	VQTDPPSVPICDLYPNGVFPK	K	G	99.70%	56.4	2,730.29	3,397.16	248845	111	131
782	POSITIVE 1	DNA topoisomerase 2-alpha OS=Mus musculus GN=Top2a PE=1 SV=2	TOP2A_MOUSE	172,796.30	99.60%	1	1	1	0.02%	KAQMCADVLPSPR	K	G	99.70%	40.2	1,859.86	1,699.86	752225	1201	1213
783	POSITIVE 1	Phosphomevalonate kinase OS=Mus musculus GN=Pmvk PE=1 SV=3	PMVK_MOUSE	21,916.00	99.60%	1	2	2	0.04%	DMICWGEQK	R	R	99.70%	53.5	1,553.62	2,238.76	885220	75	83
784	POSITIVE 1	Multidrug resistance protein 1A OS=Mus musculus GN=Abcb1a PE=1 SV=3	MDR1A_MOUSE	140,998.50	100.00%	2	3	4	0.08%	KGQTLALVGSSGCGK	K	S	99.70%	50.5	1,849.89	1,372.67	657415	1060	1074
785	POSITIVE 1	Multidrug resistance protein 1A OS=Mus musculus GN=Abcb1a PE=1 SV=3	MDR1A_MOUSE	140,998.50	100.00%	2	3	4	0.08%	SGQTVALVGNSGCGK	K	S	99.70%	66.3	1,821.82	1,476.95	897826	418	432
786	POSITIVE 1	ATP synthase subunit gamma, mitochondrial OS=Mus musculus GN=Atp5c1 PE=1 SV=1	ATPG_MOUSE	32,887.40	99.60%	1	3	4	0.08%	GLCGAIHSSVAK	R	Q	99.70%	68.4	1,586.74	1,405.58	4910890	101	112
787	POSITIVE 1	Dystonin OS=Mus musculus GN=Dst PE=1 SV=2	DYST_MOUSE	834,226.70	98.70%	1	1	1	0.02%	ACMQTFLK	K	K	99.00%	55.4	1,385.60	2,118.26	184236	5143	5150
788	POSITIVE 1	Lipoyltransferase 1, mitochondrial OS=Mus musculus GN=Lipt1 PE=1 SV=1	LIPT_MOUSE	42,146.60	100.00%	1	1	3	0.06%	FCPVETTLLTNVLLR	K	T	99.70%	64.4	2,163.09	4,053.68	297318	336	350
789	POSITIVE 1	Aspartyl/asparaginyl beta-hydroxylase OS=Mus musculus GN=Asph PE=1 SV=1	ASPH_MOUSE	83,042.80	98.70%	1	1	1	0.02%	FSETTGCR	K	R	99.00%	34.8	1,344.53	919.74	161773	637	644
790	POSITIVE 1	39S ribosomal protein L53, mitochondrial OS=Mus musculus GN=Mrpl53 PE=1 SV=1	RM53_MOUSE	12,737.50	99.60%	1	1	2	0.04%	ATNLNCSVIADVR	R	H	99.70%	60.5	1,819.84	2,200.59	832566	44	56
791	POSITIVE 1	Putative transferase CAF17 homolog, mitochondrial OS=Mus musculus GN=Iba57 PE=1 SV=1	CAF17_MOUSE	38,399.40	99.60%	1	2	4	0.08%	GCYIGQELTAR	K	T	99.70%	92.9	1,654.73	2,081.74	2332070	259	269
792	POSITIVE 1	Protein scribble homolog OS=Mus musculus GN=Scrib PE=1 SV=2	SCRIB_MOUSE	174,061.50	99.60%	1	1	1	0.02%	GHAGNPCDPTDEGIFISK	K	V	99.70%	54.2	2,301.99	2,000.09	193768	1107	1124
793	POSITIVE 1	Receptor-type tyrosine-protein phosphatase kappa OS=Mus musculus GN=Ptprk PE=1 SV=1	PTPRK_MOUSE	164,186.40	99.60%	1	2	2	0.04%	LSNPPSAGPIVVHCSAGAGR	K	T	99.70%	51.7	2,334.11	1,741.82	1610230	1087	1106
794	POSITIVE 1	Dedicator of cytokinesis protein 6 OS=Mus musculus GN=Dock6 PE=1 SV=4	DOCK6_MOUSE	233,270.90	99.70%	1	1	1	0.02%	AFLFCTPFTPDGR	R	A	99.70%	63.5	1,915.85	3,454.89	358832	1882	1894
795	POSITIVE 1	Alpha-actinin-4 OS=Mus musculus GN=Actn4 PE=1 SV=1	ACTN4_MOUSE	104,980.30	99.60%	1	1	1	0.02%	AETAANRICK	K	V	99.70%	44.9	1,520.69	660.642	1155110	275	284
796	POSITIVE 1	Alpha-actinin-4 OS=Mus musculus GN=Actn4 PE=1 SV=1	ACTN4_MOUSE	104,980.30	99.60%	1	1	1	0.02%	CQLEINFNTLQTK	K	L	99.70%	58.2	1,995.93	2,779.15	801090	352	364
797	POSITIVE 1	Alpha-actinin-4 OS=Mus musculus GN=Actn4 PE=1 SV=1	ACTN4_MOUSE	104,980.30	99.60%	1	1	1	0.02%	ICDQWDNLGSLTHSR	K	R	99.70%	41.5	2,188.95	2,440.88	367969	499	513
798	POSITIVE 1	Eukaryotic peptide chain release factor subunit 1 OS=Mus musculus GN=Etf1 PE=1 SV=4	ERF1_MOUSE	49,032.60	99.60%	1	3	4	0.08%	YVLHCQGTEEEK	R	I	99.70%	62.9	1,879.80	1,058.09	1956120	331	342
799	POSITIVE 1	Myb-binding protein 1A OS=Mus musculus GN=Mybbp1a PE=1 SV=2	MBB1A_MOUSE	152,041.00	99.60%	1	1	1	0.02%	YCHEVGPCAEALHAQVER	R	L	99.70%	48.7	2,581.10	1,851.70	388063	889	906
800	POSITIVE 1	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	SGT1_MOUSE	38,160.00	100.00%	3	3	4	0.08%	ALEQNPDDAQYYCQR	K	A	99.70%	70.4	2,257.92	1,689.08	455798	37	51
801	POSITIVE 1	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	SGT1_MOUSE	38,160.00	100.00%	3	3	4	0.08%	SLELNPNNCTALLR	K	K	99.70%	68	2,001.95	2,579.12	1486290	71	84
802	POSITIVE 1	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	SGT1_MOUSE	38,160.00	100.00%	3	3	4	0.08%	SLELNPNNCTALLRK	K	G	99.70%	45.8	2,130.04	2,155.64	982589	71	85
803	POSITIVE 1	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	HDGF_MOUSE	26,268.70	100.00%	4	5	5	0.09%	CGDLVFAK	K	M	99.00%	52.3	1,296.57	1,943.69	802032	12	19
804	POSITIVE 1	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	HDGF_MOUSE	26,268.70	100.00%	4	5	5	0.09%	KSCAAEPEVEPEAHEGDGDK	K	K	99.70%	54.9	2,542.05	1,001.17	239558	106	125
805	POSITIVE 1	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	HDGF_MOUSE	26,268.70	100.00%	4	5	5	0.09%	SCAAEPEVEPEAHEGDGDK	K	K	99.70%	87.6	2,413.95	1,267.20	478729	107	125
806	POSITIVE 1	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	HDGF_MOUSE	26,268.70	100.00%	4	5	5	0.09%	SCAAEPEVEPEAHEGDGDKK	K	G	99.70%	44.8	2,542.05	1,050.05	170337	107	126
807	POSITIVE 1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	2	2	3	0.06%	FQNLSCSLDER	R	S	99.70%	33.9	1,755.74	2,024.32	554115	4055	4065
808	POSITIVE 1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	2	2	3	0.06%	LQCQLQENEEFQK	R	N	99.70%	51.4	2,080.91	1,824.92	550962	4793	4805
809	POSITIVE 1	ATP-dependent RNA helicase DDX19A OS=Mus musculus GN=Ddx19a PE=1 SV=2	DD19A_MOUSE	53,933.70	99.60%	1	2	3	0.06%	VLVTTNVCAR	K	G	99.70%	46.5	1,519.74	1,668.70	3859630	385	394
810	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein F OS=Mus musculus GN=Hnrnpf PE=1 SV=3	HNRPF_MOUSE	45,730.00	100.00%	1	1	1	0.02%	YGDSEFTVQSTTGHCVHMR	R	G	99.00%	30.7	2,599.08	1,709.19	361921	276	294
811	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 14 OS=Mus musculus GN=Psmd14 PE=1 SV=2	PSDE_MOUSE	34,576.60	100.00%	2	3	3	0.06%	SWMEGLTLQDYSEHCK	K	H	99.70%	58.7	2,370.98	2,709.58	2572370	224	239
812	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 14 OS=Mus musculus GN=Psmd14 PE=1 SV=2	PSDE_MOUSE	34,576.60	100.00%	2	3	3	0.06%	SWMEGLTLQDYSEHCKHNESVVK	K	E	99.70%	52.2	3,164.39	2,229.02	1598740	224	246
813	POSITIVE 1	Anaphase-promoting complex subunit 5 OS=Mus musculus GN=Anapc5 PE=1 SV=1	APC5_MOUSE	83,099.90	99.60%	1	1	1	0.02%	LIEESCPQLANSVQIR	K	I	99.70%	65.6	2,244.07	2,387.56	470929	69	84
814	POSITIVE 1	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	PUR2_MOUSE	107,503.60	100.00%	3	5	5	0.09%	QVLVAPGNAGTACAGK	K	I	99.70%	67.2	1,900.90	1,639.25	864130	29	44
815	POSITIVE 1	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	PUR2_MOUSE	107,503.60	100.00%	3	5	5	0.09%	SSLQYSSPAPGGCGDQTLGDLLLTPTR	R	I	99.70%	105	3,178.48	3,681.09	846645	634	660
816	POSITIVE 1	ADP-ribosylation factor 4 OS=Mus musculus GN=Arf4 PE=1 SV=2	ARF4_MOUSE	20,397.50	99.60%	1	2	3	0.06%	NICFTVWDVGGQDK	K	I	99.70%	83.4	2,025.88	3,182.06	1185610	60	73
817	POSITIVE 1	Importin subunit alpha-1 OS=Mus musculus GN=Kpna2 PE=1 SV=2	IMA1_MOUSE	57,929.20	99.60%	1	1	2	0.04%	TDCSPIQFESAWALTNIASGTSEQTK	K	A	99.70%	91	3,229.44	3,774.32	272777	131	156
818	POSITIVE 1	Cysteine and glycine-rich protein 1 OS=Mus musculus GN=Csrp1 PE=1 SV=3	CSRP1_MOUSE	20,583.10	100.00%	2	2	2	0.04%	CSQAVYAAEK	R	V	99.70%	42.4	1,513.64	1,074.98	96,072.50	122	131
819	POSITIVE 1	Cysteine and glycine-rich protein 1 OS=Mus musculus GN=Csrp1 PE=1 SV=3	CSRP1_MOUSE	20,583.10	100.00%	2	2	2	0.04%	SCFLCMVCK	K	K	99.70%	40.4	1,727.67	3,449.57	110034	33	41
820	POSITIVE 1	Serine-threonine kinase receptor-associated protein OS=Mus musculus GN=Strap PE=1 SV=2	STRAP_MOUSE	38,443.30	99.60%	1	3	4	0.08%	CVLPEEDSGELAKPK	K	I	99.70%	70.5	2,058.95	1,726.70	3211950	305	319
821	POSITIVE 1	Protein arginine methyltransferase NDUFAF7, mitochondrial OS=Mus musculus GN=Ndufaf7 PE=1 SV=4	NDUF7_MOUSE	48,384.90	100.00%	2	3	4	0.08%	FVLAPCATPAEAFIQR	R	D	99.70%	76.9	2,178.05	3,267.31	2739790	245	260
822	POSITIVE 1	Protein arginine methyltransferase NDUFAF7, mitochondrial OS=Mus musculus GN=Ndufaf7 PE=1 SV=4	NDUF7_MOUSE	48,384.90	100.00%	2	3	4	0.08%	FVLAPCATPAEAFIQRDER	R	R	99.70%	44	2,578.22	2,947.37	448684	245	263
823	POSITIVE 1	Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial OS=Mus musculus GN=Sdha PE=1 SV=1	SDHA_MOUSE	72,585.60	100.00%	2	3	6	0.11%	ACALSIAESCRPGDKVPSIK	R	A	99.70%	43.3	2,614.24	2,301.46	331717	466	485
824	POSITIVE 1	Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial OS=Mus musculus GN=Sdha PE=1 SV=1	SDHA_MOUSE	72,585.60	100.00%	2	3	6	0.11%	TLNEADCATVPPAIR	K	S	99.70%	71.3	2,014.93	2,162.68	3205580	648	662
825	POSITIVE 1	Omega-amidase NIT2 OS=Mus musculus GN=Nit2 PE=1 SV=1	NIT2_MOUSE	30,502.60	99.60%	1	1	4	0.08%	VGLGICYDMR	K	F	99.70%	69.2	1,570.68	2,525.12	2212670	148	157
826	POSITIVE 1	Importin-7 OS=Mus musculus GN=Ipo7 PE=1 SV=2	IPO7_MOUSE	119,489.30	100.00%	1	1	2	0.04%	GIDQCIPLFVEAALER	R	L	99.70%	77.7	2,218.06	4,250.10	172219	753	768
827	POSITIVE 1	Serine/threonine-protein phosphatase 4 regulatory subunit 2 OS=Mus musculus GN=Ppp4r2 PE=1 SV=1	PP4R2_MOUSE	46,478.00	100.00%	2	3	6	0.11%	KEVCPVLDQFLCHVAK	K	T	99.70%	67.8	2,398.14	2,868.26	2945660	19	34
828	POSITIVE 1	Serine/threonine-protein phosphatase 4 regulatory subunit 2 OS=Mus musculus GN=Ppp4r2 PE=1 SV=1	PP4R2_MOUSE	46,478.00	100.00%	2	3	6	0.11%	SGSDCLETQESGGPPSSK	R	T	99.70%	88.5	2,209.90	1,300.15	183414	373	390
829	POSITIVE 1	Delta-aminolevulinic acid dehydratase OS=Mus musculus GN=Alad PE=1 SV=1	HEM2_MOUSE	36,023.70	99.60%	1	2	12	0.23%	CYQLPPGAR	R	G	99.70%	49.4	1,448.64	1,678.53	8665240	223	231
830	POSITIVE 1	Elongation factor Ts, mitochondrial OS=Mus musculus GN=Tsfm PE=1 SV=1	EFTS_MOUSE	35,334.40	99.60%	1	1	1	0.02%	KALETCGGDLK	K	Q	99.70%	36.6	1,578.73	991.638	1603770	65	75
831	POSITIVE 1	Cullin-associated NEDD8-dissociated protein 1 OS=Mus musculus GN=Cand1 PE=1 SV=2	CAND1_MOUSE	136,337.10	100.00%	2	2	4	0.08%	HCECAEEGTR	K	N	99.70%	56.2	1,703.62	784.14	665332	939	948
832	POSITIVE 1	Cullin-associated NEDD8-dissociated protein 1 OS=Mus musculus GN=Cand1 PE=1 SV=2	CAND1_MOUSE	136,337.10	100.00%	2	2	4	0.08%	NCIGDFLK	K	T	99.00%	40.1	1,353.59	2,492.34	405907	1006	1013
833	POSITIVE 1	OTU domain-containing protein 6B OS=Mus musculus GN=Otud6b PE=1 SV=1	OTU6B_MOUSE	33,758.70	99.60%	1	1	1	0.02%	LVNSATENCS	R	-	99.70%	51.3	1,481.60	1,146.82	128301	285	294
834	POSITIVE 1	Vimentin OS=Mus musculus GN=Vim PE=1 SV=3	VIME_MOUSE	53,688.80	100.00%	2	7	12	0.23%	QVQSLTCEVDALK	R	G	99.70%	71.7	1,877.87	2,459.29	7535090	322	334
835	POSITIVE 1	Vimentin OS=Mus musculus GN=Vim PE=1 SV=3	VIME_MOUSE	53,688.80	100.00%	2	7	12	0.23%	QVQSLTCEVDALKGTNESLER	R	Q	99.70%	74.9	2,764.29	2,580.97	3837820	322	342
836	POSITIVE 1	Chloride intracellular channel protein 4 OS=Mus musculus GN=Clic4 PE=1 SV=3	CLIC4_MOUSE	28,730.60	100.00%	2	3	6	0.11%	AGSDGESIGNCPFSQR	K	L	99.70%	82.9	2,068.84	1,775.24	3681500	25	40
837	POSITIVE 1	Chloride intracellular channel protein 4 OS=Mus musculus GN=Clic4 PE=1 SV=3	CLIC4_MOUSE	28,730.60	100.00%	2	3	6	0.11%	IEEFLEEVLCPPK	K	Y	99.70%	62.1	1,989.93	3,578.35	363811	91	103
838	POSITIVE 1	Hypoxanthine-guanine phosphoribosyltransferase OS=Mus musculus GN=Hprt1 PE=1 SV=3	HPRT_MOUSE	24,571.30	100.00%	2	4	6	0.11%	SPSVVISDDEPGYDLDLFCIPNHYAEDLEK	R	V	99.70%	71	3,824.69	3,814.68	325285	5	34
839	POSITIVE 1	Hypoxanthine-guanine phosphoribosyltransferase OS=Mus musculus GN=Hprt1 PE=1 SV=3	HPRT_MOUSE	24,571.30	100.00%	2	4	6	0.11%	SYCNDQSTGDIK	K	V	99.70%	71.3	1,774.70	1,117.24	2959000	104	115
840	POSITIVE 1	RNA-binding protein Raly OS=Mus musculus GN=Raly PE=1 SV=3	RALY_MOUSE	33,188.20	99.60%	1	1	1	0.02%	GDSSSGGGGGSSGGGGSSNVGGGSSGGSGSCSSSSR	K	L	99.70%	39.6	3,268.23	581.718	8,469.39	225	260
841	POSITIVE 1	Intersectin-2 OS=Mus musculus GN=Itsn2 PE=1 SV=2	ITSN2_MOUSE	188,912.70	99.60%	1	1	2	0.04%	AQALCSWTAK	K	K	99.70%	58.5	1,522.68	1,781.86	949635	857	866
842	POSITIVE 1	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	BAZ1B_MOUSE	170,655.20	99.70%	1	1	1	0.02%	TEQCLLALLQK	K	H	99.70%	41.3	1,703.85	3,102.17	141932	1428	1438
843	POSITIVE 1	Nocturnin OS=Mus musculus GN=Noct PE=1 SV=3	NOCT_MOUSE	48,302.00	99.60%	1	1	2	0.04%	TDCSSSHSPIR	R	V	99.70%	49.5	1,633.67	760.389	562109	132	142
844	POSITIVE 1	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	MYPC3_MOUSE	140,631.80	100.00%	5	6	8	0.15%	KLLCETEGR	K	V	99.70%	49.5	1,492.69	989.715	1394100	712	720
845	POSITIVE 1	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	MYPC3_MOUSE	140,631.80	100.00%	5	6	8	0.15%	KPCPYDGGVYVCR	R	A	99.70%	62.2	2,025.86	2,029.29	687016	1238	1250
846	POSITIVE 1	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	MYPC3_MOUSE	140,631.80	100.00%	5	6	8	0.15%	LLCETEGR	K	V	99.00%	51.1	1,364.59	1,239.51	241817	713	720
847	POSITIVE 1	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	MYPC3_MOUSE	140,631.80	100.00%	5	6	8	0.15%	LTIDDVTPADEADYSFVPEGFACNLSAK	K	L	99.70%	81.9	3,432.53	3,746.23	1033730	597	624
848	POSITIVE 1	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	MYPC3_MOUSE	140,631.80	100.00%	5	6	8	0.15%	LTIDDVTPADEADYSFVPEGFACNLSAR	K	L	99.70%	34.2	3,460.53	3,840.61	88,118.70	0	0
849	POSITIVE 1	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	AMPL_MOUSE	56,142.70	100.00%	5	11	18	0.34%	AAVAAGCR	R	Q	99.00%	40.8	1,162.51	578.052	329745	123	130
850	POSITIVE 1	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	AMPL_MOUSE	56,142.70	100.00%	5	11	18	0.34%	LILADALCYAHTFNPK	R	V	99.70%	99.7	2,234.07	3,317.72	2718670	369	384
851	POSITIVE 1	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	AMPL_MOUSE	56,142.70	100.00%	5	11	18	0.34%	LNLPINIIGLAPLCENMPSGK	K	A	99.70%	71.9	2,651.34	4,133.45	129841	322	342
852	POSITIVE 1	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	AMPL_MOUSE	56,142.70	100.00%	5	11	18	0.34%	QVIDCQLADVNNLGK	R	Y	99.70%	76.5	2,073.97	2,481.58	3733230	441	455
853	POSITIVE 1	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	AMPL_MOUSE	56,142.70	100.00%	5	11	18	0.34%	SAGACTAAAFLR	R	E	99.70%	57.8	1,582.71	2,261.24	1002960	458	469
854	POSITIVE 1	Protein flightless-1 homolog OS=Mus musculus GN=Flii PE=1 SV=1	FLII_MOUSE	144,807.30	99.60%	1	1	2	0.04%	TGLCYLPEELAALQK	R	L	99.70%	87.5	2,093.00	3,460.95	412312	43	57
855	POSITIVE 1	Macrophage erythroblast attacher OS=Mus musculus GN=Maea PE=1 SV=1	MAEA_MOUSE	45,336.60	99.60%	1	1	1	0.02%	TLSSCPAVDSVVSLLDGVVEK	K	L	99.70%	76.6	2,562.24	4,266.79	156826	57	77
856	POSITIVE 1	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial OS=Mus musculus GN=Sdhc PE=1 SV=1	C560_MOUSE	18,382.70	99.60%	1	1	2	0.04%	SLCLGPTLIYSAK	K	F	99.70%	79.5	1,809.89	3,059.00	766457	105	117
857	POSITIVE 1	BolA-like protein 3 OS=Mus musculus GN=Bola3 PE=1 SV=1	BOLA3_MOUSE	12,228.20	100.00%	2	4	8	0.15%	ATAIQVTDISGGCGAMYEIK	R	I	99.70%	88.1	2,472.12	2,800.69	4263560	50	69
858	POSITIVE 1	BolA-like protein 3 OS=Mus musculus GN=Bola3 PE=1 SV=1	BOLA3_MOUSE	12,228.20	100.00%	2	4	8	0.15%	IFTSVPKC	R	-	99.00%	38.8	1,338.62	1,755.96	2701340	103	110
859	POSITIVE 1	Heat shock protein HSP 90-alpha OS=Mus musculus GN=Hsp90aa1 PE=1 SV=4	HS90A_MOUSE	84,791.20	100.00%	3	3	4	0.08%	LVTSPCCIVTSTYGWTANMER	R	I	99.70%	92.2	2,901.27	3,827.60	610494	593	613
860	POSITIVE 1	Heat shock protein HSP 90-alpha OS=Mus musculus GN=Hsp90aa1 PE=1 SV=4	HS90A_MOUSE	84,791.20	100.00%	3	3	4	0.08%	RVFIMDNCEELIPEYLNFIR	R	G	99.70%	46.8	2,958.39	3,932.78	73,154.50	368	387
861	POSITIVE 1	Heat shock protein HSP 90-alpha OS=Mus musculus GN=Hsp90aa1 PE=1 SV=4	HS90A_MOUSE	84,791.20	100.00%	3	3	4	0.08%	VFIMDNCEELIPEYLNFIR	R	G	99.70%	67.2	2,802.29	4,318.04	287795	369	387
862	POSITIVE 1	Cytosolic acyl coenzyme A thioester hydrolase OS=Mus musculus GN=Acot7 PE=1 SV=2	BACH_MOUSE	42,536.00	100.00%	2	2	3	0.06%	KGCVITISGR	R	M	99.70%	39	1,477.73	1,423.45	756964	287	296
863	POSITIVE 1	Cytosolic acyl coenzyme A thioester hydrolase OS=Mus musculus GN=Acot7 PE=1 SV=2	BACH_MOUSE	42,536.00	100.00%	2	2	3	0.06%	LGHCVTMGR	K	I	99.70%	54.2	1,417.61	1,052.55	1702970	51	59
864	POSITIVE 1	A-kinase anchor protein 1, mitochondrial OS=Mus musculus GN=Akap1 PE=1 SV=4	AKAP1_MOUSE	92,194.40	99.90%	1	1	1	0.02%	TYVSCLSSPLSGPTK	K	D	99.70%	60.3	1,983.92	2,445.70	648749	388	402
865	POSITIVE 1	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	CAPZB_MOUSE	31,346.50	99.60%	1	3	8	0.15%	DETVSDCSPHIANIGR	K	L	99.70%	80.7	2,157.93	1,874.51	7677300	200	215
866	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	HNRPL_MOUSE	63,963.70	100.00%	3	8	14	0.27%	LCFSTAQHAS	K	-	99.70%	58.5	1,508.63	1,642.34	5962310	577	586
867	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	HNRPL_MOUSE	63,963.70	100.00%	3	8	14	0.27%	QPAIMPGQSYGLEDGSCSYK	K	D	99.70%	71.2	2,575.09	2,397.06	6438190	453	472
868	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	HNRPL_MOUSE	63,963.70	100.00%	3	8	14	0.27%	QPAIMPGQSYGLEDGSCSYKDFSESR	K	N	99.70%	33	3,296.39	2,560.08	292050	453	478
869	POSITIVE 1	N-alpha-acetyltransferase 25, NatB auxiliary subunit OS=Mus musculus GN=Naa25 PE=1 SV=1	NAA25_MOUSE	111,711.90	99.90%	1	1	1	0.02%	SQGCNDEYK	R	L	99.70%	30.2	1,487.55	575.7	122593	336	344
870	POSITIVE 1	Spectrin beta chain, non-erythrocytic 1 OS=Mus musculus GN=Sptbn1 PE=1 SV=2	SPTB2_MOUSE	274,227.90	99.60%	1	1	2	0.04%	CKEMAELTR	R	L	99.70%	46.4	1,524.66	1,143.13	729777	831	839
871	POSITIVE 1	Zinc finger RNA-binding protein OS=Mus musculus GN=Zfr PE=1 SV=2	ZFR_MOUSE	116,859.00	99.60%	1	1	1	0.02%	MIPICPVVSFTYVPSR	-	L	99.70%	46.1	2,295.10	4,423.57	43,212.90	1	16
872	POSITIVE 1	Induced myeloid leukemia cell differentiation protein Mcl-1 homolog OS=Mus musculus GN=Mcl1 PE=1 SV=3	MCL1_MOUSE	35,217.30	99.60%	1	1	2	0.04%	SPGLLAVPPEEMAASAAAAIVSPEEELDGCEPEAIGK	K	R	99.70%	69.5	4,092.91	4,241.81	147488	81	117
873	POSITIVE 1	Rho GTPase-activating protein 18 OS=Mus musculus GN=Arhgap18 PE=1 SV=1	RHG18_MOUSE	74,932.30	99.60%	1	1	1	0.02%	MTAGNVAMVMAPNLFMCHTLGLK	K	S	99.70%	46.9	2,894.33	3,684.17	119528	473	495
874	POSITIVE 1	Regulator of nonsense transcripts 1 OS=Mus musculus GN=Upf1 PE=1 SV=2	RENT1_MOUSE	123,968.20	100.00%	3	3	5	0.09%	DGPLGETVLECYNCGCR	K	N	99.70%	68.1	2,523.00	3,517.45	469887	168	184
875	POSITIVE 1	Regulator of nonsense transcripts 1 OS=Mus musculus GN=Upf1 PE=1 SV=2	RENT1_MOUSE	123,968.20	100.00%	3	3	5	0.09%	LMQGDEICLR	R	Y	99.70%	41.2	1,621.71	2,171.17	1637170	362	371
876	POSITIVE 1	Regulator of nonsense transcripts 1 OS=Mus musculus GN=Upf1 PE=1 SV=2	RENT1_MOUSE	123,968.20	100.00%	3	3	5	0.09%	QLILVGDHCQLGPVVMCK	K	K	99.70%	36.1	2,522.20	3,132.41	274554	662	679
877	POSITIVE 1	3'(2'),5'-bisphosphate nucleotidase 1 OS=Mus musculus GN=Bpnt1 PE=1 SV=2	BPNT1_MOUSE	33,196.50	99.60%	1	2	3	0.06%	CVIAEGDLGIVQK	R	T	99.70%	91.7	1,788.86	2,437.25	2868540	28	40
878	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 9 OS=Mus musculus GN=Ndufb9 PE=1 SV=3	NDUB9_MOUSE	21,984.40	100.00%	2	4	7	0.13%	AFCAPPAYLTHQQK	M	V	99.70%	57.8	2,060.93	2,525.15	3412650	2	15
879	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 9 OS=Mus musculus GN=Ndufb9 PE=1 SV=3	NDUB9_MOUSE	21,984.40	100.00%	2	4	7	0.13%	HLESWCIHR	R	D	99.60%	32.1	1,624.71	1,359.13	1739830	26	34
880	POSITIVE 1	Alpha-adducin OS=Mus musculus GN=Add1 PE=1 SV=2	ADDA_MOUSE	80,647.40	99.60%	1	1	1	0.02%	TAGPQSQVLCGVMMDR	K	S	99.70%	58.3	2,136.93	2,635.14	641587	516	531
881	POSITIVE 1	Protein PML OS=Mus musculus GN=Pml PE=1 SV=3	PML_MOUSE	98,242.60	99.60%	1	1	1	0.02%	DYQEIAGQLSCLEAVLQR	R	I	99.70%	60.4	2,480.15	4,228.32	83,178.90	312	329
882	POSITIVE 1	40S ribosomal protein S3 OS=Mus musculus GN=Rps3 PE=1 SV=1	RS3_MOUSE	26,674.50	99.60%	1	2	5	0.09%	GLCAIAQAESLR	R	Y	99.70%	94.9	1,675.79	2,417.12	9471650	95	106
883	POSITIVE 1	Nucleoprotein TPR OS=Mus musculus GN=Tpr PE=1 SV=1	TPR_MOUSE	273,988.40	100.00%	1	1	1	0.02%	FLAEQQSEIDCLKGR	K	H	99.70%	43.5	2,181.01	2,055.09	624114	102	116
884	POSITIVE 1	Cellular nucleic acid-binding protein OS=Mus musculus GN=Cnbp PE=1 SV=2	CNBP_MOUSE	19,591.20	99.90%	1	1	2	0.04%	CGESGHLAR	R	E	99.70%	58.5	1,373.57	466.557	440365	162	170
885	POSITIVE 1	UDP-N-acetylhexosamine pyrophosphorylase-like protein 1 OS=Mus musculus GN=Uap1l1 PE=1 SV=1	UAP1L_MOUSE	56,613.80	100.00%	1	1	2	0.04%	NFVAFEVCREEEFSPLK	K	N	99.70%	38	2,488.13	3,041.19	2105380	394	410
886	POSITIVE 1	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	STK39_MOUSE	60,320.50	100.00%	2	3	4	0.08%	LASGCDGSEIPDEVK	K	L	99.70%	72	1,963.84	1,848.28	1661210	532	546
887	POSITIVE 1	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	STK39_MOUSE	60,320.50	100.00%	2	3	4	0.08%	TFVGTPCWMAPEVMEQVR	K	G	99.70%	60.8	2,525.11	3,479.05	449198	243	260
888	POSITIVE 1	Probable ATP-dependent RNA helicase DDX6 OS=Mus musculus GN=Ddx6 PE=1 SV=1	DDX6_MOUSE	54,193.60	100.00%	2	2	2	0.04%	GNEFEDYCLK	K	R	99.70%	34.3	1,661.66	2,126.44	1113880	95	104
889	POSITIVE 1	Probable ATP-dependent RNA helicase DDX6 OS=Mus musculus GN=Ddx6 PE=1 SV=1	DDX6_MOUSE	54,193.60	100.00%	2	2	2	0.04%	TSDVTSTKGNEFEDYCLK	K	R	99.70%	40.9	2,481.05	1,934.44	223073	87	104
890	POSITIVE 1	2-aminoethanethiol dioxygenase OS=Mus musculus GN=Ado PE=1 SV=2	AEDO_MOUSE	28,373.00	100.00%	1	2	4	0.08%	EASGSACDLPR	K	E	99.70%	56.1	1,549.64	1,272.09	1344090	219	229
891	POSITIVE 1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	MACD1_MOUSE	35,295.40	100.00%	4	7	13	0.25%	AAGSLLTDECR	R	T	99.70%	63.3	1,579.68	1,665.28	992699	188	198
892	POSITIVE 1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	MACD1_MOUSE	35,295.40	100.00%	4	7	13	0.25%	ITCGYRLPAK	K	Y	99.70%	47.6	1,565.76	1,449.05	861231	210	219
893	POSITIVE 1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	MACD1_MOUSE	35,295.40	100.00%	4	7	13	0.25%	QREEHYFCK	K	D	99.70%	46.1	1,683.70	799.704	3262760	107	115
894	POSITIVE 1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	MACD1_MOUSE	35,295.40	100.00%	4	7	13	0.25%	TLQNCETGK	R	A	99.70%	49	1,437.61	782.241	3170940	199	207
895	POSITIVE 1	Proteasome activator complex subunit 1 OS=Mus musculus GN=Psme1 PE=1 SV=2	PSME1_MOUSE	28,673.50	99.60%	1	2	2	0.04%	VDVFREDLCSK	K	T	99.70%	41.8	1,754.78	1,903.15	2426770	14	24
896	POSITIVE 1	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	SAFB1_MOUSE	105,104.00	99.60%	1	1	1	0.02%	AIEDEGGNPDEIEVTSECNK	K	K	99.70%	61.5	2,593.07	1,947.38	367377	64	83
897	POSITIVE 1	Coronin-1C OS=Mus musculus GN=Coro1c PE=1 SV=2	COR1C_MOUSE	53,122.00	100.00%	4	5	8	0.15%	ETICSQDER	K	I	99.70%	30.3	1,524.61	888.363	726713	453	461
898	POSITIVE 1	Coronin-1C OS=Mus musculus GN=Coro1c PE=1 SV=2	COR1C_MOUSE	53,122.00	100.00%	4	5	8	0.15%	SELSCAPK	K	K	99.00%	43.4	1,278.55	1,035.33	668950	420	427
899	POSITIVE 1	Coronin-1C OS=Mus musculus GN=Coro1c PE=1 SV=2	COR1C_MOUSE	53,122.00	100.00%	4	5	8	0.15%	SELSCAPKKPTDTASVQNEAK	K	L	99.70%	70.6	2,648.23	1,183.33	246355	420	440
900	POSITIVE 1	Coronin-1C OS=Mus musculus GN=Coro1c PE=1 SV=2	COR1C_MOUSE	53,122.00	100.00%	4	5	8	0.15%	SIKETICSQDER	K	I	99.70%	31.3	1,852.82	1,196.53	665759	450	461
901	POSITIVE 1	Putative ribosome-binding factor A, mitochondrial OS=Mus musculus GN=Rbfa PE=2 SV=1	RBFA_MOUSE	39,317.50	99.60%	1	1	1	0.02%	GLQCQSLAPPSGR	R	E	99.70%	44.8	1,757.81	1,651.77	235925	258	270
902	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein H OS=Mus musculus GN=Hnrnph1 PE=1 SV=3	HNRH1_MOUSE	49,199.80	99.60%	1	3	5	0.09%	DLNYCFSGMSDHR	R	Y	99.70%	66.4	1,988.77	2,161.34	2516060	263	275
903	POSITIVE 1	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	PRDX4_MOUSE	31,053.80	100.00%	3	7	11	0.21%	ENECHFYAGGQVYPGEASR	R	V	99.70%	87.2	2,558.05	1,897.67	1780190	51	69
904	POSITIVE 1	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	PRDX4_MOUSE	31,053.80	100.00%	3	7	11	0.21%	HGEVCPAGWKPGSETIIPDPAGK	K	L	99.70%	74.7	2,790.30	2,238.72	3545300	244	266
905	POSITIVE 1	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	PRDX4_MOUSE	31,053.80	100.00%	3	7	11	0.21%	TRENECHFYAGGQVYPGEASR	R	V	99.70%	83.6	2,815.19	1,630.27	5343380	49	69
936	POSITIVE 1	Ubiquitin-conjugating enzyme E2 N OS=Mus musculus GN=Ube2n PE=1 SV=1	UBE2N_MOUSE	17,138.60	100.00%	2	3	4	0.08%	LGRICLDILKDK	K	W	99.70%	65.6	1,830.96	2,304.38	514766	83	94
906	POSITIVE 1	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	PFKAP_MOUSE	85,456.90	100.00%	2	4	17	0.32%	FVSDDSICVLGICK	K	R	99.70%	41.5	2,067.92	3,286.49	202183	710	723
907	POSITIVE 1	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	PFKAP_MOUSE	85,456.90	100.00%	2	4	17	0.32%	WDCVSSILQVGGTIIGSAR	K	C	99.70%	105	2,406.15	4,007.16	3359220	78	96
908	POSITIVE 1	D-beta-hydroxybutyrate dehydrogenase, mitochondrial OS=Mus musculus GN=Bdh1 PE=1 SV=2	BDH_MOUSE	38,300.20	99.60%	1	2	4	0.08%	METYCNSGSTDTSSVINAVTHALTAATPYTR	K	Y	99.70%	78.3	3,706.64	3,879.42	274555	284	314
909	POSITIVE 1	Plexin-B2 OS=Mus musculus GN=Plxnb2 PE=1 SV=1	PLXB2_MOUSE	206,230.30	99.60%	1	1	1	0.02%	MDGHCAPLR	R	T	99.70%	38.5	1,443.59	1,009.55	629346	1079	1087
910	POSITIVE 1	Nuclear pore complex protein Nup93 OS=Mus musculus GN=Nup93 PE=1 SV=1	NUP93_MOUSE	93,284.10	100.00%	2	4	7	0.13%	LNQVCFDDDGTSSPQDR	K	L	99.70%	99.1	2,340.95	1,885.16	5656700	418	434
911	POSITIVE 1	Nuclear pore complex protein Nup93 OS=Mus musculus GN=Nup93 PE=1 SV=1	NUP93_MOUSE	93,284.10	100.00%	2	4	7	0.13%	SSGQSAQLLSHEPGDPPCMR	K	R	99.70%	62.9	2,541.09	1,852.97	2471830	505	524
912	POSITIVE 1	Monoglyceride lipase OS=Mus musculus GN=Mgll PE=1 SV=1	MGLL_MOUSE	33,387.60	100.00%	2	2	2	0.04%	IAAAGAGCPP	R	-	99.70%	47.8	1,271.55	1,514.21	260043	294	303
913	POSITIVE 1	Monoglyceride lipase OS=Mus musculus GN=Mgll PE=1 SV=1	MGLL_MOUSE	33,387.60	100.00%	2	2	2	0.04%	SEVDLYNSDPLVCR	K	A	99.70%	47.2	2,053.90	2,573.18	751909	189	202
914	POSITIVE 1	Protein phosphatase 1G OS=Mus musculus GN=Ppm1g PE=1 SV=3	PPM1G_MOUSE	58,728.40	99.60%	1	2	3	0.06%	CSGDGVGAPR	K	L	99.70%	60.9	1,362.55	856.398	1513050	13	22
915	POSITIVE 1	Eukaryotic translation initiation factor 4E-binding protein 1 OS=Mus musculus GN=Eif4ebp1 PE=1 SV=3	4EBP1_MOUSE	12,325.00	99.60%	1	2	2	0.04%	SAGSSCSQTPSR	M	A	99.70%	61.5	1,653.66	929.733	779325	2	13
916	POSITIVE 1	[Pyruvate dehydrogenase [acetyl-transferring]]-phosphatase 1, mitochondrial OS=Mus musculus GN=Pdp1 PE=1 SV=1	PDP1_MOUSE	61,180.70	99.60%	1	1	1	0.02%	GMLLGVFDGHAGCACSQAVSER	R	L	99.70%	68.2	2,777.19	2,958.23	500426	137	158
917	POSITIVE 1	Density-regulated protein OS=Mus musculus GN=Denr PE=1 SV=1	DENR_MOUSE	22,166.40	100.00%	2	2	3	0.06%	ATDISESSGADCKGDTK	M	N	99.70%	41	2,170.89	1,308.40	626940	2	18
918	POSITIVE 1	Density-regulated protein OS=Mus musculus GN=Denr PE=1 SV=1	DENR_MOUSE	22,166.40	100.00%	2	2	3	0.06%	VLYCGVCSLPTEYCEYMPDVAK	R	C	99.70%	78.8	3,177.34	4,001.11	479254	31	52
919	POSITIVE 1	Acyl-CoA synthetase family member 3, mitochondrial OS=Mus musculus GN=Acsf3 PE=1 SV=2	ACSF3_MOUSE	65,076.20	99.60%	1	1	4	0.08%	SLCLAQEICR	R	L	99.70%	57.3	1,704.75	2,882.52	1246680	75	84
920	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein K OS=Mus musculus GN=Hnrnpk PE=1 SV=1	HNRPK_MOUSE	50,978.50	99.80%	1	1	1	0.02%	GSDFDCELR	K	L	99.50%	29.5	1,485.57	1,780.18	392720	140	148
921	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 9, mitochondrial OS=Mus musculus GN=Ndufa9 PE=1 SV=2	NDUA9_MOUSE	42,525.60	100.00%	2	2	2	0.04%	CDVYDIMHLR	R	L	99.70%	69.3	1,708.72	2,676.62	168230	86	95
922	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 9, mitochondrial OS=Mus musculus GN=Ndufa9 PE=1 SV=2	NDUA9_MOUSE	42,525.60	100.00%	2	2	2	0.04%	MGSQVIIPYRCDVYDIMHLR	R	L	99.70%	77.1	2,853.33	3,327.85	291472	76	95
923	POSITIVE 1	Rho guanine nucleotide exchange factor 12 OS=Mus musculus GN=Arhgef12 PE=1 SV=2	ARHGC_MOUSE	172,349.50	99.60%	1	1	2	0.04%	TVWQDLICR	K	M	99.70%	34.2	1,577.72	2,903.35	1054360	1121	1129
924	POSITIVE 1	PHD finger-like domain-containing protein 5A OS=Mus musculus GN=Phf5a PE=1 SV=1	PHF5A_MOUSE	12,405.50	100.00%	2	2	2	0.04%	HHPDLIFCR	K	K	99.70%	47	1,581.71	1,571.60	809555	4	12
925	POSITIVE 1	PHD finger-like domain-containing protein 5A OS=Mus musculus GN=Phf5a PE=1 SV=1	PHF5A_MOUSE	12,405.50	100.00%	2	2	2	0.04%	HHPDLIFCRK	K	Q	99.70%	32.4	1,709.80	1,161.98	1046100	4	13
926	POSITIVE 1	Copine-1 OS=Mus musculus GN=Cpne1 PE=1 SV=1	CPNE1_MOUSE	58,886.00	99.60%	1	1	1	0.02%	VRNCSSPEFSK	R	T	99.70%	39	1,697.74	895.758	1358930	49	59
927	POSITIVE 1	Enhancer of mRNA-decapping protein 4 OS=Mus musculus GN=Edc4 PE=1 SV=2	EDC4_MOUSE	152,484.60	100.00%	3	4	8	0.15%	ASCASIDIEDATQHLR	M	D	99.70%	39	2,215.97	2,945.78	429878	2	17
928	POSITIVE 1	Enhancer of mRNA-decapping protein 4 OS=Mus musculus GN=Edc4 PE=1 SV=2	EDC4_MOUSE	152,484.60	100.00%	3	4	8	0.15%	GHSTCLSEGALSPDGTVLATASHDGFVK	K	F	99.70%	65.5	3,201.46	2,575.46	1253220	295	322
929	POSITIVE 1	Enhancer of mRNA-decapping protein 4 OS=Mus musculus GN=Edc4 PE=1 SV=2	EDC4_MOUSE	152,484.60	100.00%	3	4	8	0.15%	MWCTVSWTCLQTIR	K	F	99.70%	90.9	2,297.00	3,776.47	1077750	382	395
930	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	HNRPU_MOUSE	87,918.50	100.00%	2	3	7	0.13%	MCLFAGFQR	K	K	99.70%	79.3	1,516.65	2,960.65	1178950	569	577
931	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	HNRPU_MOUSE	87,918.50	100.00%	2	3	7	0.13%	TCNCETEDYGEK	K	F	99.70%	63.5	1,960.70	1,347.68	1040940	364	375
932	POSITIVE 1	Leucine-rich repeat-containing protein 47 OS=Mus musculus GN=Lrrc47 PE=1 SV=1	LRC47_MOUSE	63,592.50	98.70%	1	1	1	0.02%	MVGGCQTK	K	S	99.00%	29.3	1,267.52	561.252	116973	247	254
933	POSITIVE 1	Transketolase OS=Mus musculus GN=Tkt PE=1 SV=1	TKT_MOUSE	67,631.90	100.00%	2	3	4	0.08%	QAFTDVATGSLGQGLGAACGMAYTGK	K	Y	99.70%	89.6	2,919.31	3,074.50	640479	115	140
934	POSITIVE 1	Transketolase OS=Mus musculus GN=Tkt PE=1 SV=1	TKT_MOUSE	67,631.90	100.00%	2	3	4	0.08%	TVPFCSTFAAFFTR	R	A	99.70%	69.6	2,038.92	3,981.86	110567	382	395
935	POSITIVE 1	Ubiquitin-conjugating enzyme E2 N OS=Mus musculus GN=Ube2n PE=1 SV=1	UBE2N_MOUSE	17,138.60	100.00%	2	3	4	0.08%	ICLDILKDK	R	W	99.70%	61.7	1,504.75	2,383.85	2215350	86	94
937	POSITIVE 1	G-rich sequence factor 1 OS=Mus musculus GN=Grsf1 PE=1 SV=2	GRSF1_MOUSE	53,077.50	99.60%	1	2	6	0.11%	YIELFLNSCPK	R	G	99.70%	52.5	1,770.82	2,881.86	4727950	467	477
938	POSITIVE 1	40S ribosomal protein S28 OS=Mus musculus GN=Rps28 PE=1 SV=1	RS28_MOUSE	7,840.90	99.60%	1	2	7	0.13%	TGSQGQCTQVR	R	V	99.70%	60.7	1,608.69	554.364	1988280	21	31
939	POSITIVE 1	Inverted formin-2 OS=Mus musculus GN=Inf2 PE=1 SV=1	INF2_MOUSE	138,562.80	99.60%	1	1	1	0.02%	VSCSPASAQLLSVLQGLMHLEPAGR	K	S	99.70%	54	3,008.48	4,372.45	45,353.00	282	306
940	POSITIVE 1	Ribosomal protein S6 kinase alpha-2 OS=Mus musculus GN=Rps6ka2 PE=1 SV=1	KS6A2_MOUSE	83,696.50	100.00%	3	3	3	0.06%	AENGLLMTPCYTANFVAPEVLK	R	R	99.70%	85.2	2,825.33	3,686.05	277072	570	591
941	POSITIVE 1	Ribosomal protein S6 kinase alpha-2 OS=Mus musculus GN=Rps6ka2 PE=1 SV=1	KS6A2_MOUSE	83,696.50	100.00%	3	3	3	0.06%	EDIGVGSYSVCK	K	R	99.70%	33	1,700.73	1,979.75	881223	426	437
942	POSITIVE 1	Ribosomal protein S6 kinase alpha-2 OS=Mus musculus GN=Rps6ka2 PE=1 SV=1	KS6A2_MOUSE	83,696.50	100.00%	3	3	3	0.06%	EDIGVGSYSVCKR	K	C	99.70%	31.9	1,856.83	1,677.35	646696	426	438
943	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 16 OS=Mus musculus GN=Usp16 PE=1 SV=2	UBP16_MOUSE	93,435.10	99.60%	1	1	1	0.02%	GLSNLGNTCFFNAVMQNLSQTPVLR	K	E	99.70%	97.4	3,168.50	4,360.94	223608	196	220
944	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 1 OS=Mus musculus GN=Psmd1 PE=1 SV=1	PSMD1_MOUSE	105,733.00	100.00%	3	5	7	0.13%	SNCKPSTFAYPAPLEVPK	K	E	99.70%	52.2	2,393.13	2,430.25	1645100	804	821
945	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 1 OS=Mus musculus GN=Psmd1 PE=1 SV=1	PSMD1_MOUSE	105,733.00	100.00%	3	5	7	0.13%	SNCKPSTFAYPAPLEVPKEK	K	E	99.70%	57.9	2,650.26	2,098.56	1267280	804	823
946	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 1 OS=Mus musculus GN=Psmd1 PE=1 SV=1	PSMD1_MOUSE	105,733.00	100.00%	3	5	7	0.13%	VLSMTETCR	K	Y	99.70%	53.2	1,483.63	1,505.66	2243140	891	899
947	POSITIVE 1	Receptor expression-enhancing protein 5 OS=Mus musculus GN=Reep5 PE=1 SV=1	REEP5_MOUSE	21,051.70	99.60%	1	2	3	0.06%	NCMTDLLAK	K	L	99.70%	50.9	1,452.63	2,398.53	2976750	13	21
948	POSITIVE 1	Aladin OS=Mus musculus GN=Aaas PE=1 SV=1	AAAS_MOUSE	59,430.10	99.60%	1	1	1	0.02%	SEDLIAEFAQVTNWSSCCLR	R	V	99.70%	55.4	2,841.23	4,331.17	89,958.00	136	155
949	POSITIVE 1	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	ADT1_MOUSE	32,905.40	100.00%	4	6	8	0.15%	EFNGLGDCLTK	R	I	99.70%	54.4	1,640.70	2,250.19	2592630	153	163
950	POSITIVE 1	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	ADT1_MOUSE	32,905.40	100.00%	4	6	8	0.15%	GADIMYTGTLDCWRK	K	I	99.70%	54.7	2,173.95	2,475.46	685398	246	260
951	POSITIVE 1	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	ADT1_MOUSE	32,905.40	100.00%	4	6	8	0.15%	KGADIMYTGTLDCWR	R	K	99.70%	53.4	2,173.95	2,532.36	653669	245	259
952	POSITIVE 1	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	ADT1_MOUSE	32,905.40	100.00%	4	6	8	0.15%	KGADIMYTGTLDCWRK	R	I	99.70%	64	2,302.04	2,138.34	2309850	245	260
953	POSITIVE 1	60S ribosomal protein L10a OS=Mus musculus GN=Rpl10a PE=1 SV=3	RL10A_MOUSE	24,917.10	99.60%	1	1	2	0.04%	VLCLAVAVGHVK	K	M	99.70%	82.7	1,652.86	2,322.51	1125760	162	173
954	POSITIVE 1	AFG3-like protein 1 OS=Mus musculus GN=Afg3l1 PE=1 SV=2	AFG31_MOUSE	87,048.60	99.60%	1	1	1	0.02%	QGETMVEKPYSEATAQLIDEEVRCLVR	R	S	99.70%	62.9	3,538.66	3,444.06	994220	672	698
955	POSITIVE 1	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	ALKB7_MOUSE	24,970.60	100.00%	4	6	11	0.21%	FCGSTIAGLSLLSPSVMK	K	L	99.70%	96.4	2,255.09	3,695.13	316622	127	144
956	POSITIVE 1	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	ALKB7_MOUSE	24,970.60	100.00%	4	6	11	0.21%	LLSGCAWVR	R	G	99.70%	55.8	1,448.68	2,264.23	1113520	11	19
957	POSITIVE 1	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	ALKB7_MOUSE	24,970.60	100.00%	4	6	11	0.21%	SCWSDASQVILQR	K	V	99.70%	88.8	1,936.86	2,745.91	1181860	79	91
958	POSITIVE 1	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	ALKB7_MOUSE	24,970.60	100.00%	4	6	11	0.21%	SLPEGMGPGRPEEPPPAC	R	-	99.70%	80.5	2,264.97	1,989.11	3638100	204	221
959	POSITIVE 1	BAG family molecular chaperone regulator 1 OS=Mus musculus GN=Bag1 PE=1 SV=3	BAG1_MOUSE	39,740.00	99.60%	1	1	1	0.02%	ELQAEALCK	K	L	99.70%	52.5	1,448.65	1,562.97	254950	275	283
960	POSITIVE 1	Chromobox protein homolog 3 OS=Mus musculus GN=Cbx3 PE=1 SV=2	CBX3_MOUSE	20,856.00	99.60%	1	2	2	0.04%	LTWHSCPEDEAQ	R	-	99.70%	55.9	1,859.73	1,750.51	2238940	172	183
961	POSITIVE 1	Histone acetyltransferase type B catalytic subunit OS=Mus musculus GN=Hat1 PE=1 SV=1	HAT1_MOUSE	49,280.10	100.00%	2	2	2	0.04%	QIIPPGFCTNTNDFLSLLEK	R	E	99.50%	29.6	2,694.29	4,227.02	54,803.30	110	129
962	POSITIVE 1	Histone acetyltransferase type B catalytic subunit OS=Mus musculus GN=Hat1 PE=1 SV=1	HAT1_MOUSE	49,280.10	100.00%	2	2	2	0.04%	VDENFDCVEADDVEGK	K	I	99.70%	82.2	2,227.88	2,142.43	659808	92	107
963	POSITIVE 1	Serine/threonine-protein kinase Nek9 OS=Mus musculus GN=Nek9 PE=1 SV=2	NEK9_MOUSE	107,144.20	98.70%	1	1	1	0.02%	LLTFGCNK	R	C	99.00%	33.2	1,339.61	1,964.27	215885	618	625
964	POSITIVE 1	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	5	8	10	0.19%	ALMGLYNGQVLCK	K	K	99.70%	67.9	1,853.87	2,675.96	4060920	338	350
965	POSITIVE 1	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	5	8	10	0.19%	ALMGLYNGQVLCKK	K	N	99.70%	53.8	1,981.97	2,255.73	1824480	338	351
966	POSITIVE 1	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	5	8	10	0.19%	CLAPMMSEVMR	R	I	99.70%	62.1	1,711.71	2,782.05	152839	550	560
967	POSITIVE 1	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	5	8	10	0.19%	EVESVTPEHCIFASNTSALPINQIAAVSK	K	R	98.80%	31.7	3,499.68	3,170.23	355962	461	489
968	POSITIVE 1	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	5	8	10	0.19%	YESAYGTQFTPCQLLLDHANNSSK	K	K	99.70%	45.5	3,131.38	2,767.34	388684	736	759
969	POSITIVE 1	7-methylguanosine phosphate-specific 5'-nucleotidase OS=Mus musculus GN=Nt5c3b PE=1 SV=3	5NT3B_MOUSE	34,426.20	100.00%	1	2	2	0.04%	NSSVCENSSYFQQLQNK	K	T	99.70%	76.6	2,420.02	2,158.84	572842	206	222
970	POSITIVE 1	Kinesin light chain 4 OS=Mus musculus GN=Klc4 PE=1 SV=1	KLC4_MOUSE	68,613.10	99.60%	1	1	1	0.02%	RLCQENQWLRDELAGTQQR	R	L	99.70%	68.1	2,788.30	2,214.91	616029	111	129
971	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 13 OS=Mus musculus GN=Psmd13 PE=1 SV=1	PSD13_MOUSE	42,810.00	100.00%	2	2	3	0.06%	CAWGQQPDLAANEAQLLR	K	K	99.70%	68.3	2,428.11	2,945.37	873085	253	270
972	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 13 OS=Mus musculus GN=Psmd13 PE=1 SV=1	PSD13_MOUSE	42,810.00	100.00%	2	2	3	0.06%	CAWGQQPDLAANEAQLLRK	K	I	99.70%	59.3	2,556.21	2,523.26	580888	253	271
973	POSITIVE 1	Perilipin-3 OS=Mus musculus GN=Plin3 PE=1 SV=1	PLIN3_MOUSE	47,260.80	98.70%	1	1	1	0.02%	TVCDVAEK	R	G	99.00%	32.6	1,308.56	977.988	269184	58	65
974	POSITIVE 1	Guanine nucleotide exchange factor MSS4 OS=Mus musculus GN=Rabif PE=1 SV=1	MSS4_MOUSE	13,914.90	99.60%	1	1	1	0.02%	MEPCELQNELVSAEGR	-	N	99.70%	45.2	2,290.97	3,501.04	82,578.00	1	16
975	POSITIVE 1	Enoyl-[acyl-carrier-protein] reductase, mitochondrial OS=Mus musculus GN=Mecr PE=1 SV=2	MECR_MOUSE	40,343.40	99.60%	1	1	2	0.04%	LALNCVGGK	R	S	99.70%	44.3	1,318.62	1,637.85	2518270	259	267
976	POSITIVE 1	1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase gamma-1 OS=Mus musculus GN=Plcg1 PE=1 SV=2	PLCG1_MOUSE	149,672.20	99.60%	1	2	3	0.06%	ACYRDMSSFPETK	R	A	99.70%	63.8	1,978.81	1,716.81	1652210	975	987
977	POSITIVE 1	Bleomycin hydrolase OS=Mus musculus GN=Blmh PE=1 SV=1	BLMH_MOUSE	52,510.80	100.00%	2	5	10	0.19%	CWIFSCLNVMR	R	L	99.70%	76.2	1,940.83	4,099.75	2423410	73	83
978	POSITIVE 1	Bleomycin hydrolase OS=Mus musculus GN=Blmh PE=1 SV=1	BLMH_MOUSE	52,510.80	100.00%	2	5	10	0.19%	SSGRCWIFSCLNVMR	K	L	99.70%	61	2,328.01	3,580.15	999415	69	83
979	POSITIVE 1	Peripherin OS=Mus musculus GN=Prph PE=1 SV=2	PERI_MOUSE	54,268.90	99.90%	1	2	3	0.06%	ADQLCQQELR	R	E	99.70%	66.3	1,647.72	1,456.89	1421320	144	153
980	POSITIVE 1	Cullin-4B OS=Mus musculus GN=Cul4b PE=1 SV=1	CUL4B_MOUSE	110,704.00	100.00%	2	2	2	0.04%	SVCPGTSGFSSPNPSAASAAAQEVR	K	S	99.70%	84.3	2,822.25	2,284.87	313327	72	96
981	POSITIVE 1	Cullin-4B OS=Mus musculus GN=Cul4b PE=1 SV=1	CUL4B_MOUSE	110,704.00	100.00%	2	2	2	0.04%	TLQSLACGK	R	A	99.70%	33.1	1,364.63	1,467.22	275343	838	846
982	POSITIVE 1	Inhibitor of nuclear factor kappa-B kinase subunit alpha OS=Mus musculus GN=Chuk PE=1 SV=1	IKKA_MOUSE	84,731.80	99.60%	1	1	1	0.02%	SLSDCVNYIVQDSK	R	I	99.70%	73.9	2,014.88	2,961.58	355692	402	415
983	POSITIVE 1	H-2 class I histocompatibility antigen, K-B alpha chain OS=Mus musculus GN=H2-K1 PE=1 SV=1	HA1B_MOUSE	41,301.60	99.60%	1	1	1	0.02%	GGDYALAPGSQTSDLSLPDCK	K	V	99.70%	58	2,539.11	2,545.57	619549	339	359
984	POSITIVE 1	Cob(I)yrinic acid a,c-diamide adenosyltransferase, mitochondrial OS=Mus musculus GN=Mmab PE=1 SV=1	MMAB_MOUSE	26,273.70	99.90%	1	2	4	0.08%	IQCMLQDVGSALATPR	K	S	99.70%	88.3	2,147.00	2,940.30	3440660	111	126
985	POSITIVE 1	Thioredoxin reductase 1, cytoplasmic OS=Mus musculus GN=Txnrd1 PE=1 SV=3	TRXR1_MOUSE	67,084.30	99.60%	1	1	2	0.04%	EYCISSDDLFSLPYCPGK	K	T	99.70%	49.4	2,606.09	3,727.52	501246	289	306
986	POSITIVE 1	Nucleolar RNA helicase 2 OS=Mus musculus GN=Ddx21 PE=1 SV=3	DDX21_MOUSE	93,553.30	99.90%	1	1	1	0.02%	DAQELSQNTCIK	K	Q	99.70%	63.6	1,793.78	1,549.38	173835	522	533
987	POSITIVE 1	Serine/threonine-protein phosphatase PP1-alpha catalytic subunit OS=Mus musculus GN=Ppp1ca PE=1 SV=1	PP1A_MOUSE	37,541.90	100.00%	1	3	14	0.27%	GNHECASINR	R	I	99.70%	68	1,544.63	562.047	8621620	123	132
988	POSITIVE 1	Nitrilase homolog 1 OS=Mus musculus GN=Nit1 PE=1 SV=2	NIT1_MOUSE	35,705.00	99.60%	1	1	1	0.02%	THLCDVEIPGQGPMR	K	E	99.70%	61.7	2,096.93	2,104.29	1166380	158	172
989	POSITIVE 1	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	MAP1S_MOUSE	102,939.90	100.00%	2	3	3	0.06%	GGEDEAVCAR	R	S	99.70%	41	1,450.57	927.792	488557	343	352
990	POSITIVE 1	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	MAP1S_MOUSE	102,939.90	100.00%	2	3	3	0.06%	LRGGEDEAVCAR	R	S	99.70%	45.7	1,719.75	909.69	2122640	341	352
991	POSITIVE 1	Decaprenyl-diphosphate synthase subunit 2 OS=Mus musculus GN=Pdss2 PE=1 SV=2	DLP1_MOUSE	43,981.60	99.60%	1	2	3	0.06%	CLLSDELSNIAMQVR	R	K	99.70%	62.3	2,135.99	3,560.87	515186	72	86
992	POSITIVE 1	Structural maintenance of chromosomes flexible hinge domain-containing protein 1 OS=Mus musculus GN=Smchd1 PE=1 SV=2	SMHD1_MOUSE	225,654.00	99.90%	1	1	1	0.02%	DGAVDGCR	R	T	98.80%	29	1,236.47	697.23	355168	19	26
993	POSITIVE 1	6-phosphogluconate dehydrogenase, decarboxylating OS=Mus musculus GN=Pgd PE=1 SV=3	6PGD_MOUSE	53,248.80	99.60%	1	1	2	0.04%	CLSSLKEER	R	V	99.70%	50.7	1,508.68	1,047.84	665790	289	297
994	POSITIVE 1	28S ribosomal protein S31, mitochondrial OS=Mus musculus GN=Mrps31 PE=1 SV=1	RT31_MOUSE	43,882.40	99.60%	1	1	1	0.02%	LFMELVTCGLSK	R	N	99.70%	56	1,784.84	3,374.48	322074	338	349
995	POSITIVE 1	Hexokinase-1 OS=Mus musculus GN=Hk1 PE=1 SV=3	HXK1_MOUSE	108,305.70	99.60%	1	3	4	0.08%	AILQQLGLNSTCDDSILVK	R	T	99.70%	89.2	2,475.22	3,304.02	1510340	858	876
996	POSITIVE 1	Thiosulfate sulfurtransferase OS=Mus musculus GN=Tst PE=1 SV=3	THTR_MOUSE	33,465.90	100.00%	3	4	7	0.13%	KVDLSQPLIATCR	K	K	99.70%	71.2	1,887.94	2,031.55	1162660	237	249
997	POSITIVE 1	Thiosulfate sulfurtransferase OS=Mus musculus GN=Tst PE=1 SV=3	THTR_MOUSE	33,465.90	100.00%	3	4	7	0.13%	VDLSQPLIATCR	K	K	99.70%	74.1	1,759.85	2,447.40	5488440	238	249
998	POSITIVE 1	Thiosulfate sulfurtransferase OS=Mus musculus GN=Tst PE=1 SV=3	THTR_MOUSE	33,465.90	100.00%	3	4	7	0.13%	VDLSQPLIATCRK	K	G	99.70%	44.3	1,887.94	2,014.72	1222680	238	250
999	POSITIVE 1	E3 ubiquitin-protein ligase listerin OS=Mus musculus GN=Ltn1 PE=1 SV=3	LTN1_MOUSE	198,927.50	99.60%	1	1	2	0.04%	LLCFLPNNELDSLEEK	R	F	99.70%	63.9	2,321.08	3,510.57	387039	235	250
1000	POSITIVE 1	Methionine--tRNA ligase, mitochondrial OS=Mus musculus GN=Mars2 PE=1 SV=2	SYMM_MOUSE	65,805.70	100.00%	2	3	3	0.06%	GSCSPSASGDAGEAR	Y	A	99.70%	47.1	1,795.70	824.952	67,832.30	23	37
1001	POSITIVE 1	Methionine--tRNA ligase, mitochondrial OS=Mus musculus GN=Mars2 PE=1 SV=2	SYMM_MOUSE	65,805.70	100.00%	2	3	3	0.06%	QVGPSGDPCPVSLESGHPVSWTK	R	E	99.70%	66.5	2,808.27	2,277.24	1919760	178	200
1002	POSITIVE 1	Phosphatidylinositol 3,4,5-trisphosphate 5-phosphatase 2 OS=Mus musculus GN=Inppl1 PE=1 SV=1	SHIP2_MOUSE	138,976.70	99.60%	1	1	1	0.02%	KPASTETSCPLSK	R	L	99.70%	45.9	1,792.82	833.934	371577	919	931
1003	POSITIVE 1	BolA-like protein 1 OS=Mus musculus GN=Bola1 PE=1 SV=1	BOLA1_MOUSE	14,379.00	99.60%	1	2	4	0.08%	ENPQLDISPPCLGGSK	R	K	99.70%	56.8	2,098.95	2,532.93	6478430	116	131
1004	POSITIVE 1	Negative elongation factor A OS=Mus musculus GN=Nelfa PE=1 SV=1	NELFA_MOUSE	57,586.50	99.60%	1	1	2	0.04%	ENPCPEQGDVIQIK	R	L	99.70%	36.6	2,013.90	2,022.30	648484	470	483
1005	POSITIVE 1	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	2	4	8	0.15%	GELLLQLCRLEDAADVYR	K	G	99.70%	74.4	2,521.22	3,608.04	538765	231	248
1006	POSITIVE 1	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	2	4	8	0.15%	LFHSVCESK	R	D	99.70%	46.2	1,493.65	1,104.23	5147620	715	723
1007	POSITIVE 1	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	RCC2_MOUSE	55,983.80	100.00%	2	2	3	0.06%	AVQDLCGWR	K	I	99.70%	48.9	1,491.65	2,054.89	604589	421	429
1008	POSITIVE 1	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	RCC2_MOUSE	55,983.80	100.00%	2	2	3	0.06%	YGCLSGVR	R	V	99.00%	53.6	1,298.56	1,483.03	843623	140	147
1009	POSITIVE 1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	4	8	12	0.23%	TEGSDLCDRVSEMQK	K	L	99.70%	60.6	2,141.89	1,703.10	2118050	540	554
1010	POSITIVE 1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	4	8	12	0.23%	VACITEQVLTLVNK	K	R	99.70%	85.5	1,975.00	3,329.79	1614390	476	489
1011	POSITIVE 1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	4	8	12	0.23%	VACITEQVLTLVNKR	K	L	99.70%	66.6	2,131.10	3,022.10	242204	476	490
1012	POSITIVE 1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	4	8	12	0.23%	VNCITEQVLTLVNK	K	R	99.70%	39.8	2,018.00	4,668.26	129371	0	0
1013	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 3, mitochondrial OS=Mus musculus GN=Pdk3 PE=1 SV=1	PDK3_MOUSE	47,925.10	100.00%	2	4	8	0.15%	HIGSIDPTCNVADVVK	K	D	99.70%	61.6	2,111.99	2,242.94	990221	183	198
1014	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 3, mitochondrial OS=Mus musculus GN=Pdk3 PE=1 SV=1	PDK3_MOUSE	47,925.10	100.00%	2	4	8	0.15%	QFLDFGRDNACEK	K	T	99.70%	51.7	1,986.84	2,063.37	2.10E+07	31	43
1015	POSITIVE 1	Basal cell adhesion molecule OS=Mus musculus GN=Bcam PE=1 SV=1	BCAM_MOUSE	67,668.40	99.60%	1	1	1	0.02%	GGSGGFGDEC	R	-	99.70%	35.2	1,329.45	1,426.56	446534	613	622
1016	POSITIVE 1	HEAT repeat-containing protein 5A OS=Mus musculus GN=Heatr5a PE=1 SV=2	HTR5A_MOUSE	219,896.80	99.60%	1	1	2	0.04%	LPGGQLSCTVTASLQTLK	K	G	99.70%	43	2,261.13	3,201.25	285711	1764	1781
1017	POSITIVE 1	Fructose-2,6-bisphosphatase TIGAR OS=Mus musculus GN=Tigar PE=1 SV=1	TIGAR_MOUSE	29,191.00	99.60%	1	1	2	0.04%	AAGEECPMFTPPGGETVEQVK	K	M	99.70%	63.5	2,621.13	2,469.37	1146820	109	129
1018	POSITIVE 1	Cytochrome c-type heme lyase OS=Mus musculus GN=Hccs PE=1 SV=2	CCHL_MOUSE	30,977.70	100.00%	2	3	4	0.08%	AYDYVECPVTGAR	R	A	99.70%	79.7	1,887.80	1,975.08	1523080	64	76
1019	POSITIVE 1	Cytochrome c-type heme lyase OS=Mus musculus GN=Hccs PE=1 SV=2	CCHL_MOUSE	30,977.70	100.00%	2	3	4	0.08%	GCPVTAATSDLTSESK	K	A	99.70%	70.3	2,010.87	1,987.70	552695	38	53
1020	POSITIVE 1	Tetratricopeptide repeat protein 21B OS=Mus musculus GN=Ttc21b PE=1 SV=1	TT21B_MOUSE	150,800.50	99.70%	1	1	2	0.04%	SGQQNCLCYDLAELLLR	K	L	99.70%	69.5	2,508.13	4,481.24	184495	784	800
1021	POSITIVE 1	Chromobox protein homolog 5 OS=Mus musculus GN=Cbx5 PE=1 SV=1	CBX5_MOUSE	22,186.70	99.60%	1	1	4	0.08%	IIGATDSCGDLMFLMK	K	W	99.70%	73.2	2,158.96	3,477.93	1036300	126	141
1022	POSITIVE 1	Actin, cytoplasmic 2 OS=Mus musculus GN=Actg1 PE=1 SV=1	ACTG_MOUSE	41,793.90	100.00%	3	7	15	0.28%	EEEIAALVIDNGSGMCK	M	A	99.70%	67.9	2,264.98	3,988.99	103018	2	18
1023	POSITIVE 1	Nucleolin OS=Mus musculus GN=Ncl PE=1 SV=2	NUCL_MOUSE	76,724.40	100.00%	1	2	5	0.09%	EALNSCNK	K	M	99.00%	46.9	1,322.55	564.102	1513350	539	546
1024	POSITIVE 1	Mitochondrial import receptor subunit TOM70 OS=Mus musculus GN=Tomm70 PE=1 SV=2	TOM70_MOUSE	67,592.90	99.60%	1	1	1	0.02%	CAEGYALYAQALTDQQQFGK	R	A	99.70%	69.4	2,649.17	3,155.91	366650	478	497
1025	POSITIVE 1	Acyl-coenzyme A thioesterase 9, mitochondrial OS=Mus musculus GN=Acot9 PE=1 SV=1	ACOT9_MOUSE	50,561.00	100.00%	1	4	10	0.19%	MSPLSIVTVLVDKIDMCK	K	H	99.70%	87.6	2,436.20	4,324.19	1428740	138	155
1026	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	5	5	10	0.19%	FGTICYVMMMPFK	K	R	99.70%	61.7	2,011.86	3,892.76	118056	148	160
1027	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	5	5	10	0.19%	GLCESVVEADLVEALEK	R	F	99.70%	80.4	2,248.05	3,877.94	356944	131	147
1028	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	5	5	10	0.19%	LCFSTSSHL	K	-	99.70%	72.2	1,438.61	2,252.18	175526	583	591
1029	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	5	5	10	0.19%	NIIQPPSCVLHYYNVPLCVTEETFTK	K	L	99.70%	45	3,577.68	3,898.67	140562	496	521
1030	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	5	5	10	0.19%	RLNVCVSK	K	Q	99.00%	48.4	1,362.66	1,023.39	368903	450	457
1031	POSITIVE 1	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	HMGCL_MOUSE	34,238.40	100.00%	5	9	18	0.34%	KNANCSIEESFQR	R	F	99.70%	73.1	1,969.85	1,491.34	5410760	137	149
1032	POSITIVE 1	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	HMGCL_MOUSE	34,238.40	100.00%	5	9	18	0.34%	LLEAGDFICQALNR	K	K	99.70%	57.2	2,006.94	3,431.56	154171	299	312
1033	POSITIVE 1	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	HMGCL_MOUSE	34,238.40	100.00%	5	9	18	0.34%	NANCDIEESFQR	K	F	99.70%	44.7	1,869.75	2,091.11	530959	0	0
1034	POSITIVE 1	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	HMGCL_MOUSE	34,238.40	100.00%	5	9	18	0.34%	NANCSIEESFQR	K	F	99.70%	76.4	1,841.75	1,843.64	5583910	138	149
1035	POSITIVE 1	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	HMGCL_MOUSE	34,238.40	100.00%	5	9	18	0.34%	VAQATCKL	K	-	99.00%	52.6	1,277.60	1,150.06	6616150	318	325
1036	POSITIVE 1	Centromere/kinetochore protein zw10 homolog OS=Mus musculus GN=Zw10 PE=1 SV=3	ZW10_MOUSE	88,065.50	99.60%	1	1	1	0.02%	LAPILCDGTTTFVDLVPGFR	R	R	99.70%	62.5	2,579.26	4,279.01	75,804.80	563	582
1037	POSITIVE 1	Leucine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Lars PE=1 SV=2	SYLC_MOUSE	134,196.20	100.00%	3	3	3	0.06%	ELMGEEILGASLSAPLTCYK	K	V	99.70%	58	2,569.20	3,765.73	176730	353	372
1038	POSITIVE 1	Leucine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Lars PE=1 SV=2	SYLC_MOUSE	134,196.20	100.00%	3	3	3	0.06%	EMLASCSSLR	K	S	99.70%	36	1,540.66	1,714.71	1139060	778	787
1039	POSITIVE 1	Leucine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Lars PE=1 SV=2	SYLC_MOUSE	134,196.20	100.00%	3	3	3	0.06%	NMETFCEESRK	K	N	99.70%	35.2	1,817.73	1,236.74	888669	551	561
1040	POSITIVE 1	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	3	3	3	0.06%	GSDCLHSPK	K	G	99.70%	31.6	1,387.57	691.44	369300	1863	1871
1041	POSITIVE 1	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	3	3	3	0.06%	GSSAVTNELCSPPGSSNVAGTSLSPK	K	A	99.70%	95.5	2,891.31	2,275.98	248739	345	370
1042	POSITIVE 1	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	3	3	3	0.06%	SPGANSNSASSPKCPDPSSK	K	K	99.70%	58.7	2,362.00	765.954	98,274.30	1807	1826
1043	POSITIVE 1	Peptidyl-prolyl cis-trans isomerase-like 1 OS=Mus musculus GN=Ppil1 PE=1 SV=1	PPIL1_MOUSE	18,237.20	99.60%	1	1	1	0.02%	VCQGIGMVNR	R	V	99.70%	43	1,520.68	1,632.37	1933620	132	141
1044	POSITIVE 1	Cytosolic 5'-nucleotidase 3A OS=Mus musculus GN=Nt5c3a PE=1 SV=4	5NT3A_MOUSE	37,252.90	99.60%	1	1	1	0.02%	VEEIICGLIK	R	G	99.70%	47	1,560.78	2,940.14	426269	63	72
1045	POSITIVE 1	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	LDHA_MOUSE	36,498.90	100.00%	3	7	19	0.36%	DYCVTANSK	K	L	99.70%	67.8	1,444.58	1,187.05	9.20E+07	82	90
1046	POSITIVE 1	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	LDHA_MOUSE	36,498.90	100.00%	3	7	19	0.36%	ITVVGVGAVGMACAISILMK	K	D	99.70%	75	2,377.21	4,427.65	99,438.40	23	42
1047	POSITIVE 1	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	LDHA_MOUSE	36,498.90	100.00%	3	7	19	0.36%	VIGSGCNLDSAR	R	F	99.70%	67.8	1,635.72	1,492.45	1799830	158	169
1048	POSITIVE 1	Nischarin OS=Mus musculus GN=Nisch PE=1 SV=2	NISCH_MOUSE	175,014.10	99.60%	1	1	2	0.04%	TDLGHILDFTCR	K	L	99.70%	50.3	1,834.82	2,879.43	757218	176	187
1049	POSITIVE 1	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	3	6	8	0.15%	DIDGHMVCLDKYR	K	G	99.70%	54	2,008.87	1,973.83	1179050	48	60
1050	POSITIVE 1	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	3	6	8	0.15%	ICVNGDDAHPLWK	K	W	99.70%	74.8	1,911.85	2,088.77	7602000	133	145
1051	POSITIVE 1	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	3	6	8	0.15%	YGPMEEPQVIEKDLPCYL	R	-	99.70%	47.2	2,568.15	3,567.08	258548	180	197
1052	POSITIVE 1	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	SYLM_MOUSE	101,481.70	100.00%	2	2	3	0.06%	EALVNWDPVDQTVLANEQVNEYGCSWR	K	S	99.70%	84	3,579.59	3,744.15	569021	201	227
1053	POSITIVE 1	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	SYLM_MOUSE	101,481.70	100.00%	2	2	3	0.06%	KEDIDFTGPAPVCAK	K	T	99.70%	61.9	2,034.93	1,927.51	1408570	613	627
1054	POSITIVE 1	Ubiquitin thioesterase OTUB1 OS=Mus musculus GN=Otub1 PE=1 SV=2	OTUB1_MOUSE	31,270.50	99.60%	1	1	1	0.02%	QEPLGSDSEGVNCLAYDEAIMAQQDR	K	I	99.70%	80.1	3,283.39	3,079.93	602888	11	36
1055	POSITIVE 1	Microtubule-associated proteins 1A/1B light chain 3A OS=Mus musculus GN=Map1lc3a PE=1 SV=1	MLP3A_MOUSE	14,272.70	98.70%	1	1	2	0.04%	CKEVQQIR	R	D	99.00%	45.2	1,447.68	707.865	241095	17	24
1056	POSITIVE 1	40S ribosomal protein S2 OS=Mus musculus GN=Rps2 PE=1 SV=3	RS2_MOUSE	31,232.20	100.00%	1	1	1	0.02%	GCTATLGNFAK	R	A	99.70%	74.9	1,526.67	1,882.29	174147	228	238
1057	POSITIVE 1	Thyroid adenoma-associated protein homolog OS=Mus musculus GN=Thada PE=1 SV=1	THADA_MOUSE	217,294.20	99.60%	1	1	1	0.02%	QGLIHQHCQVR	K	I	99.70%	35.2	1,762.82	796.104	1906340	619	629
1058	POSITIVE 1	Importin-5 OS=Mus musculus GN=Ipo5 PE=1 SV=3	IPO5_MOUSE	123,593.60	100.00%	2	2	2	0.04%	STACQMLVCYAK	K	E	99.70%	52	1,886.79	2,978.17	469250	679	690
1059	POSITIVE 1	Importin-5 OS=Mus musculus GN=Ipo5 PE=1 SV=3	IPO5_MOUSE	123,593.60	100.00%	2	2	2	0.04%	YAEYFISPMLQYVCDNSPEVR	K	Q	99.70%	84.3	2,968.30	3,914.98	215067	902	922
1060	POSITIVE 1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	USO1_MOUSE	106,985.70	100.00%	3	4	6	0.11%	CQNEQLQTAVTQQASQIQQHK	K	D	99.70%	73.8	2,855.32	2,001.32	183356	678	698
1061	POSITIVE 1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	USO1_MOUSE	106,985.70	100.00%	3	4	6	0.11%	LQTENCELLQR	R	A	99.70%	50.5	1,790.82	1,786.43	1434460	811	821
1062	POSITIVE 1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	USO1_MOUSE	106,985.70	100.00%	3	4	6	0.11%	SQLCSQSLEITR	K	L	99.70%	73.9	1,808.83	1,943.40	2214410	799	810
1063	POSITIVE 1	Protein DJ-1 OS=Mus musculus GN=Park7 PE=1 SV=1	PARK7_MOUSE	20,021.30	100.00%	3	5	6	0.11%	DVMICPDTSLEDAK	R	T	99.70%	62.7	1,980.84	2,461.70	3882420	49	62
1064	POSITIVE 1	Protein DJ-1 OS=Mus musculus GN=Park7 PE=1 SV=1	PARK7_MOUSE	20,021.30	100.00%	3	5	6	0.11%	GLIAAICAGPTALLAHEVGFGCK	K	V	99.70%	53.2	2,781.35	4,019.06	72,476.90	100	122
1065	POSITIVE 1	Protein DJ-1 OS=Mus musculus GN=Park7 PE=1 SV=1	PARK7_MOUSE	20,021.30	100.00%	3	5	6	0.11%	VTVAGLAGKDPVQCSR	K	D	99.70%	54.2	2,044.99	1,759.64	442525	33	48
1066	POSITIVE 1	Kinectin OS=Mus musculus GN=Ktn1 PE=1 SV=1	KTN1_MOUSE	152,593.40	99.80%	1	2	3	0.06%	ACVAGTSDAEAVK	K	V	99.70%	70.4	1,665.72	1,248.74	1054680	1080	1092
1067	POSITIVE 1	Sorbin and SH3 domain-containing protein 1 OS=Mus musculus GN=Sorbs1 PE=1 SV=2	SRBS1_MOUSE	143,073.90	99.60%	1	1	1	0.02%	SSECDVGSSK	M	A	99.70%	47.1	1,484.56	1,038.63	170089	2	11
1068	POSITIVE 1	Myosin phosphatase Rho-interacting protein OS=Mus musculus GN=Mprip PE=1 SV=2	MPRIP_MOUSE	116,411.70	99.60%	1	1	1	0.02%	ASAVGSSDSGDPGCLEAEPGELER	R	E	99.70%	89.3	2,777.16	2,193.86	149424	558	581
1069	POSITIVE 1	Cysteine-rich protein 2 OS=Mus musculus GN=Crip2 PE=1 SV=1	CRIP2_MOUSE	22,726.60	100.00%	1	1	1	0.02%	ASSVTTFTGEPNMCPR	K	C	99.70%	67.4	2,141.91	2,103.77	925890	113	128
1070	POSITIVE 1	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2 OS=Mus musculus GN=Plod2 PE=1 SV=2	PLOD2_MOUSE	84,490.50	100.00%	2	2	4	0.08%	DKLDPDMALCR	R	N	99.70%	60.5	1,720.75	1,892.24	1443210	485	495
1071	POSITIVE 1	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2 OS=Mus musculus GN=Plod2 PE=1 SV=2	PLOD2_MOUSE	84,490.50	100.00%	2	2	4	0.08%	LDPDMALCR	K	N	99.70%	32.5	1,477.62	2,060.99	1497350	487	495
1072	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	ERPAPAVSSTCATAEDSSVLYSR	K	V	99.70%	94.2	2,841.28	1,957.96	871795	734	756
1073	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	GFFICDQPYEPVSPYSCR	R	E	99.70%	43	2,677.12	3,497.71	187417	676	693
1074	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	HEELMLGDPCLK	K	D	99.70%	49	1,828.80	2,163.77	896775	651	662
1075	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	HEELMLGDPCLKDLKK	K	G	99.70%	35	2,313.10	1,922.42	514959	651	666
1076	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	IDMSSNNGCMRDPTLYR	K	C	99.70%	64.3	2,417.01	1,973.09	2099090	342	358
1077	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	LSSCDRLTSAINELNHCLSLR	K	T	99.70%	35.9	2,914.36	3,560.42	188018	89	109
1078	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	SCQFVAVR	K	R	99.00%	75.8	1,353.60	1,718.20	3008200	1376	1383
1079	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	SCQFVAVRR	K	D	99.70%	37.8	1,509.70	1,315.91	206544	1376	1384
1080	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	VACQGEVVR	R	K	99.70%	56.9	1,404.64	1,069.51	3423810	908	916
1081	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	VACQGEVVRK	R	L	99.70%	58.8	1,532.73	753.732	1505560	908	917
1082	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	VTEAVECLLSLK	K	A	99.70%	70.2	1,748.86	3,246.54	1169430	850	861
1083	POSITIVE 1	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	12	18	24	0.45%	YNVYPTYDFACPIVDSIEGVTHALR	K	T	99.70%	50.9	3,287.51	4,310.05	190566	371	395
1084	POSITIVE 1	3-ketoacyl-CoA thiolase, mitochondrial OS=Mus musculus GN=Acaa2 PE=1 SV=3	THIM_MOUSE	41,830.20	100.00%	3	7	11	0.21%	EDCDRYALQSQQR	R	W	99.70%	68.5	2,055.86	1,211.25	3471870	177	189
1085	POSITIVE 1	3-ketoacyl-CoA thiolase, mitochondrial OS=Mus musculus GN=Acaa2 PE=1 SV=3	THIM_MOUSE	41,830.20	100.00%	3	7	11	0.21%	VVGYFVSGCDPTIMGIGPVPAINGALK	R	K	99.70%	85.7	3,119.54	3,975.93	574299	279	305
1086	POSITIVE 1	3-ketoacyl-CoA thiolase, mitochondrial OS=Mus musculus GN=Acaa2 PE=1 SV=3	THIM_MOUSE	41,830.20	100.00%	3	7	11	0.21%	YNISREDCDRYALQSQQR	K	W	99.70%	49.8	2,689.18	1,525.62	2621050	172	189
1087	POSITIVE 1	Mitochondrial carnitine/acylcarnitine carrier protein OS=Mus musculus GN=Slc25a20 PE=1 SV=1	MCAT_MOUSE	33,028.20	99.70%	1	2	5	0.09%	CLLQIQASSGENK	K	Y	99.70%	81.4	1,834.84	2,035.88	2729740	136	148
1088	POSITIVE 1	Signal recognition particle subunit SRP68 OS=Mus musculus GN=Srp68 PE=1 SV=2	SRP68_MOUSE	70,576.70	99.60%	1	1	1	0.02%	FESFCLDPSLVTK	R	Q	99.70%	51	1,929.87	3,151.90	564519	556	568
1089	POSITIVE 1	Proliferating cell nuclear antigen OS=Mus musculus GN=Pcna PE=1 SV=2	PCNA_MOUSE	28,785.50	99.60%	1	2	3	0.06%	CAGNEDIITLR	K	A	99.70%	69.2	1,648.74	2,217.43	1173860	81	91
1090	POSITIVE 1	Acylphosphatase-2 OS=Mus musculus GN=Acyp2 PE=1 SV=2	ACYP2_MOUSE	11,877.70	99.60%	1	1	1	0.02%	SVDYEVFGTVQGVCFR	K	M	99.70%	62.5	2,250.00	3,215.58	415858	16	31
1091	POSITIVE 1	Eukaryotic translation initiation factor 4 gamma 2 OS=Mus musculus GN=Eif4g2 PE=1 SV=2	IF4G2_MOUSE	102,110.50	98.70%	1	1	1	0.02%	MCSLMLSK	R	E	99.00%	38.5	1,356.58	2,037.29	354652	281	288
1092	POSITIVE 1	Delta-1-pyrroline-5-carboxylate synthase OS=Mus musculus GN=Aldh18a1 PE=1 SV=2	P5CS_MOUSE	87,266.90	100.00%	3	6	17	0.32%	CEYPAACNALETLLIHR	K	D	99.70%	74.6	2,486.13	3,553.16	1923000	606	622
1093	POSITIVE 1	Delta-1-pyrroline-5-carboxylate synthase OS=Mus musculus GN=Aldh18a1 PE=1 SV=2	P5CS_MOUSE	87,266.90	100.00%	3	6	17	0.32%	GDECGLALGR	R	L	99.70%	74.3	1,434.61	1,763.05	1.88E+07	85	94
1094	POSITIVE 1	Delta-1-pyrroline-5-carboxylate synthase OS=Mus musculus GN=Aldh18a1 PE=1 SV=2	P5CS_MOUSE	87,266.90	100.00%	3	6	17	0.32%	LGSAVVTRGDECGLALGR	K	L	99.70%	82.1	2,218.07	2,039.65	4332180	77	94
1095	POSITIVE 1	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	PGAM2_MOUSE	28,827.80	100.00%	4	8	24	0.45%	FCGWFDAELSEK	R	G	99.70%	110	1,875.77	3,174.12	2807260	22	33
1096	POSITIVE 1	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	PGAM2_MOUSE	28,827.80	100.00%	4	8	24	0.45%	HGESLWNQENRFCGWFDAELSEK	R	G	99.70%	81.5	3,226.37	3,280.55	2859800	11	33
1097	POSITIVE 1	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	PGAM2_MOUSE	28,827.80	100.00%	4	8	24	0.45%	YAGLKPEELPTCESLK	R	D	99.70%	73	2,222.05	2,140.01	2807870	142	157
1098	POSITIVE 1	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	PGAM2_MOUSE	28,827.80	100.00%	4	8	24	0.45%	YAGLKPEELPTCESLKDTIAR	R	A	99.70%	62.2	2,778.34	2,404.72	2730990	142	162
1099	POSITIVE 1	Serrate RNA effector molecule homolog OS=Mus musculus GN=Srrt PE=1 SV=1	SRRT_MOUSE	100,455.60	100.00%	2	3	3	0.06%	DAAGLECKPRPLHK	K	T	99.70%	59.8	1,978.96	915.417	927838	405	418
1100	POSITIVE 1	Serrate RNA effector molecule homolog OS=Mus musculus GN=Srrt PE=1 SV=1	SRRT_MOUSE	100,455.60	100.00%	2	3	3	0.06%	LRECELSPGVNR	R	D	99.70%	35.4	1,816.84	1,371.40	78,459.80	486	497
1101	POSITIVE 1	Synaptojanin-2-binding protein OS=Mus musculus GN=Synj2bp PE=1 SV=1	SYJ2B_MOUSE	15,814.70	99.60%	1	1	2	0.04%	NAGCAVSLR	R	V	99.70%	50.2	1,334.59	1,363.89	1076700	87	95
1102	POSITIVE 1	39S ribosomal protein L50, mitochondrial OS=Mus musculus GN=Mrpl50 PE=1 SV=2	RM50_MOUSE	18,213.30	99.90%	1	1	2	0.04%	KEPVLVCPPLR	K	S	99.70%	43	1,694.87	1,953.49	5671110	47	57
1103	POSITIVE 1	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	10	13	0.25%	CELSSSVQTDINLPYLTMDASGPK	K	H	99.70%	104	3,013.36	3,532.22	1075960	317	340
1104	POSITIVE 1	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	10	13	0.25%	DQLPADECNK	K	L	99.70%	47.5	1,576.64	1,103.66	840958	601	610
1105	POSITIVE 1	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	10	13	0.25%	MEEFKDQLPADECNK	K	L	99.70%	74.3	2,240.93	1,717.76	9791090	596	610
1106	POSITIVE 1	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	10	13	0.25%	MEEFKDQLPADECNKLK	K	E	99.70%	54.2	2,482.11	1,768.36	1459380	596	612
1107	POSITIVE 1	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	10	13	0.25%	MEEFKDQLPADECNKLKEEISK	K	M	99.70%	76.8	3,068.40	2,148.41	597788	596	617
1108	POSITIVE 1	FAD-dependent oxidoreductase domain-containing protein 1 OS=Mus musculus GN=Foxred1 PE=1 SV=1	FXRD1_MOUSE	54,178.20	99.60%	1	2	3	0.06%	VCLMSPEQLQTK	K	F	99.70%	78.3	1,820.83	2,352.99	2635210	186	197
1109	POSITIVE 1	Glomulin OS=Mus musculus GN=Glmn PE=1 SV=1	GLMN_MOUSE	67,758.60	99.60%	1	1	2	0.04%	LEDNSLCYQYLEIK	R	S	99.70%	70.2	2,174.97	2,822.81	848452	345	358
1110	POSITIVE 1	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	DNPEP_MOUSE	52,207.50	99.90%	1	1	2	0.04%	ETACTTGVLQTLTLFK	R	G	99.70%	76	2,170.05	3,642.52	361295	442	457
1111	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	ASCTTNCLAPLAK	N	V	99.70%	45.7	1,861.82	2,433.92	343296	148	160
1112	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	FVSNASCTTNCLAPLAK	K	V	99.50%	29.6	2,309.04	2,871.81	941524	0	0
1113	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVDNASCTTNCLAPLAK	K	V	99.70%	64.4	2,303.05	2,744.34	1.21E+07	0	0
1114	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVENASCTTNCLAPLAK	K	V	99.70%	57	2,317.06	2,824.61	1897720	0	0
1115	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNADCTTNCLAPLAK	K	V	99.70%	63.9	2,303.05	2,805.65	9.09E+07	0	0
1116	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNAECTTNCLAPLAK	K	V	99.70%	60.6	2,317.06	2,858.99	1.08E+07	0	0
1117	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNAGCTTNCLAPLAK	K	V	99.70%	63.5	2,245.04	2,672.83	9861220	0	0
1118	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCETNCLAPLAK	K	V	99.70%	51.5	2,303.05	5,287.23	1121230	0	0
1119	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCTPNCLAPLAK	K	V	99.70%	34.1	2,146.01	2,278.27	1001400	0	0
1120	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCTTN	K	C	99.70%	56.2	1,453.60	1,029.08	8436080	144	153
1121	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCTTNC	K	L	99.70%	43.2	1,681.66	1,732.88	319922	144	154
1122	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCTTNCL	K	A	99.70%	39.8	1,794.75	2,529.22	389494	144	155
1123	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNASCTTNCLAPLAK	K	V	99.70%	102	2,275.05	3,691.30	1.65E+09	144	160
1124	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNATCTTNCLAPLAK	K	V	99.70%	46.3	2,289.07	2,709.71	764846	0	0
1125	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNNSCTTNCLAPLAK	K	V	99.70%	56.8	2,318.06	2,813.93	1.94E+07	0	0
1126	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNQSCTTNCLAPLAK	K	V	99.70%	42.3	2,332.07	2,465.94	887337	0	0
1127	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	IVSNSSCTTNCLAPLAK	K	V	99.70%	48.7	2,291.05	2,619.29	2.12E+07	0	0
1128	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	KIVSNASCTTNCLAPLAK	L	V	99.70%	49	2,403.15	2,249.08	987379	143	160
1129	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	RVSNADCTTNCLAPLAK	K	V	99.70%	37.3	2,346.06	3,765.13	3996300	0	0
1130	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	RVSNASCTTNCLAPLAK	K	V	99.70%	63.3	2,318.07	3,680.65	1.29E+08	0	0
1131	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	SNASCTTNCLAPLAK	V	V	99.70%	60.3	2,062.90	2,453.99	3237960	146	160
1132	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	VPTPNVSVVDLTCR	R	L	99.70%	88.4	1,943.93	2,622.77	4665120	233	246
1133	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	VPTPNVSVVDLTCRLEKPAK	R	Y	99.70%	79.8	2,610.34	2,587.40	9329480	233	252
1134	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	VSNASCTTNCLAPLAK	I	V	99.70%	65.4	2,161.97	2,477.64	5258100	145	160
1135	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	YDNSLHIVSNASCTTNCLAPLAK	K	V	99.70%	43	3,004.36	4,238.96	615039	0	0
1136	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	YDNSLKIVSNASCTTNCLAPLAK	K	V	99.70%	82.2	2,995.40	2,960.36	2403460	138	160
1137	POSITIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	27	46	265	5.01%	YDNSLRIVSNASCTTNCLAPLAK	K	V	99.70%	45.6	3,023.40	3,402.00	358049	0	0
1138	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit alpha, mitochondrial OS=Mus musculus GN=Idh3a PE=1 SV=1	IDH3A_MOUSE	39,639.40	100.00%	4	7	16	0.30%	CREVAENCK	K	D	99.70%	32.7	1,620.66	1,004.83	519339	215	223
1139	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit alpha, mitochondrial OS=Mus musculus GN=Idh3a PE=1 SV=1	IDH3A_MOUSE	39,639.40	100.00%	4	7	16	0.30%	CREVAENCKDIK	K	F	99.70%	49.2	1,976.86	1,288.10	1.44E+07	215	226
1140	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit alpha, mitochondrial OS=Mus musculus GN=Idh3a PE=1 SV=1	IDH3A_MOUSE	39,639.40	100.00%	4	7	16	0.30%	EVAENCKDIK	R	F	99.70%	50.7	1,592.70	713.319	2100380	217	226
1141	POSITIVE 1	Isocitrate dehydrogenase [NAD] subunit alpha, mitochondrial OS=Mus musculus GN=Idh3a PE=1 SV=1	IDH3A_MOUSE	39,639.40	100.00%	4	7	16	0.30%	IEAACFATIK	K	D	99.70%	52.1	1,510.70	2,281.31	865184	327	336
1142	POSITIVE 1	Pyruvate kinase PKM OS=Mus musculus GN=Pkm PE=1 SV=4	KPYM_MOUSE	57,845.60	99.60%	1	1	1	0.02%	CCSGAIIVLTK	K	S	99.70%	44.8	1,676.78	3,235.55	312993	423	433
1143	POSITIVE 1	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	1	1	1	0.02%	RCLMQNDLK	K	M	99.70%	56.6	1,564.70	1,306.85	331217	803	811
1144	POSITIVE 1	WD repeat-containing protein 46 OS=Mus musculus GN=Wdr46 PE=2 SV=1	WDR46_MOUSE	69,049.00	99.60%	1	1	2	0.04%	VPAELICLNPR	K	A	99.70%	63.9	1,668.82	2,579.78	628849	508	518
1145	POSITIVE 1	Ras-related protein Rab-21 OS=Mus musculus GN=Rab21 PE=1 SV=4	RAB21_MOUSE	24,106.60	99.60%	1	2	3	0.06%	VVLLGEGCVGK	K	T	99.70%	51.2	1,517.75	2,149.45	3474630	20	30
1146	POSITIVE 1	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	2	2	2	0.04%	ILCEPPLALRR	R	M	99.70%	36.6	1,724.89	2,130.61	403711	901	911
1147	POSITIVE 1	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	2	2	2	0.04%	LQQFQCGELPLLTR	R	V	99.70%	56.8	2,090.02	3,002.20	366452	1171	1184
1148	POSITIVE 1	Aspartate--tRNA ligase, cytoplasmic OS=Mus musculus GN=Dars PE=1 SV=2	SYDC_MOUSE	57,147.70	100.00%	1	2	5	0.09%	LEYCEALAMLR	R	E	99.70%	72.4	1,755.79	3,239.26	2223880	346	356
1149	POSITIVE 1	Paladin OS=Mus musculus GN=Pald1 PE=1 SV=1	PALD_MOUSE	96,740.70	100.00%	2	2	3	0.06%	DPGTGFVFSCLSGQGR	K	T	99.70%	40.5	2,071.90	3,017.86	248681	655	670
1150	POSITIVE 1	Paladin OS=Mus musculus GN=Pald1 PE=1 SV=1	PALD_MOUSE	96,740.70	100.00%	2	2	3	0.06%	GQECGSQQAVQQR	R	A	99.70%	75.5	1,862.79	740.952	154765	411	423
1151	POSITIVE 1	Structural maintenance of chromosomes protein 2 OS=Mus musculus GN=Smc2 PE=1 SV=2	SMC2_MOUSE	134,244.00	100.00%	3	4	5	0.09%	ALNCEIEELER	K	R	99.70%	64.2	1,762.77	2,440.79	1564440	276	286
1152	POSITIVE 1	Structural maintenance of chromosomes protein 2 OS=Mus musculus GN=Smc2 PE=1 SV=2	SMC2_MOUSE	134,244.00	100.00%	3	4	5	0.09%	CIAPETLR	R	V	99.00%	52.1	1,346.62	1,673.45	248908	585	592
1153	POSITIVE 1	Structural maintenance of chromosomes protein 2 OS=Mus musculus GN=Smc2 PE=1 SV=2	SMC2_MOUSE	134,244.00	100.00%	3	4	5	0.09%	VQDLFCSVGLNVNNPHFLIMQGR	R	I	99.70%	68.4	3,045.45	3,581.85	660226	127	149
1154	POSITIVE 1	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial OS=Mus musculus GN=Pck2 PE=1 SV=1	PCKGM_MOUSE	70,528.70	100.00%	3	3	5	0.09%	QCPIMDPAWEAPEGVPIDAIIFGGR	R	R	99.70%	76.3	3,126.45	4,365.84	29,438.00	430	454
1155	POSITIVE 1	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial OS=Mus musculus GN=Pck2 PE=1 SV=1	PCKGM_MOUSE	70,528.70	100.00%	3	3	5	0.09%	RYVAAAFPSACGK	K	T	99.70%	60.2	1,784.82	1,567.94	1733820	296	308
1156	POSITIVE 1	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial OS=Mus musculus GN=Pck2 PE=1 SV=1	PCKGM_MOUSE	70,528.70	100.00%	3	3	5	0.09%	YVAAAFPSACGK	R	T	99.70%	53.9	1,628.72	1,893.54	1128380	297	308
1157	POSITIVE 1	Protein virilizer homolog OS=Mus musculus GN=Kiaa1429 PE=1 SV=1	VIR_MOUSE	201,444.00	99.60%	1	1	2	0.04%	FEINCIPNLIEYVK	R	Q	99.70%	69.3	2,139.03	3,967.96	162089	902	915
1158	POSITIVE 1	Mitochondrial 10-formyltetrahydrofolate dehydrogenase OS=Mus musculus GN=Aldh1l2 PE=1 SV=2	AL1L2_MOUSE	101,592.20	99.60%	1	1	1	0.02%	SCDVKPNDTVDSLYNR	R	F	99.70%	68.8	2,269.98	1,846.45	683003	173	188
1159	POSITIVE 1	Nuclear pore complex protein Nup155 OS=Mus musculus GN=Nup155 PE=1 SV=1	NU155_MOUSE	155,120.80	99.60%	1	2	2	0.04%	YVENPSLVLNCER	R	R	99.70%	56.5	1,979.90	2,247.40	1594520	1334	1346
1160	POSITIVE 1	Calcyclin-binding protein OS=Mus musculus GN=Cacybp PE=1 SV=1	CYBP_MOUSE	26,510.70	99.60%	1	1	1	0.02%	WDYLTQVEKECKEK	R	E	99.70%	43.3	2,243.01	1,968.20	721319	164	177
1161	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	DHHTADLCQEK	R	L	99.70%	57.7	1,740.71	649.056	405500	20	30
1162	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	SEGTYCCGPVSVR	K	A	99.70%	51	1,926.78	2,212.43	444350	365	377
1163	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	VVNSMVNCNDDQGVLLGR	R	W	99.70%	30.7	2,377.07	3,617.00	371348	0	0
1164	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	VVSAMVNCNDDQGVLLGR	R	W	99.70%	86.2	2,334.06	2,481.14	6789280	223	240
1165	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	WKEHGCQQVK	R	Y	99.70%	53.7	1,686.75	479.739	1083860	264	273
1166	POSITIVE 1	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	10	14	0.27%	YSGCLTESNLIK	K	V	99.70%	86.1	1,771.80	2,174.29	3475260	550	561
1167	POSITIVE 1	Ubiquitin-conjugating enzyme E2 variant 1 OS=Mus musculus GN=Ube2v1 PE=1 SV=1	UB2V1_MOUSE	16,354.80	100.00%	2	2	3	0.06%	ENMKLPQPPEGQCYSN	K	-	99.70%	66.2	2,278.95	2,095.98	631345	132	147
1168	POSITIVE 1	Ubiquitin-conjugating enzyme E2 variant 1 OS=Mus musculus GN=Ube2v1 PE=1 SV=1	UB2V1_MOUSE	16,354.80	100.00%	2	2	3	0.06%	LPQPPEGQCYSN	K	-	99.70%	50.3	1,776.73	1,925.15	685456	136	147
1169	POSITIVE 1	rRNA methyltransferase 1, mitochondrial OS=Mus musculus GN=Mrm1 PE=2 SV=2	MRM1_MOUSE	34,843.60	100.00%	2	3	4	0.08%	LFGLSPCLLALR	R	A	99.70%	55	1,746.90	3,950.19	33,485.90	50	61
1170	POSITIVE 1	rRNA methyltransferase 1, mitochondrial OS=Mus musculus GN=Mrm1 PE=2 SV=2	MRM1_MOUSE	34,843.60	100.00%	2	3	4	0.08%	NSCPLTPVVSK	R	A	99.70%	63.9	1,588.75	1,787.56	1277400	178	188
1171	POSITIVE 1	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	VMA5A_MOUSE	87,144.70	100.00%	3	3	5	0.09%	ANLGGTEILTPLCNIYK	K	A	99.70%	80.8	2,264.11	3,346.87	1282380	362	378
1172	POSITIVE 1	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	VMA5A_MOUSE	87,144.70	100.00%	3	3	5	0.09%	NNLGGTEILTPLCNIYK	K	A	99.70%	33.5	2,307.11	4,010.51	98,569.40	0	0
1173	POSITIVE 1	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	VMA5A_MOUSE	87,144.70	100.00%	3	3	5	0.09%	SACSAIQK	K	K	99.00%	45.4	1,251.55	782.394	624337	657	664
1174	POSITIVE 1	Galectin-1 OS=Mus musculus GN=Lgals1 PE=1 SV=3	LEG1_MOUSE	14,866.10	100.00%	3	5	10	0.19%	ACGLVASNLNLKPGECLK	M	V	99.70%	64.3	2,441.16	3,240.60	4563490	2	19
1175	POSITIVE 1	Galectin-1 OS=Mus musculus GN=Lgals1 PE=1 SV=3	LEG1_MOUSE	14,866.10	100.00%	3	5	10	0.19%	DSNNLCLHFNPR	K	F	99.70%	52.1	1,873.81	2,037.63	2154190	38	49
1176	POSITIVE 1	Galectin-1 OS=Mus musculus GN=Lgals1 PE=1 SV=3	LEG1_MOUSE	14,866.10	100.00%	3	5	10	0.19%	FNAHGDANTIVCNTK	R	E	99.70%	58.4	2,048.89	1,379.98	720984	50	64
1177	POSITIVE 1	Ubiquitin carboxyl-terminal hydrolase 24 OS=Mus musculus GN=Usp24 PE=1 SV=1	UBP24_MOUSE	294,006.70	99.90%	1	1	1	0.02%	LKHPYYPCMAK	K	V	99.70%	40.6	1,794.81	1,237.75	259609	2150	2160
1178	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	AEQFYCGDTEGK	K	K	99.70%	77.7	1,791.70	1,456.30	7186640	390	401
1179	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	AEQFYCGDTEGKK	K	V	99.70%	66.4	1,919.79	1,124.77	7725890	390	402
1180	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	ELEQIFCQFDSK	K	L	99.70%	66	1,930.83	3,139.39	1176330	325	336
1181	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	ICEEAFTR	K	S	99.00%	33.6	1,412.59	1,631.62	698295	565	572
1182	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	KELEQIFCQFDSK	R	L	99.70%	46.8	2,058.93	2,670.75	362374	324	336
1183	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	RFGLEGCEVLIPALK	K	T	99.70%	53.3	2,089.06	3,041.66	452242	277	291
1184	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	SAPVAAEPFLSGTSSNYMEEMYCAWLENPK	Y	S	99.70%	32.6	3,766.62	4,159.45	40,634.10	0	0
1185	POSITIVE 1	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	8	11	18	0.34%	SAPVAAEPFLSGTSSNYVEEMYCAWLENPK	Y	S	99.70%	42.8	3,750.64	3,875.14	78,881.40	41	70
1186	POSITIVE 1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	4	8	16	0.30%	IHMGNCAENTAK	K	K	99.70%	69.1	1,732.72	875.52	3.53E+07	188	199
1187	POSITIVE 1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	4	8	16	0.30%	IHMGNCAENTAKK	K	M	99.10%	30.9	1,860.82	672.318	209231	188	200
1188	POSITIVE 1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	4	8	16	0.30%	IVVHMAHALKPGEFGLASICNGGGGASALLIEKL	R	-	99.70%	34.2	3,817.96	3,233.66	300082	391	424
1189	POSITIVE 1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	4	8	16	0.30%	QATLGAGLPISTPCTTVNK	R	V	99.70%	74.7	2,316.13	2,588.23	6217140	103	121
1190	POSITIVE 1	tRNA (cytosine(34)-C(5))-methyltransferase OS=Mus musculus GN=Nsun2 PE=1 SV=2	NSUN2_MOUSE	85,452.80	100.00%	2	3	4	0.08%	MVYMTCSLNPVEDEAVIAALLEK	R	S	99.70%	38.3	2,983.39	4,648.43	18,343.40	0	0
1191	POSITIVE 1	tRNA (cytosine(34)-C(5))-methyltransferase OS=Mus musculus GN=Nsun2 PE=1 SV=2	NSUN2_MOUSE	85,452.80	100.00%	2	3	4	0.08%	MVYSTCSLNPVEDEAVIAALLEK	R	S	99.70%	103	2,939.38	4,309.33	600634	316	338
1192	POSITIVE 1	Elongation factor 1-alpha 1 OS=Mus musculus GN=Eef1a1 PE=1 SV=3	EF1A1_MOUSE	50,114.20	99.80%	1	1	1	0.02%	DGSASGTTLLEALDCILPPTRPTDKPLR	K	L	99.70%	57.3	3,381.68	3,747.29	125840	220	247
1193	POSITIVE 1	Acetyl-CoA carboxylase 2 OS=Mus musculus GN=Acacb PE=1 SV=1	ACACB_MOUSE	275,752.20	99.60%	1	1	2	0.04%	RPGVILEAGCVVAR	K	L	99.70%	50.8	1,883.96	2,080.81	790361	937	950
1194	POSITIVE 1	Myosin regulatory light chain 2, atrial isoform OS=Mus musculus GN=Myl7 PE=1 SV=1	MLRA_MOUSE	19,450.50	100.00%	3	5	6	0.11%	EAFSCIDQNR	K	D	99.70%	52.7	1,626.66	1,676.47	1007750	39	48
1195	POSITIVE 1	Myosin regulatory light chain 2, atrial isoform OS=Mus musculus GN=Myl7 PE=1 SV=1	MLRA_MOUSE	19,450.50	100.00%	3	5	6	0.11%	EAFSCIDQNRDGIICK	K	S	99.70%	53.6	2,381.03	2,384.33	2891650	39	54
1196	POSITIVE 1	Myosin regulatory light chain 2, atrial isoform OS=Mus musculus GN=Myl7 PE=1 SV=1	MLRA_MOUSE	19,450.50	100.00%	3	5	6	0.11%	SLCYIITHGDEKEE	K	-	99.70%	65.4	2,080.90	2,071.79	967052	162	175
1197	POSITIVE 1	Dedicator of cytokinesis protein 4 OS=Mus musculus GN=Dock4 PE=1 SV=1	DOCK4_MOUSE	226,556.10	99.60%	1	1	1	0.02%	ILSNVFCLIK	R	K	99.70%	35.7	1,593.81	3,530.29	126755	854	863
1198	POSITIVE 1	Mitochondrial proton/calcium exchanger protein OS=Mus musculus GN=Letm1 PE=1 SV=1	LETM1_MOUSE	82,991.30	100.00%	2	4	5	0.09%	EEIDILSDACSK	K	L	99.70%	56.7	1,766.76	2,375.61	3273360	542	553
1199	POSITIVE 1	Mitochondrial proton/calcium exchanger protein OS=Mus musculus GN=Letm1 PE=1 SV=1	LETM1_MOUSE	82,991.30	100.00%	2	4	5	0.09%	GEEITKEEIDILSDACSK	K	L	99.70%	76.3	2,424.09	2,543.73	2061510	536	553
1200	POSITIVE 1	ATP-dependent RNA helicase DDX1 OS=Mus musculus GN=Ddx1 PE=1 SV=1	DDX1_MOUSE	82,501.10	100.00%	2	3	5	0.09%	GSAFAIGSDGLCCQSR	R	E	99.70%	70.4	2,140.88	2,678.91	790325	99	114
1201	POSITIVE 1	ATP-dependent RNA helicase DDX1 OS=Mus musculus GN=Ddx1 PE=1 SV=1	DDX1_MOUSE	82,501.10	100.00%	2	3	5	0.09%	MHNQIPQITCDGK	R	R	99.70%	63.2	1,928.84	1,534.06	1885220	387	399
1202	POSITIVE 1	Nucleoside diphosphate kinase 3 OS=Mus musculus GN=Nme3 PE=1 SV=3	NDK3_MOUSE	19,099.00	99.60%	1	2	3	0.06%	EAELLCWEDSAGHWLYE	R	-	99.70%	58.8	2,495.03	3,928.71	397372	153	169
1203	POSITIVE 1	Protein NDRG2 OS=Mus musculus GN=Ndrg2 PE=1 SV=1	NDRG2_MOUSE	40,789.90	99.60%	1	1	1	0.02%	TLSQSSESGTLPSGPPGHTMEVSC	R	-	99.70%	68.1	2,833.21	2,171.84	369578	348	371
1204	POSITIVE 1	SWI/SNF complex subunit SMARCC2 OS=Mus musculus GN=Smarcc2 PE=1 SV=2	SMRC2_MOUSE	132,604.90	99.60%	1	1	2	0.04%	SLVQNNCLSRPNIFLCPEIEPK	K	L	99.70%	65.6	3,083.48	3,188.10	412154	130	151
1205	POSITIVE 1	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	3	3	5	0.09%	GDVEMLCGGPPCQGFSGMNR	K	F	99.70%	66.3	2,624.05	2,982.40	1163110	1218	1237
1206	POSITIVE 1	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	3	3	5	0.09%	LEEVTAGTQLGPEEPCEQEDDNR	K	S	99.70%	97.3	3,003.26	2,141.86	280316	217	239
1207	POSITIVE 1	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	3	3	5	0.09%	SQLCDLETK	K	L	99.70%	45.3	1,480.64	1,549.04	1265120	59	67
1208	POSITIVE 1	Electron transfer flavoprotein subunit beta OS=Mus musculus GN=Etfb PE=1 SV=3	ETFB_MOUSE	27,623.20	99.60%	1	1	1	0.02%	HSMNPFCEIAVEEAVR	K	L	99.70%	61.3	2,275.99	2,918.42	1184290	36	51
1209	POSITIVE 1	Phosphoglycerate mutase 1 OS=Mus musculus GN=Pgam1 PE=1 SV=3	PGAM1_MOUSE	28,832.80	99.60%	1	1	1	0.02%	YADLTEDQLPSCESLK	R	D	99.70%	63.2	2,255.98	2,378.78	833868	142	157
1210	POSITIVE 1	Protein FAM114A2 OS=Mus musculus GN=Fam114a2 PE=1 SV=2	F1142_MOUSE	54,045.30	99.60%	1	1	1	0.02%	TESSTCEPQSR	K	D	99.70%	47.5	1,668.66	541.164	54,214.70	485	495
1211	POSITIVE 1	Rho guanine nucleotide exchange factor 7 OS=Mus musculus GN=Arhgef7 PE=1 SV=2	ARHG7_MOUSE	97,058.00	99.10%	1	1	1	0.02%	VIEAYCTSAK	K	T	99.30%	29.6	1,528.68	1,343.60	211262	695	704
1212	POSITIVE 1	Protein FAM173B OS=Mus musculus GN=Fam173b PE=1 SV=1	F173B_MOUSE	27,397.10	100.00%	2	2	3	0.06%	KVCLPFVPATSK	R	Q	99.70%	47.8	1,733.87	2,359.28	919715	60	71
1213	POSITIVE 1	Protein FAM173B OS=Mus musculus GN=Fam173b PE=1 SV=1	F173B_MOUSE	27,397.10	100.00%	2	2	3	0.06%	VCLPFVPATSK	K	Q	99.70%	61.8	1,605.78	2,861.16	852315	61	71
1214	POSITIVE 1	Tryptophan--tRNA ligase, cytoplasmic OS=Mus musculus GN=Wars PE=1 SV=2	SYWC_MOUSE	54,359.80	100.00%	2	2	2	0.04%	ADMPSGESCTSPLELFNSIATQGELVR	M	S	99.70%	85.2	3,338.50	4,537.79	143623	2	28
1215	POSITIVE 1	Tryptophan--tRNA ligase, cytoplasmic OS=Mus musculus GN=Wars PE=1 SV=2	SYWC_MOUSE	54,359.80	100.00%	2	2	2	0.04%	GIFGFTDSDCIGK	K	I	99.70%	48.5	1,803.77	2,961.10	710556	269	281
1216	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 7 OS=Mus musculus GN=Ndufa7 PE=1 SV=3	NDUA7_MOUSE	12,575.90	99.60%	1	2	3	0.06%	LSNNYYCTR	K	D	99.70%	47.5	1,577.65	1,318.79	1720510	49	57
1217	POSITIVE 1	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	EFGM_MOUSE	83,551.30	100.00%	2	4	8	0.15%	GEYTMEYCR	K	Y	99.70%	58	1,595.59	1,593.68	1.09E+07	711	719
1218	POSITIVE 1	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	EFGM_MOUSE	83,551.30	100.00%	2	4	8	0.15%	GEYTMEYCRYQPCSPSTQEELINK	K	Y	99.50%	30.1	3,438.44	2,588.06	202883	711	734
1219	POSITIVE 1	Annexin A7 OS=Mus musculus GN=Anxa7 PE=1 SV=2	ANXA7_MOUSE	49,926.70	99.60%	1	2	4	0.08%	LGTDESCFNMILATR	R	S	99.70%	69	2,130.93	3,085.41	1752700	332	346
1220	POSITIVE 1	Methylmalonic aciduria type A homolog, mitochondrial OS=Mus musculus GN=Mmaa PE=1 SV=1	MMAA_MOUSE	45,933.30	100.00%	1	1	1	0.02%	LSVLAVDPSSCTSGGSLLGDK	R	T	99.70%	63.1	2,450.15	2,997.79	1309330	171	191
1221	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial OS=Mus musculus GN=Ndufa10 PE=1 SV=1	NDUAA_MOUSE	40,604.70	100.00%	3	4	7	0.13%	KQCVDHYNEIK	R	R	99.70%	47	1,820.81	840.816	2428210	181	191
1222	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial OS=Mus musculus GN=Ndufa10 PE=1 SV=1	NDUAA_MOUSE	40,604.70	100.00%	3	4	7	0.13%	KQCVDHYNEIKR	R	L	99.70%	41.8	1,976.91	720.408	729400	181	192
1223	POSITIVE 1	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial OS=Mus musculus GN=Ndufa10 PE=1 SV=1	NDUAA_MOUSE	40,604.70	100.00%	3	4	7	0.13%	QCVDHYNEIK	K	R	99.70%	61.9	1,692.71	1,120.46	136812	182	191
1224	POSITIVE 1	Cysteine desulfurase, mitochondrial OS=Mus musculus GN=Nfs1 PE=1 SV=3	NFS1_MOUSE	50,570.20	100.00%	1	1	2	0.04%	DVALSSGSACTSASLEPSYVLR	K	A	99.70%	92	2,657.22	2,938.13	1970000	374	395
1225	POSITIVE 1	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	NOP56_MOUSE	64,466.20	99.60%	1	2	2	0.04%	GLTDLSACK	K	A	99.70%	49.8	1,351.60	1,656.59	1500190	135	143
1226	POSITIVE 1	26S proteasome non-ATPase regulatory subunit 4 OS=Mus musculus GN=Psmd4 PE=1 SV=1	PSMD4_MOUSE	40,704.10	98.70%	1	1	2	0.04%	ITFCTGIR	K	V	99.00%	44.2	1,354.62	2,111.31	1282220	84	91
1227	POSITIVE 1	High affinity cAMP-specific and IBMX-insensitive 3',5'-cyclic phosphodiesterase 8A OS=Mus musculus GN=Pde8a PE=1 SV=1	PDE8A_MOUSE	93,172.40	100.00%	1	1	1	0.02%	VETTTECVQTDSQTDNQAGK	K	H	99.70%	84.1	2,599.09	1,218.11	198882	328	347
1228	POSITIVE 1	ATP-binding cassette sub-family B member 10, mitochondrial OS=Mus musculus GN=Abcb10 PE=1 SV=1	ABCBA_MOUSE	77,190.20	99.60%	1	2	2	0.04%	ICEHGTHEELLLKPNGLYR	K	K	99.70%	66.4	2,666.28	1,870.75	1565930	674	692
1229	POSITIVE 1	SH3 domain-binding glutamic acid-rich-like protein OS=Mus musculus GN=Sh3bgrl PE=1 SV=1	SH3L1_MOUSE	12,811.50	100.00%	2	3	5	0.09%	KQQDVLCFLEANK	K	I	99.70%	65.2	1,979.93	2,651.93	1250010	19	31
1230	POSITIVE 1	SH3 domain-binding glutamic acid-rich-like protein OS=Mus musculus GN=Sh3bgrl PE=1 SV=1	SH3L1_MOUSE	12,811.50	100.00%	2	3	5	0.09%	QQDVLCFLEANK	K	I	99.70%	57.3	1,851.84	3,149.05	702946	20	31
1231	POSITIVE 1	Alpha-ketoglutarate-dependent dioxygenase FTO OS=Mus musculus GN=Fto PE=1 SV=1	FTO_MOUSE	58,006.80	99.60%	1	1	1	0.02%	LCTDWWCEPMTHLEGLWK	K	K	99.70%	49.8	2,817.19	4,180.01	64,101.10	388	405
1232	POSITIVE 1	CDP-diacylglycerol--glycerol-3-phosphate 3-phosphatidyltransferase, mitochondrial OS=Mus musculus GN=Pgs1 PE=1 SV=1	PGPS1_MOUSE	62,490.20	99.60%	1	1	1	0.02%	QFYSEVCSLGQQDR	R	V	99.70%	39.7	2,103.89	2,313.92	687275	435	448
1233	POSITIVE 1	28S ribosomal protein S30, mitochondrial OS=Mus musculus GN=Mrps30 PE=1 SV=1	RT30_MOUSE	49,940.00	100.00%	3	3	3	0.06%	CKPDKLPLFR	K	R	99.70%	51.6	1,660.83	1,706.79	977431	260	269
1234	POSITIVE 1	28S ribosomal protein S30, mitochondrial OS=Mus musculus GN=Mrps30 PE=1 SV=1	RT30_MOUSE	49,940.00	100.00%	3	3	3	0.06%	TLVNLLAPLNPVLSTAALDCK	R	R	99.70%	64.7	2,610.36	4,249.40	154384	177	197
1235	POSITIVE 1	28S ribosomal protein S30, mitochondrial OS=Mus musculus GN=Mrps30 PE=1 SV=1	RT30_MOUSE	49,940.00	100.00%	3	3	3	0.06%	TLVNLLAPLNPVLSTAALDCKR	R	S	99.70%	52.6	2,766.46	3,829.81	134584	177	198
1236	POSITIVE 1	Nuclear transport factor 2 OS=Mus musculus GN=Nutf2 PE=1 SV=1	NTF2_MOUSE	14,478.90	99.60%	1	1	1	0.02%	NINDAWVCTNDMFR	K	L	99.70%	32.2	2,142.88	3,096.32	337786	107	120
1237	POSITIVE 1	Activator of 90 kDa heat shock protein ATPase homolog 1 OS=Mus musculus GN=Ahsa1 PE=1 SV=2	AHSA1_MOUSE	38,117.30	99.60%	1	2	2	0.04%	NGETELCMEGR	K	G	99.70%	59.9	1,682.66	1,537.65	1083960	295	305
1238	POSITIVE 1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	4	6	11	0.21%	KVIGIECSSISDYAVK	R	I	99.70%	35.5	2,156.04	2,232.05	940413	113	128
1239	POSITIVE 1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	4	6	11	0.21%	QLVTNACLIK	K	E	99.70%	53.6	1,546.77	2,093.93	1567510	244	253
1240	POSITIVE 1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	4	6	11	0.21%	VEDLTFTSPFCLQVK	K	R	99.70%	60.5	2,171.02	3,444.87	1269890	262	276
1241	POSITIVE 1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	4	6	11	0.21%	VIGIECSSISDYAVK	K	I	99.70%	80.6	2,027.94	2,644.94	6811360	114	128
1242	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	PMCIPPPYADLGK	R	A	99.70%	56.1	1,845.83	2,788.84	2300100	12	24
1243	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	SCSGVEFSTSGSSNTDTGK	K	V	99.70%	97.1	2,294.91	2,009.19	1.62E+07	47	65
1244	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	VCEDFDTSVNLAWTSGTNCTR	K	F	99.70%	101	2,888.19	3,350.76	2722290	210	230
1245	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	WCEYGLTFTEK	K	W	99.70%	80.7	1,820.76	2,803.49	2658540	76	86
1246	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	WNTDNTLGTEIAIEDQICQGLK	K	L	99.70%	80.5	2,906.33	3,633.00	443700	87	108
1247	POSITIVE 1	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	VDAC2_MOUSE	31,733.60	100.00%	6	10	91	1.72%	YKWCEYGLTFTEK	K	W	99.70%	82.8	2,111.92	2,647.25	4978060	74	86
1248	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	CGFSELYSWQR	K	E	99.70%	54.8	1,819.75	2,866.65	498837	91	101
1249	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	CSASGHLYILAEDK	K	I	99.70%	97.1	1,950.87	2,004.91	4250280	323	336
1250	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	EENIVHSYPCDWR	K	T	99.70%	64.3	2,091.86	1,998.81	1582910	456	468
1251	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	GTGLVHTAPAHGMEDYSVASQHSLPMDCLVDEGGMFTDAAGPELQNK	K	A	99.70%	30.6	5,344.34	2,976.03	632176	387	433
1252	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	HTSETADALCPR	K	C	99.70%	53.1	1,744.74	1,112.20	500705	993	1004
1253	POSITIVE 1	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	6	9	17	0.32%	SCQTALAEILDVLVR	R	A	99.70%	41.7	2,075.03	4,477.33	5,852.60	818	832
1254	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial OS=Mus musculus GN=Pdk2 PE=1 SV=2	PDK2_MOUSE	46,042.10	100.00%	2	6	11	0.21%	HYQTIQEAGDWCVPSTEPK	R	N	99.70%	90.3	2,633.14	2,153.65	3157110	381	399
1255	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial OS=Mus musculus GN=Pdk2 PE=1 SV=2	PDK2_MOUSE	46,042.10	100.00%	2	6	11	0.21%	QFLDFGSSNACEK	K	T	99.70%	65.2	1,889.78	2,436.66	6338630	35	47
1256	POSITIVE 1	Recombining binding protein suppressor of hairless OS=Mus musculus GN=Rbpj PE=1 SV=1	SUH_MOUSE	58,537.80	99.60%	1	1	1	0.02%	IIQFQATPCPK	R	E	99.70%	59.7	1,689.81	2,019.56	1336040	331	341
1257	POSITIVE 1	Synaptic functional regulator FMR1 OS=Mus musculus GN=Fmr1 PE=1 SV=1	FMR1_MOUSE	68,989.20	99.60%	1	1	1	0.02%	ANEKEPCCWWLAK	R	V	99.70%	49	2,146.91	2,652.31	417725	71	83
1258	POSITIVE 1	Protein phosphatase 1 regulatory subunit 7 OS=Mus musculus GN=Ppp1r7 PE=1 SV=2	PP1R7_MOUSE	41,293.90	99.60%	1	1	2	0.04%	CIENLEELQSLR	K	E	99.70%	83.3	1,890.87	2,766.71	947914	113	124
1259	POSITIVE 1	Methylmalonate-semialdehyde dehydrogenase [acylating], mitochondrial OS=Mus musculus GN=Aldh6a1 PE=1 SV=1	MMSA_MOUSE	57,916.30	100.00%	2	3	6	0.11%	ERVCNLIDSGTK	K	E	99.70%	64.3	1,778.82	1,485.53	2395870	365	376
1260	POSITIVE 1	Methylmalonate-semialdehyde dehydrogenase [acylating], mitochondrial OS=Mus musculus GN=Aldh6a1 PE=1 SV=1	MMSA_MOUSE	57,916.30	100.00%	2	3	6	0.11%	VCNLIDSGTK	R	E	99.70%	60.2	1,493.67	1,662.76	1109680	367	376
1261	POSITIVE 1	Exportin-5 OS=Mus musculus GN=Xpo5 PE=1 SV=1	XPO5_MOUSE	136,976.80	99.60%	1	1	1	0.02%	CALMEALVLVSNQFK	K	D	99.70%	52.4	2,110.01	4,251.04	34,917.80	646	660
1262	POSITIVE 1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	ACTN1_MOUSE	103,072.00	100.00%	5	6	11	0.21%	ICDQWDNLGALTQK	K	R	99.70%	69.1	2,048.92	2,868.66	560980	479	492
1263	POSITIVE 1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	ACTN1_MOUSE	103,072.00	100.00%	5	6	11	0.21%	IDQLECDHQLIQEALIFDNK	K	H	99.70%	65.4	2,829.32	3,422.44	639932	685	704
1264	POSITIVE 1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	ACTN1_MOUSE	103,072.00	100.00%	5	6	11	0.21%	MVSDINNAWGCLEQAEK	R	G	99.70%	75.6	2,352.01	2,963.68	1373580	360	376
1265	POSITIVE 1	E3 ubiquitin-protein ligase NEDD4 OS=Mus musculus GN=Nedd4 PE=1 SV=3	NEDD4_MOUSE	102,708.90	99.60%	1	2	2	0.04%	LAVCGNPATSQPVTSSNHSSR	R	G	99.70%	70.3	2,557.15	1,400.29	350962	362	382
1266	POSITIVE 1	Integrin-linked protein kinase OS=Mus musculus GN=Ilk PE=1 SV=2	ILK_MOUSE	51,373.70	98.70%	1	1	1	0.02%	FSFQCPGR	K	M	99.00%	44.9	1,385.57	1,928.32	985236	342	349
1267	POSITIVE 1	HRAS-like suppressor 3 OS=Mus musculus GN=Pla2g16 PE=1 SV=2	PA216_MOUSE	17,872.00	99.60%	1	3	7	0.13%	LTSENCEHFVNELR	R	Y	99.70%	56.9	2,134.93	1,914.13	4559330	108	121
1268	POSITIVE 1	Phosphoribosyl pyrophosphate synthase-associated protein 2 OS=Mus musculus GN=Prpsap2 PE=1 SV=1	KPRB_MOUSE	40,881.90	98.70%	1	2	3	0.06%	LLASMMCK	K	A	99.00%	44.3	1,340.58	1,912.29	3236450	129	136
1269	POSITIVE 1	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	5	7	8	0.15%	GAGTGGLGLTVEGPCEAK	K	I	99.70%	51.6	2,060.94	2,207.22	550077	1090	1107
1270	POSITIVE 1	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	5	7	8	0.15%	LYAQDADGCPIDIK	K	V	99.70%	59.7	1,965.87	2,189.75	1544530	705	718
1271	POSITIVE 1	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	5	7	8	0.15%	TPCEEVYVK	K	H	99.70%	55.6	1,511.65	1,506.47	1111980	2678	2686
1272	POSITIVE 1	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	5	7	8	0.15%	VCAYGPGLK	K	G	99.70%	50.2	1,351.61	1,604.31	1213620	1066	1074
1273	POSITIVE 1	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	5	7	8	0.15%	VGVTEGCDPTR	R	V	99.70%	52	1,577.67	1,273.45	621053	1343	1353
1274	POSITIVE 1	Obg-like ATPase 1 OS=Mus musculus GN=Ola1 PE=1 SV=1	OLA1_MOUSE	44,731.40	99.60%	1	1	2	0.04%	STFFNVLTNSQASAENFPFCTIDPNESR	K	V	99.70%	71.8	3,580.57	3,970.88	93,228.30	36	63
1275	POSITIVE 1	Pre-mRNA-processing-splicing factor 8 OS=Mus musculus GN=Prpf8 PE=1 SV=2	PRP8_MOUSE	273,624.50	99.60%	1	1	1	0.02%	CRTSYEEFTHK	K	D	99.70%	42.3	1,844.77	1,087.86	514511	1200	1210
1276	POSITIVE 1	WASH complex subunit 1 OS=Mus musculus GN=Washc1 PE=1 SV=1	WASH1_MOUSE	51,660.10	99.60%	1	1	1	0.02%	TQCSLAGQLYAVPLIQPDLR	K	R	99.70%	68.3	2,630.31	3,674.80	343597	6	25
1277	POSITIVE 1	Aldehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh2 PE=1 SV=1	ALDH2_MOUSE	56,537.60	100.00%	4	5	6	0.11%	LLCGGGAAADR	K	G	99.70%	74.2	1,447.64	1,228.73	4967080	386	396
1278	POSITIVE 1	Aldehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh2 PE=1 SV=1	ALDH2_MOUSE	56,537.60	100.00%	4	5	6	0.11%	LLCGGGAAADRGYFIQPTVFGDVK	K	D	99.70%	72.2	2,899.39	3,040.43	391584	386	409
1279	POSITIVE 1	Aldehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh2 PE=1 SV=1	ALDH2_MOUSE	56,537.60	100.00%	4	5	6	0.11%	TFPTVNPSTGEVICQVAEGNK	K	E	99.70%	56	2,635.21	2,912.41	461520	55	75
1280	POSITIVE 1	Aldehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh2 PE=1 SV=1	ALDH2_MOUSE	56,537.60	100.00%	4	5	6	0.11%	TFPTVNPSTGEVICQVAEGNKEDVDK	K	A	99.70%	37.8	3,221.47	2,756.89	811741	55	80
1281	POSITIVE 1	Farnesyl pyrophosphate synthase OS=Mus musculus GN=Fdps PE=1 SV=1	FPPS_MOUSE	40,583.20	99.60%	1	2	6	0.11%	SLIEQCSAPLPPSIFMELANK	K	I	99.70%	94.7	2,732.31	3,931.60	1863040	327	347
1282	POSITIVE 1	NADH dehydrogenase [ubiquinone] iron-sulfur protein 6, mitochondrial OS=Mus musculus GN=Ndufs6 PE=1 SV=2	NDUS6_MOUSE	13,019.60	99.60%	1	3	4	0.08%	IIACDGGGGALGHPK	R	V	99.70%	65.9	1,809.84	1,298.77	2724820	76	90
1283	POSITIVE 1	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	TCPQ_MOUSE	59,556.10	100.00%	4	4	6	0.11%	AHEILPELVCCSAK	K	N	99.70%	63	2,081.95	2,664.93	1022440	139	152
1284	POSITIVE 1	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	TCPQ_MOUSE	59,556.10	100.00%	4	4	6	0.11%	IAVYSCPFDGMITETK	K	G	99.70%	64.7	2,218.98	2,964.32	1147980	239	254
1285	POSITIVE 1	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	TCPQ_MOUSE	59,556.10	100.00%	4	4	6	0.11%	KAHEILPELVCCSAK	K	N	99.70%	48.3	2,210.04	2,268.48	1060430	138	152
1286	POSITIVE 1	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	TCPQ_MOUSE	59,556.10	100.00%	4	4	6	0.11%	QITSYGETCPGLEQYAIKK	K	F	99.70%	47.8	2,573.20	2,150.41	594968	422	440
1287	POSITIVE 1	5'-nucleotidase domain-containing protein 3 OS=Mus musculus GN=Nt5dc3 PE=1 SV=1	NT5D3_MOUSE	63,172.90	100.00%	3	4	5	0.09%	AIEADIEKYICYADQTR	R	A	99.70%	75.7	2,446.10	3,166.64	291709	264	280
1288	POSITIVE 1	5'-nucleotidase domain-containing protein 3 OS=Mus musculus GN=Nt5dc3 PE=1 SV=1	NT5D3_MOUSE	63,172.90	100.00%	3	4	5	0.09%	FSDIYMASLSCLLNYR	R	V	99.70%	33.3	2,340.05	4,172.08	85,553.20	0	0
1289	POSITIVE 1	5'-nucleotidase domain-containing protein 3 OS=Mus musculus GN=Nt5dc3 PE=1 SV=1	NT5D3_MOUSE	63,172.90	100.00%	3	4	5	0.09%	YICYADQTR	K	A	99.70%	52.4	1,576.65	1,465.36	1836570	272	280
1290	POSITIVE 1	Protein NDRG3 OS=Mus musculus GN=Ndrg3 PE=1 SV=1	NDRG3_MOUSE	41,555.40	99.60%	1	1	1	0.02%	SVTSNQSDGTQESCESPDVLDR	R	H	99.70%	72.1	2,798.15	1,790.25	144711	346	367
1291	POSITIVE 1	Desmin OS=Mus musculus GN=Des PE=1 SV=3	DESM_MOUSE	53,498.70	100.00%	2	3	6	0.11%	HQIQSYTCEIDALK	R	G	99.70%	57.4	2,092.94	2,162.60	1553880	325	338
1292	POSITIVE 1	Desmin OS=Mus musculus GN=Des PE=1 SV=3	DESM_MOUSE	53,498.70	100.00%	2	3	6	0.11%	HQIQSYTCEIDALKGTNDSLMR	R	Q	99.70%	48.1	2,967.34	2,499.82	1664840	325	346
1293	POSITIVE 1	Replication factor C subunit 3 OS=Mus musculus GN=Rfc3 PE=1 SV=1	RFC3_MOUSE	40,527.00	99.60%	1	1	1	0.02%	NLVQCGDFPHLLVYGPSGAGK	R	K	99.70%	50.4	2,616.23	3,017.08	193358	28	48
1294	POSITIVE 1	Succinate dehydrogenase assembly factor 3, mitochondrial OS=Mus musculus GN=Sdhaf3 PE=2 SV=1	SDHF3_MOUSE	14,468.70	99.60%	1	2	3	0.06%	ACFGTSLPEEK	K	L	99.70%	62.1	1,625.69	1,983.10	2541320	79	89
1295	POSITIVE 1	Ras-related protein Rap-1A OS=Mus musculus GN=Rap1a PE=1 SV=1	RAP1A_MOUSE	20,987.30	99.70%	1	1	1	0.02%	QVEVDCQQCMLEILDTAGTEQFTAMR	K	D	99.70%	64.5	3,528.52	4,214.62	49,264.90	43	68
1296	POSITIVE 1	Chloride intracellular channel protein 1 OS=Mus musculus GN=Clic1 PE=1 SV=3	CLIC1_MOUSE	27,013.60	100.00%	2	2	3	0.06%	IGNCPFSQR	K	L	99.70%	56.7	1,465.63	1,516.09	910165	21	29
1297	POSITIVE 1	Chloride intracellular channel protein 1 OS=Mus musculus GN=Clic1 PE=1 SV=3	CLIC1_MOUSE	27,013.60	100.00%	2	2	3	0.06%	LCPGGQLPFLLYGTEVHTDTNK	K	I	99.70%	73.4	2,847.34	3,268.34	301966	58	79
1298	POSITIVE 1	T-complex protein 1 subunit epsilon OS=Mus musculus GN=Cct5 PE=1 SV=1	TCPE_MOUSE	59,625.60	7.70%	0	0	0	0.00%	SLHDALCVIR	R	N	99.70%	68.3	1,570.75	2,049.70	2156420	401	410
1299	POSITIVE 1	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	CK5P1_MOUSE	66,110.10	100.00%	3	3	4	0.08%	DSLTYCTT	K	-	99.00%	39.7	1,347.52	1,880.39	502118	581	588
1300	POSITIVE 1	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	CK5P1_MOUSE	66,110.10	100.00%	3	3	4	0.08%	IGILGCMAER	R	L	99.70%	53.7	1,506.69	2,531.91	873119	177	186
1301	POSITIVE 1	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	CK5P1_MOUSE	66,110.10	100.00%	3	3	4	0.08%	SSVSSTPCPSPEAK	Q	S	99.40%	29.5	1,820.78	1,096.60	705698	32	45
1302	POSITIVE 1	WD repeat domain phosphoinositide-interacting protein 3 OS=Mus musculus GN=Wdr45b PE=1 SV=2	WIPI3_MOUSE	38,021.00	99.60%	1	1	1	0.02%	CNYLALVGGGK	R	K	99.70%	56.2	1,538.71	2,538.43	256290	63	73
1303	POSITIVE 1	Stomatin-like protein 2, mitochondrial OS=Mus musculus GN=Stoml2 PE=1 SV=1	STML2_MOUSE	38,384.90	100.00%	3	7	11	0.21%	ERESLNANIVDAINQAADCWGIR	R	C	99.70%	77.2	3,002.38	3,826.34	613141	149	171
1304	POSITIVE 1	Stomatin-like protein 2, mitochondrial OS=Mus musculus GN=Stoml2 PE=1 SV=1	STML2_MOUSE	38,384.90	100.00%	3	7	11	0.21%	ESLNANIVDAINQAADCWGIR	R	C	99.70%	84.7	2,717.24	4,228.16	4286470	151	171
1305	POSITIVE 1	Stomatin-like protein 2, mitochondrial OS=Mus musculus GN=Stoml2 PE=1 SV=1	STML2_MOUSE	38,384.90	100.00%	3	7	11	0.21%	ESRNANIVDAINQAADCWGIR	R	C	99.70%	36	2,760.26	4,522.30	153525	0	0
1306	POSITIVE 1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	3	3	5	0.09%	AACREEIQSNAVR	K	S	99.70%	61	1,890.85	1,040.25	368055	255	267
1307	POSITIVE 1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	3	3	5	0.09%	EELVCGELPR	K	I	99.70%	61	1,588.71	2,086.33	1479350	824	833
1308	POSITIVE 1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	3	3	5	0.09%	ISGSTPCPPPSR	R	A	99.70%	57.3	1,642.73	1,113.90	659975	991	1002
1309	POSITIVE 1	60S ribosomal protein L4 OS=Mus musculus GN=Rpl4 PE=1 SV=3	RL4_MOUSE	47,155.30	99.60%	1	1	1	0.02%	ACARPLISVYSEK	M	G	99.70%	56.2	1,922.91	2,477.26	347022	2	14
1310	POSITIVE 1	Rab GDP dissociation inhibitor beta OS=Mus musculus GN=Gdi2 PE=1 SV=1	GDIB_MOUSE	50,539.10	99.60%	1	1	2	0.04%	TDDYLDQPCCETINR	R	I	99.70%	52.8	2,354.93	2,476.69	2281130	194	208
1311	POSITIVE 1	Dysferlin OS=Mus musculus GN=Dysf PE=1 SV=3	DYSF_MOUSE	237,916.70	100.00%	1	1	1	0.02%	DSFRPSAGWAWAGDWFVCPEK	K	T	99.70%	51.1	2,856.23	3,709.90	83,721.00	926	946
1312	POSITIVE 1	Peptidyl-prolyl cis-trans isomerase NIMA-interacting 1 OS=Mus musculus GN=Pin1 PE=1 SV=1	PIN1_MOUSE	18,370.90	100.00%	1	1	1	0.02%	SGEEDFESLASQFSDCSSAK	K	A	99.70%	61.9	2,568.01	2,995.82	470259	100	119
1313	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 1, mitochondrial OS=Mus musculus GN=Pdk1 PE=1 SV=2	PDK1_MOUSE	48,995.90	100.00%	2	4	4	0.08%	ANHEADDWCVPSREPK	K	D	99.70%	58.6	2,297.97	1,358.81	930403	411	426
1314	POSITIVE 1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 1, mitochondrial OS=Mus musculus GN=Pdk1 PE=1 SV=2	PDK1_MOUSE	48,995.90	100.00%	2	4	4	0.08%	QFLDFGSVNACEK	K	T	99.70%	44.2	1,901.82	2,717.91	653578	61	73
1315	POSITIVE 1	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	ISC2A_MOUSE	22,417.80	100.00%	5	9	19	0.36%	EPVPDSGLLSLFQGQSPLTSC	K	-	99.70%	98.9	2,619.21	4,430.99	547353	186	206
1316	POSITIVE 1	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	ISC2A_MOUSE	22,417.80	100.00%	5	9	19	0.36%	IIKEPVPDSGLLSLFQGQSPLTDC	K	-	99.70%	43.5	3,001.47	4,150.13	197907	0	0
1317	POSITIVE 1	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	ISC2A_MOUSE	22,417.80	100.00%	5	9	19	0.36%	IIKEPVPDSGLLSLFQGQSPLTSC	K	-	99.70%	113	2,973.47	4,058.45	4302100	183	206
1318	POSITIVE 1	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	ISC2A_MOUSE	22,417.80	100.00%	5	9	19	0.36%	RIKEPVPDSGLLSLFQGQSPLTSC	K	-	99.70%	51.1	3,016.49	4,564.12	449150	0	0
1319	POSITIVE 1	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	ISC2A_MOUSE	22,417.80	100.00%	5	9	19	0.36%	TCFSMVPALQK	K	E	99.70%	78	1,668.75	2,640.66	3075120	83	93
1320	POSITIVE 1	Cytochrome P450 4B1 OS=Mus musculus GN=Cyp4b1 PE=1 SV=1	CP4B1_MOUSE	58,902.60	100.00%	2	2	2	0.04%	NCIGQQFAMNEMK	R	V	99.70%	66	1,957.80	2,328.92	892967	452	464
1321	POSITIVE 1	Cytochrome P450 4B1 OS=Mus musculus GN=Cyp4b1 PE=1 SV=1	CP4B1_MOUSE	58,902.60	100.00%	2	2	2	0.04%	SFDIFCDVGHMALDTLMK	K	C	99.70%	68.3	2,487.08	4,322.24	325934	177	194
1322	POSITIVE 1	Poly(A) RNA polymerase, mitochondrial OS=Mus musculus GN=Mtpap PE=1 SV=1	PAPD1_MOUSE	65,231.30	99.60%	1	1	1	0.02%	LGCDLDMFLDLDETGK	K	L	99.70%	77.2	2,228.95	3,768.23	230513	243	258
1323	POSITIVE 1	DnaJ homolog subfamily C member 7 OS=Mus musculus GN=Dnajc7 PE=1 SV=2	DNJC7_MOUSE	56,477.60	99.70%	1	1	1	0.02%	AATAECDVVMAATEPELLEDEDAK	M	R	99.70%	74.8	3,007.29	3,969.47	136615	2	25
1324	POSITIVE 1	Adenosine deaminase OS=Mus musculus GN=Ada PE=1 SV=3	ADA_MOUSE	39,992.00	99.60%	1	2	4	0.08%	FDYYMPVIAGCR	K	E	99.70%	68.2	1,878.80	3,028.26	2748480	65	76
1325	POSITIVE 1	WD repeat-containing protein 73 OS=Mus musculus GN=Wdr73 PE=1 SV=1	WDR73_MOUSE	40,855.90	99.60%	1	1	1	0.02%	GQGPGPCIASLGSDGQLCLLDSR	K	N	99.70%	77	2,813.27	3,518.81	186970	234	256
1326	POSITIVE 1	Sperm-associated antigen 7 OS=Mus musculus GN=Spag7 PE=1 SV=1	SPAG7_MOUSE	25,921.70	99.60%	1	1	2	0.04%	TYGCVPVANK	K	R	99.70%	39.2	1,495.67	1,470.53	859441	188	197
1327	POSITIVE 1	Chloride intracellular channel protein 5 OS=Mus musculus GN=Clic5 PE=1 SV=1	CLIC5_MOUSE	28,288.40	99.60%	1	2	3	0.06%	AGIDGESIGNCPFSQR	K	L	99.70%	74.2	2,094.90	2,196.74	1174430	22	37
1328	POSITIVE 1	Sorbitol dehydrogenase OS=Mus musculus GN=Sord PE=1 SV=3	DHSO_MOUSE	38,248.80	99.60%	1	3	6	0.11%	MHSVGICGSDVHYWEHGR	K	I	99.70%	62.8	2,514.05	1,751.78	8474580	39	56
1329	POSITIVE 1	LanC-like protein 2 OS=Mus musculus GN=Lancl2 PE=1 SV=1	LANC2_MOUSE	50,778.70	99.60%	1	1	1	0.02%	TIVCQESELPDELLYGR	R	A	99.70%	64.6	2,409.11	3,208.96	307226	184	200
1330	POSITIVE 1	Vasodilator-stimulated phosphoprotein OS=Mus musculus GN=Vasp PE=1 SV=4	VASP_MOUSE	39,666.40	99.60%	1	1	1	0.02%	SSSSVTTSEAHPSTPCSSDDSDLER	K	V	99.70%	65.2	3,026.22	1,401.32	78,568.10	317	341
1331	POSITIVE 1	HEAT repeat-containing protein 3 OS=Mus musculus GN=Heatr3 PE=1 SV=1	HEAT3_MOUSE	74,307.30	99.60%	1	1	1	0.02%	YSPDQLCVLDNVK	K	M	99.70%	60	1,937.87	2,649.05	757643	648	660
1332	POSITIVE 1	Kinesin-1 heavy chain OS=Mus musculus GN=Kif5b PE=1 SV=3	KINH_MOUSE	109,552.60	99.60%	1	1	1	0.02%	FVCSPDEVMDTIDEGK	R	S	99.70%	46.6	2,228.91	2,936.91	411772	172	187
1333	POSITIVE 1	Ubiquitin-fold modifier-conjugating enzyme 1 OS=Mus musculus GN=Ufc1 PE=1 SV=1	UFC1_MOUSE	19,481.90	99.60%	1	2	3	0.06%	ICLTDHFKPLWAR	K	N	99.70%	75.4	2,043.99	2,650.30	2345550	115	127
1334	POSITIVE 1	Large proline-rich protein BAG6 OS=Mus musculus GN=Bag6 PE=1 SV=1	BAG6_MOUSE	121,035.90	99.60%	1	2	8	0.15%	CNLACAPPR	R	H	99.70%	57.7	1,513.63	2,013.05	8629670	346	354
1335	POSITIVE 1	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	TLN1_MOUSE	269,819.30	100.00%	1	1	2	0.04%	AGALQCSPSDVYTK	K	K	99.70%	68.9	1,883.83	1,702.46	1158920	1934	1947
1336	POSITIVE 1	Ras-related protein Rab-18 OS=Mus musculus GN=Rab18 PE=1 SV=2	RAB18_MOUSE	23,035.60	99.80%	1	1	2	0.04%	TCDGVQCAFEELVEK	K	I	99.70%	71.8	2,239.93	3,733.81	493245	154	168
1337	POSITIVE 1	Nexilin OS=Mus musculus GN=Nexn PE=1 SV=3	NEXN_MOUSE	72,109.30	99.60%	1	1	2	0.04%	GETYCLYLPETFPEDGGEYMCK	R	A	99.70%	71.1	3,114.25	3,688.95	560550	565	586
1338	POSITIVE 1	Ester hydrolase C11orf54 homolog OS=Mus musculus PE=1 SV=1	CK054_MOUSE	34,995.90	99.60%	1	1	1	0.02%	AHIMPAEFSSCPLNSDEAVNK	K	W	99.70%	58.2	2,704.18	2,263.73	195510	216	236
1339	POSITIVE 1	Cytosolic non-specific dipeptidase OS=Mus musculus GN=Cndp2 PE=1 SV=1	CNDP2_MOUSE	52,768.20	99.40%	1	1	1	0.02%	DVGAETLLHSCK	K	K	99.60%	29.7	1,716.77	1,834.96	610468	290	301
1340	POSITIVE 1	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	4	8	19	0.36%	LIPDGCGVK	R	Y	99.70%	43.7	1,345.62	1,548.12	243684	190	198
1341	POSITIVE 1	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	4	8	19	0.36%	MLSCAGADR	K	L	99.70%	62.3	1,367.55	1,091.91	2.23E+07	102	110
1342	POSITIVE 1	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	4	8	19	0.36%	MLSCAGADRLQTGMR	K	G	99.70%	48.2	2,053.90	1,729.48	1517310	102	116
1343	POSITIVE 1	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	4	8	19	0.36%	RLIPDGCGVK	K	Y	99.70%	33.6	1,501.73	1,420.42	190033	189	198
1344	POSITIVE 1	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	MSRB2_MOUSE	19,157.40	100.00%	4	6	10	0.19%	FCINSVALK	R	F	99.70%	53.4	1,438.68	2,488.09	1233710	161	169
1345	POSITIVE 1	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	MSRB2_MOUSE	19,157.40	100.00%	4	6	10	0.19%	KYCSGTGWPSFSEAYGSK	K	G	99.70%	74.1	2,399.01	2,318.11	905545	96	113
1346	POSITIVE 1	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	MSRB2_MOUSE	19,157.40	100.00%	4	6	10	0.19%	LDTSLGCPR	R	M	99.70%	41.3	1,405.62	1,547.50	897499	126	134
1347	POSITIVE 1	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	MSRB2_MOUSE	19,157.40	100.00%	4	6	10	0.19%	RLDTSLGCPR	R	M	99.70%	36.7	1,561.72	1,278.36	4208980	125	134
1348	POSITIVE 1	Replication factor C subunit 2 OS=Mus musculus GN=Rfc2 PE=1 SV=1	RFC2_MOUSE	38,725.60	99.60%	1	1	1	0.02%	MEVQESGCDPSESGAQEPSPVPSK	-	T	99.70%	113	2,961.22	2,400.59	218686	1	24
1349	POSITIVE 1	Protoporphyrinogen oxidase OS=Mus musculus GN=Ppox PE=1 SV=1	PPOX_MOUSE	50,871.40	100.00%	2	4	7	0.13%	GVTVLSGQPVCGLSLQPEGR	K	W	99.70%	102	2,441.19	2,888.70	4660460	248	267
1350	POSITIVE 1	Protoporphyrinogen oxidase OS=Mus musculus GN=Ppox PE=1 SV=1	PPOX_MOUSE	50,871.40	100.00%	2	4	7	0.13%	LGPEVASLAMDSLCR	R	G	99.70%	62.6	2,005.91	3,088.48	531645	154	168
1351	POSITIVE 1	Tubulin alpha-4A chain OS=Mus musculus GN=Tuba4a PE=1 SV=1	TBA4A_MOUSE	49,924.60	99.60%	1	1	1	0.02%	TIGGGDDSFTTFFCETGAGK	K	H	99.70%	39.8	2,455.02	3,247.84	294239	41	60
1352	POSITIVE 1	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VDAC3_MOUSE	30,754.00	100.00%	4	10	32	0.61%	CNTPTYCDLGK	M	A	99.70%	58.2	1,825.72	2,672.83	2.98E+07	2	12
1384	POSITIVE 1	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HXK2_MOUSE	102,536.60	100.00%	4	6	7	0.13%	MIASHMIACLFTELNQNQVQK	-	V	99.70%	72.5	2,905.35	4,592.44	31,913.80	1	21
1353	POSITIVE 1	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VDAC3_MOUSE	30,754.00	100.00%	4	10	32	0.61%	SCSGVEFSTSGHAYTDTGK	K	A	99.70%	71.3	2,377.97	5,061.01	622135	35	53
1354	POSITIVE 1	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VDAC3_MOUSE	30,754.00	100.00%	4	10	32	0.61%	VCNYGLTFTQK	K	W	99.70%	90.3	1,717.77	2,241.93	1.47E+07	64	74
1355	POSITIVE 1	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VDAC3_MOUSE	30,754.00	100.00%	4	10	32	0.61%	YKVCNYGLTFTQK	K	W	99.70%	78.3	2,008.93	2,118.47	6220290	62	74
1356	POSITIVE 1	Sodium/potassium-transporting ATPase subunit alpha-1 OS=Mus musculus GN=Atp1a1 PE=1 SV=1	AT1A1_MOUSE	112,985.30	99.60%	1	2	3	0.06%	CIEVCCGSVMEMR	K	E	99.70%	69.4	2,153.83	3,779.68	827385	459	471
1357	POSITIVE 1	Tubulin beta-5 chain OS=Mus musculus GN=Tubb5 PE=1 SV=1	TBB5_MOUSE	49,670.60	100.00%	3	10	18	0.34%	EIVHIQAGQCGNQIGAK	R	F	99.70%	76.7	2,210.04	1,635.61	4503880	3	19
1358	POSITIVE 1	Tubulin beta-5 chain OS=Mus musculus GN=Tubb5 PE=1 SV=1	TBB5_MOUSE	49,670.60	100.00%	3	10	18	0.34%	MREIVHIQAGQCGNQIGAK	-	F	99.70%	62.4	2,497.19	1,583.89	3161760	1	19
1359	POSITIVE 1	Tubulin beta-5 chain OS=Mus musculus GN=Tubb5 PE=1 SV=1	TBB5_MOUSE	49,670.60	100.00%	3	10	18	0.34%	NMMAACDPR	K	H	99.70%	58.5	1,452.55	1,333.08	5159750	298	306
1360	POSITIVE 1	Symplekin OS=Mus musculus GN=Sympk PE=1 SV=1	SYMPK_MOUSE	142,287.90	99.60%	1	1	2	0.04%	AVACSGAAQVR	K	I	99.70%	55.2	1,476.67	990.447	1189830	575	585
1361	POSITIVE 1	Proteasome subunit beta type-8 OS=Mus musculus GN=Psmb8 PE=1 SV=2	PSB8_MOUSE	30,261.00	99.60%	1	2	3	0.06%	VIEINPYLLGTMSGCAADCQYWER	K	L	99.70%	72	3,301.44	4,039.99	166640	106	129
1362	POSITIVE 1	Heterogeneous nuclear ribonucleoprotein A1 OS=Mus musculus GN=Hnrnpa1 PE=1 SV=2	ROA1_MOUSE	34,196.40	100.00%	1	1	1	0.02%	YHTVNGHNCEVRK	K	A	99.70%	33.7	2,000.88	406.488	56,315.10	167	179
1363	POSITIVE 1	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	UN45B_MOUSE	103,641.30	100.00%	2	3	5	0.09%	AGVISALACMVK	K	A	99.70%	80.7	1,606.78	3,340.04	1720160	628	639
1364	POSITIVE 1	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	UN45B_MOUSE	103,641.30	100.00%	2	3	5	0.09%	WLCNTAIDTR	K	T	99.70%	63.7	1,636.72	2,098.93	875660	517	526
1365	POSITIVE 1	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	DNM3A_MOUSE	101,672.10	100.00%	2	3	5	0.09%	HIQEWGPFDLVIGGSPCNDLSIVNPAR	K	K	99.70%	68.9	3,378.60	3,889.90	705348	690	716
1366	POSITIVE 1	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	DNM3A_MOUSE	101,672.10	100.00%	2	3	5	0.09%	YIASEVCEDSITVGMVR	R	H	99.70%	71.4	2,316.03	2,769.50	814095	656	672
1367	POSITIVE 1	Prefoldin subunit 3 OS=Mus musculus GN=Vbp1 PE=1 SV=2	PFD3_MOUSE	22,436.50	99.60%	1	1	2	0.04%	DGCGLETAAGNGR	K	R	99.70%	44.4	1,664.68	1,369.83	1189150	6	18
1368	POSITIVE 1	Small glutamine-rich tetratricopeptide repeat-containing protein alpha OS=Mus musculus GN=Sgta PE=1 SV=2	SGTA_MOUSE	34,323.00	99.60%	1	2	3	0.06%	AIELNPANAVYFCNR	K	A	99.70%	61.9	2,138.97	2,829.60	1648770	118	132
1369	POSITIVE 1	Probable tRNA(His) guanylyltransferase OS=Mus musculus GN=Thg1l PE=1 SV=1	THG1_MOUSE	34,971.00	99.60%	1	1	2	0.04%	VVALNCDLIGDAFWK	R	E	99.70%	55.2	2,107.99	3,633.78	333941	274	288
1370	POSITIVE 1	Acetyl-CoA carboxylase 1 OS=Mus musculus GN=Acaca PE=1 SV=1	ACACA_MOUSE	265,259.30	100.00%	2	2	3	0.06%	KQVNCEVDQR	R	F	99.70%	46	1,662.73	634.53	140469	1337	1346
1371	POSITIVE 1	Acetyl-CoA carboxylase 1 OS=Mus musculus GN=Acaca PE=1 SV=1	ACACA_MOUSE	265,259.30	100.00%	2	2	3	0.06%	RPGAALDPGCVIAK	K	M	99.70%	65.8	1,811.89	1,844.13	3572960	803	816
1372	POSITIVE 1	Apoptosis-associated speck-like protein containing a CARD OS=Mus musculus GN=Pycard PE=1 SV=1	ASC_MOUSE	21,459.10	100.00%	2	3	8	0.15%	LFSFVPSWNLTCK	K	D	99.70%	66.2	1,985.92	3,655.39	2892330	160	172
1373	POSITIVE 1	Apoptosis-associated speck-like protein containing a CARD OS=Mus musculus GN=Pycard PE=1 SV=1	ASC_MOUSE	21,459.10	100.00%	2	3	8	0.15%	LFSFVPSWNLTCKDSLLQALK	K	E	99.70%	66.9	2,854.43	4,005.13	563301	160	180
1374	POSITIVE 1	39S ribosomal protein L11, mitochondrial OS=Mus musculus GN=Mrpl11 PE=1 SV=1	RM11_MOUSE	20,680.90	99.60%	1	1	1	0.02%	HVYEIACVK	K	A	99.70%	41.7	1,505.69	1,498.62	1123580	116	124
1375	POSITIVE 1	Peroxiredoxin-1 OS=Mus musculus GN=Prdx1 PE=1 SV=1	PRDX1_MOUSE	22,177.50	100.00%	2	4	4	0.08%	HGEVCPAGWKPGSDTIKPDVNK	K	S	99.70%	78.1	2,779.29	1,577.59	1.02E+07	169	190
1376	POSITIVE 1	Peroxiredoxin-1 OS=Mus musculus GN=Prdx1 PE=1 SV=1	PRDX1_MOUSE	22,177.50	100.00%	2	4	4	0.08%	HGEVCPNGWKPGSDTIKPDVNK	K	S	99.70%	43.8	2,822.30	1,814.72	148373	0	0
1377	POSITIVE 1	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	5	8	13	0.25%	DEQERCITIK	K	S	99.70%	35.7	1,678.75	1,299.47	1626890	62	71
1378	POSITIVE 1	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	5	8	13	0.25%	DLEEDHACIPIKK	K	S	99.70%	54.1	1,954.90	1,571.02	2851810	560	572
1379	POSITIVE 1	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	5	8	13	0.25%	IWCFGPDGTGPNILTDITK	K	G	99.70%	95.1	2,492.16	3,862.36	259475	649	667
1380	POSITIVE 1	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	5	8	13	0.25%	STLTDSLVCK	K	A	99.70%	54.3	1,510.69	1,919.20	1.87E+07	33	42
1381	POSITIVE 1	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	5	8	13	0.25%	TFCQLILDPIFK	R	V	99.70%	68.6	1,881.92	3,777.23	213805	288	299
1382	POSITIVE 1	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HXK2_MOUSE	102,536.60	100.00%	4	6	7	0.13%	FLSQIESDCLALLQVR	K	A	99.70%	55.7	2,279.12	3,471.50	660650	786	801
1383	POSITIVE 1	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HXK2_MOUSE	102,536.60	100.00%	4	6	7	0.13%	HLGLESTCDDSIIVK	R	E	99.70%	74	2,073.96	2,180.11	3360610	806	820
1385	POSITIVE 1	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HXK2_MOUSE	102,536.60	100.00%	4	6	7	0.13%	MLPTYVCATPDGTEK	K	G	99.70%	60.7	2,069.90	2,192.64	782552	511	525
1386	POSITIVE 2	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	PRDX4_MOUSE	31,053.80	100.00%	4	9	12	0.17%	SINTEVVACSVDSQFTHLAWINTPR	K	R	99.70%	51.6	3,232.52	3,550.16	1111950	143	167
1387	POSITIVE 2	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	7	10	14	0.20%	ASYDTLCVLDGDKDSINCAR	K	Q	99.70%	33.8	2,728.17	2,693.50	479031	825	844
1388	POSITIVE 2	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	7	10	14	0.20%	ILDYSCSQDRDTQK	K	I	99.70%	72.4	2,115.91	1,233.03	1058370	535	548
1389	POSITIVE 2	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	USP9X_MOUSE	290,715.30	100.00%	7	10	14	0.20%	YMPDICVIR	R	A	99.70%	51.9	1,553.69	2,586.51	3207960	1232	1240
1390	POSITIVE 2	RuvB-like 1 OS=Mus musculus GN=Ruvbl1 PE=1 SV=1	RUVB1_MOUSE	50,215.30	98.90%	1	1	2	0.03%	EVYEGEVTELTPCETENPMGGYGK	K	T	99.70%	71.1	3,076.29	2,754.46	1876480	129	152
1391	POSITIVE 2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2 OS=Mus musculus GN=Gnb2 PE=1 SV=3	GBB2_MOUSE	37,331.80	100.00%	3	3	3	0.04%	ACGDSTLTQITAGLDPVGR	K	I	99.70%	79.3	2,319.07	3,214.18	1584940	24	42
1392	POSITIVE 2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2 OS=Mus musculus GN=Gnb2 PE=1 SV=3	GBB2_MOUSE	37,331.80	100.00%	3	3	3	0.04%	ADQELLMYSHDNIICGITSVAFSR	R	S	99.70%	56.9	3,127.43	3,713.19	308435	257	280
1393	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	UBP7_MOUSE	128,478.10	100.00%	4	5	6	0.08%	IIGVHQEDELLECLSPATSR	K	T	99.70%	56	2,654.26	2,913.89	2241560	950	969
1394	POSITIVE 2	DNA ligase 1 OS=Mus musculus GN=Lig1 PE=1 SV=2	DNLI1_MOUSE	102,291.20	100.00%	2	2	2	0.03%	TENIPVCK	K	A	99.00%	33.5	1,347.60	1,269.54	566096	197	204
1395	POSITIVE 2	DNA ligase 1 OS=Mus musculus GN=Lig1 PE=1 SV=2	DNLI1_MOUSE	102,291.20	100.00%	2	2	2	0.03%	VAQVLSCEGEDEDEAPGTPK	K	V	99.70%	99.4	2,518.07	1,819.76	968326	60	79
1396	POSITIVE 2	Kinetochore protein Spc25 OS=Mus musculus GN=Spc25 PE=2 SV=1	SPC25_MOUSE	26,458.60	98.90%	1	1	1	0.01%	EYEVYDSSPHLECLAEFQEK	K	V	99.70%	45.3	2,860.21	2,807.87	781364	183	202
1397	POSITIVE 2	Platelet-activating factor acetylhydrolase IB subunit beta OS=Mus musculus GN=Pafah1b2 PE=1 SV=2	PA1B2_MOUSE	25,581.60	98.90%	1	1	1	0.01%	LANVQLLDIDGGFVHSDGAISCHDMFDFLHLTGGGYAK	K	I	99.70%	37.7	4,478.06	3,815.55	1520550	167	204
1398	POSITIVE 2	Integrator complex subunit 10 OS=Mus musculus GN=Ints10 PE=1 SV=3	INT10_MOUSE	82,022.30	99.90%	1	1	2	0.03%	SCSDLLHR	R	M	99.00%	40.3	1,374.59	1,211.14	1504920	280	287
1399	POSITIVE 2	Eukaryotic translation initiation factor 3 subunit G OS=Mus musculus GN=Eif3g PE=1 SV=2	EIF3G_MOUSE	35,639.00	100.00%	2	3	6	0.08%	EDLNCQEEEDPMNKLK	K	G	99.70%	38	2,378.99	1,808.17	1256420	135	150
1400	POSITIVE 2	Methyltransferase-like protein 16 OS=Mus musculus GN=Mettl16 PE=1 SV=1	MET16_MOUSE	62,341.80	98.90%	1	1	1	0.01%	CSLAPLKEELR	K	I	99.70%	49.8	1,702.83	1,825.24	365778	253	263
1401	POSITIVE 2	E3 ubiquitin-protein ligase BRE1A OS=Mus musculus GN=Rnf20 PE=1 SV=2	BRE1A_MOUSE	113,523.60	98.90%	1	2	2	0.03%	HHTMSQEFCK	K	L	99.70%	61.5	1,691.67	762.36	1788800	243	252
1402	POSITIVE 2	Rho guanine nucleotide exchange factor 17 OS=Mus musculus GN=Arhgef17 PE=1 SV=2	ARHGH_MOUSE	221,672.20	98.80%	1	1	1	0.01%	APLSPAGLCQGHTGHVR	R	F	99.70%	30.7	2,145.01	1,288.95	3152980	1952	1968
1403	POSITIVE 2	Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform OS=Mus musculus GN=Ppp2ca PE=1 SV=1	PP2AA_MOUSE	35,575.40	100.00%	3	5	5	0.07%	NVVTIFSAPNYCYR	R	C	99.70%	37.2	2,090.94	2,896.34	700591	255	268
1404	POSITIVE 2	Putative GTP-binding protein 6 OS=Mus musculus GN=Gtpbp6 PE=1 SV=1	GTPB6_MOUSE	56,474.80	100.00%	2	2	3	0.04%	QVLTLCVR	R	L	99.00%	30.5	1,375.68	2,132.06	2700440	452	459
1405	POSITIVE 2	Hsp70-binding protein 1 OS=Mus musculus GN=Hspbp1 PE=1 SV=1	HPBP1_MOUSE	39,166.80	98.90%	1	2	2	0.03%	LLDRDSCDTVR	R	V	99.70%	37.1	1,736.77	1,168.30	2575270	193	203
1406	POSITIVE 2	E3 ubiquitin-protein ligase RNF213 OS=Mus musculus GN=Rnf213 PE=1 SV=2	RN213_MOUSE	584,783.60	100.00%	2	3	3	0.04%	LVDSVSVNPSETCVIADVLSASQMFMR	R	K	99.70%	112	3,342.55	4,514.05	597909	2562	2588
1407	POSITIVE 2	Tubulin alpha-1B chain OS=Mus musculus GN=Tuba1b PE=1 SV=2	TBA1B_MOUSE	50,151.70	100.00%	3	5	8	0.11%	GSIQFVDWCPTGFK	K	V	99.70%	34.3	2,028.89	3,967.00	262001	0	0
1408	POSITIVE 2	Tubulin alpha-1B chain OS=Mus musculus GN=Tuba1b PE=1 SV=2	TBA1B_MOUSE	50,151.70	100.00%	3	5	8	0.11%	RSIQFVDWCPTGFK	K	V	99.70%	57.3	2,127.97	2,677.16	2303070	339	352
1409	POSITIVE 2	Tubulin alpha-1B chain OS=Mus musculus GN=Tuba1b PE=1 SV=2	TBA1B_MOUSE	50,151.70	100.00%	3	5	8	0.11%	SIQFVDWCPTGFK	R	V	99.70%	63.7	1,971.87	3,191.45	5297560	340	352
1410	POSITIVE 2	Tubulin alpha-1B chain OS=Mus musculus GN=Tuba1b PE=1 SV=2	TBA1B_MOUSE	50,151.70	100.00%	3	5	8	0.11%	YMACCLLYR	K	G	99.70%	38.5	1,704.70	3,025.33	389713	312	320
1411	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 10 OS=Mus musculus GN=Psmd10 PE=1 SV=3	PSD10_MOUSE	25,084.00	98.90%	1	1	1	0.01%	GAHVNAVNQNGCTPLHYAASK	K	N	99.70%	60.9	2,596.18	1,341.11	946790	96	116
1412	POSITIVE 2	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	4	4	5	0.07%	ADAGEYSCEAGGQK	K	L	99.70%	48.5	1,829.71	966.732	724877	928	941
1413	POSITIVE 2	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	4	4	5	0.07%	EICGIQQR	K	L	99.00%	35.6	1,390.62	1,268.18	403464	6938	6945
1414	POSITIVE 2	Obscurin OS=Mus musculus GN=Obscn PE=1 SV=2	OBSCN_MOUSE	966,353.40	100.00%	4	4	5	0.07%	VRVEASGCSRR	K	L	99.70%	38.7	1,663.78	440.652	160384	1461	1471
1415	POSITIVE 2	High affinity cationic amino acid transporter 1 OS=Mus musculus GN=Slc7a1 PE=1 SV=1	CTR1_MOUSE	67,093.60	98.90%	1	1	2	0.03%	TPDSNLDQCK	K	-	99.70%	40.7	1,564.64	984.666	2624230	613	622
1416	POSITIVE 2	Filamin-B OS=Mus musculus GN=Flnb PE=1 SV=3	FLNB_MOUSE	277,819.70	100.00%	2	3	6	0.08%	IAGPGLSSCVR	K	A	99.70%	57.4	1,503.70	1,671.94	6491690	1426	1436
1417	POSITIVE 2	Filamin-B OS=Mus musculus GN=Flnb PE=1 SV=3	FLNB_MOUSE	277,819.70	100.00%	2	3	6	0.08%	VGEPGILCVDCSEAGPGTLGLEAVSDSGAK	K	A	99.70%	104	3,400.53	3,662.74	654786	1148	1177
1418	POSITIVE 2	NAD(P) transhydrogenase, mitochondrial OS=Mus musculus GN=Nnt PE=1 SV=2	NNTM_MOUSE	113,841.30	98.90%	1	1	1	0.01%	EANSIVITPGYGLCAAK	R	A	99.70%	45	2,151.02	2,636.93	1750200	923	939
1419	POSITIVE 2	Transformation/transcription domain-associated protein OS=Mus musculus GN=Trrap PE=1 SV=2	TRRAP_MOUSE	291,560.30	100.00%	2	2	3	0.04%	YEELECLYAAVGK	K	V	99.70%	66.8	1,931.85	3,098.48	463613	934	946
1420	POSITIVE 2	GDP-L-fucose synthase OS=Mus musculus GN=Tsta3 PE=1 SV=3	FCL_MOUSE	35,877.60	100.00%	2	3	7	0.10%	VVSCLSTCIFPDKTTYPIDETMIHNGPPHSSNFGYSYAK	K	R	99.70%	41.4	4,889.20	3,069.04	2103670	109	147
1421	POSITIVE 2	ER membrane protein complex subunit 8 OS=Mus musculus GN=Emc8 PE=1 SV=1	EMC8_MOUSE	23,348.30	100.00%	1	1	1	0.01%	YPHCAVNGLLVAER	K	Q	99.70%	42.8	1,985.93	2,076.59	2654420	21	34
1422	POSITIVE 2	Interferon-induced, double-stranded RNA-activated protein kinase OS=Mus musculus GN=Eif2ak2 PE=1 SV=2	E2AK2_MOUSE	58,281.70	98.90%	1	1	1	0.01%	LSVNYEQCEPNSELPQR	K	F	99.70%	107	2,450.07	2,080.63	1540350	109	125
1423	POSITIVE 2	Protein RRP5 homolog OS=Mus musculus GN=Pdcd11 PE=1 SV=2	RRP5_MOUSE	207,780.00	100.00%	3	3	4	0.06%	LSLITCYEGAKPGLQTHGVIIR	K	V	99.20%	29.8	2,813.44	2,506.51	957985	530	551
1424	POSITIVE 2	Protein RRP5 homolog OS=Mus musculus GN=Pdcd11 PE=1 SV=2	RRP5_MOUSE	207,780.00	100.00%	3	3	4	0.06%	VGQGVCLTLK	R	T	99.70%	42.4	1,461.72	2,004.25	521074	972	981
1425	POSITIVE 2	Signal recognition particle 9 kDa protein OS=Mus musculus GN=Srp9 PE=1 SV=2	SRP09_MOUSE	10,193.70	98.90%	1	1	2	0.03%	VTDDLVCLVYR	K	T	99.70%	69.3	1,739.81	3,108.15	787452	42	52
1426	POSITIVE 2	Steroid hormone receptor ERR1 OS=Mus musculus GN=Esrra PE=1 SV=4	ERR1_MOUSE	45,465.00	98.90%	1	1	1	0.01%	CLPGHKEEEDGEGAGSGEQGSGK	R	L	99.70%	43.7	2,702.11	801.102	357883	46	68
1427	POSITIVE 2	Ribosome biogenesis protein BOP1 OS=Mus musculus GN=Bop1 PE=1 SV=1	BOP1_MOUSE	82,545.90	100.00%	3	3	4	0.06%	DLQPFPVCQALVYR	R	G	99.70%	37.7	2,092.99	3,306.87	1899220	383	396
1428	POSITIVE 2	Ribosome biogenesis protein BOP1 OS=Mus musculus GN=Bop1 PE=1 SV=1	BOP1_MOUSE	82,545.90	100.00%	3	3	4	0.06%	ICHSKPVTQVTWHGR	R	G	99.70%	30.5	2,193.04	1,028.61	816297	517	531
1429	POSITIVE 2	Ribosome biogenesis protein BOP1 OS=Mus musculus GN=Bop1 PE=1 SV=1	BOP1_MOUSE	82,545.90	100.00%	3	3	4	0.06%	LRICHSKPVTQVTWHGR	R	G	99.30%	39.4	2,462.23	1,216.06	1060390	515	531
1430	POSITIVE 2	Kinesin-like protein KIF20A OS=Mus musculus GN=Kif20a PE=2 SV=1	KI20A_MOUSE	99,878.70	100.00%	2	2	3	0.04%	TPTCQSSTDSSPYAR	R	I	99.70%	33.1	2,044.83	1,128.08	369740	855	869
1431	POSITIVE 2	Threonine synthase-like 1 OS=Mus musculus GN=Thnsl1 PE=1 SV=1	THNS1_MOUSE	83,102.00	98.90%	1	1	1	0.01%	LGCCVIDVDSDVLEK	K	A	99.70%	65	2,176.96	3,252.92	816597	79	93
1432	POSITIVE 2	Transcription elongation factor SPT6 OS=Mus musculus GN=Supt6h PE=1 SV=2	SPT6H_MOUSE	199,089.30	98.90%	1	1	1	0.01%	NAFATPTISLQDSCDYLDR	R	G	99.70%	39.4	2,574.12	3,091.97	973124	323	341
1433	POSITIVE 2	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	RRBP1_MOUSE	172,876.90	100.00%	4	6	7	0.10%	HMAAASAECQNYAK	K	E	99.70%	44.8	1,938.79	902.232	429585	1407	1420
1434	POSITIVE 2	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	RRBP1_MOUSE	172,876.90	100.00%	4	6	7	0.10%	KGEPGPPDCDGPLFLPYK	K	T	99.70%	72.9	2,374.08	2,520.13	2155740	837	854
1435	POSITIVE 2	Tyrosine-protein phosphatase non-receptor type 11 OS=Mus musculus GN=Ptpn11 PE=1 SV=2	PTN11_MOUSE	68,460.10	100.00%	2	4	4	0.06%	QESIVDAGPVVVHCSAGIGR	K	T	99.70%	69.4	2,438.16	2,263.60	7351080	450	469
1436	POSITIVE 2	Tyrosine-protein phosphatase non-receptor type 11 OS=Mus musculus GN=Ptpn11 PE=1 SV=2	PTN11_MOUSE	68,460.10	100.00%	2	4	4	0.06%	QGFWEEFETLQQQECK	K	L	99.70%	40.4	2,474.04	3,368.20	731358	245	260
1437	POSITIVE 2	Exosome complex exonuclease RRP44 OS=Mus musculus GN=Dis3 PE=1 SV=4	RRP44_MOUSE	108,840.90	100.00%	2	2	2	0.03%	LLAVAIGADCTYPELTDK	R	H	99.70%	81.4	2,337.11	3,073.51	976090	790	807
1438	POSITIVE 2	Exosome complex exonuclease RRP44 OS=Mus musculus GN=Dis3 PE=1 SV=4	RRP44_MOUSE	108,840.90	100.00%	2	2	2	0.03%	RGTTVYLCEK	R	R	99.60%	27.9	1,613.74	1,137.23	323729	526	535
1439	POSITIVE 2	Eukaryotic translation initiation factor 4B OS=Mus musculus GN=Eif4b PE=1 SV=1	IF4B_MOUSE	68,842.50	100.00%	3	5	5	0.07%	SLENETLNKEEDCHSPTSKPPKPDQPLK	K	V	99.70%	57.8	3,605.69	1,363.83	2274990	445	472
1440	POSITIVE 2	Eukaryotic translation initiation factor 4B OS=Mus musculus GN=Eif4b PE=1 SV=1	IF4B_MOUSE	68,842.50	100.00%	3	5	5	0.07%	VDVVGATQGQAGSCSR	K	G	99.70%	85.7	1,978.87	1,387.88	4626280	530	545
1441	POSITIVE 2	Eukaryotic translation initiation factor 4B OS=Mus musculus GN=Eif4b PE=1 SV=1	IF4B_MOUSE	68,842.50	100.00%	3	5	5	0.07%	VDVVGATQGQAGSCSRGPGDGGSR	K	D	99.70%	36.1	2,662.17	1,293.31	634362	530	553
1442	POSITIVE 2	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ANLN_MOUSE	122,795.40	100.00%	2	4	5	0.07%	ADFVCSTAQK	K	T	99.70%	59.2	1,513.64	1,279.81	3046490	812	821
1443	POSITIVE 2	Cytoskeleton-associated protein 5 OS=Mus musculus GN=Ckap5 PE=1 SV=1	CKAP5_MOUSE	225,641.70	100.00%	1	1	1	0.01%	AECLEELGCLIESYGMNVCQPTPGK	R	A	99.70%	66.4	3,378.45	4,504.18	181559	1342	1366
1444	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 7 OS=Mus musculus GN=Psmd7 PE=1 SV=2	PSMD7_MOUSE	36,540.00	98.90%	1	1	1	0.01%	RYCPNSVLVIIDVKPK	K	D	99.70%	44.1	2,288.19	2,426.39	2732530	114	129
1445	POSITIVE 2	Hsp90 co-chaperone Cdc37 OS=Mus musculus GN=Cdc37 PE=1 SV=1	CDC37_MOUSE	44,593.30	98.90%	1	1	2	0.03%	CIDSGLWVPNSK	R	S	99.70%	65.3	1,762.79	2,483.98	1471760	337	348
1446	POSITIVE 2	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	DYHC1_MOUSE	532,043.10	100.00%	4	4	7	0.10%	NIHVCLGGLFVPEAYITATR	K	Q	99.70%	49.1	2,618.29	3,570.80	273560	4504	4523
1447	POSITIVE 2	MICOS complex subunit Mic60 OS=Mus musculus GN=Immt PE=1 SV=1	MIC60_MOUSE	83,901.10	100.00%	2	3	4	0.06%	TECPNTNEGK	K	S	99.70%	42.6	1,536.61	511.242	2353000	170	179
1448	POSITIVE 2	Peroxiredoxin-1 OS=Mus musculus GN=Prdx1 PE=1 SV=1	PRDX1_MOUSE	22,177.50	100.00%	2	4	4	0.06%	YVVFFFYPLDFTFVCPTEIIAFSDR	K	A	99.70%	36.6	3,480.63	4,758.20	186845	38	62
1449	POSITIVE 2	Calcium/calmodulin-dependent protein kinase type II subunit delta OS=Mus musculus GN=Camk2d PE=1 SV=1	KCC2D_MOUSE	56,370.70	100.00%	3	5	6	0.08%	QETVDCLKK	R	F	99.70%	32.7	1,507.69	901.986	633208	285	293
1450	POSITIVE 2	Tubulin alpha-1A chain OS=Mus musculus GN=Tuba1a PE=1 SV=1	TBA1A_MOUSE	50,135.70	100.00%	3	4	6	0.08%	RTIQFVDWCPTGFK	K	V	99.70%	61.3	2,141.99	2,718.11	4119930	339	352
1451	POSITIVE 2	Tubulin alpha-1A chain OS=Mus musculus GN=Tuba1a PE=1 SV=1	TBA1A_MOUSE	50,135.70	100.00%	3	4	6	0.08%	TIQFVDWCPTGFK	R	V	99.70%	64.5	1,985.89	3,204.30	4761990	340	352
1452	POSITIVE 2	Ubiquitin-conjugating enzyme E2 S OS=Mus musculus GN=Ube2s PE=1 SV=1	UBE2S_MOUSE	24,184.00	100.00%	2	4	4	0.06%	CLLIHPNPESALNEEAGR	K	L	99.70%	67.1	2,407.11	2,304.07	4638370	118	135
1453	POSITIVE 2	Ubiquitin-conjugating enzyme E2 S OS=Mus musculus GN=Ube2s PE=1 SV=1	UBE2S_MOUSE	24,184.00	100.00%	2	4	4	0.06%	IFHPNVGPNGEICVNVLK	K	R	99.70%	55.2	2,394.17	2,565.84	1800690	83	100
1454	POSITIVE 2	Glutamyl-tRNA(Gln) amidotransferase subunit B, mitochondrial OS=Mus musculus GN=Gatb PE=1 SV=1	GATB_MOUSE	62,119.90	100.00%	2	2	2	0.03%	KVTNWVLNTFLCYLK	K	Q	99.70%	41	2,286.14	4,064.59	385094	421	435
1455	POSITIVE 2	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	VIGLN_MOUSE	141,745.60	100.00%	4	5	8	0.11%	DCVEAAKK	K	R	99.00%	50	1,307.57	394.317	1087320	854	861
1456	POSITIVE 2	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	VIGLN_MOUSE	141,745.60	100.00%	4	5	8	0.11%	RCDIIIISGR	R	K	99.70%	70.1	1,589.79	1,970.72	3767900	947	956
1457	POSITIVE 2	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	VIGLN_MOUSE	141,745.60	100.00%	4	5	8	0.11%	RCDIIIISGRK	R	E	99.70%	56.6	1,717.88	1,493.89	829834	947	957
1458	POSITIVE 2	Fructose-bisphosphate aldolase A OS=Mus musculus GN=Aldoa PE=1 SV=2	ALDOA_MOUSE	39,356.50	100.00%	3	5	6	0.08%	RCQYVTEK	K	V	99.00%	40.8	1,470.65	747.036	848733	201	208
1459	POSITIVE 2	Dual specificity mitogen-activated protein kinase kinase 4 OS=Mus musculus GN=Map2k4 PE=1 SV=2	MP2K4_MOUSE	44,114.80	100.00%	3	3	6	0.08%	DAGCRPYMAPER	R	I	99.70%	30.8	1,809.75	1,276.59	375105	261	272
1460	POSITIVE 2	Dual specificity mitogen-activated protein kinase kinase 4 OS=Mus musculus GN=Map2k4 PE=1 SV=2	MP2K4_MOUSE	44,114.80	100.00%	3	3	6	0.08%	SSDCPYIVQFYGALFR	R	E	99.70%	56.3	2,310.03	4,176.47	792604	153	168
1461	POSITIVE 2	Dual specificity mitogen-activated protein kinase kinase 4 OS=Mus musculus GN=Map2k4 PE=1 SV=2	MP2K4_MOUSE	44,114.80	100.00%	3	3	6	0.08%	TVEVACYVCK	R	I	99.70%	32.2	1,683.72	2,475.06	511877	372	381
1462	POSITIVE 2	Zyxin OS=Mus musculus GN=Zyx PE=1 SV=2	ZYX_MOUSE	60,544.30	98.90%	1	1	1	0.01%	VCSIDLEIDSLSSLLDDMTK	K	N	99.70%	82.1	2,641.20	4,546.33	343916	142	161
1463	POSITIVE 2	T-complex protein 1 subunit epsilon OS=Mus musculus GN=Cct5 PE=1 SV=1	TCPE_MOUSE	59,625.60	98.90%	1	1	1	0.01%	IAILTCPFEPPKPK	K	T	99.70%	32.3	1,998.02	2,483.14	713122	248	261
1464	POSITIVE 2	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	SPTN1_MOUSE	284,600.80	100.00%	3	3	5	0.07%	ALCAEADR	K	L	99.00%	37.3	1,292.54	947.814	425049	313	320
1465	POSITIVE 2	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	SPTN1_MOUSE	284,600.80	100.00%	3	3	5	0.07%	ALCAEADRLQQSHPLSASQIQVK	K	R	99.70%	37.9	2,937.43	1,971.31	824352	313	335
1466	POSITIVE 2	ADP-sugar pyrophosphatase OS=Mus musculus GN=Nudt5 PE=1 SV=1	NUDT5_MOUSE	23,984.20	98.90%	1	3	6	0.08%	TLHHECVILVK	R	Q	99.70%	48.9	1,735.86	1,330.14	1.12E+07	70	80
1467	POSITIVE 2	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	6	7	16	0.23%	LSVAGNCR	R	M	99.00%	31.8	1,263.56	1,032.66	480679	69	76
1468	POSITIVE 2	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	NDUS1_MOUSE	79,777.60	100.00%	6	7	16	0.23%	NVTEGAQAVEEPSIC	K	-	99.70%	32.7	1,990.85	3,228.32	941550	0	0
1469	POSITIVE 2	Dihydrolipoyl dehydrogenase, mitochondrial OS=Mus musculus GN=Dld PE=1 SV=2	DLDH_MOUSE	54,272.40	98.90%	1	2	3	0.04%	VCHAHPTLSEAFR	R	E	99.70%	75.6	1,911.86	1,372.85	3782000	483	495
1470	POSITIVE 2	DNA replication licensing factor MCM6 OS=Mus musculus GN=Mcm6 PE=1 SV=1	MCM6_MOUSE	92,868.30	100.00%	2	2	4	0.06%	LGFAEYCR	R	I	99.00%	47	1,402.59	1,952.02	1325510	715	722
1471	POSITIVE 2	DNA replication licensing factor MCM6 OS=Mus musculus GN=Mcm6 PE=1 SV=1	MCM6_MOUSE	92,868.30	100.00%	2	2	4	0.06%	MHCCDEVQPK	R	H	99.70%	29	1,758.67	1,209.20	2261410	634	643
1472	POSITIVE 2	Protein unc-45 homolog A OS=Mus musculus GN=Unc45a PE=1 SV=2	UN45A_MOUSE	103,449.40	100.00%	3	3	3	0.04%	AIQTVSCLLQGPCDAGNR	R	A	99.70%	69	2,415.09	2,861.85	963261	414	431
1473	POSITIVE 2	Protein unc-45 homolog A OS=Mus musculus GN=Unc45a PE=1 SV=2	UN45A_MOUSE	103,449.40	100.00%	3	3	3	0.04%	CDAERENFHR	K	L	99.70%	83.6	1,720.69	704.934	383872	384	393
1474	POSITIVE 2	Protein unc-45 homolog A OS=Mus musculus GN=Unc45a PE=1 SV=2	UN45A_MOUSE	103,449.40	100.00%	3	3	3	0.04%	LLAAGVVSAMTCMVK	K	T	99.70%	63.3	1,937.93	3,415.07	1436680	639	653
1475	POSITIVE 2	Acidic leucine-rich nuclear phosphoprotein 32 family member A OS=Mus musculus GN=Anp32a PE=1 SV=1	AN32A_MOUSE	28,538.30	100.00%	1	2	2	0.03%	ELVLDNCK	K	S	99.00%	37.2	1,377.61	1,543.40	2746510	21	28
1476	POSITIVE 2	Alanyl-tRNA editing protein Aarsd1 OS=Mus musculus GN=Aarsd1 PE=1 SV=2	AASD1_MOUSE	44,970.70	98.90%	1	1	1	0.01%	VVTIEGVDSNMCCGTHVSNLSDLQVIK	R	I	99.70%	44.6	3,430.57	3,165.09	540030	198	224
1477	POSITIVE 2	STE20-like serine/threonine-protein kinase OS=Mus musculus GN=Slk PE=1 SV=2	SLK_MOUSE	141,458.30	100.00%	2	3	4	0.06%	MTGESECLNPSAQSR	K	I	99.70%	63.9	2,053.84	1,433.15	907933	1204	1218
1478	POSITIVE 2	Nucleolar protein 6 OS=Mus musculus GN=Nol6 PE=2 SV=2	NOL6_MOUSE	129,230.50	100.00%	3	3	3	0.04%	LLPCPPLDFFRPCR	R	L	99.40%	30.2	2,243.06	3,585.53	190410	262	275
1479	POSITIVE 2	Nucleolar protein 6 OS=Mus musculus GN=Nol6 PE=2 SV=2	NOL6_MOUSE	129,230.50	100.00%	3	3	3	0.04%	LWPELQDNGGDYVSAALGPLTNILVQGLGCR	K	L	99.70%	105	3,713.81	4,581.70	281145	497	527
1480	POSITIVE 2	Nucleolar protein 6 OS=Mus musculus GN=Nol6 PE=2 SV=2	NOL6_MOUSE	129,230.50	100.00%	3	3	3	0.04%	QAVDPPVASFCR	R	G	99.70%	39	1,733.77	2,032.52	498899	1030	1041
1481	POSITIVE 2	Transcriptional activator protein Pur-beta OS=Mus musculus GN=Purb PE=1 SV=3	PURB_MOUSE	33,902.50	98.90%	1	1	1	0.01%	RFFFDVGCNK	K	Y	99.70%	40.3	1,676.73	2,281.58	688410	243	252
1482	POSITIVE 2	Baculoviral IAP repeat-containing protein 6 OS=Mus musculus GN=Birc6 PE=1 SV=2	BIRC6_MOUSE	532,169.90	100.00%	2	2	3	0.04%	EGNECLLSK	K	T	99.70%	34.6	1,436.61	1,388.73	1773490	1377	1385
1483	POSITIVE 2	Lamina-associated polypeptide 2, isoforms beta/delta/epsilon/gamma OS=Mus musculus GN=Tmpo PE=1 SV=4	LAP2B_MOUSE	50,374.20	98.90%	1	1	1	0.01%	EMFPYEASTPTGISASCR	K	R	99.70%	40	2,391.01	2,586.99	1318870	346	363
1484	POSITIVE 2	Mitotic checkpoint protein BUB3 OS=Mus musculus GN=Bub3 PE=1 SV=2	BUB3_MOUSE	36,954.50	98.90%	1	2	3	0.04%	TPCNAGTFSQPEK	R	V	99.70%	71.4	1,823.77	1,308.10	3651550	127	139
1485	POSITIVE 2	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	10	17	26	0.37%	ERPNPAVSSTCATAEDSSVLYSR	K	V	99.70%	51.3	2,884.28	2,262.17	463736	0	0
1486	POSITIVE 2	Vacuolar protein sorting-associated protein 4B OS=Mus musculus GN=Vps4b PE=1 SV=2	VPS4B_MOUSE	49,420.80	98.90%	1	1	1	0.01%	ADPNCIVNDLLTPCSPGDPGAIEMTWMDVPGDK	R	L	99.70%	67.2	4,040.75	4,454.08	623276	371	403
1487	POSITIVE 2	Cyclin-H OS=Mus musculus GN=Ccnh PE=1 SV=2	CCNH_MOUSE	37,507.80	98.90%	1	1	1	0.01%	TCLSQLLDIMK	R	S	99.70%	70.5	1,708.81	3,715.80	245250	243	253
1488	POSITIVE 2	Rab3 GTPase-activating protein catalytic subunit OS=Mus musculus GN=Rab3gap1 PE=1 SV=4	RB3GP_MOUSE	110,200.10	100.00%	3	4	7	0.10%	CEHEEEKEGLER	K	F	99.70%	27.9	1,931.79	617.46	81,821.10	858	869
1489	POSITIVE 2	Rab3 GTPase-activating protein catalytic subunit OS=Mus musculus GN=Rab3gap1 PE=1 SV=4	RB3GP_MOUSE	110,200.10	100.00%	3	4	7	0.10%	DEELEDAIPQSMQDLLCMNNDFPPR	K	A	99.70%	54.5	3,364.42	4,372.16	1256050	90	114
1490	POSITIVE 2	RUN and FYVE domain-containing protein 1 OS=Mus musculus GN=Rufy1 PE=1 SV=1	RUFY1_MOUSE	80,377.70	100.00%	2	2	3	0.04%	HLSCTVGDLQTK	R	I	99.70%	39.8	1,745.79	1,377.14	1153240	321	332
1491	POSITIVE 2	RUN and FYVE domain-containing protein 1 OS=Mus musculus GN=Rufy1 PE=1 SV=1	RUFY1_MOUSE	80,377.70	100.00%	2	2	3	0.04%	LQEELSAATDRICSLQK	K	E	99.70%	49.5	2,349.12	2,226.83	1287510	343	359
1492	POSITIVE 2	Tripartite motif-containing protein 59 OS=Mus musculus GN=Trim59 PE=1 SV=2	TRI59_MOUSE	47,239.30	98.90%	1	1	1	0.01%	YFLAALCDVGK	K	M	99.70%	58.2	1,643.76	3,029.55	580330	202	212
1493	POSITIVE 2	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	14	0.20%	ALDLDSSCKENADGYQR	K	C	99.70%	43.2	2,328.98	1,837.11	560896	0	0
1494	POSITIVE 2	WD repeat-containing protein 43 OS=Mus musculus GN=Wdr43 PE=2 SV=2	WDR43_MOUSE	75,381.60	100.00%	2	3	4	0.06%	DISNCWAPTVETAITK	R	V	99.70%	62.1	2,193.00	3,134.58	1148510	375	390
1495	POSITIVE 2	WD repeat-containing protein 43 OS=Mus musculus GN=Wdr43 PE=2 SV=2	WDR43_MOUSE	75,381.60	100.00%	2	3	4	0.06%	VTPKPIPILAASFCLDK	K	M	99.70%	37.3	2,257.17	3,052.01	2364630	327	343
1496	POSITIVE 2	Vacuolar protein sorting-associated protein 28 homolog OS=Mus musculus GN=Vps28 PE=1 SV=1	VPS28_MOUSE	25,452.90	98.90%	1	1	2	0.03%	CIADVVSLFITVMDK	R	L	99.70%	78.4	2,098.00	4,602.86	364438	128	142
1497	POSITIVE 2	Cyclin-dependent kinase 4 OS=Mus musculus GN=Cdk4 PE=1 SV=1	CDK4_MOUSE	33,751.00	100.00%	3	3	3	0.04%	LMDVCATSR	R	T	99.70%	45.5	1,439.61	1,534.52	3199360	74	82
1498	POSITIVE 2	Cyclin-dependent kinase 4 OS=Mus musculus GN=Cdk4 PE=1 SV=1	CDK4_MOUSE	33,751.00	100.00%	3	3	3	0.04%	QFLSGLDFLHANCIVHR	R	D	99.70%	33.4	2,397.12	3,700.99	262674	123	139
1499	POSITIVE 2	Cyclin-dependent kinase 4 OS=Mus musculus GN=Cdk4 PE=1 SV=1	CDK4_MOUSE	33,751.00	100.00%	3	3	3	0.04%	RKPLFCGNSEADQLGK	R	I	99.70%	64.9	2,207.03	1,383.68	1138690	210	225
1500	POSITIVE 2	Aspartate--tRNA ligase, cytoplasmic OS=Mus musculus GN=Dars PE=1 SV=2	SYDC_MOUSE	57,147.70	100.00%	2	3	8	0.11%	FLEPTLRLEYCEALAMLR	K	E	99.70%	39.9	2,612.27	3,940.55	741174	339	356
1501	POSITIVE 2	5'-3' exoribonuclease 2 OS=Mus musculus GN=Xrn2 PE=1 SV=1	XRN2_MOUSE	108,690.50	100.00%	2	4	5	0.07%	HDELADSLPCAEGEFIFLR	K	L	99.70%	80.6	2,606.17	3,478.96	1841520	287	305
1502	POSITIVE 2	NEDD8-activating enzyme E1 catalytic subunit OS=Mus musculus GN=Uba3 PE=1 SV=2	UBA3_MOUSE	51,738.20	98.90%	1	1	1	0.01%	MAVDGGCGDTGDWEGR	K	W	99.70%	61.8	2,069.78	1,894.23	1458730	22	37
1503	POSITIVE 2	Glucose-6-phosphate 1-dehydrogenase X OS=Mus musculus GN=G6pdx PE=1 SV=3	G6PD1_MOUSE	59,263.60	98.90%	1	2	2	0.03%	LILDVFCGSQMHFVR	R	S	99.70%	66.6	2,209.04	3,241.22	1899990	440	454
1504	POSITIVE 2	Ran GTPase-activating protein 1 OS=Mus musculus GN=Rangap1 PE=1 SV=2	RAGP1_MOUSE	63,532.70	100.00%	3	4	7	0.10%	ALAPLLLAFVTKPNGALETCSFAR	K	H	99.70%	43.5	2,947.52	3,851.18	612800	556	579
1505	POSITIVE 2	Ran GTPase-activating protein 1 OS=Mus musculus GN=Rangap1 PE=1 SV=2	RAGP1_MOUSE	63,532.70	100.00%	3	4	7	0.10%	LDLNGNALGEEGCEQLQEVMDSFNMAK	K	V	99.70%	75.5	3,399.46	4,216.55	337295	326	352
1506	POSITIVE 2	Poly [ADP-ribose] polymerase 1 OS=Mus musculus GN=Parp1 PE=1 SV=3	PARP1_MOUSE	113,103.70	96.10%	1	1	2	0.03%	ACSTNDLK	K	E	99.00%	39	1,295.54	823.674	1240270	255	262
1507	POSITIVE 2	tRNA (uracil-5-)-methyltransferase homolog A OS=Mus musculus GN=Trmt2a PE=1 SV=1	TRM2A_MOUSE	63,301.00	100.00%	2	2	2	0.03%	ASLVCHFMEGPGK	K	A	99.70%	35.4	1,819.79	2,119.40	1110810	337	349
1508	POSITIVE 2	Asparagine synthetase [glutamine-hydrolyzing] OS=Mus musculus GN=Asns PE=1 SV=3	ASNS_MOUSE	64,285.10	98.90%	1	2	5	0.07%	ETFEDCNLLPK	R	E	99.70%	49.1	1,752.76	2,407.78	9654220	450	460
1509	POSITIVE 2	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	10	14	22	0.31%	AEISCTDNQDGTCSVSYLPVLPGDYSILVK	K	Y	99.70%	28.8	3,756.71	4,152.76	122409	1908	1937
1510	POSITIVE 2	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	10	14	22	0.31%	CGQSAAVASPGGSIDSR	R	D	99.70%	66.9	2,006.87	1,415.35	996456	8	24
1511	POSITIVE 2	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	10	14	22	0.31%	LQVEPAVDTSGVQCYGPGIEGQGVFR	K	E	99.70%	34.9	3,151.45	3,063.09	290554	1247	1272
1512	POSITIVE 2	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	10	14	22	0.31%	SPYTVTVGQACNPAACR	R	A	99.70%	91.6	2,307.00	2,240.74	1493660	468	484
1513	POSITIVE 2	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	FLNA_MOUSE	281,212.50	100.00%	10	14	22	0.31%	VGTECGNQK	K	V	99.70%	41.2	1,379.57	390.954	2649390	570	578
1514	POSITIVE 2	Tyrosine-protein kinase Lyn OS=Mus musculus GN=Lyn PE=1 SV=4	LYN_MOUSE	58,814.50	100.00%	2	2	6	0.08%	ITFPCISDMIK	R	H	99.70%	47.2	1,711.79	3,386.48	792053	199	209
1515	POSITIVE 2	Tyrosine-protein kinase Lyn OS=Mus musculus GN=Lyn PE=1 SV=4	LYN_MOUSE	58,814.50	100.00%	2	2	6	0.08%	WTAPEAINFGCFTIK	K	S	99.70%	51.2	2,141.98	3,502.97	1070800	409	423
1516	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 5 OS=Mus musculus GN=Usp5 PE=1 SV=1	UBP5_MOUSE	95,835.00	100.00%	2	2	3	0.04%	NLGNSCYLNSVVQVLFSIPDFQR	R	K	99.70%	62.9	3,057.46	4,565.59	947830	330	352
1517	POSITIVE 2	Condensin complex subunit 1 OS=Mus musculus GN=Ncapd2 PE=1 SV=2	CND1_MOUSE	155,668.60	100.00%	3	4	4	0.06%	CSSVMLLGMMAR	R	G	99.70%	66.8	1,742.75	3,138.55	538925	762	773
1518	POSITIVE 2	Condensin complex subunit 1 OS=Mus musculus GN=Ncapd2 PE=1 SV=2	CND1_MOUSE	155,668.60	100.00%	3	4	4	0.06%	NAIQLLASFLANNPFSCK	K	L	99.70%	92.9	2,395.15	4,494.26	2882800	423	440
1519	POSITIVE 2	IST1 homolog OS=Mus musculus GN=Ist1 PE=1 SV=1	IST1_MOUSE	39,469.70	95.90%	1	1	1	0.01%	IVADQLCAK	K	Y	98.90%	26.8	1,404.66	1,477.78	614441	119	127
1520	POSITIVE 2	Neurochondrin OS=Mus musculus GN=Ncdn PE=1 SV=1	NCDN_MOUSE	78,897.10	100.00%	2	2	2	0.03%	AGIMASDCEPALNQAESR	K	N	99.70%	68.3	2,306.98	2,077.85	556629	15	32
1521	POSITIVE 2	Neurochondrin OS=Mus musculus GN=Ncdn PE=1 SV=1	NCDN_MOUSE	78,897.10	100.00%	2	2	2	0.03%	DACFTSLMNTLMTSLPSLVQQQGR	R	L	99.70%	59.3	3,085.42	4,598.72	428484	539	562
1522	POSITIVE 2	Early endosome antigen 1 OS=Mus musculus GN=Eea1 PE=1 SV=2	EEA1_MOUSE	160,915.40	98.90%	1	1	1	0.01%	ELQEQEEVVSCTK	R	L	99.70%	35.6	1,965.85	1,556.50	926547	773	785
1523	POSITIVE 2	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	CAN2_MOUSE	79,875.40	100.00%	4	4	4	0.06%	ALEEAGFKLPCQLHQVIVAR	K	F	99.70%	52.6	2,666.35	2,705.68	1221570	630	649
1524	POSITIVE 2	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	CAN2_MOUSE	79,875.40	100.00%	4	4	4	0.06%	RPTEICADPQFIIGGATR	K	T	99.70%	51.1	2,389.14	2,482.60	1158470	77	94
1525	POSITIVE 2	EH domain-binding protein 1-like protein 1 OS=Mus musculus GN=Ehbp1l1 PE=1 SV=1	EH1L1_MOUSE	184,830.50	100.00%	3	3	3	0.04%	FQDTSQYVCAELQALEQEQGQIDGR	R	A	99.70%	87.3	3,300.45	3,696.05	232819	1549	1573
1526	POSITIVE 2	EH domain-binding protein 1-like protein 1 OS=Mus musculus GN=Ehbp1l1 PE=1 SV=1	EH1L1_MOUSE	184,830.50	100.00%	3	3	3	0.04%	GVCITNFTTSWR	R	N	99.70%	37.5	1,828.81	2,923.39	1240070	1230	1241
1527	POSITIVE 2	EH domain-binding protein 1-like protein 1 OS=Mus musculus GN=Ehbp1l1 PE=1 SV=1	EH1L1_MOUSE	184,830.50	100.00%	3	3	3	0.04%	VGNAQPSLPDCLDAGDLAQR	R	L	99.70%	57	2,484.12	2,630.90	687780	1336	1355
1528	POSITIVE 2	Golgi phosphoprotein 3 OS=Mus musculus GN=Golph3 PE=1 SV=1	GOLP3_MOUSE	33,753.40	98.90%	1	1	1	0.01%	LQLEACGMR	R	R	99.70%	47.8	1,464.64	1,856.66	578923	103	111
1529	POSITIVE 2	Protein diaphanous homolog 3 OS=Mus musculus GN=Diaph3 PE=1 SV=1	DIAP3_MOUSE	133,692.10	98.90%	1	1	1	0.01%	SDYNSLCEPEQFAVVMSNVK	R	R	99.70%	47.6	2,704.17	3,330.61	444399	754	773
1530	POSITIVE 2	Telomere-associated protein RIF1 OS=Mus musculus GN=Rif1 PE=1 SV=2	RIF1_MOUSE	266,231.80	98.90%	1	1	1	0.01%	IMCSLEDEVLSDLLFLDR	K	I	99.70%	79.3	2,555.18	4,555.24	374339	735	752
1531	POSITIVE 2	Large proline-rich protein BAG6 OS=Mus musculus GN=Bag6 PE=1 SV=1	BAG6_MOUSE	121,035.90	100.00%	2	3	9	0.13%	TNLEFLQEQFNSIAAHVLHCTDSGFGAR	R	L	99.70%	56.8	3,549.63	4,042.60	901088	859	886
1532	POSITIVE 2	E3 ubiquitin-protein ligase listerin OS=Mus musculus GN=Ltn1 PE=1 SV=3	LTN1_MOUSE	198,927.50	100.00%	2	2	3	0.04%	THLPDFLICK	R	L	99.70%	47.7	1,630.77	2,352.44	2173350	860	869
1533	POSITIVE 2	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	SAFB1_MOUSE	105,104.00	100.00%	3	3	5	0.07%	FAFDACNDVPAPPK	K	E	99.70%	89	1,935.84	2,465.93	2198340	379	392
1534	POSITIVE 2	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	SAFB1_MOUSE	105,104.00	100.00%	3	3	5	0.07%	ILDILGETCK	K	S	99.70%	59	1,548.74	2,597.69	3466570	217	226
1535	POSITIVE 2	Anaphase-promoting complex subunit 1 OS=Mus musculus GN=Anapc1 PE=1 SV=2	APC1_MOUSE	215,996.90	98.90%	1	1	2	0.03%	QACEGNLPR	K	G	99.70%	47.3	1,431.61	1,062.52	2159140	986	994
1536	POSITIVE 2	Spartin OS=Mus musculus GN=Spg20 PE=1 SV=1	SPG20_MOUSE	72,654.60	99.90%	1	1	1	0.01%	DSSEEVNLSQIVPCEPSSEEK	K	S	99.70%	60.5	2,750.18	2,786.04	659437	396	416
1537	POSITIVE 2	ADP-ribosylation factor-like protein 8A OS=Mus musculus GN=Arl8a PE=1 SV=1	ARL8A_MOUSE	21,390.80	98.90%	1	2	2	0.03%	MNLSAIQDREICCYSISCK	K	E	99.70%	67.3	2,871.22	2,992.60	1264600	147	165
1538	POSITIVE 2	Exportin-2 OS=Mus musculus GN=Cse1l PE=1 SV=1	XPO2_MOUSE	110,460.00	100.00%	4	6	6	0.08%	LSTACPGRVPSMVSTSLNAEALQYLQGYLQAASVTLL	K	-	99.70%	29.9	4,297.13	4,670.54	698787	935	971
1539	POSITIVE 2	Protein regulator of cytokinesis 1 OS=Mus musculus GN=Prc1 PE=1 SV=2	PRC1_MOUSE	70,291.90	100.00%	3	4	5	0.07%	SVVTSLCSGK	K	K	99.70%	35.2	1,424.65	1,557.61	459884	522	531
1540	POSITIVE 2	Aspartate aminotransferase, mitochondrial OS=Mus musculus GN=Got2 PE=1 SV=1	AATM_MOUSE	47,412.30	98.90%	1	1	2	0.03%	EYLPIGGLAEFCK	K	A	99.70%	43.8	1,883.87	3,191.88	764344	95	107
1541	POSITIVE 2	Mitochondrial ribonuclease P protein 3 OS=Mus musculus GN=Kiaa0391 PE=2 SV=1	MRRP3_MOUSE	66,858.80	100.00%	2	3	3	0.04%	DHKACLPDAR	R	T	99.70%	37.1	1,569.69	853.746	356855	500	509
1542	POSITIVE 2	Integrin-linked kinase-associated serine/threonine phosphatase 2C OS=Mus musculus GN=Ilkap PE=1 SV=1	ILKAP_MOUSE	42,774.80	100.00%	4	4	6	0.08%	CGVTSVPDIR	R	R	99.70%	40.1	1,490.67	1,916.11	1221130	301	310
1543	POSITIVE 2	Integrin-linked kinase-associated serine/threonine phosphatase 2C OS=Mus musculus GN=Ilkap PE=1 SV=1	ILKAP_MOUSE	42,774.80	100.00%	4	4	6	0.08%	RCGVTSVPDIRR	K	C	99.70%	52.5	1,802.88	1,274.81	952729	300	311
1544	POSITIVE 2	Probable ATP-dependent RNA helicase DDX17 OS=Mus musculus GN=Ddx17 PE=1 SV=1	DDX17_MOUSE	72,401.00	100.00%	1	1	1	0.01%	TTSSANNPNLMYQDECDR	R	R	99.70%	51.2	2,502.99	1,701.22	590682	490	507
1545	POSITIVE 2	Inositol 1,4,5-trisphosphate receptor type 1 OS=Mus musculus GN=Itpr1 PE=1 SV=2	ITPR1_MOUSE	313,170.20	98.90%	1	1	2	0.03%	LFENFLVDICR	K	A	99.70%	66.9	1,812.84	3,563.97	828684	1449	1459
1546	POSITIVE 2	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	6	15	32	0.45%	FGCRDPVR	R	T	99.00%	37.7	1,393.61	1,022.96	2340700	317	324
1547	POSITIVE 2	Cyclin-dependent kinase 6 OS=Mus musculus GN=Cdk6 PE=1 SV=2	CDK6_MOUSE	37,029.00	100.00%	2	2	3	0.04%	ADQQYECVAEIGEGAYGK	R	V	99.70%	57.7	2,374.99	2,419.99	954583	9	26
1548	POSITIVE 2	Cyclin-dependent kinase 6 OS=Mus musculus GN=Cdk6 PE=1 SV=2	CDK6_MOUSE	37,029.00	100.00%	2	2	3	0.04%	LFDVCTVSR	R	T	99.70%	53.3	1,483.67	2,228.23	3790340	79	87
1549	POSITIVE 2	Multifunctional protein ADE2 OS=Mus musculus GN=Paics PE=1 SV=4	PUR6_MOUSE	47,006.70	100.00%	3	3	4	0.06%	KCGETAFIAPQCEMIPIEWVCR	K	R	99.70%	77.9	3,218.42	4,111.87	408117	80	101
1550	POSITIVE 2	Membrane-associated progesterone receptor component 2 OS=Mus musculus GN=Pgrmc2 PE=1 SV=2	PGRC2_MOUSE	23,334.90	100.00%	2	4	4	0.06%	GLATFCLDK	R	D	99.70%	35.2	1,411.63	2,283.51	3137830	148	156
1551	POSITIVE 2	Integrator complex subunit 7 OS=Mus musculus GN=Ints7 PE=1 SV=1	INT7_MOUSE	106,862.80	98.90%	1	1	1	0.01%	IDLLQAFSQLICTCNSLK	R	T	99.70%	85	2,579.23	4,681.45	294227	625	642
1552	POSITIVE 2	E3 ubiquitin-protein ligase UBR4 OS=Mus musculus GN=Ubr4 PE=1 SV=1	UBR4_MOUSE	572,290.60	100.00%	3	3	3	0.04%	AVQCLNTSSK	K	E	99.70%	36.5	1,494.67	975.744	418095	2549	2558
1553	POSITIVE 2	E3 ubiquitin-protein ligase UBR4 OS=Mus musculus GN=Ubr4 PE=1 SV=1	UBR4_MOUSE	572,290.60	100.00%	3	3	3	0.04%	DVPVEALTTVKPYCNEIHAQAQLWLK	K	R	99.50%	30.1	3,410.69	3,405.58	935354	4033	4058
1554	POSITIVE 2	E3 ubiquitin-protein ligase UBR4 OS=Mus musculus GN=Ubr4 PE=1 SV=1	UBR4_MOUSE	572,290.60	100.00%	3	3	3	0.04%	WQAHCLTLHIYR	R	N	99.70%	32.6	1,984.93	2,050.79	965456	3423	3434
1555	POSITIVE 2	39S ribosomal protein L44, mitochondrial OS=Mus musculus GN=Mrpl44 PE=1 SV=3	RM44_MOUSE	37,528.10	100.00%	3	4	7	0.10%	CPPPPVRR	R	S	99.00%	28.9	1,365.65	639.795	1292110	53	60
1556	POSITIVE 2	39S ribosomal protein L44, mitochondrial OS=Mus musculus GN=Mrpl44 PE=1 SV=3	RM44_MOUSE	37,528.10	100.00%	3	4	7	0.10%	LLRCPPPPVR	R	R	99.70%	30.3	1,591.82	1,352.72	2887010	50	59
1557	POSITIVE 2	Striatin OS=Mus musculus GN=Strn PE=1 SV=2	STRN_MOUSE	85,967.30	98.90%	1	1	1	0.01%	CYIASAGADALAK	K	V	99.70%	41.4	1,697.76	1,972.03	1903390	765	777
1558	POSITIVE 2	Adenylate kinase 2, mitochondrial OS=Mus musculus GN=Ak2 PE=1 SV=5	KAD2_MOUSE	26,469.90	100.00%	3	7	8	0.11%	LAENFCVCHLATGDMLR	K	A	99.70%	53.3	2,462.07	3,061.70	778800	35	51
1559	POSITIVE 2	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	CK5P1_MOUSE	66,110.10	100.00%	3	3	5	0.07%	TSVGCSQLVLVEGFSK	K	R	99.70%	73	2,097.99	2,991.65	881549	501	516
1560	POSITIVE 2	Fumarate hydratase, mitochondrial OS=Mus musculus GN=Fh PE=1 SV=3	FUMH_MOUSE	54,357.10	100.00%	1	2	2	0.03%	FEALAAHDALVELSGAMNTAACSLMK	K	I	99.70%	59.7	3,108.43	4,118.87	557768	309	334
1561	POSITIVE 2	Protein diaphanous homolog 2 OS=Mus musculus GN=Diaph2 PE=1 SV=2	DIAP2_MOUSE	124,877.40	98.90%	1	1	1	0.01%	SEYDDLCEPEQFGVVMSTVK	K	M	99.70%	71.8	2,720.15	3,257.72	576326	766	785
1562	POSITIVE 2	Huntingtin-interacting protein 1 OS=Mus musculus GN=Hip1 PE=1 SV=2	HIP1_MOUSE	115,203.90	98.90%	1	2	2	0.03%	LHSCLPADTLQGHR	K	D	99.70%	53	1,991.92	1,381.54	2227340	246	259
1563	POSITIVE 2	Protein arginine N-methyltransferase 7 OS=Mus musculus GN=Prmt7 PE=1 SV=1	ANM7_MOUSE	78,300.60	100.00%	2	2	2	0.03%	HSTEVTVGPDGDLPCR	K	A	99.70%	42.5	2,126.92	1,629.38	123071	122	137
1564	POSITIVE 2	Protein arginine N-methyltransferase 7 OS=Mus musculus GN=Prmt7 PE=1 SV=1	ANM7_MOUSE	78,300.60	100.00%	2	2	2	0.03%	QVSSSAACHSR	K	Q	99.70%	29.3	1,559.63	871.164	888076	255	265
1565	POSITIVE 2	Obscurin-like protein 1 OS=Mus musculus GN=Obsl1 PE=1 SV=1	OBSL1_MOUSE	197,930.00	98.90%	1	1	1	0.01%	LEVEALPLQMCR	R	R	99.70%	53.3	1,845.87	2,882.26	766909	1709	1720
1566	POSITIVE 2	Nucleoporin NUP188 homolog OS=Mus musculus GN=Nup188 PE=1 SV=2	NU188_MOUSE	196,699.90	100.00%	2	2	2	0.03%	AAAAGGPCVR	M	S	99.70%	30.5	1,358.59	1,555.06	608961	2	11
1567	POSITIVE 2	Nucleoporin NUP188 homolog OS=Mus musculus GN=Nup188 PE=1 SV=2	NU188_MOUSE	196,699.90	100.00%	2	2	2	0.03%	VISTDLSIADCLLPITSR	K	I	99.70%	68.4	2,361.18	3,756.87	702600	575	592
1568	POSITIVE 2	Vacuolar protein sorting-associated protein 4A OS=Mus musculus GN=Vps4a PE=1 SV=1	VPS4A_MOUSE	48,908.30	98.90%	1	1	2	0.03%	LLEPVVCMSDMLR	K	S	99.70%	68.4	1,949.90	3,667.99	1110270	397	409
1569	POSITIVE 2	Ribose-phosphate pyrophosphokinase 1 OS=Mus musculus GN=Prps1 PE=1 SV=4	PRPS1_MOUSE	34,834.70	98.90%	1	1	1	0.01%	INNACFEAVVVTNTIPQEDK	R	M	99.70%	53.3	2,649.23	2,956.07	1334780	261	280
1570	POSITIVE 2	60S ribosomal protein L14 OS=Mus musculus GN=Rpl14 PE=1 SV=3	RL14_MOUSE	23,564.90	100.00%	1	1	2	0.03%	CMQLTDFILK	K	F	99.70%	78.7	1,655.76	3,381.19	553182	54	63
1571	POSITIVE 2	NudC domain-containing protein 2 OS=Mus musculus GN=Nudcd2 PE=1 SV=1	NUDC2_MOUSE	17,659.90	100.00%	2	3	3	0.04%	RDAANCWTSLLESEYAADPWVQDQMQR	K	K	99.70%	75.6	3,627.57	3,716.32	187184	94	120
1572	POSITIVE 2	Serine/threonine-protein kinase 24 OS=Mus musculus GN=Stk24 PE=1 SV=1	STK24_MOUSE	47,956.00	98.90%	1	1	2	0.03%	SQACGGNLGSIEELR	K	G	99.70%	62.7	1,977.88	2,201.09	2974190	379	393
1573	POSITIVE 2	Transcription elongation factor A protein 3 OS=Mus musculus GN=Tcea3 PE=1 SV=3	TCEA3_MOUSE	38,850.60	98.90%	1	1	2	0.03%	KHCSDKEVVSLAK	R	V	99.70%	48	1,887.91	777.915	1190350	57	69
1574	POSITIVE 2	TBC1 domain family member 4 OS=Mus musculus GN=Tbc1d4 PE=1 SV=2	TBCD4_MOUSE	147,455.10	100.00%	2	2	3	0.04%	LWYVGGSCLDRR	R	T	99.70%	50.6	1,868.85	2,139.70	878348	38	49
1575	POSITIVE 2	TBC1 domain family member 4 OS=Mus musculus GN=Tbc1d4 PE=1 SV=2	TBCD4_MOUSE	147,455.10	100.00%	2	2	3	0.04%	SQKPDAGGCGAPAAR	R	E	99.70%	46.6	1,829.80	524.658	227632	66	80
1576	POSITIVE 2	Kinesin-like protein KIF2A OS=Mus musculus GN=Kif2a PE=1 SV=2	KIF2A_MOUSE	79,757.30	98.30%	1	1	1	0.01%	LIDIGNSCR	K	T	99.60%	27.7	1,434.65	1,720.91	848404	412	420
1577	POSITIVE 2	Serine/threonine-protein phosphatase 2A 55 kDa regulatory subunit B alpha isoform OS=Mus musculus GN=Ppp2r2a PE=1 SV=1	2ABA_MOUSE	51,693.40	98.90%	1	1	1	0.01%	LCSLYENDCIFDK	K	F	99.70%	55.1	2,131.88	3,189.87	599046	333	345
1578	POSITIVE 2	Target of rapamycin complex subunit LST8 OS=Mus musculus GN=Mlst8 PE=1 SV=1	LST8_MOUSE	35,851.00	100.00%	2	2	3	0.04%	LWCVETGEIK	R	R	99.70%	62.3	1,621.74	2,397.28	2362410	296	305
1579	POSITIVE 2	Target of rapamycin complex subunit LST8 OS=Mus musculus GN=Mlst8 PE=1 SV=1	LST8_MOUSE	35,851.00	100.00%	2	2	3	0.04%	LWCVETGEIKR	R	E	99.70%	44.5	1,777.84	1,948.77	752561	296	306
1580	POSITIVE 2	Cysteine and glycine-rich protein 1 OS=Mus musculus GN=Csrp1 PE=1 SV=3	CSRP1_MOUSE	20,583.10	100.00%	3	4	5	0.07%	GLESTTLADKDGEIYCK	K	G	99.70%	70.3	2,287.02	1,812.28	517868	152	168
1581	POSITIVE 2	Cysteine and glycine-rich protein 1 OS=Mus musculus GN=Csrp1 PE=1 SV=3	CSRP1_MOUSE	20,583.10	100.00%	3	4	5	0.07%	TVYFAEEVQCEGNSFHK	K	S	99.70%	48.6	2,432.03	2,248.26	3066550	16	32
1582	POSITIVE 2	Cyclin-dependent-like kinase 5 OS=Mus musculus GN=Cdk5 PE=1 SV=1	CDK5_MOUSE	33,289.80	100.00%	2	2	3	0.04%	CYSAEVVTLWYRPPDVLFGAK	R	L	99.70%	52.1	2,858.36	3,717.03	286624	157	177
1583	POSITIVE 2	COBW domain-containing protein 1 OS=Mus musculus GN=Cbwd1 PE=1 SV=1	CBWD1_MOUSE	43,772.60	100.00%	1	1	1	0.01%	EECLNVFIQNLLWEK	K	N	99.70%	50	2,322.09	4,335.55	647604	284	298
1584	POSITIVE 2	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MYH9_MOUSE	226,378.00	100.00%	4	11	14	0.20%	KMEDGVGCLETAEEAK	K	R	99.70%	74.8	2,153.92	1,748.76	5775920	1372	1387
1585	POSITIVE 2	Protein transport protein Sec23B OS=Mus musculus GN=Sec23b PE=1 SV=1	SC23B_MOUSE	86,439.10	98.90%	1	1	1	0.01%	MVQVHELSCEGISK	R	S	99.70%	42.6	2,003.90	1,697.12	2141270	172	185
1586	POSITIVE 2	Exosome complex component RRP40 OS=Mus musculus GN=Exosc3 PE=1 SV=3	EXOS3_MOUSE	29,545.90	100.00%	2	2	2	0.03%	AEVLSAGPESVAGCR	M	A	99.70%	48.5	1,931.86	2,904.43	1100640	2	16
1587	POSITIVE 2	Cytoplasmic FMR1-interacting protein 1 OS=Mus musculus GN=Cyfip1 PE=1 SV=1	CYFP1_MOUSE	145,245.60	100.00%	2	2	3	0.04%	CNEQPNRVEIYEK	K	T	99.70%	58.6	2,065.91	1,293.03	1601970	98	110
1588	POSITIVE 2	Cytoplasmic FMR1-interacting protein 1 OS=Mus musculus GN=Cyfip1 PE=1 SV=1	CYFP1_MOUSE	145,245.60	100.00%	2	2	3	0.04%	WTCASSSSSPQYNICEQMIQIR	R	E	99.70%	61.9	3,101.32	3,139.84	692996	332	353
1589	POSITIVE 2	A-kinase anchor protein 2 OS=Mus musculus GN=Akap2 PE=1 SV=3	AKAP2_MOUSE	98,578.40	100.00%	2	2	3	0.04%	EQKAPCVSESQSAGAGPANAATQGK	K	E	99.70%	65.3	2,831.27	1,223.72	331022	411	435
1590	POSITIVE 2	Mitochondrial-processing peptidase subunit alpha OS=Mus musculus GN=Pmpca PE=1 SV=1	MPPA_MOUSE	58,280.00	98.90%	1	1	1	0.01%	KLPHELCTLIR	R	N	99.70%	49.4	1,766.90	2,034.02	640533	459	469
1591	POSITIVE 2	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	5	9	13	0.18%	GVILTDECPGIFSAGLDLLEMYGR	R	N	99.70%	59.3	3,013.41	4,495.92	1142570	0	0
1592	POSITIVE 2	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	5	9	13	0.18%	GVILTSECPGIFSAGLDLLEMYGRNPAHYAEYWK	R	N	99.70%	32.2	4,244.99	4,229.42	229868	80	113
1593	POSITIVE 2	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	5	9	13	0.18%	GVRLTSECPGIFSAGLDLLEMYGR	R	N	99.70%	38	3,044.43	4,708.28	344306	0	0
1594	POSITIVE 2	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	5	9	13	0.18%	NVVLTSECPGIFSAGLDLLEMYGR	R	N	99.70%	56	3,028.42	4,763.21	726955	0	0
1595	POSITIVE 2	MOB-like protein phocein OS=Mus musculus GN=Mob4 PE=1 SV=1	PHOCN_MOUSE	26,032.50	98.90%	1	1	2	0.03%	HTLDGAACLLNSNK	R	Y	99.70%	59.9	1,900.86	1,881.07	3925470	127	140
1596	POSITIVE 2	Probable aminopeptidase NPEPL1 OS=Mus musculus GN=Npepl1 PE=1 SV=1	PEPL1_MOUSE	55,940.10	98.90%	1	2	2	0.03%	ASEDPLLNLVSPLDCEVDAQEGDNMGR	R	D	99.70%	78.9	3,331.45	3,801.44	2001060	490	516
1597	POSITIVE 2	Cellular nucleic acid-binding protein OS=Mus musculus GN=Cnbp PE=1 SV=2	CNBP_MOUSE	19,591.20	100.00%	2	2	2	0.03%	ECTIEATA	R	-	99.00%	28.7	1,281.51	1,743.08	1544570	171	178
1598	POSITIVE 2	Cellular nucleic acid-binding protein OS=Mus musculus GN=Cnbp PE=1 SV=2	CNBP_MOUSE	19,591.20	100.00%	2	2	2	0.03%	GFQFVSSSLPDICYR	R	C	99.70%	45.9	2,162.96	3,220.31	766173	42	56
1599	POSITIVE 2	Pyridoxal-dependent decarboxylase domain-containing protein 1 OS=Mus musculus GN=Pdxdc1 PE=1 SV=2	PDXD1_MOUSE	87,336.50	100.00%	2	2	2	0.03%	YENGCAYFHEEEREGLAK	R	I	99.70%	44.7	2,589.08	1,706.45	1819860	131	148
1600	POSITIVE 2	Actin, aortic smooth muscle OS=Mus musculus GN=Acta2 PE=1 SV=1	ACTA_MOUSE	42,010.10	100.00%	2	3	3	0.04%	CEEEDSTALVCDNGSGLCK	M	A	99.70%	49.9	2,709.04	3,447.43	972033	2	20
1601	POSITIVE 2	Actin, aortic smooth muscle OS=Mus musculus GN=Acta2 PE=1 SV=1	ACTA_MOUSE	42,010.10	100.00%	2	3	3	0.04%	EEEDSTALVCDNGSGLCK	C	A	99.70%	28.9	2,480.99	2,979.56	1417900	3	20
1602	POSITIVE 2	Cystatin-B OS=Mus musculus GN=Cstb PE=1 SV=1	CYTB_MOUSE	11,045.50	98.90%	1	3	3	0.04%	MMCGAPSATMPATAETQEVADQVK	-	S	99.70%	78.7	2,953.25	3,196.47	2601500	1	24
1603	POSITIVE 2	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	KIF4_MOUSE	139,522.30	100.00%	4	4	6	0.08%	CQEEELRK	K	M	99.00%	57.9	1,478.64	517.407	1121930	966	973
1604	POSITIVE 2	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	KIF4_MOUSE	139,522.30	100.00%	4	4	6	0.08%	MQEVCEQNQQLLQENSAIK	K	Q	99.70%	95.8	2,677.20	2,134.13	410312	974	992
1605	POSITIVE 2	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	KIF4_MOUSE	139,522.30	100.00%	4	4	6	0.08%	VSYLEIYNEEILDLLCSSR	K	E	99.70%	48.4	2,703.26	4,386.47	357018	138	156
1606	POSITIVE 2	Xaa-Pro aminopeptidase 1 OS=Mus musculus GN=Xpnpep1 PE=1 SV=1	XPP1_MOUSE	69,592.20	98.90%	1	2	6	0.08%	CCMPYTPICIAK	R	A	99.70%	34.7	2,036.84	3,581.36	3813530	308	319
1607	POSITIVE 2	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	2AAA_MOUSE	65,323.70	100.00%	4	8	14	0.20%	EFCENLSADCRENVIMTQILPCIK	K	E	99.70%	60.3	3,463.55	3,859.75	269176	308	331
1608	POSITIVE 2	FERM domain-containing protein 8 OS=Mus musculus GN=Frmd8 PE=1 SV=2	FRMD8_MOUSE	51,827.50	100.00%	2	2	2	0.03%	QGSVVCSR	R	I	99.00%	29	1,279.55	747.792	852750	407	414
1609	POSITIVE 2	FERM domain-containing protein 8 OS=Mus musculus GN=Frmd8 PE=1 SV=2	FRMD8_MOUSE	51,827.50	100.00%	2	2	2	0.03%	VQLGPYQPGQPAACTLR	R	E	99.70%	60	2,243.07	2,322.88	1055490	178	194
1610	POSITIVE 2	NudC domain-containing protein 1 OS=Mus musculus GN=Nudcd1 PE=1 SV=2	NUDC1_MOUSE	66,706.50	98.90%	1	2	2	0.03%	HDVDALLWQPHCSK	R	Q	99.70%	47.6	2,092.93	1,931.40	2642390	458	471
1611	POSITIVE 2	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1 OS=Mus musculus GN=Aimp1 PE=1 SV=2	AIMP1_MOUSE	33,997.10	100.00%	2	3	3	0.04%	IGCIVTAK	R	K	99.00%	32.1	1,248.61	1,476.23	874049	157	164
1612	POSITIVE 2	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1 OS=Mus musculus GN=Aimp1 PE=1 SV=2	AIMP1_MOUSE	33,997.10	100.00%	2	3	3	0.04%	LSTPLQTNCTASESVVQSPSVATTASPATK	R	E	99.70%	72.5	3,420.63	2,450.51	2598770	82	111
1613	POSITIVE 2	Ubiquitin-associated protein 2 OS=Mus musculus GN=Ubap2 PE=1 SV=1	UBAP2_MOUSE	117,965.00	98.90%	1	1	2	0.03%	FSAQSMGTFNPADYSESMSTDGCGTK	R	L	99.70%	67.8	3,163.24	2,895.45	708153	186	211
1614	POSITIVE 2	La-related protein 1 OS=Mus musculus GN=Larp1 PE=1 SV=3	LARP1_MOUSE	121,127.00	100.00%	2	2	2	0.03%	SDESGEEKNGDEDCQR	K	G	99.70%	52.1	2,241.83	425.022	25,178.00	198	213
1615	POSITIVE 2	Aspartate aminotransferase, cytoplasmic OS=Mus musculus GN=Got1 PE=1 SV=3	AATC_MOUSE	46,248.40	100.00%	3	4	5	0.07%	DIRPYCYWDAEK	K	R	99.70%	38.3	2,002.84	2,332.64	1789540	155	166
1616	POSITIVE 2	Aspartate aminotransferase, cytoplasmic OS=Mus musculus GN=Got1 PE=1 SV=3	AATC_MOUSE	46,248.40	100.00%	3	4	5	0.07%	DIRPYCYWDAEKR	K	G	99.70%	48.4	2,158.94	2,026.48	1308870	155	167
1617	POSITIVE 2	Aspartate aminotransferase, cytoplasmic OS=Mus musculus GN=Got1 PE=1 SV=3	AATC_MOUSE	46,248.40	100.00%	3	4	5	0.07%	INMCGLTTK	R	N	99.70%	48.8	1,424.63	1,821.97	3494710	388	396
1618	POSITIVE 2	Nuclear factor 1 B-type OS=Mus musculus GN=Nfib PE=1 SV=2	NFIB_MOUSE	63,507.40	98.90%	1	1	2	0.03%	KHPCCVLSNPDQK	K	G	99.70%	49.9	2,037.89	1,201.33	2737370	100	112
1619	POSITIVE 2	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	6	12	23	0.32%	ALVDHENVISCPHLGASTK	R	E	99.70%	73.4	2,435.14	1,753.08	3556480	271	289
1620	POSITIVE 2	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	6	12	23	0.32%	VLISDSLDPCCR	K	K	99.70%	43.8	1,889.82	2,724.52	2155920	9	20
1621	POSITIVE 2	Threonine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Tars PE=1 SV=2	SYTC_MOUSE	83,358.10	100.00%	2	4	4	0.06%	FMADTDLDPGCTLNKK	K	I	99.70%	55.6	2,212.97	2,079.44	3429910	645	660
1622	POSITIVE 2	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	COPB_MOUSE	107,069.60	100.00%	3	3	3	0.04%	VLSECSPLMNDIFNK	K	E	99.70%	73.2	2,153.97	3,167.20	1132830	619	633
1623	POSITIVE 2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	AT2A2_MOUSE	114,860.00	100.00%	5	9	12	0.17%	SMSVYCTPNKPSR	K	T	99.70%	40.3	1,913.83	1,200.34	1383500	493	505
1624	POSITIVE 2	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	5	10	12	0.17%	ATVECVKDQFGFINYEVGDSKK	R	L	99.70%	32.2	2,921.34	2,505.79	1597540	676	697
1625	POSITIVE 2	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	5	10	12	0.17%	MNGQVVCAVPHNLESK	R	S	99.70%	31.3	2,169.98	1,808.38	172682	100	115
1626	POSITIVE 2	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	SYAC_MOUSE	106,911.00	100.00%	4	8	9	0.13%	AEEIVNGMIEAAKPVYTQDCPLAAAK	K	A	99.70%	91.6	3,176.51	2,848.26	398359	652	677
1627	POSITIVE 2	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	SYAC_MOUSE	106,911.00	100.00%	4	8	9	0.13%	YNYQSDSSGSYVFECTVATVLALR	K	R	99.70%	108	3,117.39	4,324.69	879823	487	510
1628	POSITIVE 2	Eukaryotic translation initiation factor 3 subunit D OS=Mus musculus GN=Eif3d PE=1 SV=2	EIF3D_MOUSE	63,989.60	100.00%	2	4	6	0.08%	YLEVSEPQDIECCGALEYYDK	R	A	99.70%	40.2	3,036.26	3,331.27	853604	184	204
1629	POSITIVE 2	[F-actin]-methionine sulfoxide oxidase MICAL2 OS=Mus musculus GN=Mical2 PE=1 SV=1	MICA2_MOUSE	110,075.30	98.90%	1	1	1	0.01%	GTLQAFNILTCLLDLDPLDHR	K	N	99.70%	72.9	2,812.38	4,550.95	258864	27	47
1630	POSITIVE 2	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	4	8	11	0.16%	EKDNIRQEISIMNCLHHPK	K	L	99.70%	64.1	2,749.30	1,740.68	5489190	1524	1542
1631	POSITIVE 2	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	4	8	11	0.16%	QAQVNLTVVDKPDPPAGTPCASDIR	R	S	99.70%	81.3	3,036.45	2,228.27	2389210	1342	1366
1632	POSITIVE 2	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	4	8	11	0.16%	QEISIMNCLHHPK	R	L	99.70%	47.5	1,993.90	1,729.32	2655630	1530	1542
1633	POSITIVE 2	Long-chain-fatty-acid--CoA ligase 4 OS=Mus musculus GN=Acsl4 PE=1 SV=2	ACSL4_MOUSE	79,080.00	100.00%	3	3	5	0.07%	AALVDINCVK	K	H	99.70%	39.4	1,489.71	2,104.02	1793620	214	223
1634	POSITIVE 2	Nuclear autoantigenic sperm protein OS=Mus musculus GN=Nasp PE=1 SV=2	NASP_MOUSE	83,952.90	100.00%	2	3	4	0.06%	TEQESLCTEK	K	G	99.70%	45.6	1,611.66	971.562	1360010	230	239
1635	POSITIVE 2	Serine/threonine-protein kinase PLK1 OS=Mus musculus GN=Plk1 PE=1 SV=2	PLK1_MOUSE	68,303.40	100.00%	3	3	3	0.04%	LILCPLMAAVTYINEK	K	R	99.70%	88.7	2,236.12	4,092.42	263535	541	556
1636	POSITIVE 2	Serine/threonine-protein kinase PLK1 OS=Mus musculus GN=Plk1 PE=1 SV=2	PLK1_MOUSE	68,303.40	100.00%	3	3	3	0.04%	LSLLEEYGCCK	R	E	99.70%	47.2	1,826.78	2,890.82	926693	564	574
1637	POSITIVE 2	Serine/threonine-protein kinase PLK1 OS=Mus musculus GN=Plk1 PE=1 SV=2	PLK1_MOUSE	68,303.40	100.00%	3	3	3	0.04%	QEEAEDPACIPIFWVSK	R	W	99.70%	27.9	2,406.07	3,577.37	1258500	397	413
1638	POSITIVE 2	Vacuolar protein-sorting-associated protein 36 OS=Mus musculus GN=Vps36 PE=1 SV=1	VPS36_MOUSE	43,736.50	98.90%	1	1	1	0.01%	NNECCMAIPLSQIVFIEEQAAGIGK	K	S	99.70%	71.6	3,247.49	4,419.20	415193	54	78
1639	POSITIVE 2	Translation initiation factor eIF-2B subunit epsilon OS=Mus musculus GN=Eif2b5 PE=1 SV=1	EI2BE_MOUSE	80,086.40	100.00%	2	2	2	0.03%	ESSPSHPTRCHEDNVVMAVDSATNR	K	V	99.70%	59	3,183.36	1,449.70	2009940	183	207
1640	POSITIVE 2	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	ADT1_MOUSE	32,905.40	100.00%	5	9	10	0.14%	GADIMYTGTLDCWR	K	K	99.70%	39.5	2,045.85	2,950.42	994204	246	259
1641	POSITIVE 2	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	PCBP1_MOUSE	37,498.20	100.00%	4	6	8	0.11%	VMTIPYQPMPASSPVICAGGQDR	R	C	99.70%	77.5	2,862.30	2,972.00	3456570	178	200
1642	POSITIVE 2	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	XPO1_MOUSE	123,095.70	100.00%	3	6	6	0.08%	TSSDPTCVEKEK	K	V	99.70%	35.9	1,767.75	794.544	1696640	113	124
1643	POSITIVE 2	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	PSME4_MOUSE	211,204.20	100.00%	3	3	3	0.04%	AQQTFFAALGAYNFCCR	K	D	99.70%	35.7	2,480.06	3,791.29	791119	986	1002
1644	POSITIVE 2	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	PSME4_MOUSE	211,204.20	100.00%	3	3	3	0.04%	LWELLCPLLR	K	T	99.70%	54.3	1,699.87	4,131.41	122563	1401	1410
1645	POSITIVE 2	CAD protein OS=Mus musculus GN=Cad PE=1 SV=1	PYR1_MOUSE	243,237.40	100.00%	2	3	3	0.04%	CGPKPPPGFPGLETMLPLLLTAVSEGR	K	L	99.70%	45.4	3,221.62	4,468.49	907874	1696	1722
1646	POSITIVE 2	CAD protein OS=Mus musculus GN=Cad PE=1 SV=1	PYR1_MOUSE	243,237.40	100.00%	2	3	3	0.04%	FGSVQEYEACFGQFILTPHIMTR	R	A	99.70%	33.3	3,118.42	3,862.36	491299	2152	2174
1647	POSITIVE 2	EH domain-containing protein 4 OS=Mus musculus GN=Ehd4 PE=1 SV=1	EHD4_MOUSE	61,483.00	100.00%	3	4	6	0.08%	FMCSQLPNQVLK	R	S	99.70%	37.5	1,851.86	2,433.27	763100	139	150
1648	POSITIVE 2	Protein FAM160B1 OS=Mus musculus GN=Fam160b1 PE=1 SV=2	F16B1_MOUSE	86,019.00	100.00%	2	3	3	0.04%	VVNSFLCLVPDDAK	K	S	99.70%	42.7	1,963.93	3,224.77	602950	567	580
1649	POSITIVE 2	Sorting nexin-2 OS=Mus musculus GN=Snx2 PE=1 SV=2	SNX2_MOUSE	58,472.30	98.90%	1	1	1	0.01%	LHASVEALVCHRK	K	E	99.70%	48.4	1,906.94	1,274.41	2076370	323	335
1650	POSITIVE 2	FK506-binding protein 15 OS=Mus musculus GN=Fkbp15 PE=1 SV=2	FKB15_MOUSE	132,961.80	98.90%	1	1	1	0.01%	CQAEAEMDEIRK	R	S	99.70%	48.6	1,866.78	1,357.16	979834	753	764
1651	POSITIVE 2	Rho guanine nucleotide exchange factor 2 OS=Mus musculus GN=Arhgef2 PE=1 SV=4	ARHG2_MOUSE	111,977.60	100.00%	1	1	1	0.01%	QALCPGSTR	R	N	99.70%	44.2	1,376.60	986.484	2484490	304	312
1652	POSITIVE 2	5'-3' exoribonuclease 1 OS=Mus musculus GN=Xrn1 PE=1 SV=1	XRN1_MOUSE	194,309.30	98.90%	1	1	1	0.01%	ALYFCGFPTLK	K	H	99.70%	53.5	1,703.79	3,259.67	614169	653	663
1653	POSITIVE 2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	CNN2_MOUSE	33,156.10	100.00%	3	4	5	0.07%	AGQCVIGLQMGTNK	K	C	99.70%	82.1	1,863.85	2,139.30	2046370	161	174
1654	POSITIVE 2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	CNN2_MOUSE	33,156.10	100.00%	3	4	5	0.07%	CASQSGMTAYGTR	K	R	99.70%	68.8	1,776.71	1,232.79	1290590	175	187
1655	POSITIVE 2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	CNN2_MOUSE	33,156.10	100.00%	3	4	5	0.07%	NHILPPMDHCTISLQMGTNK	K	C	99.70%	57.5	2,694.23	2,250.64	827492	195	214
1716	POSITIVE 2	Protein PRRC2C OS=Mus musculus GN=Prrc2c PE=1 SV=3	PRC2C_MOUSE	310,888.30	98.90%	1	1	1	0.01%	IACGPPQAK	R	L	99.70%	28.7	1,328.61	1,011.34	501597	222	230
1656	POSITIVE 2	Guanine nucleotide-binding protein-like 3 OS=Mus musculus GN=Gnl3 PE=1 SV=2	GNL3_MOUSE	60,787.90	98.90%	1	2	2	0.03%	QITIIDSPCLIISPCNSPTALALR	K	S	99.70%	61	3,108.55	4,390.84	600787	295	318
1657	POSITIVE 2	Transport and Golgi organization protein 6 homolog OS=Mus musculus GN=Tango6 PE=1 SV=1	TNG6_MOUSE	118,733.90	100.00%	1	1	1	0.01%	AASGPAAAAPSGVLVTCGLEQVLEALK	M	L	99.70%	42.7	3,009.50	4,736.38	931669	2	28
1658	POSITIVE 2	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	EIF2D_MOUSE	62,831.00	100.00%	3	3	4	0.06%	LCPIDITLALK	K	T	99.70%	63.4	1,643.85	3,430.93	648962	475	485
1659	POSITIVE 2	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	EIF2D_MOUSE	62,831.00	100.00%	3	3	4	0.06%	LPWDCLLTR	K	C	99.70%	42.5	1,560.73	3,300.42	422386	442	450
1660	POSITIVE 2	Leucine-rich repeat-containing protein 40 OS=Mus musculus GN=Lrrc40 PE=1 SV=2	LRC40_MOUSE	68,079.70	100.00%	3	5	5	0.07%	NLGEVPQCVWR	R	I	99.70%	30.3	1,744.79	2,440.46	1232910	47	57
1661	POSITIVE 2	N-acetylgalactosamine kinase OS=Mus musculus GN=Galk2 PE=1 SV=1	GALK2_MOUSE	50,503.70	98.90%	1	1	1	0.01%	THTLQLANTDPLYPDFSTTANNICIDK	K	T	99.70%	43	3,450.59	3,043.84	264606	76	102
1662	POSITIVE 2	Cullin-5 OS=Mus musculus GN=Cul5 PE=1 SV=3	CUL5_MOUSE	90,978.10	98.90%	1	1	1	0.01%	FFTQCDILPKPFCQLEVTLLGK	K	Q	99.70%	40.1	3,109.52	4,329.82	1095030	100	121
1663	POSITIVE 2	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	TPP2_MOUSE	139,882.30	100.00%	4	6	8	0.11%	KETGASSFLCR	K	Y	99.70%	54.7	1,642.73	1,358.95	2543430	19	29
1664	POSITIVE 2	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	TPP2_MOUSE	139,882.30	100.00%	4	6	8	0.11%	YEDLAPCITLK	K	S	99.70%	58.6	1,709.79	2,595.15	6627300	781	791
1665	POSITIVE 2	Ankyrin repeat domain-containing protein 17 OS=Mus musculus GN=Ankrd17 PE=1 SV=2	ANR17_MOUSE	274,210.80	100.00%	3	3	4	0.06%	AGHVCTVQFLISK	R	G	99.70%	71.1	1,846.89	2,171.45	1745590	636	648
1666	POSITIVE 2	Ankyrin repeat domain-containing protein 17 OS=Mus musculus GN=Ankrd17 PE=1 SV=2	ANR17_MOUSE	274,210.80	100.00%	3	3	4	0.06%	ISSCSDESSNSNSSR	R	K	99.70%	51.9	2,003.77	487.23	15,803.30	1615	1629
1667	POSITIVE 2	Ankyrin repeat domain-containing protein 17 OS=Mus musculus GN=Ankrd17 PE=1 SV=2	ANR17_MOUSE	274,210.80	100.00%	3	3	4	0.06%	LTSSVSCALDEAAAALTR	R	M	99.70%	57.8	2,223.04	3,747.44	463179	200	217
1668	POSITIVE 2	Myosin light polypeptide 6 OS=Mus musculus GN=Myl6 PE=1 SV=3	MYL6_MOUSE	16,929.80	100.00%	2	2	3	0.04%	CDFTEDQTAEFKEAFQLFDR	M	T	99.70%	32.9	2,926.23	4,188.23	286208	2	21
1669	POSITIVE 2	Protein Niban OS=Mus musculus GN=Fam129a PE=1 SV=2	NIBAN_MOUSE	102,649.00	100.00%	3	3	4	0.06%	ALASTCKPELQK	K	Y	99.70%	45	1,732.84	1,111.36	1718000	510	521
1670	POSITIVE 2	Protein Niban OS=Mus musculus GN=Fam129a PE=1 SV=2	NIBAN_MOUSE	102,649.00	100.00%	3	3	4	0.06%	GSTSQSTSGGLTENTSCPGPIEEPFEAQEPAEK	R	V	99.70%	77.1	3,809.64	2,482.10	277396	786	818
1671	POSITIVE 2	Protein Niban OS=Mus musculus GN=Fam129a PE=1 SV=2	NIBAN_MOUSE	102,649.00	100.00%	3	3	4	0.06%	IHPEASHPAAIQQDSCEEREVR	K	E	99.70%	37.1	2,946.32	1,078.55	645648	741	762
1672	POSITIVE 2	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	3	4	4	0.06%	GTAPCPPDVVR	K	A	99.70%	32.2	1,555.70	1,636.95	1293480	194	204
1673	POSITIVE 2	Transmembrane protein 41B OS=Mus musculus GN=Tmem41b PE=1 SV=1	TM41B_MOUSE	32,430.40	98.90%	1	2	3	0.04%	DHLNEKPCAEAGSAR	K	T	99.70%	49.2	2,041.88	756.114	3879400	37	51
1674	POSITIVE 2	Src substrate cortactin OS=Mus musculus GN=Cttn PE=1 SV=2	SRC8_MOUSE	61,249.50	100.00%	2	3	14	0.20%	CALGWDHQEK	K	L	99.70%	55.7	1,630.67	1,294.02	2595180	246	255
1675	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	HNRL2_MOUSE	84,940.70	100.00%	5	6	14	0.20%	ANFSLPEKCDYMDEVTYGELEK	K	E	99.70%	47.7	3,025.29	2,923.10	1384100	592	613
1676	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	HNRL2_MOUSE	84,940.70	100.00%	5	6	14	0.20%	VGWSVDFSCSQLGEDEFSYGFDGR	R	G	99.70%	119	3,131.28	4,063.06	2227130	314	337
1677	POSITIVE 2	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial OS=Mus musculus GN=Idh3g PE=1 SV=1	IDHG1_MOUSE	42,785.60	100.00%	3	7	10	0.14%	HACVPVDFEEVHVSSNADEEDIRNAIMAIRR	R	N	99.70%	39.8	3,982.82	2,899.74	1264830	79	109
1678	POSITIVE 2	WW domain-binding protein 2 OS=Mus musculus GN=Wbp2 PE=1 SV=1	WBP2_MOUSE	28,032.30	98.90%	1	2	3	0.04%	DCEIKQPVFGANFIK	K	G	99.70%	69.9	2,153.02	2,688.49	3131930	79	93
1679	POSITIVE 2	Cellular tumor antigen p53 OS=Mus musculus GN=Tp53 PE=1 SV=3	P53_MOUSE	43,155.40	100.00%	3	4	6	0.08%	ALPTCTSASPPQK	R	K	99.70%	29.5	1,744.80	1,302.16	188565	301	313
1680	POSITIVE 2	Cellular tumor antigen p53 OS=Mus musculus GN=Tp53 PE=1 SV=3	P53_MOUSE	43,155.40	100.00%	3	4	6	0.08%	KEVLCPELPPGSAK	K	R	99.70%	62.8	1,911.93	1,702.82	2089420	286	299
1681	POSITIVE 2	Cytoskeleton-associated protein 4 OS=Mus musculus GN=Ckap4 PE=1 SV=2	CKAP4_MOUSE	63,692.40	100.00%	2	3	5	0.07%	SSAATANASSASCSR	R	R	99.70%	74.4	1,814.74	523.047	633913	67	81
1682	POSITIVE 2	Cytoskeleton-associated protein 4 OS=Mus musculus GN=Ckap4 PE=1 SV=2	CKAP4_MOUSE	63,692.40	100.00%	2	3	5	0.07%	SSAATANASSASCSRR	R	L	99.70%	36.9	1,970.84	446.256	1692060	67	82
1683	POSITIVE 2	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	RINI_MOUSE	49,817.90	100.00%	4	7	9	0.13%	CKDISSAVQANPALTELSLR	R	T	99.70%	51.1	2,560.25	2,661.62	291547	40	59
1684	POSITIVE 2	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial OS=Mus musculus GN=Oxct1 PE=1 SV=1	SCOT1_MOUSE	55,990.20	100.00%	2	3	3	0.04%	DIPNGATLLVGGFGLCGIPENLIGALLK	K	T	99.70%	84.9	3,209.67	4,718.50	619933	52	79
1685	POSITIVE 2	Cytosolic purine 5'-nucleotidase OS=Mus musculus GN=Nt5c2 PE=1 SV=2	5NTC_MOUSE	64,811.30	100.00%	2	4	6	0.08%	YTSCDTGFK	R	D	99.70%	37.4	1,465.57	1,215.57	1568000	178	186
1686	POSITIVE 2	UBX domain-containing protein 7 OS=Mus musculus GN=Ubxn7 PE=1 SV=2	UBXN7_MOUSE	52,164.60	98.90%	1	1	1	0.01%	GSFETAKECGQMQNK	K	W	99.70%	35.8	2,101.87	1,036.12	75,139.60	130	144
1687	POSITIVE 2	Aldehyde dehydrogenase X, mitochondrial OS=Mus musculus GN=Aldh1b1 PE=1 SV=1	AL1B1_MOUSE	57,553.50	100.00%	2	3	5	0.07%	TAAALPNPIPNPEICYNK	S	L	99.70%	47.5	2,370.12	2,725.03	312916	23	40
1688	POSITIVE 2	PC4 and SFRS1-interacting protein OS=Mus musculus GN=Psip1 PE=1 SV=1	PSIP1_MOUSE	59,697.60	100.00%	2	2	2	0.03%	QPCPSDGDMVIDEDKSK	K	K	99.70%	30.3	2,290.93	2,029.57	793675	201	217
1689	POSITIVE 2	PC4 and SFRS1-interacting protein OS=Mus musculus GN=Psip1 PE=1 SV=1	PSIP1_MOUSE	59,697.60	100.00%	2	2	2	0.03%	VVKQPCPSDGDMVIDEDKSK	K	K	99.70%	61	2,634.18	1,410.36	492738	198	217
1690	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 48 OS=Mus musculus GN=Usp48 PE=1 SV=2	UBP48_MOUSE	120,632.60	98.90%	1	1	1	0.01%	ILNDDCATLGTLGVIPESVILLK	K	A	99.70%	51	2,841.47	4,265.71	658797	998	1020
1691	POSITIVE 2	DNA replication licensing factor MCM4 OS=Mus musculus GN=Mcm4 PE=1 SV=1	MCM4_MOUSE	96,738.80	100.00%	2	4	6	0.08%	IAEPCSCVHCHTTHSMALIHNR	R	S	99.70%	49.8	3,154.35	1,757.32	1.00E+07	321	342
1692	POSITIVE 2	Signal transducer and activator of transcription 3 OS=Mus musculus GN=Stat3 PE=1 SV=2	STAT3_MOUSE	88,055.60	100.00%	3	3	4	0.06%	IKVCIDKDSGDVAALR	K	G	99.70%	49.5	2,147.06	1,875.66	1159210	364	379
1693	POSITIVE 2	Signal transducer and activator of transcription 3 OS=Mus musculus GN=Stat3 PE=1 SV=2	STAT3_MOUSE	88,055.60	100.00%	3	3	4	0.06%	YCRPESQEHPEADPGSAAPYLK	K	T	99.70%	39.7	2,889.26	1,602.92	558672	686	707
1694	POSITIVE 2	Glutamate dehydrogenase 1, mitochondrial OS=Mus musculus GN=Glud1 PE=1 SV=1	DHE3_MOUSE	61,338.40	100.00%	3	3	3	0.04%	CAVVDVPFGGAK	K	A	99.70%	63.3	1,606.74	2,344.67	348148	172	183
1695	POSITIVE 2	Glutamate dehydrogenase 1, mitochondrial OS=Mus musculus GN=Glud1 PE=1 SV=1	DHE3_MOUSE	61,338.40	100.00%	3	3	3	0.04%	CVGVGESDGSIWNPDGIDPK	K	E	99.70%	70.7	2,489.07	2,869.66	700166	327	346
1696	POSITIVE 2	Glutamate dehydrogenase 1, mitochondrial OS=Mus musculus GN=Glud1 PE=1 SV=1	DHE3_MOUSE	61,338.40	100.00%	3	3	3	0.04%	VYEGSILEADCDILIPAASEK	K	Q	99.70%	51.2	2,680.25	3,331.99	429021	366	386
1697	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	SPCDSGYSYETIEK	K	T	99.70%	71.9	2,022.81	1,834.73	1714830	1911	1924
1698	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	SPDTSAYCYETMEK	R	I	99.70%	63.7	2,068.79	1,827.21	717271	2030	2043
1699	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	SVSPGVTQAVVEEHCASPEEK	R	T	99.70%	38.6	2,627.17	1,708.82	1142230	1291	1311
1700	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	SWDTNLIECNLDQELK	R	L	99.70%	37	2,365.04	3,426.19	1016200	65	80
1701	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	TPEDGGYTCEITEK	K	T	99.70%	44	1,986.81	1,676.47	562342	1928	1941
1702	POSITIVE 2	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	6	6	7	0.10%	TPQASTYSYETSDRCYTTEK	K	K	99.70%	33.3	2,775.15	1,495.13	570863	2047	2066
1703	POSITIVE 2	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	PPCE_MOUSE	80,753.40	100.00%	3	3	7	0.10%	ICDPYSWLEDPDSEQTK	K	A	99.70%	64.9	2,470.02	3,162.50	1684270	24	40
1704	POSITIVE 2	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	PPCE_MOUSE	80,753.40	100.00%	3	3	7	0.10%	ITVPFLEQCPIR	K	G	99.70%	46.3	1,859.91	3,140.46	1607950	49	60
1705	POSITIVE 2	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	10	14	19	0.27%	AFHITQGLLKECR	R	L	99.70%	41	1,959.95	1,797.24	1783660	890	902
1706	POSITIVE 2	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	10	14	19	0.27%	NWTQEDSC	R	-	99.00%	38.2	1,426.50	1,557.86	1066450	1330	1337
1707	POSITIVE 2	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	PUR4_MOUSE	144,628.70	100.00%	10	14	19	0.27%	RIVLVDDRECLVGK	K	T	99.70%	36.8	2,059.04	1,772.86	2147470	597	610
1708	POSITIVE 2	SET and MYND domain-containing protein 5 OS=Mus musculus GN=Smyd5 PE=1 SV=2	SMYD5_MOUSE	47,095.10	98.90%	1	1	1	0.01%	LTGKPSQILPHPELCSVRK	R	D	99.70%	48	2,547.32	1,657.63	1052470	87	105
1709	POSITIVE 2	Cysteine and glycine-rich protein 3 OS=Mus musculus GN=Csrp3 PE=1 SV=1	CSRP3_MOUSE	20,894.50	98.90%	1	3	3	0.04%	TVYHAEEIQCNGR	K	S	99.70%	59.9	1,963.84	1,119.34	1894920	16	28
1710	POSITIVE 2	Polyribonucleotide nucleotidyltransferase 1, mitochondrial OS=Mus musculus GN=Pnpt1 PE=1 SV=1	PNPT1_MOUSE	85,684.20	100.00%	2	4	5	0.07%	ALCPVIPK	K	D	98.60%	26.9	1,284.64	1,925.46	572349	457	464
1711	POSITIVE 2	Polyribonucleotide nucleotidyltransferase 1, mitochondrial OS=Mus musculus GN=Pnpt1 PE=1 SV=1	PNPT1_MOUSE	85,684.20	100.00%	2	4	5	0.07%	SQIVMLEASAENILQQDFCHAIK	K	V	99.70%	66.3	3,032.43	3,952.07	2651040	224	246
1712	POSITIVE 2	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	6	6	9	0.13%	CQLEHHVGVLR	K	V	99.70%	35.7	1,734.82	1,134.13	899778	986	996
1713	POSITIVE 2	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	6	6	9	0.13%	INNGLHCVEK	R	M	99.70%	29.8	1,570.71	918.942	418376	3685	3694
1714	POSITIVE 2	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	6	6	9	0.13%	QLAASVSCPEPEGQIAR	R	L	99.70%	59.5	2,200.01	1,885.94	956782	4890	4906
1715	POSITIVE 2	Acetyl-CoA carboxylase 1 OS=Mus musculus GN=Acaca PE=1 SV=1	ACACA_MOUSE	265,259.30	100.00%	2	3	4	0.06%	QVNCEVDQR	K	F	99.70%	33.7	1,534.64	901.002	1116860	1338	1346
1717	POSITIVE 2	Aldose reductase-related protein 2 OS=Mus musculus GN=Akr1b8 PE=1 SV=2	ALD2_MOUSE	36,121.30	100.00%	2	4	6	0.08%	HIDCAYAYCNENEVGEAIQEK	R	I	99.70%	81.7	2,968.22	2,444.69	616454	42	62
1718	POSITIVE 2	A-kinase anchor protein 1, mitochondrial OS=Mus musculus GN=Akap1 PE=1 SV=4	AKAP1_MOUSE	92,194.40	100.00%	2	2	2	0.03%	SQPGPCRDEIAK	R	V	99.70%	32.5	1,744.77	864.96	304787	115	126
1719	POSITIVE 2	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	10	32	0.45%	CLGITVSGGIHISR	R	L	99.70%	87.6	1,856.91	4,856.78	1400890	1084	1097
1720	POSITIVE 2	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	100.00%	6	10	32	0.45%	VIFPGTGYLCLVWK	R	T	99.70%	33.2	2,040.01	4,033.26	65,938.40	884	897
1721	POSITIVE 2	Disks large-associated protein 4 OS=Mus musculus GN=Dlgap4 PE=1 SV=1	DLGP4_MOUSE	108,039.70	100.00%	3	3	4	0.06%	DTDSDTQDANDSSCK	R	S	99.70%	49.9	2,045.73	621.564	213195	713	727
1722	POSITIVE 2	Disks large-associated protein 4 OS=Mus musculus GN=Dlgap4 PE=1 SV=1	DLGP4_MOUSE	108,039.70	100.00%	3	3	4	0.06%	RDTDSDTQDANDSSCK	R	S	99.70%	50.2	2,201.83	410.826	31,708.70	712	727
1723	POSITIVE 2	Disks large-associated protein 4 OS=Mus musculus GN=Dlgap4 PE=1 SV=1	DLGP4_MOUSE	108,039.70	100.00%	3	3	4	0.06%	SLPDCTSHPNSISIDAGPR	R	Q	99.70%	36.4	2,411.07	1,892.20	1534000	732	750
1724	POSITIVE 2	28S ribosomal protein S24, mitochondrial OS=Mus musculus GN=Mrps24 PE=1 SV=1	RT24_MOUSE	18,901.00	98.90%	1	1	2	0.03%	ANQVDICALVLR	R	Q	99.70%	77.7	1,758.86	2,964.50	1761520	114	125
1725	POSITIVE 2	5'-AMP-activated protein kinase catalytic subunit alpha-2 OS=Mus musculus GN=Prkaa2 PE=1 SV=3	AAPK2_MOUSE	62,023.50	100.00%	2	2	4	0.06%	ACDIMAEVYR	K	A	99.70%	46.7	1,614.67	2,467.12	1612900	412	421
1726	POSITIVE 2	5'-AMP-activated protein kinase catalytic subunit alpha-2 OS=Mus musculus GN=Prkaa2 PE=1 SV=3	AAPK2_MOUSE	62,023.50	100.00%	2	2	4	0.06%	TSCGSPNYAAPEVISGR	R	L	99.70%	74.4	2,152.94	2,007.19	1616480	172	188
1727	POSITIVE 2	ADP-ribosylation factor-like protein 3 OS=Mus musculus GN=Arl3 PE=1 SV=1	ARL3_MOUSE	20,487.30	100.00%	2	3	5	0.07%	LSCVPVLIFANK	K	Q	99.70%	70.8	1,747.89	3,220.30	1987630	116	127
1728	POSITIVE 2	ADP-ribosylation factor-like protein 3 OS=Mus musculus GN=Arl3 PE=1 SV=1	ARL3_MOUSE	20,487.30	100.00%	2	3	5	0.07%	VWQIQSCSALTGEGVQDGMNWVCK	R	N	99.70%	38.2	3,208.40	3,606.86	240531	152	175
1729	POSITIVE 2	Interferon regulatory factor 2-binding protein 1 OS=Mus musculus GN=Irf2bp1 PE=1 SV=2	I2BP1_MOUSE	61,751.00	98.90%	1	1	1	0.01%	NADCLAELNEAMR	R	G	99.70%	59.9	1,893.79	2,520.88	1189540	204	216
1730	POSITIVE 2	Tudor and KH domain-containing protein OS=Mus musculus GN=Tdrkh PE=1 SV=1	TDRKH_MOUSE	62,135.50	98.90%	1	1	4	0.06%	VLLISGFPVQVCK	R	A	99.70%	72.6	1,846.96	3,256.91	2193420	98	110
1731	POSITIVE 2	Pyruvate dehydrogenase protein X component, mitochondrial OS=Mus musculus GN=Pdhx PE=1 SV=1	ODPX_MOUSE	54,000.00	98.90%	1	1	1	0.01%	DVSAPPPVSKPPAPTQPSPQPQIPCPAR	K	K	99.70%	83.9	3,303.63	2,218.30	974556	146	173
1732	POSITIVE 2	X-ray repair cross-complementing protein 5 OS=Mus musculus GN=Xrcc5 PE=1 SV=4	XRCC5_MOUSE	83,059.00	100.00%	1	1	1	0.01%	CTPTEAQLSAIDDLIDSMSLVK	K	K	99.70%	103	2,794.29	4,466.48	527980	444	465
1733	POSITIVE 2	Tubulin-specific chaperone D OS=Mus musculus GN=Tbcd PE=1 SV=1	TBCD_MOUSE	133,323.40	100.00%	3	4	5	0.07%	QIHQQLCDRHLYR	K	G	99.70%	37.3	2,154.01	1,008.77	808614	659	671
1734	POSITIVE 2	Tubulin-specific chaperone D OS=Mus musculus GN=Tbcd PE=1 SV=1	TBCD_MOUSE	133,323.40	100.00%	3	4	5	0.07%	VTCISPNDVSFAEAR	R	R	99.70%	75.5	2,052.91	2,386.34	2427840	803	817
1735	POSITIVE 2	60S ribosomal protein L12 OS=Mus musculus GN=Rpl12 PE=1 SV=2	RL12_MOUSE	17,805.00	98.90%	1	1	1	0.01%	HPHDIIDDINSGAVECPAS	R	-	99.70%	79	2,434.04	2,288.06	990864	147	165
1736	POSITIVE 2	Chromodomain-helicase-DNA-binding protein 4 OS=Mus musculus GN=Chd4 PE=1 SV=1	CHD4_MOUSE	217,754.90	100.00%	1	1	1	0.01%	FAEVECLAESHQHLSK	R	E	99.70%	41	2,272.01	1,754.27	1689530	1825	1840
1737	POSITIVE 2	FH1/FH2 domain-containing protein 1 OS=Mus musculus GN=Fhod1 PE=1 SV=3	FHOD1_MOUSE	129,603.30	100.00%	2	2	2	0.03%	FGPCPTLWASLEPVSVDTAR	R	L	99.70%	44.9	2,590.21	3,684.58	530922	679	698
1738	POSITIVE 2	FH1/FH2 domain-containing protein 1 OS=Mus musculus GN=Fhod1 PE=1 SV=3	FHOD1_MOUSE	129,603.30	100.00%	2	2	2	0.03%	VDFEQLTENLGQLECR	K	S	99.70%	42.5	2,338.04	3,464.59	1457180	922	937
1739	POSITIVE 2	SWI/SNF-related matrix-associated actin-dependent regulator of chromatin subfamily A member 5 OS=Mus musculus GN=Smarca5 PE=1 SV=1	SMCA5_MOUSE	121,632.30	100.00%	1	1	1	0.01%	ATNVCTRFEDSPSYVK	K	W	99.70%	64.4	2,261.00	1,710.58	1024420	160	175
1740	POSITIVE 2	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	HS74L_MOUSE	94,383.90	100.00%	4	7	8	0.11%	RMSANASDLPLNIECFMNDLDVSSK	K	M	99.70%	37.6	3,214.43	4,724.30	336927	0	0
1741	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 19 OS=Mus musculus GN=Usp19 PE=1 SV=1	UBP19_MOUSE	150,548.00	98.90%	1	1	2	0.03%	VCLPGFTGLVNLGNTCFMNSVIQSLSNTR	K	E	99.70%	79	3,654.72	4,555.06	854795	533	561
1742	POSITIVE 2	AP-3 complex subunit mu-1 OS=Mus musculus GN=Ap3m1 PE=1 SV=1	AP3M1_MOUSE	46,937.00	98.90%	1	1	1	0.01%	MIHSLFLINCSGDIFLEK	-	H	99.70%	75.6	2,524.20	3,464.83	1841220	1	18
1743	POSITIVE 2	Coatomer subunit gamma-1 OS=Mus musculus GN=Copg1 PE=1 SV=1	COPG1_MOUSE	97,513.80	100.00%	2	2	3	0.04%	CSFDVVKR	K	W	99.00%	54	1,397.63	1,298.80	666274	169	176
1744	POSITIVE 2	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	GUAA_MOUSE	76,725.00	100.00%	7	12	22	0.31%	ALCNGDSKPENAGGDLK	M	D	99.70%	49.4	2,174.94	1,608.77	2422270	2	18
1745	POSITIVE 2	Ras-related protein Rab-35 OS=Mus musculus GN=Rab35 PE=1 SV=1	RAB35_MOUSE	23,025.30	98.90%	1	1	1	0.01%	ENVNVEEMFNCITELVLR	K	A	99.70%	63.8	2,596.18	4,622.96	387044	153	170
1746	POSITIVE 2	Formin-binding protein 1-like OS=Mus musculus GN=Fnbp1l PE=1 SV=2	FBP1L_MOUSE	69,887.20	98.90%	1	1	1	0.01%	FTSCIAFFNILNELNDYAGQR	R	E	99.70%	90.9	2,880.31	4,420.57	717031	66	86
1747	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 28 OS=Mus musculus GN=Usp28 PE=1 SV=1	UBP28_MOUSE	119,320.00	98.90%	1	1	1	0.01%	AIEQMYCDPLLR	K	Q	99.70%	60	1,895.85	2,738.69	1669070	574	585
1748	POSITIVE 2	Trafficking protein particle complex subunit 9 OS=Mus musculus GN=Trappc9 PE=1 SV=2	TPPC9_MOUSE	128,233.20	98.90%	1	1	1	0.01%	LDFSCQENLLQDLSDDGISVSGFPLSSPFR	K	Q	99.70%	89.9	3,730.70	4,484.67	261727	796	825
1749	POSITIVE 2	High mobility group protein B1 OS=Mus musculus GN=Hmgb1 PE=1 SV=2	HMGB1_MOUSE	24,894.70	98.90%	1	1	1	0.01%	RPPSAFFLFCSEYRPK	K	I	99.70%	35.4	2,389.12	2,546.05	1244100	97	112
1750	POSITIVE 2	Putative methyltransferase NSUN6 OS=Mus musculus GN=Nsun6 PE=2 SV=2	NSUN6_MOUSE	52,279.70	98.90%	1	1	1	0.01%	QQGEVIVGAQCGNAVLR	R	G	99.70%	43.4	2,186.04	2,118.43	1080920	110	126
1751	POSITIVE 2	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	RIR2_MOUSE	45,097.00	100.00%	3	4	8	0.11%	EYLFNAIETMPCVKK	R	K	98.50%	29.2	2,230.03	2,794.04	534832	192	206
1752	POSITIVE 2	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	7	13	17	0.24%	DKLCGPYEK	R	F	99.70%	37	1,496.65	1,024.13	2964960	648	656
1753	POSITIVE 2	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	HS105_MOUSE	96,407.40	100.00%	7	13	17	0.24%	LMSSNSTDLPLNIECFMNDKDVSGK	K	M	99.70%	34.3	3,202.42	3,330.28	1441560	276	300
1754	POSITIVE 2	5'-AMP-activated protein kinase catalytic subunit alpha-1 OS=Mus musculus GN=Prkaa1 PE=1 SV=2	AAPK1_MOUSE	63,930.80	98.90%	1	1	1	0.01%	ICDGIFYTPQYLNPSVISLLK	K	H	99.70%	60.4	2,828.40	4,292.77	309739	237	257
1755	POSITIVE 2	Selenocysteine-specific elongation factor OS=Mus musculus GN=Eefsec PE=1 SV=2	SELB_MOUSE	63,540.00	98.90%	1	1	2	0.03%	LDADIHTNTCR	R	L	99.70%	30.6	1,702.73	1,115.64	3456840	420	430
1756	POSITIVE 2	Calponin-3 OS=Mus musculus GN=Cnn3 PE=1 SV=1	CNN3_MOUSE	36,429.60	98.90%	1	2	2	0.03%	CASQAGMTAYGTR	K	R	99.70%	77.7	1,760.72	1,302.96	562615	173	185
1757	POSITIVE 2	Pantothenate kinase 4 OS=Mus musculus GN=Pank4 PE=1 SV=2	PANK4_MOUSE	91,525.40	100.00%	2	2	3	0.04%	IAAMDPIICTALREDR	R	L	99.70%	51.4	2,232.06	2,945.53	1117960	672	687
1758	POSITIVE 2	Pantothenate kinase 4 OS=Mus musculus GN=Pank4 PE=1 SV=2	PANK4_MOUSE	91,525.40	100.00%	2	2	3	0.04%	QYWLTCFEEALDGVVK	R	R	99.70%	83.1	2,345.06	4,368.84	830158	446	461
1759	POSITIVE 2	Plastin-3 OS=Mus musculus GN=Pls3 PE=1 SV=3	PLST_MOUSE	70,744.70	98.90%	1	2	2	0.03%	VDLNSNGFICDYELHELFK	K	E	99.70%	45.7	2,700.21	3,417.26	2532970	24	42
1760	POSITIVE 2	Disco-interacting protein 2 homolog B OS=Mus musculus GN=Dip2b PE=1 SV=1	DIP2B_MOUSE	171,125.30	100.00%	3	4	6	0.08%	CPCLTGLDVTGKPVYTLTYGK	K	L	99.70%	54.3	2,798.32	3,029.03	2346690	351	371
1761	POSITIVE 2	Disco-interacting protein 2 homolog B OS=Mus musculus GN=Dip2b PE=1 SV=1	DIP2B_MOUSE	171,125.30	100.00%	3	4	6	0.08%	GEPLGVICNWPPALESALQR	K	W	99.70%	39.2	2,594.25	3,760.75	699422	324	343
1762	POSITIVE 2	Disco-interacting protein 2 homolog B OS=Mus musculus GN=Dip2b PE=1 SV=1	DIP2B_MOUSE	171,125.30	100.00%	3	4	6	0.08%	TCPLSWVQR	K	V	99.70%	49.5	1,533.69	2,402.29	1642150	589	597
1763	POSITIVE 2	ATPase family AAA domain-containing protein 1 OS=Mus musculus GN=Atad1 PE=1 SV=1	ATAD1_MOUSE	40,745.10	100.00%	2	2	2	0.03%	GVLLYGPPGCGK	K	T	99.70%	43.9	1,604.76	2,158.41	1053660	128	139
1764	POSITIVE 2	Uncharacterized aarF domain-containing protein kinase 1 OS=Mus musculus GN=Adck1 PE=1 SV=1	ADCK1_MOUSE	59,736.90	98.90%	1	1	1	0.01%	LACWVSALLGWLTR	R	A	99.70%	57.1	2,033.01	4,671.03	215900	507	520
1765	POSITIVE 2	E3 ubiquitin-protein ligase RNF123 OS=Mus musculus GN=Rnf123 PE=1 SV=1	RN123_MOUSE	148,655.60	96.00%	1	1	1	0.01%	LLVHGPTSETEQATSVLLADPCFQLR	R	S	99.00%	29.5	3,269.59	3,180.41	533159	1159	1184
1766	POSITIVE 2	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	IDHP_MOUSE	50,907.20	100.00%	3	4	12	0.17%	CATITPDEAR	K	V	99.70%	51.1	1,520.65	1,281.65	1984940	113	122
1767	POSITIVE 2	Far upstream element-binding protein 2 OS=Mus musculus GN=Khsrp PE=1 SV=2	FUBP2_MOUSE	76,775.20	100.00%	1	1	1	0.01%	VQQACEMVMDILR	K	E	99.70%	49.3	1,979.88	3,251.15	908405	293	305
1768	POSITIVE 2	Eukaryotic translation initiation factor 3 subunit B OS=Mus musculus GN=Eif3b PE=1 SV=1	EIF3B_MOUSE	91,371.20	100.00%	3	5	9	0.13%	GFHCESSAHWPIFK	R	W	99.70%	49.1	2,089.90	2,035.48	1664440	406	419
1769	POSITIVE 2	Eukaryotic translation initiation factor 3 subunit B OS=Mus musculus GN=Eif3b PE=1 SV=1	EIF3B_MOUSE	91,371.20	100.00%	3	5	9	0.13%	RGFHCESSAHWPIFK	K	W	99.70%	43	2,246.00	1,774.51	2236760	405	419
1770	POSITIVE 2	Oxidoreductase NAD-binding domain-containing protein 1 OS=Mus musculus GN=Oxnad1 PE=1 SV=2	OXND1_MOUSE	34,727.50	99.90%	1	2	3	0.04%	VCEITHESPSVK	K	S	99.70%	58	1,772.79	1,176.42	3727550	67	78
1771	POSITIVE 2	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	COF1_MOUSE	18,560.20	100.00%	6	10	21	0.30%	MLPDKDCR	K	Y	99.00%	37.8	1,421.60	825.591	959138	74	81
1772	POSITIVE 2	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	BAG3_MOUSE	61,859.40	100.00%	4	4	6	0.08%	QCGQMPATATTAAAQPPTAHGPER	K	S	99.70%	44.4	2,836.26	1,531.90	186636	153	176
1773	POSITIVE 2	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	BAG3_MOUSE	61,859.40	100.00%	4	4	6	0.08%	SGTPVHCPSPIR	R	V	99.70%	50.2	1,694.77	1,158.06	5451330	289	300
1774	POSITIVE 2	Dynamin-like 120 kDa protein, mitochondrial OS=Mus musculus GN=Opa1 PE=1 SV=1	OPA1_MOUSE	111,342.50	100.00%	2	4	11	0.16%	TQEQCVHNETK	R	N	99.70%	59.6	1,760.73	403.578	1308900	782	792
1775	POSITIVE 2	Polyadenylate-binding protein 1 OS=Mus musculus GN=Pabpc1 PE=1 SV=2	PABP1_MOUSE	70,671.30	100.00%	2	5	9	0.13%	GFGFVCFSSPEEATK	K	A	99.70%	50.4	2,049.87	2,966.21	867171	334	348
1776	POSITIVE 2	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	1433T_MOUSE	27,779.40	100.00%	3	5	16	0.23%	DNLTLWTSDSAGEECDAAEGAEN	R	-	99.70%	81	2,842.11	3,509.41	2689630	223	245
1777	POSITIVE 2	Proteasome activator complex subunit 2 OS=Mus musculus GN=Psme2 PE=1 SV=4	PSME2_MOUSE	27,058.10	99.90%	1	2	3	0.04%	QNLFQEADDFLCTFLPR	R	K	99.70%	69.1	2,501.12	4,595.80	894065	22	38
1778	POSITIVE 2	Mediator of DNA damage checkpoint protein 1 OS=Mus musculus GN=Mdc1 PE=1 SV=1	MDC1_MOUSE	184,667.00	100.00%	2	2	3	0.04%	LSCQTTPAGK	R	A	99.70%	34.6	1,449.65	863.859	1496280	938	947
1779	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein H2 OS=Mus musculus GN=Hnrnph2 PE=1 SV=1	HNRH2_MOUSE	49,280.00	98.90%	1	1	1	0.01%	YGDGGSSFQSTTGHCVHMR	R	G	99.70%	31.3	2,470.99	1,305.45	996765	276	294
1780	POSITIVE 2	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	7	10	15	0.21%	DCLINAAK	R	T	99.00%	35.5	1,291.58	1,645.54	231575	146	153
1781	POSITIVE 2	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	TCPA_MOUSE	60,449.90	100.00%	7	10	15	0.21%	SQIESMLINGYALNCVVGSQGMPK	R	R	99.70%	92.8	2,983.38	3,552.94	729115	204	227
1782	POSITIVE 2	E3 ubiquitin-protein ligase HUWE1 OS=Mus musculus GN=Huwe1 PE=1 SV=5	HUWE1_MOUSE	482,635.70	100.00%	4	4	7	0.10%	AQCETLSPDGLPEEQPQTTK	R	L	99.70%	97.2	2,616.16	2,043.76	1011100	3657	3676
1783	POSITIVE 2	E3 ubiquitin-protein ligase HUWE1 OS=Mus musculus GN=Huwe1 PE=1 SV=5	HUWE1_MOUSE	482,635.70	100.00%	4	4	7	0.10%	LQAVMCIISTIMESCPSTSSFYSSATAK	R	T	99.70%	110	3,525.57	4,619.00	932261	2176	2203
1784	POSITIVE 2	Ubiquitin-conjugating enzyme E2 D2 OS=Mus musculus GN=Ube2d2 PE=1 SV=1	UB2D2_MOUSE	16,736.10	100.00%	2	6	11	0.16%	IYHPNINSNGSICLDILR	R	S	99.70%	92	2,486.19	2,823.45	9220990	73	90
1785	POSITIVE 2	Ubiquitin-conjugating enzyme E2 D2 OS=Mus musculus GN=Ube2d2 PE=1 SV=1	UB2D2_MOUSE	16,736.10	100.00%	2	6	11	0.16%	VLLSICSLLCDPNPDDPLVPEIAR	K	I	99.70%	80.1	3,161.53	4,423.57	4756660	102	125
1786	POSITIVE 2	Bcl-2 homologous antagonist/killer OS=Mus musculus GN=Bak1 PE=1 SV=3	BAK_MOUSE	23,294.80	98.90%	1	1	3	0.04%	VGCDESPSPSEQQVAQDTEEVFR	K	S	99.70%	107	2,981.25	2,807.17	2719740	12	34
1787	POSITIVE 2	Proliferating cell nuclear antigen OS=Mus musculus GN=Pcna PE=1 SV=2	PCNA_MOUSE	28,785.50	100.00%	2	4	6	0.08%	DLSHIGDAVVISCAK	R	N	99.70%	71.7	1,971.93	2,352.12	3980290	150	164
1788	POSITIVE 2	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	3	3	6	0.08%	GYLGPEQLPDCLKGCDVVVIPAGVPR	K	K	99.70%	43	3,264.59	3,506.71	1028230	79	104
1789	POSITIVE 2	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	7	10	34	0.48%	QLLLLLCSEENMQK	K	A	99.70%	77	2,088.98	4,377.10	193383	683	696
1790	POSITIVE 2	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	7	10	34	0.48%	VFESTCDSGSPGSNQALLLLR	R	S	99.70%	53.2	2,638.22	3,117.58	715230	0	0
1791	POSITIVE 2	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	CUL3_MOUSE	88,950.00	100.00%	4	6	8	0.11%	ALQSLACGKPTQR	R	V	99.70%	42.9	1,816.88	1,155.73	3482190	630	642
1792	POSITIVE 2	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	CUL3_MOUSE	88,950.00	100.00%	4	6	8	0.11%	TECGCQFTSK	K	L	99.70%	43.4	1,672.64	1,656.18	1079180	460	469
1793	POSITIVE 2	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	CUL3_MOUSE	88,950.00	100.00%	4	6	8	0.11%	TEDLACMYK	K	L	99.70%	38.9	1,517.61	1,897.85	1341450	293	301
1794	POSITIVE 2	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	CUL3_MOUSE	88,950.00	100.00%	4	6	8	0.11%	YGCIRDHLR	R	Q	99.70%	39.3	1,576.71	1,042.46	863953	154	162
1795	POSITIVE 2	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	MAP2_MOUSE	52,922.50	100.00%	3	3	5	0.07%	LCDVGEAIQEVMESYEVEIDGK	R	T	99.70%	94.6	2,900.26	4,458.69	443551	297	318
1796	POSITIVE 2	DNA topoisomerase 2-alpha OS=Mus musculus GN=Top2a PE=1 SV=2	TOP2A_MOUSE	172,796.30	100.00%	2	2	3	0.04%	AAIGCGIVESILNWVK	K	F	99.70%	90.2	2,117.05	4,448.54	237739	400	415
1797	POSITIVE 2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	6	6	7	0.10%	CLMQNDLK	R	M	99.00%	47.7	1,408.60	1,590.51	596013	804	811
1798	POSITIVE 2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	6	6	7	0.10%	MDETGMVHCDTAVGTPDYISPEVLK	K	S	99.70%	87	3,152.37	2,796.08	290987	239	263
1799	POSITIVE 2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	6	6	7	0.10%	NCLLETAK	K	L	99.00%	46.7	1,335.60	1,571.29	1975230	606	613
1800	POSITIVE 2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	6	6	7	0.10%	NLICAFLTDR	K	E	99.70%	59.9	1,609.75	3,347.54	178497	327	336
1801	POSITIVE 2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	ROCK2_MOUSE	160,591.80	100.00%	6	6	7	0.10%	NSLCFPEDTEISK	K	H	99.70%	55.1	1,926.82	2,331.85	1898360	311	323
1802	POSITIVE 2	Ufm1-specific protease 2 OS=Mus musculus GN=Ufsp2 PE=1 SV=1	UFSP2_MOUSE	52,516.20	98.90%	1	2	2	0.03%	IDDNGWGCAYR	R	S	99.70%	62.8	1,713.67	1,984.24	2831770	287	297
1803	POSITIVE 2	Dystonin OS=Mus musculus GN=Dst PE=1 SV=2	DYST_MOUSE	834,226.70	100.00%	3	3	3	0.04%	DLVDQYQQYEDASCGLLSGLQACEAK	K	A	99.70%	53.8	3,416.47	4,155.35	199137	3972	3997
1804	POSITIVE 2	Dystonin OS=Mus musculus GN=Dst PE=1 SV=2	DYST_MOUSE	834,226.70	100.00%	3	3	3	0.04%	LLGAQLLSGGLIDCNSGQK	R	M	99.70%	49.6	2,331.14	3,193.57	906058	1773	1791
1805	POSITIVE 2	Sister chromatid cohesion protein PDS5 homolog A OS=Mus musculus GN=Pds5a PE=1 SV=3	PDS5A_MOUSE	150,332.90	100.00%	2	3	3	0.04%	ELLDLHKQPTSEANCSAMFGK	R	L	99.70%	32.7	2,763.25	2,085.09	2780830	517	537
1806	POSITIVE 2	Sister chromatid cohesion protein PDS5 homolog A OS=Mus musculus GN=Pds5a PE=1 SV=3	PDS5A_MOUSE	150,332.90	100.00%	2	3	3	0.04%	TVQTIEACIANFFNQVLVLGR	R	S	99.70%	107	2,780.39	4,665.88	314063	234	254
1807	POSITIVE 2	Tubulin-specific chaperone C OS=Mus musculus GN=Tbcc PE=1 SV=1	TBCC_MOUSE	38,124.70	98.90%	1	2	2	0.03%	MEGVDCSMALADAAAGSPR	-	D	99.70%	85	2,337.96	3,495.94	1171550	1	19
1808	POSITIVE 2	Putative transferase CAF17 homolog, mitochondrial OS=Mus musculus GN=Iba57 PE=1 SV=1	CAF17_MOUSE	38,399.40	100.00%	2	3	4	0.06%	YQQGIPEGVCDLPPGMALPLESNLVFMNGVSFTK	R	G	99.70%	90.3	4,095.93	4,363.71	162120	225	258
1809	POSITIVE 2	Importin-13 OS=Mus musculus GN=Ipo13 PE=1 SV=1	IPO13_MOUSE	108,230.90	98.90%	1	1	2	0.03%	CLALLELLTVLPEEFQTSR	R	L	99.70%	89.8	2,619.32	4,662.27	917330	163	181
1810	POSITIVE 2	Ras GTPase-activating-like protein IQGAP1 OS=Mus musculus GN=Iqgap1 PE=1 SV=2	IQGA1_MOUSE	188,748.30	98.90%	1	1	2	0.03%	VNTSSALANISLALEQGCAVTLLK	K	A	99.70%	90	2,860.45	3,996.55	1376710	303	326
1811	POSITIVE 2	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	HDGF_MOUSE	26,268.70	100.00%	5	7	8	0.11%	KSCAAEPEVEPEAHEGDGDKK	K	G	99.70%	38.6	2,670.14	800.112	117981	106	126
1812	POSITIVE 2	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	5	5	6	0.08%	HEAVLQAGSLCAPEK	K	A	99.70%	59.6	1,996.92	1,604.74	482780	2791	2805
1813	POSITIVE 2	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	5	5	6	0.08%	IAQLQEALLHCGK	R	F	99.70%	47.9	1,867.92	2,033.51	556102	5295	5307
1814	POSITIVE 2	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	5	5	6	0.08%	LCTMPPVGTDLNTVK	K	D	99.70%	47.9	2,032.95	2,528.24	271350	6092	6106
1815	POSITIVE 2	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	5	5	6	0.08%	TECLIQQYEAVSLLNSER	K	Y	99.70%	73.6	2,540.18	3,281.59	1075610	5713	5730
1816	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein F OS=Mus musculus GN=Hnrnpf PE=1 SV=3	HNRPF_MOUSE	45,730.00	100.00%	2	2	3	0.04%	DLSYCLSGMYDHR	R	Y	99.70%	65.9	2,003.80	2,480.29	2534460	263	275
1817	POSITIVE 2	Dual specificity mitogen-activated protein kinase kinase 3 OS=Mus musculus GN=Map2k3 PE=1 SV=2	MP2K3_MOUSE	39,297.20	98.90%	1	1	1	0.01%	TMDAGCKPYMAPER	K	I	99.70%	39	2,013.83	1,383.97	576399	222	235
1818	POSITIVE 2	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	PUR2_MOUSE	107,503.60	100.00%	3	9	13	0.18%	ATSRPGCSVDLGGFAGLFDLK	K	A	99.70%	75.4	2,555.20	3,474.79	1693760	460	480
1819	POSITIVE 2	ADP-ribosylation factor 4 OS=Mus musculus GN=Arf4 PE=1 SV=2	ARF4_MOUSE	20,397.50	100.00%	2	3	5	0.07%	TWYVQATCATQGTGLYEGLDWLSNELSK	R	-	99.70%	95.2	3,578.62	4,348.99	121987	152	179
1820	POSITIVE 2	Prostaglandin E synthase 3 OS=Mus musculus GN=Ptges3 PE=1 SV=1	TEBP_MOUSE	18,721.90	100.00%	2	6	13	0.18%	HLNEIDLFHCIDPNDSK	K	H	99.70%	76.5	2,454.08	2,560.01	6.27E+07	49	65
1821	POSITIVE 2	Prostaglandin E synthase 3 OS=Mus musculus GN=Ptges3 PE=1 SV=1	TEBP_MOUSE	18,721.90	100.00%	2	6	13	0.18%	HLNEIDLFHCIDPNDSKHK	K	R	99.70%	39.2	2,719.24	2,027.88	4547350	49	67
1822	POSITIVE 2	Importin subunit alpha-1 OS=Mus musculus GN=Kpna2 PE=1 SV=2	IMA1_MOUSE	57,929.20	100.00%	2	3	3	0.04%	HGAIDPLLALLAVPDLSTLACGYLR	K	N	99.70%	96.5	3,036.57	4,528.63	4126270	203	227
1823	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	CLEDENSK	K	L	99.00%	43.9	1,381.54	745.392	2718190	1511	1518
1824	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	ETQSQLESERCR	R	L	99.70%	44.7	1,909.81	820.596	1784850	1935	1946
1825	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	SQCTQVVQER	K	E	99.70%	61.2	1,621.71	1,028.17	477265	1815	1824
1826	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	TEITHLGTCQDVNHNK	K	V	99.70%	70.9	2,254.00	1,052.34	299005	650	665
1827	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	WYVTGPGGVDMLVPSVGLIIPPPNPLAVDLSCK	K	I	99.70%	47.7	3,849.93	4,532.92	251510	505	537
1828	POSITIVE 2	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DESP_MOUSE	332,919.90	100.00%	11	16	21	0.30%	YQAECSQFK	K	A	99.70%	33	1,547.63	1,203.47	1059020	1077	1085
1829	POSITIVE 2	Protein arginine methyltransferase NDUFAF7, mitochondrial OS=Mus musculus GN=Ndufaf7 PE=1 SV=4	NDUF7_MOUSE	48,384.90	100.00%	3	4	6	0.08%	TCAISIHLVEVSQK	K	L	99.70%	48	1,971.96	2,286.97	1576170	142	155
1830	POSITIVE 2	Serine/threonine-protein phosphatase 4 regulatory subunit 2 OS=Mus musculus GN=Ppp4r2 PE=1 SV=1	PP4R2_MOUSE	46,478.00	100.00%	2	4	8	0.11%	NVMVVSCVCPSSEK	K	N	99.70%	58.2	2,050.87	2,380.32	4438430	128	141
1831	POSITIVE 2	Elongation factor Ts, mitochondrial OS=Mus musculus GN=Tsfm PE=1 SV=1	EFTS_MOUSE	35,334.40	100.00%	2	3	3	0.04%	ALETCGGDLK	K	Q	99.70%	34.9	1,450.63	1,308.05	4486620	66	75
1832	POSITIVE 2	Elongation factor Ts, mitochondrial OS=Mus musculus GN=Tsfm PE=1 SV=1	EFTS_MOUSE	35,334.40	100.00%	2	3	3	0.04%	TGYSFVNCK	K	K	99.70%	37.8	1,462.61	1,646.69	428127	56	64
1833	POSITIVE 2	Cullin-associated NEDD8-dissociated protein 1 OS=Mus musculus GN=Cand1 PE=1 SV=2	CAND1_MOUSE	136,337.10	100.00%	3	3	4	0.06%	LSTLCPSAVLQR	R	L	99.70%	29	1,731.85	2,408.39	281280	1130	1141
1834	POSITIVE 2	TBC1 domain family member 8B OS=Mus musculus GN=Tbc1d8b PE=1 SV=1	TBC8B_MOUSE	127,898.30	100.00%	2	2	2	0.03%	IGYCQAMNILTSVLLLYAK	K	E	99.70%	53.5	2,558.28	4,654.19	265891	568	586
1835	POSITIVE 2	TBC1 domain family member 8B OS=Mus musculus GN=Tbc1d8b PE=1 SV=1	TBC8B_MOUSE	127,898.30	100.00%	2	2	2	0.03%	LLDENSDCLINFK	R	E	99.70%	45.9	1,967.88	2,868.43	1567900	868	880
1836	POSITIVE 2	Vimentin OS=Mus musculus GN=Vim PE=1 SV=3	VIME_MOUSE	53,688.80	100.00%	4	9	12	0.17%	RQVQSLTCEVDALK	R	G	99.70%	47.5	2,033.97	2,004.76	1220470	321	334
1837	POSITIVE 2	Vimentin OS=Mus musculus GN=Vim PE=1 SV=3	VIME_MOUSE	53,688.80	100.00%	4	9	12	0.17%	RQVQSLTCEVDALKGTNESLER	R	Q	99.70%	34.7	2,920.39	2,181.08	792994	321	342
1838	POSITIVE 2	Protein ECT2 OS=Mus musculus GN=Ect2 PE=1 SV=2	ECT2_MOUSE	103,133.20	98.90%	1	2	3	0.04%	VTHLVANCTQGEK	K	F	99.70%	51.3	1,843.84	900.114	3564280	214	226
1839	POSITIVE 2	RNA-binding protein Raly OS=Mus musculus GN=Raly PE=1 SV=3	RALY_MOUSE	33,188.20	100.00%	2	2	4	0.06%	KGDSSSGGGGGSSGGGGSSNVGGGSSGGSGSCSSSSR	K	L	99.70%	150	3,396.33	416.19	190781	224	260
1840	POSITIVE 2	Intersectin-2 OS=Mus musculus GN=Itsn2 PE=1 SV=2	ITSN2_MOUSE	188,912.70	100.00%	2	2	3	0.04%	FGWFPCNYVEK	K	V	99.70%	34.7	1,833.77	3,049.61	937668	766	776
1841	POSITIVE 2	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	BAZ1B_MOUSE	170,655.20	100.00%	3	3	3	0.04%	DHSNLPDDDYCPR	K	S	99.70%	29.7	1,990.77	1,469.39	628742	944	956
1842	POSITIVE 2	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	BAZ1B_MOUSE	170,655.20	100.00%	3	3	3	0.04%	QVFANAELYNCR	K	G	99.70%	32	1,871.82	2,074.07	1616890	1406	1417
1843	POSITIVE 2	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	BAZ1B_MOUSE	170,655.20	100.00%	3	3	3	0.04%	SALSCVISK	K	T	99.70%	56.6	1,351.63	1,893.14	987061	494	502
1844	POSITIVE 2	Ribonucleoside-diphosphate reductase large subunit OS=Mus musculus GN=Rrm1 PE=1 SV=2	RIR1_MOUSE	90,213.90	100.00%	3	3	3	0.04%	CSNLCTEIVEYTSK	K	D	99.70%	35.7	2,158.91	3,396.78	318345	425	438
1845	POSITIVE 2	Ribonucleoside-diphosphate reductase large subunit OS=Mus musculus GN=Rrm1 PE=1 SV=2	RIR1_MOUSE	90,213.90	100.00%	3	3	3	0.04%	RVETNQDWSLMCPNECPGLDEVWGEEFEK	K	L	99.70%	38	4,009.68	3,760.19	124357	341	369
1846	POSITIVE 2	Ribonucleoside-diphosphate reductase large subunit OS=Mus musculus GN=Rrm1 PE=1 SV=2	RIR1_MOUSE	90,213.90	100.00%	3	3	3	0.04%	VETNQDWSLMCPNECPGLDEVWGEEFEK	R	L	99.70%	48.9	3,853.58	4,145.98	112972	342	369
1847	POSITIVE 2	N-alpha-acetyltransferase 16, NatA auxiliary subunit OS=Mus musculus GN=Naa16 PE=2 SV=1	NAA16_MOUSE	101,289.30	98.90%	1	1	1	0.01%	NLIDWNAENWCYYEGLEK	R	A	99.70%	37.3	2,704.14	3,583.98	475452	249	266
1848	POSITIVE 2	Aurora kinase A OS=Mus musculus GN=Aurka PE=1 SV=1	AURKA_MOUSE	44,772.70	98.90%	1	1	2	0.03%	VLCPSNSQR	R	V	99.70%	48.3	1,447.64	893.373	1497510	46	54
1849	POSITIVE 2	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial OS=Mus musculus GN=Sdhc PE=1 SV=1	C560_MOUSE	18,382.70	100.00%	2	2	3	0.04%	WSLPMALSVCHR	K	G	99.70%	38.6	1,843.84	2,768.17	321457	61	72
1850	POSITIVE 2	Probable tRNA N6-adenosine threonylcarbamoyltransferase, mitochondrial OS=Mus musculus GN=Osgepl1 PE=1 SV=2	OSGP2_MOUSE	44,928.70	100.00%	3	3	3	0.04%	CPLGVDISR	K	E	99.70%	34.7	1,403.64	1,964.22	1036630	390	398
1851	POSITIVE 2	Probable tRNA N6-adenosine threonylcarbamoyltransferase, mitochondrial OS=Mus musculus GN=Osgepl1 PE=1 SV=2	OSGP2_MOUSE	44,928.70	100.00%	3	3	3	0.04%	HPECSTMSGGK	K	A	99.70%	38.6	1,577.61	450.9	952408	213	223
1852	POSITIVE 2	Probable tRNA N6-adenosine threonylcarbamoyltransferase, mitochondrial OS=Mus musculus GN=Osgepl1 PE=1 SV=2	OSGP2_MOUSE	44,928.70	100.00%	3	3	3	0.04%	LSLIKHPECSTMSGGK	R	A	99.70%	45	2,131.99	1,339.64	344945	208	223
1853	POSITIVE 2	Translation initiation factor IF-3, mitochondrial OS=Mus musculus GN=Mtif3 PE=1 SV=1	IF3M_MOUSE	31,740.10	100.00%	1	1	1	0.01%	DDDGNSKESDVVCQ	K	-	99.70%	60.9	1,954.74	1,202.21	810707	263	276
1854	POSITIVE 2	ATP-dependent RNA helicase DDX51 OS=Mus musculus GN=Ddx51 PE=1 SV=1	DDX51_MOUSE	70,368.10	98.90%	1	1	1	0.01%	VVAAAFYSEGPTGSCALLQR	R	T	99.70%	86.4	2,484.16	2,778.75	793191	360	379
1855	POSITIVE 2	Guanine nucleotide-binding protein-like 1 OS=Mus musculus GN=Gnl1 PE=1 SV=4	GNL1_MOUSE	68,771.20	98.90%	1	1	1	0.01%	NPYALLGEDEC	R	-	99.70%	38.1	1,667.67	2,888.20	584130	597	607
1856	POSITIVE 2	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	CAPZB_MOUSE	31,346.50	100.00%	3	6	10	0.14%	GCWDSIHVVEVQEK	K	S	99.70%	63.6	2,072.92	2,270.38	3234680	146	159
1857	POSITIVE 2	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	CAPZB_MOUSE	31,346.50	100.00%	3	6	10	0.14%	NLSDLIDLVPSLCEDLLSSVDQPLK	K	I	99.70%	78.8	3,170.56	4,552.33	1692880	24	48
1858	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	HNRPL_MOUSE	63,963.70	100.00%	4	10	16	0.23%	VFNVFCLYGNVEK	R	V	99.70%	59.5	1,975.90	3,500.06	419195	396	408
1859	POSITIVE 2	Catenin alpha-1 OS=Mus musculus GN=Ctnna1 PE=1 SV=1	CTNA1_MOUSE	100,107.90	100.00%	2	3	4	0.06%	IALYCHQLNICSK	R	V	99.70%	37.1	2,074.95	2,353.49	540869	783	795
1860	POSITIVE 2	Catenin alpha-1 OS=Mus musculus GN=Ctnna1 PE=1 SV=1	CTNA1_MOUSE	100,107.90	100.00%	2	3	4	0.06%	SAAGEFADDPCSSVK	K	R	99.70%	59.7	1,927.78	1,702.50	3969130	106	120
1861	POSITIVE 2	N-alpha-acetyltransferase 25, NatB auxiliary subunit OS=Mus musculus GN=Naa25 PE=1 SV=1	NAA25_MOUSE	111,711.90	100.00%	2	3	10	0.14%	VFVDLLPAAQCTQFINQLLGVVPLSTPTEDK	K	L	99.70%	75.5	3,800.92	4,530.37	948446	371	401
1862	POSITIVE 2	Serine/threonine-protein phosphatase CPPED1 OS=Mus musculus GN=Cpped1 PE=1 SV=1	CPPED_MOUSE	35,247.60	98.90%	1	1	1	0.01%	AWSTGNCDAGGDEWGQEIR	K	L	99.70%	98.1	2,495.99	2,383.79	1137050	48	66
1863	POSITIVE 2	Transducin beta-like protein 3 OS=Mus musculus GN=Tbl3 PE=2 SV=1	TBL3_MOUSE	88,266.10	98.90%	1	1	1	0.01%	LSPCPAAAPPAL	K	-	99.70%	41.4	1,551.73	2,665.70	896029	790	801
1864	POSITIVE 2	Spectrin beta chain, non-erythrocytic 1 OS=Mus musculus GN=Sptbn1 PE=1 SV=2	SPTB2_MOUSE	274,227.90	100.00%	3	3	4	0.06%	FATDGEGYKPCDPQVIR	K	D	99.70%	37.7	2,340.04	1,891.63	522972	594	610
1865	POSITIVE 2	Spectrin beta chain, non-erythrocytic 1 OS=Mus musculus GN=Sptbn1 PE=1 SV=2	SPTB2_MOUSE	274,227.90	100.00%	3	3	4	0.06%	IHCLENVDK	R	A	99.70%	42.8	1,514.67	1,097.46	1515280	110	118
1866	POSITIVE 2	E3 ubiquitin-protein ligase UHRF1 OS=Mus musculus GN=Uhrf1 PE=1 SV=2	UHRF1_MOUSE	88,303.70	98.90%	1	2	2	0.03%	ALSEDEPCSSSAVK	R	T	99.70%	50.1	1,866.78	1,275.72	1615710	159	172
1867	POSITIVE 2	E3 SUMO-protein ligase RanBP2 OS=Mus musculus GN=Ranbp2 PE=1 SV=2	RBP2_MOUSE	341,121.20	100.00%	2	2	2	0.03%	LKEQLLDCKGEDGWNK	K	L	99.70%	49.7	2,320.07	1,599.37	1036450	134	149
1868	POSITIVE 2	E3 SUMO-protein ligase RanBP2 OS=Mus musculus GN=Ranbp2 PE=1 SV=2	RBP2_MOUSE	341,121.20	100.00%	2	2	2	0.03%	TGEEDEEEFFCNR	K	A	99.70%	51.8	2,048.76	2,185.13	995285	1180	1192
1869	POSITIVE 2	Zinc finger RNA-binding protein OS=Mus musculus GN=Zfr PE=1 SV=2	ZFR_MOUSE	116,859.00	100.00%	3	3	4	0.06%	CAVSEAAIILNSCVEPK	K	M	99.70%	35.5	2,316.07	3,830.03	515670	844	860
1870	POSITIVE 2	Zinc finger RNA-binding protein OS=Mus musculus GN=Zfr PE=1 SV=2	ZFR_MOUSE	116,859.00	100.00%	3	3	4	0.06%	TEDLKGIDCVK	K	N	99.70%	51.4	1,664.76	1,429.36	3042640	517	527
1871	POSITIVE 2	NEDD8 ultimate buster 1 OS=Mus musculus GN=Nub1 PE=1 SV=2	NUB1_MOUSE	70,308.30	100.00%	2	3	3	0.04%	ACDGNVDHAATHISNR	R	R	99.70%	31.3	2,124.89	887.7	1070360	398	413
1872	POSITIVE 2	NEDD8 ultimate buster 1 OS=Mus musculus GN=Nub1 PE=1 SV=2	NUB1_MOUSE	70,308.30	100.00%	2	3	3	0.04%	NCYGENHQR	K	L	99.70%	31.8	1,564.60	433.167	100621	315	323
1873	POSITIVE 2	Zinc transporter ZIP13 OS=Mus musculus GN=Slc39a13 PE=2 SV=1	S39AD_MOUSE	38,503.50	98.90%	1	1	1	0.01%	SLGAAAACR	R	L	99.70%	38.1	1,263.56	980.388	1117310	39	47
1874	POSITIVE 2	Cyclin-G-associated kinase OS=Mus musculus GN=Gak PE=1 SV=2	GAK_MOUSE	143,642.50	100.00%	2	2	2	0.03%	AIIQEVCFLK	R	K	99.70%	40.3	1,607.79	2,870.95	1148540	81	90
1875	POSITIVE 2	Cyclin-G-associated kinase OS=Mus musculus GN=Gak PE=1 SV=2	GAK_MOUSE	143,642.50	100.00%	2	2	2	0.03%	EDHRNVCVVHCMDGR	R	A	99.70%	41.3	2,338.95	1,381.64	600780	496	510
1876	POSITIVE 2	40S ribosomal protein S3 OS=Mus musculus GN=Rps3 PE=1 SV=1	RS3_MOUSE	26,674.50	100.00%	2	3	8	0.11%	GLCNIAQAESLR	R	Y	99.70%	37.8	1,718.80	3,354.08	1301330	0	0
1877	POSITIVE 2	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	STK39_MOUSE	60,320.50	100.00%	3	5	9	0.13%	CQTSMDELLK	K	E	99.70%	67	1,611.68	2,197.46	714378	111	120
1878	POSITIVE 2	Epidermal growth factor receptor substrate 15-like 1 OS=Mus musculus GN=Eps15l1 PE=1 SV=3	EP15R_MOUSE	99,312.20	98.90%	1	2	2	0.03%	CTQDDINQAR	K	S	99.70%	69.1	1,607.65	955.788	564143	533	542
1879	POSITIVE 2	Peripherin OS=Mus musculus GN=Prph PE=1 SV=2	PERI_MOUSE	54,268.90	100.00%	2	2	2	0.03%	QIQSLMCEVDGLR	R	G	99.50%	27.7	1,918.85	4,133.49	255204	0	0
1880	POSITIVE 2	2-aminoethanethiol dioxygenase OS=Mus musculus GN=Ado PE=1 SV=2	AEDO_MOUSE	28,373.00	100.00%	2	3	5	0.07%	EVWLLETPQADDFWCEGEPYPGPK	R	V	99.70%	58.9	3,250.41	3,925.19	706956	230	253
1881	POSITIVE 2	Trifunctional enzyme subunit beta, mitochondrial OS=Mus musculus GN=Hadhb PE=1 SV=1	ECHB_MOUSE	51,388.00	100.00%	2	2	2	0.03%	DGGQYALVAACAAGGQGHAMIVEAYPK	K	-	99.70%	81	3,092.40	2,918.92	702677	449	475
1882	POSITIVE 2	Trifunctional enzyme subunit beta, mitochondrial OS=Mus musculus GN=Hadhb PE=1 SV=1	ECHB_MOUSE	51,388.00	100.00%	2	2	2	0.03%	FNIWGGSLSLGHPFGATGCR	K	L	99.70%	69.3	2,521.15	3,212.81	893409	418	437
1883	POSITIVE 2	Heat shock cognate 71 kDa protein OS=Mus musculus GN=Hspa8 PE=1 SV=1	HSP7C_MOUSE	70,872.80	100.00%	2	2	4	0.06%	ILDKCNEIISWLDK	K	N	99.70%	43.1	2,134.03	3,011.83	998329	570	583
1884	POSITIVE 2	Heat shock cognate 71 kDa protein OS=Mus musculus GN=Hspa8 PE=1 SV=1	HSP7C_MOUSE	70,872.80	100.00%	2	2	4	0.06%	VCNPIITK	K	L	99.00%	47	1,331.64	1,613.34	2187870	602	609
1885	POSITIVE 2	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	MACD1_MOUSE	35,295.40	100.00%	5	7	9	0.13%	QREEHYFCKDFIK	K	L	99.70%	38.2	2,186.97	1,411.87	1606860	107	119
1886	POSITIVE 2	Proteasome activator complex subunit 1 OS=Mus musculus GN=Psme1 PE=1 SV=2	PSME1_MOUSE	28,673.50	100.00%	2	3	4	0.06%	KGDEDDKGPPCGPVNCNEK	K	I	99.70%	51.1	2,571.06	1,221.48	466948	91	109
1887	POSITIVE 2	Eukaryotic translation initiation factor 5A-1 OS=Mus musculus GN=Eif5a PE=1 SV=2	IF5A1_MOUSE	16,832.70	100.00%	4	7	10	0.14%	EIEQKYDCGEEILITVLSAMTEEAAVAIK	K	A	99.70%	74.7	3,640.74	4,642.03	394631	122	150
1888	POSITIVE 2	Eukaryotic translation initiation factor 5A-1 OS=Mus musculus GN=Eif5a PE=1 SV=2	IF5A1_MOUSE	16,832.70	100.00%	4	7	10	0.14%	KYEDICPSTHNMDVPNIK	K	R	99.70%	89.8	2,548.13	1,851.93	3666880	68	85
1889	POSITIVE 2	Eukaryotic translation initiation factor 5A-1 OS=Mus musculus GN=Eif5a PE=1 SV=2	IF5A1_MOUSE	16,832.70	100.00%	4	7	10	0.14%	YDCGEEILITVLSAMTEEAAVAIK	K	A	99.70%	75.3	3,013.42	4,769.76	690326	127	150
1890	POSITIVE 2	Eukaryotic translation initiation factor 5A-1 OS=Mus musculus GN=Eif5a PE=1 SV=2	IF5A1_MOUSE	16,832.70	100.00%	4	7	10	0.14%	YEDICPSTHNMDVPNIK	K	R	99.70%	77.9	2,420.03	2,095.46	2797750	69	85
1891	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein H OS=Mus musculus GN=Hnrnph1 PE=1 SV=3	HNRH1_MOUSE	49,199.80	100.00%	2	4	8	0.11%	GLPWSCSADEVQR	R	F	99.70%	52.3	1,891.81	2,233.77	2686090	17	29
1892	POSITIVE 2	Chromatin assembly factor 1 subunit A OS=Mus musculus GN=Chaf1a PE=1 SV=1	CAF1A_MOUSE	101,936.50	100.00%	2	2	3	0.04%	SFGQECLPVPCQWTYITTMPSAPR	K	E	99.70%	72.1	3,281.45	3,990.55	354255	800	823
1893	POSITIVE 2	Chromatin assembly factor 1 subunit A OS=Mus musculus GN=Chaf1a PE=1 SV=1	CAF1A_MOUSE	101,936.50	100.00%	2	2	3	0.04%	TLAGSCGK	K	F	99.00%	31.3	1,180.51	554.691	256907	439	446
1894	POSITIVE 2	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	PFKAP_MOUSE	85,456.90	100.00%	3	4	102	1.44%	LGITNLCVIGGDGSLTGANLFR	R	K	99.70%	77.1	2,635.30	3,805.64	521644	116	137
1895	POSITIVE 2	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	PFKAP_MOUSE	85,456.90	100.00%	3	4	102	1.44%	MGVEAVIALLEATPETPACVVSLR	R	G	99.70%	68.4	2,913.45	4,425.93	283203	324	347
1896	POSITIVE 2	Nuclear pore complex protein Nup93 OS=Mus musculus GN=Nup93 PE=1 SV=1	NUP93_MOUSE	93,284.10	100.00%	3	5	7	0.10%	LNQVCFDDDGTSSPQDRLTLSQFQK	K	Q	99.70%	34.2	3,286.47	2,625.84	786735	418	442
1897	POSITIVE 2	Cysteine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Cars PE=1 SV=2	SYCC_MOUSE	94,862.70	98.90%	1	2	3	0.04%	YFLHTGHLTIAGCK	R	M	99.70%	68.5	2,004.94	1,803.47	3730290	476	489
1898	POSITIVE 2	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial OS=Mus musculus GN=Etfdh PE=1 SV=1	ETFD_MOUSE	68,091.80	100.00%	2	2	3	0.04%	ASCDAQTYGIGLK	R	E	99.70%	62.1	1,770.78	1,986.80	2017760	263	275
1899	POSITIVE 2	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial OS=Mus musculus GN=Etfdh PE=1 SV=1	ETFD_MOUSE	68,091.80	100.00%	2	2	3	0.04%	FCPAGVYEFVPLEQGDGFR	R	L	99.70%	56.1	2,575.14	3,697.60	425354	559	577
1900	POSITIVE 2	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	6	7	11	0.16%	APGTPAPVQEENDCTAYMETPK	R	Q	99.70%	72.7	2,793.18	2,061.65	1060710	1397	1418
1901	POSITIVE 2	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	6	7	11	0.16%	DSFCADPDGEGQDTK	R	A	99.70%	64.4	2,028.76	1,493.08	1023790	127	141
1902	POSITIVE 2	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	KI67_MOUSE	350,862.80	100.00%	6	7	11	0.16%	TLEDLPGFQELCQAPSLVMDSVIVEK	K	T	99.70%	51.9	3,305.57	4,336.28	253459	2512	2537
1903	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 9 OS=Mus musculus GN=Psmd9 PE=1 SV=1	PSMD9_MOUSE	24,719.60	100.00%	2	3	3	0.04%	GIGMNEPLVDCEGYPR	K	A	99.70%	59.6	2,193.94	2,487.19	2734370	49	64
1904	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 9 OS=Mus musculus GN=Psmd9 PE=1 SV=1	PSMD9_MOUSE	24,719.60	100.00%	2	3	3	0.04%	HNIICLQNDHK	R	A	99.70%	40.5	1,778.81	1,128.84	2048590	77	87
1905	POSITIVE 2	RNA exonuclease 4 OS=Mus musculus GN=Rexo4 PE=2 SV=2	REXO4_MOUSE	47,599.50	98.90%	1	1	1	0.01%	VQQAEHCSIQDAQAAMR	R	L	99.70%	32.5	2,330.01	1,515.55	1808780	386	402
1906	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein K OS=Mus musculus GN=Hnrnpk PE=1 SV=1	HNRPK_MOUSE	50,978.50	98.90%	1	2	2	0.03%	IIPTLEEGLQLPSPTATSQLPLESDAVECLNYQHYK	K	G	99.70%	38.4	4,442.15	3,708.47	1592780	104	139
1907	POSITIVE 2	Ras GTPase-activating protein 3 OS=Mus musculus GN=Rasa3 PE=1 SV=2	RASA3_MOUSE	95,990.10	98.90%	1	1	1	0.01%	SLCPFYGEDFYCEIPR	K	S	99.70%	78.4	2,508.03	3,677.12	532071	56	71
1908	POSITIVE 2	Rho guanine nucleotide exchange factor 12 OS=Mus musculus GN=Arhgef12 PE=1 SV=2	ARHGC_MOUSE	172,349.50	100.00%	3	3	5	0.07%	QVGEASAPGDCLDSTPR	K	V	99.70%	43.3	2,146.91	1,705.24	1320170	689	705
1909	POSITIVE 2	Rho guanine nucleotide exchange factor 12 OS=Mus musculus GN=Arhgef12 PE=1 SV=2	ARHGC_MOUSE	172,349.50	100.00%	3	3	5	0.07%	VPTTVFDFPPPLLDQVQEEECEVER	R	V	99.70%	42.1	3,360.54	4,146.48	173967	706	730
1910	POSITIVE 2	Enhancer of mRNA-decapping protein 4 OS=Mus musculus GN=Edc4 PE=1 SV=2	EDC4_MOUSE	152,484.60	100.00%	3	5	13	0.18%	ETCSTLTESPR	R	N	99.70%	59.7	1,667.70	1,211.95	1335170	841	851
1911	POSITIVE 2	E3 ubiquitin/ISG15 ligase TRIM25 OS=Mus musculus GN=Trim25 PE=1 SV=2	TRI25_MOUSE	71,726.00	98.90%	1	1	2	0.03%	QQCVQDSMK	K	R	99.70%	39	1,510.61	950.7	1937900	226	234
1912	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	HNRPU_MOUSE	87,918.50	100.00%	5	7	13	0.18%	AVVVCPKDEDYKQR	K	T	99.70%	68.6	2,093.97	1,055.17	1031640	579	592
1913	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	HNRPU_MOUSE	87,918.50	100.00%	5	7	13	0.18%	GNFTLPEVAECFDEITYVELQK	K	E	99.70%	70.3	2,989.36	4,304.75	1267900	614	635
1914	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	HNRPU_MOUSE	87,918.50	100.00%	5	7	13	0.18%	KMCLFAGFQR	R	K	99.70%	44.7	1,644.74	2,324.30	1500830	568	577
1915	POSITIVE 2	Putative methyltransferase C9orf114 homolog OS=Mus musculus GN=Spout1 PE=1 SV=1	CI114_MOUSE	42,957.80	99.90%	1	1	1	0.01%	KGQACVQLAR	K	I	99.70%	30.9	1,517.73	928.518	568732	136	145
1916	POSITIVE 2	Ubiquitin-like protein 4A OS=Mus musculus GN=Ubl4a PE=1 SV=1	UBL4A_MOUSE	17,801.00	98.90%	1	1	1	0.01%	ECSLQVAEDELVSTLK	R	H	99.70%	49.1	2,208.02	3,587.59	286288	12	27
1917	POSITIVE 2	Transcription elongation factor, mitochondrial OS=Mus musculus GN=Tefm PE=1 SV=1	TEFM_MOUSE	41,875.00	100.00%	2	3	3	0.04%	RVASVAACDTDGKEPGNPLDR	K	L	99.70%	45.8	2,615.19	1,437.73	1953030	46	66
1918	POSITIVE 2	Transcription elongation factor, mitochondrial OS=Mus musculus GN=Tefm PE=1 SV=1	TEFM_MOUSE	41,875.00	100.00%	2	3	3	0.04%	VASVAACDTDGKEPGNPLDR	R	L	99.70%	81.9	2,459.09	1,685.76	2344760	47	66
1919	POSITIVE 2	CCAAT/enhancer-binding protein zeta OS=Mus musculus GN=Cebpz PE=1 SV=2	CEBPZ_MOUSE	120,266.90	100.00%	2	2	2	0.03%	MLDPGLTTCSK	K	Q	99.70%	28	1,609.70	1,827.91	1785210	552	562
1920	POSITIVE 2	CCAAT/enhancer-binding protein zeta OS=Mus musculus GN=Cebpz PE=1 SV=2	CEBPZ_MOUSE	120,266.90	100.00%	2	2	2	0.03%	TILEGNCIQYSGDPLQDFTLMR	K	F	99.70%	90.9	2,958.34	3,850.38	378424	734	755
1921	POSITIVE 2	Mothers against decapentaplegic homolog 2 OS=Mus musculus GN=Smad2 PE=1 SV=2	SMAD2_MOUSE	52,265.70	98.90%	1	2	3	0.04%	AITTQNCNTK	K	C	99.70%	35.1	1,537.67	589.248	442490	64	73
1922	POSITIVE 2	DNA-directed RNA polymerase I subunit RPA49 OS=Mus musculus GN=Polr1e PE=1 SV=2	RPA49_MOUSE	54,036.00	98.90%	1	1	1	0.01%	QFTCLTYNNGR	K	L	99.70%	44.4	1,760.75	1,828.48	440024	376	386
1923	POSITIVE 2	Proteasome-associated protein ECM29 homolog OS=Mus musculus GN=Ecm29 PE=1 SV=3	ECM29_MOUSE	203,707.90	100.00%	3	3	3	0.04%	CYRQELCK	R	L	99.00%	39.7	1,611.67	1,318.82	603412	1707	1714
1924	POSITIVE 2	Proteasome-associated protein ECM29 homolog OS=Mus musculus GN=Ecm29 PE=1 SV=3	ECM29_MOUSE	203,707.90	100.00%	3	3	3	0.04%	DIALVQQLFEALCK	K	E	99.70%	60.5	2,035.00	4,429.48	135110	432	445
1925	POSITIVE 2	Proteasome-associated protein ECM29 homolog OS=Mus musculus GN=Ecm29 PE=1 SV=3	ECM29_MOUSE	203,707.90	100.00%	3	3	3	0.04%	EECNMWTEVWQENVPGSFGGIR	K	L	99.70%	56.5	3,012.27	3,922.54	361484	1496	1517
1926	POSITIVE 2	Synaptopodin 2-like protein OS=Mus musculus GN=Synpo2l PE=1 SV=1	SYP2L_MOUSE	102,954.00	98.90%	1	1	1	0.01%	AGGAESGPEEDALSLGAEACNFMQPLGGR	R	S	99.70%	46.8	3,278.42	3,640.68	265271	662	690
1927	POSITIVE 2	7-methylguanosine phosphate-specific 5'-nucleotidase OS=Mus musculus GN=Nt5c3b PE=1 SV=3	5NT3B_MOUSE	34,426.20	100.00%	2	3	4	0.06%	CPSSHNILDNSK	R	I	99.70%	71.2	1,758.75	1,076.39	160878	56	67
1928	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 13 OS=Mus musculus GN=Psmd13 PE=1 SV=1	PSD13_MOUSE	42,810.00	100.00%	4	6	8	0.11%	DRLELWCTDVK	K	S	99.70%	50.3	1,821.83	2,320.49	2497460	351	361
1929	POSITIVE 2	26S proteasome non-ATPase regulatory subunit 13 OS=Mus musculus GN=Psmd13 PE=1 SV=1	PSD13_MOUSE	42,810.00	100.00%	4	6	8	0.11%	LWHQLTLEVLDFVQDPCFAQGDGLIK	K	L	99.70%	51.7	3,429.66	4,268.27	109153	33	58
1930	POSITIVE 2	Deoxynucleotidyltransferase terminal-interacting protein 2 OS=Mus musculus GN=Dnttip2 PE=1 SV=1	TDIF2_MOUSE	84,278.40	98.90%	1	1	1	0.01%	KHCVPPYSESK	K	H	99.70%	41.5	1,718.76	718.272	175631	618	628
1931	POSITIVE 2	Creatine kinase M-type OS=Mus musculus GN=Ckm PE=1 SV=1	KCRM_MOUSE	43,045.60	98.70%	1	1	1	0.01%	AGHPFMWNEHLGYVLTCPSNLGTGLR	K	G	99.70%	41	3,314.53	2,998.56	1561630	267	292
1932	POSITIVE 2	Cullin-4B OS=Mus musculus GN=Cul4b PE=1 SV=1	CUL4B_MOUSE	110,704.00	100.00%	3	3	3	0.04%	DSASPSTSSFCLGVPVATSSHVPIQK	R	K	99.70%	42.8	3,046.42	2,656.52	413334	146	171
1933	POSITIVE 2	Myotubularin OS=Mus musculus GN=Mtm1 PE=1 SV=2	MTM1_MOUSE	69,561.00	98.90%	1	1	1	0.01%	CYELCETYPALLVVPYR	K	T	99.70%	38.4	2,601.18	4,060.43	418535	191	207
1934	POSITIVE 2	Nucleolar RNA helicase 2 OS=Mus musculus GN=Ddx21 PE=1 SV=3	DDX21_MOUSE	93,553.30	100.00%	2	3	4	0.06%	KDSEDNPQTLLFSATCPHWVFNVAK	K	K	99.70%	51.3	3,291.52	3,255.09	646689	435	459
1935	POSITIVE 2	Nitrilase homolog 1 OS=Mus musculus GN=Nit1 PE=1 SV=2	NIT1_MOUSE	35,705.00	100.00%	2	2	6	0.08%	VGLAICYDMR	K	F	99.70%	75.2	1,584.70	2,704.43	3116750	194	203
1936	POSITIVE 2	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	MAP1S_MOUSE	102,939.90	100.00%	3	4	4	0.06%	GPQPSCPTVLFEK	R	L	99.70%	46.3	1,846.85	2,246.84	1597080	368	380
1937	POSITIVE 2	Phospholipase A-2-activating protein OS=Mus musculus GN=Plaa PE=1 SV=4	PLAP_MOUSE	87,223.30	100.00%	4	5	9	0.13%	GLVCCLYPPGAFVSVSR	R	D	99.70%	56.1	2,337.08	3,581.70	3254010	23	39
1938	POSITIVE 2	Phospholipase A-2-activating protein OS=Mus musculus GN=Plaa PE=1 SV=4	PLAP_MOUSE	87,223.30	100.00%	4	5	9	0.13%	HGECAQTIR	K	L	99.70%	42	1,458.62	516.981	1578330	260	268
1939	POSITIVE 2	Phospholipase A-2-activating protein OS=Mus musculus GN=Plaa PE=1 SV=4	PLAP_MOUSE	87,223.30	100.00%	4	5	9	0.13%	ILSLICNNSSEKPTAQQLQILWK	K	A	99.70%	75	3,071.57	3,170.08	1691710	579	601
1940	POSITIVE 2	Phospholipase A-2-activating protein OS=Mus musculus GN=Plaa PE=1 SV=4	PLAP_MOUSE	87,223.30	100.00%	4	5	9	0.13%	TFLGHEDCVR	R	G	99.70%	43.2	1,620.69	1,390.27	3241720	186	195
1941	POSITIVE 2	Structural maintenance of chromosomes flexible hinge domain-containing protein 1 OS=Mus musculus GN=Smchd1 PE=1 SV=2	SMHD1_MOUSE	225,654.00	100.00%	3	4	5	0.07%	ANLGVFTVCAPR	R	G	99.70%	82.9	1,691.80	2,630.39	4236840	1326	1337
1942	POSITIVE 2	Structural maintenance of chromosomes flexible hinge domain-containing protein 1 OS=Mus musculus GN=Smchd1 PE=1 SV=2	SMHD1_MOUSE	225,654.00	100.00%	3	4	5	0.07%	ANLGVFTVCAPRGEHTVQVK	R	G	99.70%	42.2	2,570.26	2,057.54	1675600	1326	1345
1943	POSITIVE 2	Hexokinase-1 OS=Mus musculus GN=Hk1 PE=1 SV=3	HXK1_MOUSE	108,305.70	100.00%	2	4	5	0.07%	NILQQLGLNSTCDDSILVK	R	T	99.70%	35.2	2,518.23	4,338.52	2111510	0	0
1944	POSITIVE 2	Probable peptide chain release factor C12orf65 homolog, mitochondrial OS=Mus musculus PE=1 SV=1	CL065_MOUSE	20,787.40	96.10%	1	1	1	0.01%	TSNCVVLK	K	H	99.00%	34	1,307.61	1,266.71	1245360	81	88
1945	POSITIVE 2	Activator of 90 kDa heat shock protein ATPase homolog 2 OS=Mus musculus GN=Ahsa2 PE=1 SV=2	AHSA2_MOUSE	37,648.50	98.90%	1	1	1	0.01%	GVPVCKEENMK	K	F	99.70%	46.2	1,677.74	951.654	213737	299	309
1946	POSITIVE 2	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	5	8	12	0.17%	EALEHLCTYEK	R	Q	99.70%	41.1	1,779.77	1,526.93	5398140	208	218
1947	POSITIVE 2	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	5	8	12	0.17%	GCPPVFNTLR	K	S	99.70%	31.8	1,547.71	2,251.54	253939	321	330
1948	POSITIVE 2	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	5	8	12	0.17%	GELLLQLCR	K	L	99.70%	33.2	1,488.73	2,597.99	958266	231	239
1949	POSITIVE 2	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	RCC2_MOUSE	55,983.80	100.00%	4	5	7	0.10%	GNLYSFGCPEYGQLGHNSDGK	K	F	99.70%	40.6	2,687.13	2,256.52	833038	271	291
1950	POSITIVE 2	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	RCC2_MOUSE	55,983.80	100.00%	4	5	7	0.10%	IEYDCELVPR	R	R	99.70%	51.9	1,680.74	2,275.55	1296570	299	308
1951	POSITIVE 2	Opioid growth factor receptor OS=Mus musculus GN=Ogfr PE=1 SV=1	OGFR_MOUSE	70,678.60	99.70%	1	1	1	0.01%	IALNLEGCALSPTSQEPR	K	E	99.70%	71.5	2,343.11	2,658.93	1112090	393	410
1952	POSITIVE 2	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	5	10	14	0.20%	TEGSDLCDR	K	V	99.70%	45.1	1,439.55	956.349	683373	540	548
1953	POSITIVE 2	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	RPN1_MOUSE	68,529.40	100.00%	5	10	14	0.20%	VNCITEQVLTLVNKR	K	L	99.70%	29	2,174.11	4,374.27	962732	0	0
1954	POSITIVE 2	Putative peptidyl-tRNA hydrolase PTRHD1 OS=Mus musculus GN=Ptrhd1 PE=1 SV=1	PTRD1_MOUSE	16,037.00	100.00%	2	2	2	0.03%	ACSGVEPQILVQYLVLR	M	K	99.70%	39.9	2,374.19	4,507.52	263027	16	32
1955	POSITIVE 2	Putative peptidyl-tRNA hydrolase PTRHD1 OS=Mus musculus GN=Ptrhd1 PE=1 SV=1	PTRD1_MOUSE	16,037.00	100.00%	2	2	2	0.03%	MACSGVEPQILVQYLVLR	K	K	99.70%	77.6	2,463.22	4,087.92	575635	15	32
1956	POSITIVE 2	Armadillo repeat-containing protein 10 OS=Mus musculus GN=Armc10 PE=1 SV=1	ARM10_MOUSE	33,311.80	98.90%	1	1	1	0.01%	ALACHHDVDVK	R	E	99.70%	39	1,651.73	767.586	303429	286	296
1957	POSITIVE 2	HEAT repeat-containing protein 5A OS=Mus musculus GN=Heatr5a PE=1 SV=2	HTR5A_MOUSE	219,896.80	100.00%	2	3	3	0.04%	NGSSSAAGLLDLVCTDLATLSK	R	L	99.70%	29.1	2,580.23	4,453.32	516873	1429	1450
1958	POSITIVE 2	Calcium/calmodulin-dependent protein kinase type II subunit gamma OS=Mus musculus GN=Camk2g PE=1 SV=1	KCC2G_MOUSE	59,607.60	98.90%	1	1	1	0.01%	RITADQALKHPWVCQR	K	S	99.70%	36.4	2,366.16	1,525.42	2471730	260	275
1959	POSITIVE 2	E3 ubiquitin-protein ligase TRIP12 OS=Mus musculus GN=Trip12 PE=1 SV=1	TRIPC_MOUSE	224,132.30	98.90%	1	2	2	0.03%	SPQELYELTSLICELMPCLPK	R	E	99.70%	43.4	2,976.39	4,683.09	441933	726	746
1960	POSITIVE 2	Creatine kinase B-type OS=Mus musculus GN=Ckb PE=1 SV=1	KCRB_MOUSE	42,714.10	98.90%	1	1	1	0.01%	NYEFMWNPHLGYILTCPSNLGTGLR	K	A	99.70%	58.4	3,340.53	3,629.81	1426380	268	292
1961	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	6	8	11	0.16%	FGTICYVMMMPFKR	K	Q	99.70%	64.9	2,167.96	3,294.32	730777	148	161
1962	POSITIVE 2	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	HNRLL_MOUSE	64,124.70	100.00%	6	8	11	0.16%	GRCESVVEADLVEALEK	R	F	99.70%	29.4	2,291.06	4,386.98	730802	0	0
1963	POSITIVE 2	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	LDHA_MOUSE	36,498.90	100.00%	4	9	27	0.38%	GLYGINEDVFLSVPCILGQNGISDVVK	K	V	99.70%	104	3,293.62	4,362.68	1119910	279	305
1964	POSITIVE 2	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	LDHA_MOUSE	36,498.90	100.00%	4	9	27	0.38%	IVSSKDYCVTANSK	K	L	99.70%	53.5	1,958.89	1,137.50	1759940	77	90
1965	POSITIVE 2	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	6	12	17	0.24%	DIDGHMVCLDK	K	Y	99.70%	50.4	1,689.70	1,845.18	1149640	48	58
1966	POSITIVE 2	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	6	12	17	0.24%	ILAFPCNQFGR	R	Q	99.70%	56.8	1,709.79	2,612.90	1934380	97	107
1967	POSITIVE 2	Phospholipid hydroperoxide glutathione peroxidase, mitochondrial OS=Mus musculus GN=Gpx4 PE=1 SV=4	GPX41_MOUSE	22,229.00	100.00%	6	12	17	0.24%	RYGPMEEPQVIEKDLPCYL	K	-	99.70%	55.9	2,724.25	3,094.66	974482	179	197
1968	POSITIVE 2	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	SYLM_MOUSE	101,481.70	100.00%	3	3	5	0.07%	LTAYTATPEAIYGISHVAISPSHGLLHGCSSVK	K	K	99.70%	38.3	3,824.87	2,723.57	1345320	295	327
1969	POSITIVE 2	Thyroid adenoma-associated protein homolog OS=Mus musculus GN=Thada PE=1 SV=1	THADA_MOUSE	217,294.20	100.00%	3	3	3	0.04%	GHLNGDSCVPR	K	R	99.70%	34.9	1,598.68	911.976	968533	380	390
1970	POSITIVE 2	Thyroid adenoma-associated protein homolog OS=Mus musculus GN=Thada PE=1 SV=1	THADA_MOUSE	217,294.20	100.00%	3	3	3	0.04%	GHLNGDSCVPRR	K	L	99.70%	47.2	1,754.78	733.044	554956	380	391
1971	POSITIVE 2	Protein FAM185A OS=Mus musculus GN=Fam185a PE=2 SV=1	F185A_MOUSE	39,991.50	100.00%	2	2	2	0.03%	MGNITVDSSCGCLK	K	A	99.70%	47.8	1,996.82	2,344.45	800297	259	272
1972	POSITIVE 2	Tumor suppressor ARF OS=Mus musculus GN=Cdkn2a PE=1 SV=1	ARF_MOUSE	19,238.80	98.90%	1	1	2	0.03%	TASCALAFVNMLLR	R	L	99.70%	61.2	1,953.93	4,208.48	550094	35	48
1973	POSITIVE 2	Importin-5 OS=Mus musculus GN=Ipo5 PE=1 SV=3	IPO5_MOUSE	123,593.60	100.00%	3	6	8	0.11%	QVQTSGGLWTECIAQLSPEQQAAIQELLNSA	R	-	99.70%	57.9	3,757.78	4,498.42	137749	1067	1097
1974	POSITIVE 2	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A beta isoform OS=Mus musculus GN=Ppp2r1b PE=1 SV=2	2AAB_MOUSE	65,935.40	98.80%	1	1	1	0.01%	ENTIEHLLPLFLAQLKDECPEVR	K	L	99.70%	30.8	3,151.56	3,790.13	376443	371	393
1975	POSITIVE 2	Kinectin OS=Mus musculus GN=Ktn1 PE=1 SV=1	KTN1_MOUSE	152,593.40	100.00%	2	3	4	0.06%	TMMFSEDEALCVVDLLK	K	E	99.70%	75.2	2,388.06	4,271.04	1064570	296	312
1976	POSITIVE 2	Cysteine-rich protein 2 OS=Mus musculus GN=Crip2 PE=1 SV=1	CRIP2_MOUSE	22,726.60	100.00%	2	3	3	0.04%	TLTPGGHAEHDGKPFCHKPCYATLFGPK	K	G	99.70%	36.4	3,578.64	1,894.97	1565710	38	65
1977	POSITIVE 2	CD2-associated protein OS=Mus musculus GN=Cd2ap PE=1 SV=3	CD2AP_MOUSE	70,452.50	100.00%	2	2	2	0.03%	AQIIELLCIVDALK	R	K	99.70%	37.8	1,986.04	4,424.11	1617360	586	599
1978	POSITIVE 2	CD2-associated protein OS=Mus musculus GN=Cd2ap PE=1 SV=3	CD2AP_MOUSE	70,452.50	100.00%	2	2	2	0.03%	AQIIELLCIVDALKK	R	D	99.70%	46.6	2,114.14	3,971.42	279451	586	600
1979	POSITIVE 2	3-ketoacyl-CoA thiolase, mitochondrial OS=Mus musculus GN=Acaa2 PE=1 SV=3	THIM_MOUSE	41,830.20	100.00%	4	12	15	0.21%	VVGYFVSGCDPTIMGIGPVPAINGALKK	R	A	99.70%	81.6	3,247.63	3,468.04	4004870	279	306
1980	POSITIVE 2	Small nuclear ribonucleoprotein Sm D2 OS=Mus musculus GN=Snrpd2 PE=1 SV=1	SMD2_MOUSE	13,527.10	98.90%	1	1	1	0.01%	NNTQVLINCR	K	N	99.70%	30.5	1,618.74	1,510.68	1278500	38	47
1981	POSITIVE 2	Lamina-associated polypeptide 2, isoforms alpha/zeta OS=Mus musculus GN=Tmpo PE=1 SV=4	LAP2A_MOUSE	75,169.20	100.00%	2	2	2	0.03%	AATQASSTESCDK	R	H	99.70%	36.7	1,742.70	449.886	3276920	550	562
1982	POSITIVE 2	Lamina-associated polypeptide 2, isoforms alpha/zeta OS=Mus musculus GN=Tmpo PE=1 SV=4	LAP2A_MOUSE	75,169.20	100.00%	2	2	2	0.03%	RDPPRETCTDTALPGK	K	G	99.70%	53.6	2,201.01	998.808	855129	247	262
1983	POSITIVE 2	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	PPIA_MOUSE	17,971.80	100.00%	4	5	6	0.08%	HTGPGILSMANAGPNTNGSQFFICTAK	K	T	99.70%	32.1	3,178.45	2,866.72	689460	92	118
1984	POSITIVE 2	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	PPIA_MOUSE	17,971.80	100.00%	4	5	6	0.08%	IIPGFMCQGGDFTR	R	H	99.70%	45.2	1,985.87	2,838.98	3919710	56	69
2015	POSITIVE 2	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	PLEC_MOUSE	534,181.10	100.00%	4	4	5	0.07%	SEFERLECLQR	R	I	99.00%	27	1,853.83	1,975.70	1455790	534	544
1985	POSITIVE 2	Thioredoxin-dependent peroxide reductase, mitochondrial OS=Mus musculus GN=Prdx3 PE=1 SV=1	PRDX3_MOUSE	28,127.00	100.00%	2	3	6	0.08%	AFQFVETHGEVCPANWTPESPTIKPSPTASK	K	E	99.70%	84.8	3,800.77	2,558.95	5144000	219	249
1986	POSITIVE 2	Thioredoxin-dependent peroxide reductase, mitochondrial OS=Mus musculus GN=Prdx3 PE=1 SV=1	PRDX3_MOUSE	28,127.00	100.00%	2	3	6	0.08%	YLVLFFYPLDFTFVCPTEIVAFSDK	K	A	99.70%	76.2	3,418.64	4,726.73	1066870	95	119
1987	POSITIVE 2	Cysteine and histidine-rich domain-containing protein 1 OS=Mus musculus GN=Chordc1 PE=1 SV=1	CHRD1_MOUSE	37,350.50	100.00%	2	2	2	0.03%	TSDFNTFLAQEGCTR	K	G	99.70%	37.6	2,133.90	2,532.45	1053160	199	213
1988	POSITIVE 2	Cysteine and histidine-rich domain-containing protein 1 OS=Mus musculus GN=Chordc1 PE=1 SV=1	CHRD1_MOUSE	37,350.50	100.00%	2	2	2	0.03%	TTDFSDFLSIVGCTK	R	G	99.70%	70.8	2,077.92	3,708.88	270589	47	61
1989	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 34 OS=Mus musculus GN=Usp34 PE=1 SV=3	UBP34_MOUSE	408,215.50	98.90%	1	1	1	0.01%	FVGLTNLGATCYLASTIQQLYMIPEAR	R	Q	99.70%	79.5	3,417.66	4,468.46	856277	1930	1956
1990	POSITIVE 2	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	GRP75_MOUSE	73,462.10	100.00%	5	11	18	0.25%	RTIAPCQK	K	A	99.00%	30.9	1,360.65	488.04	196024	361	368
1991	POSITIVE 2	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	DNPEP_MOUSE	52,207.50	100.00%	5	8	11	0.16%	CPTSGRLEQR	K	L	99.70%	62.4	1,590.71	746.616	638354	142	151
1992	POSITIVE 2	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	DNPEP_MOUSE	52,207.50	100.00%	5	8	11	0.16%	NDSPCGTTIGPILASR	R	L	99.70%	88.7	2,045.94	2,376.85	3215430	407	422
1993	POSITIVE 2	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	DNPEP_MOUSE	52,207.50	100.00%	5	8	11	0.16%	VIIKCPTSGR	R	L	99.70%	40.6	1,517.76	1,080.51	1.92E+07	138	147
1994	POSITIVE 2	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	DNPEP_MOUSE	52,207.50	100.00%	5	8	11	0.16%	VIIKCPTSGRLEQR	R	L	99.70%	41.9	2,044.04	1,227.75	5848180	138	151
1995	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	CTTNCLAPLAK	S	V	99.70%	30.6	1,703.76	2,389.98	2751820	150	160
1996	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	GILGYTEDQVVSCDFNSNSH	K	S	99.70%	46	2,629.09	2,921.34	890849	270	289
1997	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	GILGYTEDQVVSCDFNSNSHSSTFDAGAGIALNDNFVK	K	L	99.70%	58	4,436.97	3,915.14	971411	270	307
1998	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVDNADCTTNCLAPLAK	K	V	98.80%	26.9	2,331.04	2,857.94	839162	0	0
1999	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVSNASCATNCLAPLAK	K	V	99.70%	32.5	2,245.04	2,644.89	1804570	0	0
2000	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVSNASCT	K	T	99.00%	38.7	1,238.51	1,045.78	835757	144	151
2001	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVSNASCTRNCLAPLAK	K	V	99.70%	29.8	2,206.04	2,335.66	1062050	0	0
2002	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVSNASCTT	K	N	99.70%	32.4	1,339.56	1,096.41	351865	144	152
2003	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	IVSNASCTTQCLAPLAK	K	V	99.70%	45.7	2,164.02	2,346.85	1127370	0	0
2004	POSITIVE 2	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	28	45	199	2.81%	NASCTTNCLAPLAK	S	V	99.70%	41.9	1,975.87	2,396.89	1033000	147	160
2005	POSITIVE 2	60S acidic ribosomal protein P0 OS=Mus musculus GN=Rplp0 PE=1 SV=3	RLA0_MOUSE	34,217.50	98.90%	1	3	3	0.04%	AGAIAPCEVTVPAQNTGLGPEK	R	T	99.70%	97.4	2,567.22	2,355.53	5273000	113	134
2006	POSITIVE 2	Enhancer of mRNA-decapping protein 3 OS=Mus musculus GN=Edc3 PE=1 SV=1	EDC3_MOUSE	55,957.00	98.90%	1	1	1	0.01%	DLPASPVDLVINCLDCPENAFLR	R	D	99.70%	57.8	3,083.43	4,660.69	902468	398	420
2007	POSITIVE 2	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	6	6	8	0.11%	AMLPLPEASHLTSCQLNR	K	H	99.70%	64.3	2,425.14	2,530.08	2533910	569	586
2008	POSITIVE 2	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	6	6	8	0.11%	CQLGLPLYLWAAK	K	T	99.70%	61	1,919.95	3,744.44	166639	458	470
2009	POSITIVE 2	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	6	6	8	0.11%	EQLILLGTLVDLLGDSEQECR	R	S	99.70%	77.3	2,788.35	4,529.86	556557	109	129
2010	POSITIVE 2	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CTC1_MOUSE	134,031.00	100.00%	6	6	8	0.11%	ILCEPPLALR	R	R	99.70%	44.7	1,568.79	2,573.67	2082030	901	910
2011	POSITIVE 2	Eukaryotic translation initiation factor 6 OS=Mus musculus GN=Eif6 PE=1 SV=2	IF6_MOUSE	26,510.10	98.90%	1	2	5	0.07%	ASFENNCEVGCFAK	R	L	99.70%	82	2,087.83	2,353.78	8049170	5	18
2012	POSITIVE 2	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	PLEC_MOUSE	534,181.10	100.00%	4	4	5	0.07%	AFCGFEDPR	K	T	99.70%	48.3	1,485.59	2,034.98	4262960	4499	4507
2013	POSITIVE 2	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	PLEC_MOUSE	534,181.10	100.00%	4	4	5	0.07%	RQEQIQAVPIANCQAAR	R	E	99.70%	59.4	2,340.13	1,544.63	369716	1374	1390
2014	POSITIVE 2	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	PLEC_MOUSE	534,181.10	100.00%	4	4	5	0.07%	RRQEQIQAVPIANCQAAR	K	E	99.70%	32.4	2,496.23	1,305.88	1104880	1373	1390
2016	POSITIVE 2	Oxysterol-binding protein-related protein 11 OS=Mus musculus GN=Osbpl11 PE=1 SV=2	OSB11_MOUSE	83,629.40	98.90%	1	1	2	0.03%	IECLPASGLLSSLDQDLLMLK	R	A	99.70%	95.4	2,703.34	4,476.46	503610	243	263
2017	POSITIVE 2	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	TGM2_MOUSE	77,061.90	100.00%	6	11	16	0.23%	VVSNMVNCNDDQGVLLGR	R	W	99.70%	46.4	2,377.07	3,631.60	1076570	0	0
2018	POSITIVE 2	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	M3K20_MOUSE	91,721.60	100.00%	3	4	5	0.07%	CEIEATLER	R	L	99.70%	51.8	1,507.65	1,762.84	2625470	285	293
2019	POSITIVE 2	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	M3K20_MOUSE	91,721.60	100.00%	3	4	5	0.07%	FDDLQFFENCGGGSFGSVYR	K	A	99.70%	58.7	2,689.11	3,484.32	922370	13	32
2020	POSITIVE 2	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	M3K20_MOUSE	91,721.60	100.00%	3	4	5	0.07%	ICDFGASR	K	F	99.00%	42.6	1,312.54	1,465.66	538728	149	156
2021	POSITIVE 2	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	VMA5A_MOUSE	87,144.70	100.00%	3	4	5	0.07%	MEHHCGLITSNK	-	E	99.70%	31.5	1,855.79	1,394.99	218941	1	12
2022	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 24 OS=Mus musculus GN=Usp24 PE=1 SV=1	UBP24_MOUSE	294,006.70	100.00%	4	5	5	0.07%	HPYYPCMAK	K	V	99.70%	29.1	1,553.63	1,269.99	739635	2152	2160
2023	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 24 OS=Mus musculus GN=Usp24 PE=1 SV=1	UBP24_MOUSE	294,006.70	100.00%	4	5	5	0.07%	NDENGNCSGEGIEFPTTNLYELESR	K	V	99.70%	60.3	3,232.34	3,308.06	346676	107	131
2024	POSITIVE 2	Ubiquitin carboxyl-terminal hydrolase 24 OS=Mus musculus GN=Usp24 PE=1 SV=1	UBP24_MOUSE	294,006.70	100.00%	4	5	5	0.07%	TFFENVNLCDHR	K	L	99.70%	38.7	1,938.82	2,198.16	1716630	791	802
2025	POSITIVE 2	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	7	10	18	0.25%	FLSGTSSNYVEEMYCAWLENPK	P	S	99.70%	54.1	3,012.28	4,137.22	339963	49	70
2026	POSITIVE 2	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	7	10	18	0.25%	SMTCPSTGLEEDVLFHIGK	R	V	99.70%	56.2	2,508.12	3,045.16	584314	601	619
2027	POSITIVE 2	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ODO1_MOUSE	116,450.60	100.00%	7	10	18	0.25%	SNPVAAEPFLSGTSSNYVEEMYCAWLENPK	Y	S	99.70%	46.2	3,777.65	4,592.44	1442470	0	0
2028	POSITIVE 2	tRNA (cytosine(34)-C(5))-methyltransferase OS=Mus musculus GN=Nsun2 PE=1 SV=2	NSUN2_MOUSE	85,452.80	100.00%	3	4	6	0.08%	KDGVCGPPPSK	K	K	99.70%	31.9	1,528.69	533.253	506579	497	507
2029	POSITIVE 2	tRNA (cytosine(34)-C(5))-methyltransferase OS=Mus musculus GN=Nsun2 PE=1 SV=2	NSUN2_MOUSE	85,452.80	100.00%	3	4	6	0.08%	MVYNTCSLNPVEDEAVIAALLEK	R	S	99.70%	45.1	2,982.39	4,644.10	340836	0	0
2030	POSITIVE 2	Elongation factor 1-alpha 1 OS=Mus musculus GN=Eef1a1 PE=1 SV=3	EF1A1_MOUSE	50,114.20	100.00%	2	2	2	0.03%	DGSASGTTLLEALDCILPPTRPTDKPLRLPLQDVYK	K	I	99.70%	38.4	4,338.21	3,887.95	1312590	220	255
2031	POSITIVE 2	Elongation factor 1-alpha 1 OS=Mus musculus GN=Eef1a1 PE=1 SV=3	EF1A1_MOUSE	50,114.20	100.00%	2	2	2	0.03%	SGDAAIVDMVPGKPMCVESFSDYPPLGR	K	F	99.70%	49.8	3,382.52	3,367.86	358942	396	423
2032	POSITIVE 2	PDZ and LIM domain protein 4 OS=Mus musculus GN=Pdlim4 PE=1 SV=3	PDLI4_MOUSE	35,556.30	100.00%	2	2	2	0.03%	GCHDHLTLSVSRPENK	K	N	99.70%	74.2	2,237.02	1,123.40	839728	71	86
2033	POSITIVE 2	PDZ and LIM domain protein 4 OS=Mus musculus GN=Pdlim4 PE=1 SV=3	PDLI4_MOUSE	35,556.30	100.00%	2	2	2	0.03%	IHIDPESQDCSPATSR	R	R	99.70%	38.5	2,199.94	1,425.48	1672670	101	116
2034	POSITIVE 2	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	5	5	6	0.08%	DGLTEKECVR	R	E	99.70%	49.6	1,593.70	1,019.02	2191020	34	43
2035	POSITIVE 2	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	5	5	6	0.08%	DGLTEKECVREK	R	L	99.70%	45.7	1,850.84	810.894	1382240	34	45
2036	POSITIVE 2	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	5	5	6	0.08%	QFSTLIPWCLPHTGNR	R	H	99.70%	55.1	2,314.09	3,055.50	346785	1493	1508
2037	POSITIVE 2	Matrin-3 OS=Mus musculus GN=Matr3 PE=1 SV=1	MATR3_MOUSE	94,633.80	98.90%	1	3	3	0.04%	CRDDSFFGETSHNYHK	R	F	99.70%	60.9	2,386.96	1,251.51	6275960	230	245
2038	POSITIVE 2	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	GCN1_MOUSE	293,027.10	100.00%	3	3	3	0.04%	CLQNPCSDIR	K	L	99.70%	32.1	1,717.71	2,596.10	803575	2558	2567
2039	POSITIVE 2	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	GCN1_MOUSE	293,027.10	100.00%	3	3	3	0.04%	GMGESCFEDLLPWLMETLTYEQSSVDR	K	S	99.70%	47.2	3,580.54	4,683.87	103767	1687	1713
2040	POSITIVE 2	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	GCN1_MOUSE	293,027.10	100.00%	3	3	3	0.04%	LACQADSVEQVDDTILT	K	-	99.70%	35.7	2,265.00	3,145.75	340495	2655	2671
2041	POSITIVE 2	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	EFGM_MOUSE	83,551.30	100.00%	4	7	11	0.16%	QELIECVANSDEQLGELFLEEK	R	I	99.70%	29.1	2,980.36	3,992.98	202935	252	273
2042	POSITIVE 2	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	EFGM_MOUSE	83,551.30	100.00%	4	7	11	0.16%	YQPCSPSTQEELINK	R	Y	99.70%	57.5	2,180.96	1,812.82	728927	720	734
2043	POSITIVE 2	Vacuolar protein sorting-associated protein 13C OS=Mus musculus GN=Vps13c PE=1 SV=2	VP13C_MOUSE	420,092.80	99.90%	1	2	2	0.03%	IKDALCLINSIPLPQK	K	S	99.70%	45	2,210.17	3,218.79	1309250	821	836
2044	POSITIVE 2	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial OS=Mus musculus GN=Ndufa10 PE=1 SV=1	NDUAA_MOUSE	40,604.70	100.00%	4	5	7	0.10%	QCVDHYNEIKR	K	L	99.70%	53.7	1,848.81	890.088	1269480	182	192
2045	POSITIVE 2	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	NOP56_MOUSE	64,466.20	100.00%	4	6	8	0.11%	EVEEISLLLPQVEECVLNLGK	K	F	99.70%	70	2,798.40	4,384.05	739880	21	41
2046	POSITIVE 2	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	NOP56_MOUSE	64,466.20	100.00%	4	6	8	0.11%	LAALALASSENSSTPEECEEVNEK	R	S	99.70%	86.4	2,965.30	2,317.03	1102540	454	477
2047	POSITIVE 2	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	NOP56_MOUSE	64,466.20	100.00%	4	6	8	0.11%	RLAALALASSENSSTPEECEEVNEK	K	S	99.70%	54.2	3,121.40	2,047.89	1224780	453	477
2048	POSITIVE 2	Diphosphoinositol polyphosphate phosphohydrolase 1 OS=Mus musculus GN=Nudt3 PE=1 SV=1	NUDT3_MOUSE	19,029.10	98.90%	1	2	2	0.03%	VLQCHKPVQASYFETLR	K	Q	99.70%	57.1	2,463.19	1,894.34	3874850	128	144
2049	POSITIVE 2	Translin OS=Mus musculus GN=Tsn PE=1 SV=1	TSN_MOUSE	26,201.40	98.90%	1	2	5	0.07%	ETAAACGEK	K	-	99.70%	42.6	1,323.53	413.742	1335550	220	228
2050	POSITIVE 2	ATP-binding cassette sub-family B member 10, mitochondrial OS=Mus musculus GN=Abcb10 PE=1 SV=1	ABCBA_MOUSE	77,190.20	100.00%	2	3	3	0.04%	IGTVSQEPVLFSCSVAENIAYGADNLSSVTAQQVER	K	A	99.70%	67.7	4,227.00	4,023.22	70,619.10	535	570
2051	POSITIVE 2	Nuclear transport factor 2 OS=Mus musculus GN=Nutf2 PE=1 SV=1	NTF2_MOUSE	14,478.90	98.90%	1	2	2	0.03%	IQHSITAQDHQPTPDSCIISMVVGQLK	K	A	99.70%	73	3,390.62	3,112.51	3130890	64	90
2052	POSITIVE 2	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	IF4G1_MOUSE	176,080.10	100.00%	3	3	3	0.04%	ATSLLLEILGLLCK	K	S	99.70%	43.7	1,931.03	4,557.65	211912	1372	1385
2053	POSITIVE 2	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	IF4G1_MOUSE	176,080.10	100.00%	3	3	3	0.04%	CLMALKVPTTEKPTVTVNFR	R	K	99.70%	37.4	2,692.36	2,541.80	987444	825	844
2054	POSITIVE 2	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	IF4G1_MOUSE	176,080.10	100.00%	3	3	3	0.04%	EAVQCVQELASPSLLFIFVR	K	L	99.70%	95	2,693.34	4,440.22	770113	1261	1280
2055	POSITIVE 2	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	5	8	14	0.20%	VIGIECDSISDYAVK	K	I	99.70%	28.6	2,055.94	2,780.59	801056	0	0
2056	POSITIVE 2	Septin-6 OS=Mus musculus GN=Sept6 PE=1 SV=4	SEPT6_MOUSE	49,620.20	98.90%	1	1	2	0.03%	CLDEEMNAFK	K	Q	99.70%	47.1	1,643.65	2,268.27	1348840	388	397
2057	POSITIVE 2	RNA-binding protein 25 OS=Mus musculus GN=Rbm25 PE=1 SV=2	RBM25_MOUSE	99,555.40	98.90%	1	2	2	0.03%	LKENDENCGPTTTVFVGNISEK	K	A	99.70%	91.9	2,839.29	2,093.56	2299040	76	97
2058	POSITIVE 2	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	SYIM_MOUSE	112,805.90	100.00%	5	6	10	0.14%	LESLTDASSPVSVLVWTTQPWTIPANQAICYMPEAK	K	Y	99.70%	74.3	4,391.10	4,437.22	244784	282	317
2059	POSITIVE 2	Dehydrogenase/reductase SDR family member 13 OS=Mus musculus GN=Dhrs13 PE=1 SV=1	DHR13_MOUSE	40,745.10	100.00%	2	3	3	0.04%	LDCPVVGWQQELR	R	A	99.70%	80.7	1,986.92	2,729.84	1550460	183	195
2060	POSITIVE 2	Dehydrogenase/reductase SDR family member 13 OS=Mus musculus GN=Dhrs13 PE=1 SV=1	DHR13_MOUSE	40,745.10	100.00%	2	3	3	0.04%	LDFTRLDCPVVGWQQELR	R	A	99.70%	60.8	2,619.24	3,304.05	1157230	178	195
2061	POSITIVE 2	Recombining binding protein suppressor of hairless OS=Mus musculus GN=Rbpj PE=1 SV=1	SUH_MOUSE	58,537.80	100.00%	2	3	4	0.06%	LVCSVTGMALPR	K	L	99.70%	61.9	1,690.81	2,462.96	4558410	276	287
2062	POSITIVE 2	Kinesin-like protein KIF11 OS=Mus musculus GN=Kif11 PE=1 SV=1	KIF11_MOUSE	118,029.20	100.00%	2	3	3	0.04%	ETHSQELCQLSSSWAER	K	F	99.70%	51.1	2,435.04	2,189.68	2668510	715	731
2063	POSITIVE 2	Kinesin-like protein KIF11 OS=Mus musculus GN=Kif11 PE=1 SV=1	KIF11_MOUSE	118,029.20	100.00%	2	3	3	0.04%	SVVCPILDEVIMGYNCTIFAYGQTGTGK	R	T	99.70%	61	3,548.62	4,477.35	135971	83	110
2064	POSITIVE 2	Exportin-5 OS=Mus musculus GN=Xpo5 PE=1 SV=1	XPO5_MOUSE	136,976.80	100.00%	2	2	2	0.03%	SILCGEDEIAEDNPESQEMLEEQLVR	R	M	99.70%	47.5	3,420.49	3,365.83	334421	938	963
2065	POSITIVE 2	E3 ubiquitin-protein ligase NEDD4 OS=Mus musculus GN=Nedd4 PE=1 SV=3	NEDD4_MOUSE	102,708.90	100.00%	2	2	4	0.06%	GGSLQTCIFEEQPTLPVLLPTSSGLPPGWEEK	R	Q	99.70%	46	3,854.86	4,210.76	449674	383	414
2066	POSITIVE 2	Alpha-1-syntrophin OS=Mus musculus GN=Snta1 PE=1 SV=1	SNTA1_MOUSE	53,666.20	98.90%	1	2	2	0.03%	ELLFYCSLPQSR	K	E	99.70%	46.6	1,899.87	2,964.62	3323710	314	325
2067	POSITIVE 2	Integrin-linked protein kinase OS=Mus musculus GN=Ilk PE=1 SV=2	ILK_MOUSE	51,373.70	100.00%	2	3	4	0.06%	VALEGLRPTIPPGISPHVCK	K	L	99.70%	64.8	2,528.31	2,377.34	4479400	404	423
2068	POSITIVE 2	HRAS-like suppressor 3 OS=Mus musculus GN=Pla2g16 PE=1 SV=2	PA216_MOUSE	17,872.00	100.00%	2	3	7	0.10%	KELLCHVAGK	K	D	99.70%	38.9	1,541.76	911.328	931988	62	71
2069	POSITIVE 2	Rabankyrin-5 OS=Mus musculus GN=Ankfy1 PE=1 SV=2	ANFY1_MOUSE	128,655.00	98.90%	1	2	3	0.04%	NDCVFSQLLQCK	R	Q	99.70%	64.3	1,966.85	3,401.69	2174090	379	390
2070	POSITIVE 2	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	7	10	13	0.18%	AGTNMMMVGVHGPKTPCEEVYVK	K	H	99.70%	53.4	2,922.31	2,066.69	415101	2664	2686
2071	POSITIVE 2	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	7	10	13	0.18%	CSYVPTKPIK	R	H	99.70%	38.1	1,579.76	1,300.36	572520	729	738
2072	POSITIVE 2	Phosphatidylethanolamine-binding protein 1 OS=Mus musculus GN=Pebp1 PE=1 SV=3	PEBP1_MOUSE	20,830.50	100.00%	2	2	3	0.04%	AADISQWAGPLCLQEVDEPPQHALR	M	V	99.70%	68.9	3,230.50	3,608.50	1465540	2	26
2073	POSITIVE 2	Phosphatidylethanolamine-binding protein 1 OS=Mus musculus GN=Pebp1 PE=1 SV=3	PEBP1_MOUSE	20,830.50	100.00%	2	2	3	0.04%	YVWLVYEQEQPLSCDEPILSNK	R	S	99.70%	76.7	3,097.43	3,490.07	561514	120	141
2074	POSITIVE 2	T-complex protein 1 subunit gamma OS=Mus musculus GN=Cct3 PE=1 SV=1	TCPG_MOUSE	60,631.10	100.00%	2	2	3	0.04%	IPGGIIEDSCVLR	K	G	99.70%	58.4	1,815.87	2,641.80	1943240	204	216
2075	POSITIVE 2	T-complex protein 1 subunit gamma OS=Mus musculus GN=Cct3 PE=1 SV=1	TCPG_MOUSE	60,631.10	100.00%	2	2	3	0.04%	WSSLACNIALDAVK	R	T	99.70%	42.8	1,934.91	3,015.77	413893	168	181
2076	POSITIVE 2	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	UBA6_MOUSE	117,969.30	100.00%	4	5	7	0.10%	ALQLLHCFPLETR	K	L	99.70%	58.1	1,984.97	2,871.15	1511840	715	727
2077	POSITIVE 2	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	UBA6_MOUSE	117,969.30	100.00%	4	5	7	0.10%	CQQDSDELLK	R	L	99.70%	29.3	1,622.68	1,503.50	799649	347	356
2078	POSITIVE 2	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	UBA6_MOUSE	117,969.30	100.00%	4	5	7	0.10%	LYATVYCIPFSEK	K	D	99.70%	47	1,977.91	3,011.20	699087	764	776
2079	POSITIVE 2	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	UBA6_MOUSE	117,969.30	100.00%	4	5	7	0.10%	TFCFEPLESQIK	K	H	99.70%	49.4	1,885.85	3,026.34	974745	296	307
2080	POSITIVE 2	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	TCPQ_MOUSE	59,556.10	100.00%	5	6	8	0.11%	QITSYGETCPGLEQYAIK	K	K	99.70%	80.1	2,445.11	2,493.93	932163	422	439
2081	POSITIVE 2	Eukaryotic translation initiation factor 1 OS=Mus musculus GN=Eif1 PE=1 SV=2	EIF1_MOUSE	12,747.10	98.90%	1	1	2	0.03%	NICQFLIEIGLAK	K	D	99.70%	61.9	1,905.96	4,116.74	288831	92	104
2082	POSITIVE 2	Histidine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Hars PE=1 SV=2	SYHC_MOUSE	57,433.90	100.00%	2	2	2	0.03%	RTNQPLSTC	R	-	99.70%	28.2	1,463.64	1,016.90	389921	501	509
2083	POSITIVE 2	Histidine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Hars PE=1 SV=2	SYHC_MOUSE	57,433.90	100.00%	2	2	2	0.03%	TNQPLSTC	R	-	99.00%	39.5	1,307.54	1,391.60	1045560	502	509
2084	POSITIVE 2	Elongin-C OS=Mus musculus GN=Eloc PE=1 SV=1	ELOC_MOUSE	12,473.40	98.90%	1	2	3	0.04%	TYGGCEGPDAMYVK	K	L	99.70%	51.5	1,934.77	1,882.49	1790800	7	20
2085	POSITIVE 2	G protein-activated inward rectifier potassium channel 4 OS=Mus musculus GN=Kcnj5 PE=2 SV=3	KCNJ5_MOUSE	47,669.50	100.00%	2	3	4	0.06%	CNVHHGNVQETYR	K	Y	99.70%	65.4	2,000.85	698.334	1501610	60	72
2086	POSITIVE 2	G protein-activated inward rectifier potassium channel 4 OS=Mus musculus GN=Kcnj5 PE=2 SV=3	KCNJ5_MOUSE	47,669.50	100.00%	2	3	4	0.06%	GFYEVDYNTFHDTYETNTPSCCAK	K	E	99.70%	53.4	3,374.33	2,761.89	175753	342	365
2087	POSITIVE 2	Ras-related protein Rap-1A OS=Mus musculus GN=Rap1a PE=1 SV=1	RAP1A_MOUSE	20,987.30	100.00%	2	3	6	0.08%	QWCNCAFLESSAK	R	S	99.70%	59.1	2,055.84	2,877.60	2855910	137	149
2088	POSITIVE 2	Chloride intracellular channel protein 1 OS=Mus musculus GN=Clic1 PE=1 SV=3	CLIC1_MOUSE	27,013.60	100.00%	3	4	4	0.06%	IEEFLEAMLCPPRYPK	K	L	99.70%	36.7	2,380.11	3,301.90	703994	80	95
2089	POSITIVE 2	Exocyst complex component 5 OS=Mus musculus GN=Exoc5 PE=1 SV=2	EXOC5_MOUSE	81,739.90	98.90%	1	1	1	0.01%	YHDLECQLIQEFTSAQR	K	R	99.70%	47.9	2,525.12	3,362.11	700054	189	205
2090	POSITIVE 2	Hydroxymethylglutaryl-CoA synthase, cytoplasmic OS=Mus musculus GN=Hmgcs1 PE=1 SV=1	HMCS1_MOUSE	57,570.20	100.00%	3	5	8	0.11%	HSLSYDCIGR	R	L	99.70%	42.3	1,594.67	1,489.69	7867090	80	89
2091	POSITIVE 2	Hydroxymethylglutaryl-CoA synthase, cytoplasmic OS=Mus musculus GN=Hmgcs1 PE=1 SV=1	HMCS1_MOUSE	57,570.20	100.00%	3	5	8	0.11%	HSLSYDCIGRLEVGTETIIDK	R	S	99.70%	56.3	2,793.32	2,729.18	3071480	80	100
2092	POSITIVE 2	Hydroxymethylglutaryl-CoA synthase, cytoplasmic OS=Mus musculus GN=Hmgcs1 PE=1 SV=1	HMCS1_MOUSE	57,570.20	100.00%	3	5	8	0.11%	ITASLCDLK	K	S	99.70%	37	1,407.66	2,008.11	1994040	401	409
2093	POSITIVE 2	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	6	8	9	0.13%	FTWLFENCPMGSLAAESIR	K	G	99.70%	67.6	2,616.17	3,839.98	514472	732	750
2094	POSITIVE 2	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	6	8	9	0.13%	GPGELCLAK	R	Y	99.70%	30.9	1,331.61	1,661.69	167071	800	808
2095	POSITIVE 2	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	XIRP1_MOUSE	123,430.20	100.00%	6	8	9	0.13%	NLEEAVAEDLAEVLGSEEPTEGDVQCMR	K	W	99.70%	86	3,477.51	4,401.56	731620	68	95
2096	POSITIVE 2	Laminin subunit gamma-1 OS=Mus musculus GN=Lamc1 PE=1 SV=2	LAMC1_MOUSE	177,297.20	98.90%	1	1	1	0.01%	TLPTGCFNTPSIEKP	K	-	99.70%	34.4	2,048.94	2,499.30	383859	1593	1607
2097	POSITIVE 2	60S ribosomal protein L4 OS=Mus musculus GN=Rpl4 PE=1 SV=3	RL4_MOUSE	47,155.30	100.00%	2	4	5	0.07%	SGQGAFGNMCR	R	G	99.70%	47.3	1,571.61	1,414.99	836242	87	97
2098	POSITIVE 2	Endoplasmic reticulum resident protein 29 OS=Mus musculus GN=Erp29 PE=1 SV=2	ERP29_MOUSE	28,824.90	98.90%	1	1	2	0.03%	GQGVYLGMPGCLPAYDALAGEFIK	K	A	99.70%	111	2,914.36	4,113.65	1282500	149	172
2099	POSITIVE 2	WD repeat-containing protein 74 OS=Mus musculus GN=Wdr74 PE=2 SV=1	WDR74_MOUSE	42,635.80	98.90%	1	2	2	0.03%	VWCENDKEASSDPLLELK	R	V	99.70%	76.7	2,520.14	2,539.04	1650950	111	128
2100	POSITIVE 2	Dysferlin OS=Mus musculus GN=Dysf PE=1 SV=3	DYSF_MOUSE	237,916.70	100.00%	2	2	2	0.03%	SVSDQDNYIPCTLEPVFGK	K	M	99.70%	63.8	2,556.14	3,244.74	1250080	1621	1639
2101	POSITIVE 2	Condensin complex subunit 2 OS=Mus musculus GN=Ncaph PE=1 SV=1	CND2_MOUSE	82,304.80	98.90%	1	1	1	0.01%	CAVDPMFQK	K	T	99.70%	39.7	1,482.62	1,874.50	507854	233	241
2102	POSITIVE 2	Inner centromere protein OS=Mus musculus GN=Incenp PE=1 SV=2	INCE_MOUSE	101,209.60	98.90%	1	1	2	0.03%	LLDFVCNVDNK	K	D	99.70%	54.5	1,723.78	2,600.92	1444960	19	29
2103	POSITIVE 2	DnaJ homolog subfamily C member 7 OS=Mus musculus GN=Dnajc7 PE=1 SV=2	DNJC7_MOUSE	56,477.60	100.00%	3	3	4	0.06%	AIDMCPNNASYYGNR	K	A	99.70%	67.4	2,132.86	1,938.37	796055	54	68
2104	POSITIVE 2	DnaJ homolog subfamily C member 7 OS=Mus musculus GN=Dnajc7 PE=1 SV=2	DNJC7_MOUSE	56,477.60	100.00%	3	3	4	0.06%	ALEFAPACHR	R	F	99.70%	39	1,558.69	1,509.69	1538370	168	177
2105	POSITIVE 2	Adenosine kinase OS=Mus musculus GN=Adk PE=1 SV=2	ADK_MOUSE	40,149.50	98.90%	1	2	2	0.03%	SLVANLAAANCYK	R	K	99.70%	64.9	1,781.83	2,301.91	5421530	149	161
2106	POSITIVE 2	Mitochondrial Rho GTPase 1 OS=Mus musculus GN=Rhot1 PE=1 SV=1	MIRO1_MOUSE	72,243.40	100.00%	2	3	4	0.06%	AVLHPTGPLYCPEEK	K	E	99.70%	63.1	2,097.97	1,786.16	8454880	178	192
2107	POSITIVE 2	Mitochondrial Rho GTPase 1 OS=Mus musculus GN=Rhot1 PE=1 SV=1	MIRO1_MOUSE	72,243.40	100.00%	2	3	4	0.06%	DLFQVFPYIPWGPDVNNTVCTNER	K	G	99.70%	40.9	3,268.48	4,454.97	595230	344	367
2108	POSITIVE 2	Kinesin-1 heavy chain OS=Mus musculus GN=Kif5b PE=1 SV=3	KINH_MOUSE	109,552.60	100.00%	2	2	4	0.06%	ILQDSLGGNCR	R	T	99.70%	40.9	1,619.73	1,553.52	2064240	285	295
2109	POSITIVE 2	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	TLN1_MOUSE	269,819.30	100.00%	3	3	4	0.06%	ALCGFTEAAAQAAYLVGVSDPNSQAGQQGLVEPTQFAR	K	A	99.70%	70.9	4,310.02	4,126.88	114580	1432	1469
2110	POSITIVE 2	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	TLN1_MOUSE	269,819.30	100.00%	3	3	4	0.06%	KELIECAR	K	R	99.00%	28.3	1,405.66	1,025.13	3261220	1948	1955
2111	POSITIVE 2	Nexilin OS=Mus musculus GN=Nexn PE=1 SV=3	NEXN_MOUSE	72,109.30	100.00%	2	2	3	0.04%	TNHEEDKMRYEEECR	R	V	99.70%	30.8	2,412.96	809.28	492344	136	150
2112	POSITIVE 2	Ester hydrolase C11orf54 homolog OS=Mus musculus PE=1 SV=1	CK054_MOUSE	34,995.90	100.00%	2	3	3	0.04%	ACSEFSFHMPSLEELAEVLQK	M	G	99.70%	47.3	2,881.28	4,484.12	441117	2	22
2113	POSITIVE 2	Serine/arginine-rich splicing factor 1 OS=Mus musculus GN=Srsf1 PE=1 SV=3	SRSF1_MOUSE	27,745.10	98.90%	1	1	2	0.03%	EAGDVCYADVYR	R	D	99.70%	57.2	1,804.73	1,999.65	1657100	143	154
2114	POSITIVE 2	Trans-L-3-hydroxyproline dehydratase OS=Mus musculus GN=L3hypdh PE=1 SV=1	T3HPD_MOUSE	37,804.00	99.90%	1	1	2	0.03%	LGLDVCSAK	K	T	99.70%	42	1,349.62	1,818.63	2364680	200	208
2115	POSITIVE 2	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VDAC3_MOUSE	30,754.00	100.00%	5	11	34	0.48%	TPTYCDLGK	N	A	99.70%	29.7	1,441.61	1,551.31	1316630	4	12
2116	POSITIVE 2	Tubulin beta-5 chain OS=Mus musculus GN=Tubb5 PE=1 SV=1	TBB5_MOUSE	49,670.60	100.00%	5	11	16	0.23%	EAESCDCLQGFQLTHSLGGGTGSGMGTLLISK	K	I	99.70%	64.9	3,766.68	3,419.54	1655000	123	154
2117	POSITIVE 2	Tubulin beta-5 chain OS=Mus musculus GN=Tubb5 PE=1 SV=1	TBB5_MOUSE	49,670.60	100.00%	5	11	16	0.23%	KEAESCDCLQGFQLTHSLGGGTGSGMGTLLISK	R	I	99.40%	40.7	3,894.78	3,104.03	2265080	122	154
2118	POSITIVE 2	Pleckstrin homology-like domain family B member 1 OS=Mus musculus GN=Phldb1 PE=1 SV=1	PHLB1_MOUSE	150,073.70	98.90%	1	1	1	0.01%	SDEENLKEECSSTESTQQEHEDAPGAK	R	H	99.70%	34.7	3,422.39	1,125.11	118965	687	713
2119	POSITIVE 2	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	UN45B_MOUSE	103,641.30	100.00%	4	5	9	0.13%	NGVISALACMVK	K	A	99.70%	35.7	1,649.78	4,365.04	656040	0	0
2120	POSITIVE 2	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	UN45B_MOUSE	103,641.30	100.00%	4	5	9	0.13%	VVGQVPDLPSCLPLTDNTR	K	M	99.70%	70.7	2,468.19	3,074.87	2139140	334	352
2121	POSITIVE 2	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	DNM3A_MOUSE	101,672.10	100.00%	4	6	11	0.16%	FSVVCVEK	K	L	99.00%	42.8	1,354.61	1,960.25	4615340	332	339
2122	POSITIVE 2	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	DNM3A_MOUSE	101,672.10	100.00%	4	6	11	0.16%	LELQECLEHGR	K	I	99.70%	42	1,770.79	1,868.78	399753	809	819
2123	POSITIVE 2	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	DNM3A_MOUSE	101,672.10	100.00%	4	6	11	0.16%	LFPACHDSDESDSGK	K	A	99.70%	54.7	2,051.81	1,256.67	913940	379	393
2124	POSITIVE 2	CDKN2A-interacting protein OS=Mus musculus GN=Cdkn2aip PE=1 SV=1	CARF_MOUSE	59,744.70	98.90%	1	1	1	0.01%	SVYLGTGCGK	K	S	99.70%	31.8	1,428.62	1,356.29	629609	492	501
2125	POSITIVE 2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	9	15	57	0.80%	DLEEDHACIPIK	K	K	99.70%	34	1,826.81	1,959.42	2149730	560	571
2126	POSITIVE 2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	9	15	57	0.80%	KDEQERCITIK	R	S	99.70%	34.2	1,806.85	902.436	831888	61	71
2127	POSITIVE 2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	9	15	57	0.80%	VTDGALVVVDCVSGVCVQTETVLR	R	Q	99.70%	98.6	3,031.45	4,682.51	9912730	121	144
2128	POSITIVE 2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	9	15	57	0.80%	YVEPIEDVPCGNIVGLVGVDQFLVK	R	T	99.70%	100	3,146.55	4,165.81	518911	457	481
2129	POSITIVE 2	Leucine-rich repeat-containing protein 47 OS=Mus musculus GN=Lrrc47 PE=1 SV=1	LRC47_MOUSE	63,592.50	100.00%	2	2	3	0.04%	DGQCPLVVEQVR	K	V	99.70%	77.3	1,786.82	2,170.44	2218910	541	552
2130	POSITIVE 2	Chromatin assembly factor 1 subunit B OS=Mus musculus GN=Chaf1b PE=1 SV=1	CAF1B_MOUSE	63,132.60	98.90%	1	1	1	0.01%	TQDPSSPCTTPSPTTQSPAPSAIK	R	D	99.70%	105	2,843.28	1,782.26	411904	431	454
2131	POSITIVE 3	Alpha-enolase OS=Mus musculus GN=Eno1 PE=1 SV=3	ENOA_MOUSE	47,141.70	100.00%	3	4	10	0.15%	FGANAILGVSLAVCK	K	A	99.70%	66.7	1,906.95	3,721.95	395396	106	120
2132	POSITIVE 3	Constitutive coactivator of PPAR-gamma-like protein 1 OS=Mus musculus GN=FAM120A PE=1 SV=2	F120A_MOUSE	121,647.10	100.00%	2	4	5	0.07%	GSHMGTVQPIPCLLSMPTR	K	N	99.70%	55	2,469.15	2,837.15	3317380	518	536
2133	POSITIVE 3	Putative GTP-binding protein 6 OS=Mus musculus GN=Gtpbp6 PE=1 SV=1	GTPB6_MOUSE	56,474.80	100.00%	3	3	4	0.06%	GCQDITSVFLNVER	K	M	99.70%	55.3	2,024.92	3,188.71	918970	156	169
2134	POSITIVE 3	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	MTG1_MOUSE	36,679.20	100.00%	4	6	7	0.10%	HGLFGYVQHYALASACDQIEWVLK	R	N	99.70%	33.8	3,192.50	3,806.66	620809	246	269
2135	POSITIVE 3	ER membrane protein complex subunit 8 OS=Mus musculus GN=Emc8 PE=1 SV=1	EMC8_MOUSE	23,348.30	100.00%	2	3	4	0.06%	FTMDCAAPTIHVYEQHENR	K	W	99.70%	47.9	2,706.15	2,041.95	846865	129	147
2136	POSITIVE 3	Kinesin-like protein KIF20A OS=Mus musculus GN=Kif20a PE=2 SV=1	KI20A_MOUSE	99,878.70	100.00%	2	3	3	0.04%	AACIAEQYHTVLK	K	L	99.70%	46.9	1,890.88	1,761.27	1398260	805	817
2137	POSITIVE 3	T-complex protein 1 subunit zeta OS=Mus musculus GN=Cct6a PE=1 SV=3	TCPZ_MOUSE	58,005.50	100.00%	2	2	2	0.03%	NAIDDGCVVPGAGAVEVALAEALIK	K	Y	99.70%	80.9	2,839.40	4,367.83	596712	400	424
2138	POSITIVE 3	Reticulon-4 OS=Mus musculus GN=Rtn4 PE=1 SV=2	RTN4_MOUSE	126,616.00	100.00%	2	2	2	0.03%	EDLVCSAALHNPQESPATLTK	K	V	99.70%	55.1	2,668.23	2,193.24	1445120	315	335
2139	POSITIVE 3	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ANLN_MOUSE	122,795.40	100.00%	5	7	7	0.10%	EEANREVCLQSQSK	K	D	99.70%	41.3	2,064.91	968.928	528384	341	354
2140	POSITIVE 3	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ANLN_MOUSE	122,795.40	100.00%	5	7	7	0.10%	QNSVQEQPGTACLSK	K	S	99.70%	43.2	2,033.90	1,323.17	170920	221	235
2141	POSITIVE 3	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ANLN_MOUSE	122,795.40	100.00%	5	7	7	0.10%	WCVLSGNCISYWTYPDDER	R	R	99.70%	70.9	2,876.18	3,914.81	477143	1003	1021
2142	POSITIVE 3	Cytoskeleton-associated protein 5 OS=Mus musculus GN=Ckap5 PE=1 SV=1	CKAP5_MOUSE	225,641.70	100.00%	2	2	2	0.03%	HCTSSTLPK	R	S	99.70%	29	1,417.62	522.972	182969	426	434
2143	POSITIVE 3	Hsp90 co-chaperone Cdc37 OS=Mus musculus GN=Cdc37 PE=1 SV=1	CDC37_MOUSE	44,593.30	100.00%	2	2	2	0.03%	EELDRGCR	K	E	99.00%	36.2	1,421.59	496.29	225735	48	55
2144	POSITIVE 3	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	DYHC1_MOUSE	532,043.10	100.00%	4	4	5	0.07%	ICKSPNER	R	A	99.00%	37.6	1,390.62	386.991	4322180	4167	4174
2145	POSITIVE 3	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	SPTN1_MOUSE	284,600.80	100.00%	3	3	6	0.09%	CTELNQAWTSLGK	K	R	99.70%	65.8	1,894.84	2,549.29	1090180	1314	1326
2146	POSITIVE 3	Inosine-5'-monophosphate dehydrogenase 2 OS=Mus musculus GN=Impdh2 PE=1 SV=2	IMDH2_MOUSE	55,816.50	100.00%	2	4	5	0.07%	ARHGFCGIPITDTGR	K	M	99.70%	44.2	2,044.94	1,664.77	4980680	135	149
2147	POSITIVE 3	Membrane-associated guanylate kinase, WW and PDZ domain-containing protein 1 OS=Mus musculus GN=Magi1 PE=1 SV=1	MAGI1_MOUSE	161,974.30	99.00%	1	1	1	0.01%	ILAVNGCSITNK	R	S	99.70%	35.7	1,676.81	1,919.29	466438	1039	1050
2148	POSITIVE 3	Dihydrolipoyl dehydrogenase, mitochondrial OS=Mus musculus GN=Dld PE=1 SV=2	DLDH_MOUSE	54,272.40	100.00%	2	3	4	0.06%	VLGAHILGPGAGEMVNEAALALEYGASCEDIAR	R	V	99.70%	41.7	3,741.77	3,826.06	131814	450	482
2149	POSITIVE 3	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SYEP_MOUSE	170,080.30	100.00%	10	17	25	0.37%	VASVQVVVIPCGITNALSEEDREALMAK	R	C	99.60%	32.3	3,386.68	3,477.92	627160	1299	1326
2150	POSITIVE 3	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	STIP1_MOUSE	62,584.90	100.00%	4	8	12	0.18%	NKGNECFQK	K	G	99.70%	38.4	1,511.64	452.907	2288170	365	373
2151	POSITIVE 3	Early endosome antigen 1 OS=Mus musculus GN=Eea1 PE=1 SV=2	EEA1_MOUSE	160,915.40	99.00%	1	1	1	0.01%	LAEMEEIKCRQEK	K	E	99.70%	50.9	2,050.94	1,116.40	463802	1126	1138
2152	POSITIVE 3	Vacuolar protein sorting-associated protein 28 homolog OS=Mus musculus GN=Vps28 PE=1 SV=1	VPS28_MOUSE	25,452.90	100.00%	2	2	3	0.04%	CIADVVSLFITVMDKLR	R	L	99.70%	47.4	2,367.19	4,630.86	257595	128	144
2153	POSITIVE 3	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	CAP1_MOUSE	51,565.10	100.00%	5	7	10	0.15%	INSITVDNCKK	K	L	99.70%	35.7	1,678.79	985.584	401597	366	376
2154	POSITIVE 3	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	CAP1_MOUSE	51,565.10	100.00%	5	7	10	0.15%	NSLDCEIVSAK	K	S	99.70%	69.5	1,622.72	1,865.61	1270160	422	432
2155	POSITIVE 3	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	CAP1_MOUSE	51,565.10	100.00%	5	7	10	0.15%	TDGCHAYLSK	K	N	99.70%	46.7	1,538.64	908.394	774368	412	421
2156	POSITIVE 3	Aldehyde dehydrogenase X, mitochondrial OS=Mus musculus GN=Aldh1b1 PE=1 SV=1	AL1B1_MOUSE	57,553.50	100.00%	3	3	3	0.04%	AALPNPIPNPEICYNK	A	L	99.70%	33.4	2,198.04	2,672.96	1160260	25	40
2157	POSITIVE 3	Calreticulin OS=Mus musculus GN=Calr PE=1 SV=1	CALR_MOUSE	47,996.10	100.00%	2	2	2	0.03%	CKDDEFTHLYTLIVRPDNTYEVK	R	I	99.70%	39.7	3,243.51	2,931.68	600921	163	185
2158	POSITIVE 3	2-amino-3-ketobutyrate coenzyme A ligase, mitochondrial OS=Mus musculus GN=Gcat PE=1 SV=2	KBL_MOUSE	44,931.90	100.00%	3	4	6	0.09%	CILDSELEGIRGAGTWK	R	S	99.70%	29.8	2,292.08	2,734.10	241251	26	42
2159	POSITIVE 3	Transitional endoplasmic reticulum ATPase OS=Mus musculus GN=Vcp PE=1 SV=4	TERA_MOUSE	89,324.80	100.00%	3	5	9	0.13%	AIANECQANFISIK	K	G	99.70%	96.1	1,965.92	2,349.65	1670930	530	543
2160	POSITIVE 3	Pre-mRNA-processing factor 19 OS=Mus musculus GN=Prpf19 PE=1 SV=1	PRP19_MOUSE	55,239.30	100.00%	2	2	3	0.04%	QELSHALYQHDAACR	R	V	99.70%	44.8	2,185.95	1,196.40	826719	101	115
2161	POSITIVE 3	Probable ATP-dependent RNA helicase DDX17 OS=Mus musculus GN=Ddx17 PE=1 SV=1	DDX17_MOUSE	72,401.00	100.00%	2	3	3	0.04%	TTSSANNPNLMYQDECDRR	R	L	99.70%	52.5	2,659.09	1,407.68	1890110	490	508
2162	POSITIVE 3	Inositol 1,4,5-trisphosphate receptor type 1 OS=Mus musculus GN=Itpr1 PE=1 SV=2	ITPR1_MOUSE	313,170.20	100.00%	2	2	3	0.04%	LLQAPFTDCGDGPMLR	K	L	99.70%	51.2	2,177.98	2,942.48	2037490	522	537
2163	POSITIVE 3	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	PYGB_MOUSE	96,732.50	100.00%	6	16	34	0.50%	WLLLCNPGLAEIIVER	R	I	99.70%	42.9	2,283.16	4,161.08	308747	492	507
2164	POSITIVE 3	Voltage-dependent anion-selective channel protein 1 OS=Mus musculus GN=Vdac1 PE=1 SV=3	VDAC1_MOUSE	32,352.70	100.00%	2	3	7	0.10%	REHINLGCDVDFDIAGPSIR	K	G	99.70%	56	2,671.24	2,613.20	883945	133	152
2165	POSITIVE 3	GDP-mannose 4,6 dehydratase OS=Mus musculus GN=Gmds PE=1 SV=1	GMDS_MOUSE	41,985.20	100.00%	2	2	3	0.04%	IYLGQLECFSLGNLDAK	K	R	99.70%	72.3	2,328.10	3,697.98	1021440	230	246
2166	POSITIVE 3	E3 ubiquitin-protein ligase UBR4 OS=Mus musculus GN=Ubr4 PE=1 SV=1	UBR4_MOUSE	572,290.60	100.00%	2	2	2	0.03%	LIASCHWK	K	V	99.00%	36.8	1,401.64	1,300.51	1098910	4187	4194
2167	POSITIVE 3	39S ribosomal protein L44, mitochondrial OS=Mus musculus GN=Mrpl44 PE=1 SV=3	RM44_MOUSE	37,528.10	100.00%	4	5	8	0.12%	QSGSTTALPLYFVGLYCDRK	R	L	99.70%	39	2,663.26	3,262.83	769747	260	279
2168	POSITIVE 3	Obscurin-like protein 1 OS=Mus musculus GN=Obsl1 PE=1 SV=1	OBSL1_MOUSE	197,930.00	100.00%	2	2	2	0.03%	AGSGDQGSPPCFLR	K	F	99.70%	62.4	1,835.78	1,992.23	1914350	3	16
2169	POSITIVE 3	Phosphatidylinositol transfer protein beta isoform OS=Mus musculus GN=Pitpnb PE=1 SV=2	PIPNB_MOUSE	31,487.30	100.00%	2	2	2	0.03%	ELANTPDCPR	K	M	99.70%	29.2	1,559.66	1,182.37	1169510	180	189
2170	POSITIVE 3	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MYH9_MOUSE	226,378.00	100.00%	5	10	13	0.19%	MEDGVGCLETAEEAK	K	R	99.70%	68.9	2,025.82	2,072.42	2838520	1373	1387
2171	POSITIVE 3	La-related protein 1 OS=Mus musculus GN=Larp1 PE=1 SV=3	LARP1_MOUSE	121,127.00	99.00%	1	1	1	0.01%	RCPSQSSSRPATGISQPPTTPTGQATR	K	E	99.70%	42	3,213.51	1,195.23	206611	1029	1055
2172	POSITIVE 3	Nuclear factor 1 B-type OS=Mus musculus GN=Nfib PE=1 SV=2	NFIB_MOUSE	63,507.40	100.00%	2	2	2	0.03%	MMYSPICLTQDEFHPFIEALLPHVR	-	A	99.70%	34.7	3,473.62	4,473.27	187264	1	25
2173	POSITIVE 3	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	SERA_MOUSE	56,585.20	100.00%	6	10	19	0.28%	NAGECLSPAVIVGLLR	K	E	99.70%	46.5	2,056.03	3,985.27	852345	0	0
2174	POSITIVE 3	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	COPB_MOUSE	107,069.60	100.00%	4	4	6	0.09%	VCHANPSER	K	A	99.70%	31.2	1,456.61	404.022	67,462.90	234	242
2175	POSITIVE 3	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	CSDE1_MOUSE	88,791.10	100.00%	5	10	12	0.18%	LFFHCSQYNGNLQDLK	R	V	99.70%	61.2	2,371.06	2,375.09	594381	49	64
2176	POSITIVE 3	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	SYAC_MOUSE	106,911.00	100.00%	5	6	8	0.12%	KIQSLGDCK	R	T	99.70%	31.8	1,435.67	830.202	497460	396	404
2177	POSITIVE 3	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	MYLK_MOUSE	212,922.80	100.00%	4	5	5	0.07%	DNIRQEISIMNCLHHPK	K	L	99.70%	38.3	2,492.16	1,976.41	2057100	1526	1542
2178	POSITIVE 3	Aconitate hydratase, mitochondrial OS=Mus musculus GN=Aco2 PE=1 SV=1	ACON_MOUSE	85,465.90	100.00%	3	6	7	0.10%	DVGGIVLANACGPCIGQWDR	R	K	99.70%	37.7	2,613.16	3,682.67	667712	438	457
2179	POSITIVE 3	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	PCBP1_MOUSE	37,498.20	100.00%	3	5	8	0.12%	CSDAAGYPHATHDLEGPPLDAYSIQGQHTISPLDLAK	R	L	99.70%	39.9	4,332.99	2,790.62	3098830	201	237
2180	POSITIVE 3	Rho guanine nucleotide exchange factor 2 OS=Mus musculus GN=Arhgef2 PE=1 SV=4	ARHG2_MOUSE	111,977.60	100.00%	2	2	2	0.03%	DLLLGPCVDLPMTSR	K	E	99.70%	57.6	2,073.98	3,570.73	751136	668	682
2181	POSITIVE 3	Caspase-8 OS=Mus musculus GN=Casp8 PE=1 SV=1	CASP8_MOUSE	55,359.30	100.00%	3	4	6	0.09%	DRKGTDCDKEALSK	K	T	99.70%	33.7	2,009.90	424.86	339030	261	274
2182	POSITIVE 3	E3 ubiquitin-protein ligase TRIP12 OS=Mus musculus GN=Trip12 PE=1 SV=1	TRIPC_MOUSE	224,132.30	100.00%	2	2	3	0.04%	TFESTENPDDFLPSVMTCVNYLK	K	L	99.70%	32.8	3,094.35	3,890.89	346526	1975	1997
2183	POSITIVE 3	Membrane-associated progesterone receptor component 2 OS=Mus musculus GN=Pgrmc2 PE=1 SV=2	PGRC2_MOUSE	23,334.90	100.00%	3	4	6	0.09%	RGLCSGPGAGEESPAATLPR	R	M	99.70%	34.9	2,370.09	1,727.51	1837480	72	91
2184	POSITIVE 3	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	TPP2_MOUSE	139,882.30	100.00%	5	6	11	0.16%	VALAEACRK	R	Q	99.70%	31.7	1,404.67	869.544	731099	144	152
2185	POSITIVE 3	STIP1 homology and U box-containing protein 1 OS=Mus musculus GN=Stub1 PE=1 SV=1	CHIP_MOUSE	34,910.20	100.00%	2	3	6	0.09%	ERELEECQRNHEGHEDDGHIR	R	A	99.70%	43.2	3,032.27	673.014	975736	175	195
2186	POSITIVE 3	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	6	6	7	0.10%	EATTIPSCK	K	K	99.70%	32.9	1,393.61	1,111.32	539110	1671	1679
2187	POSITIVE 3	Nascent polypeptide-associated complex subunit alpha, muscle-specific form OS=Mus musculus GN=Naca PE=1 SV=2	NACAM_MOUSE	220,498.50	100.00%	6	6	7	0.10%	EATTIPSCKK	K	A	99.00%	27.9	1,521.70	798.138	375748	1671	1680
2188	POSITIVE 3	40S ribosomal protein S12 OS=Mus musculus GN=Rps12 PE=1 SV=2	RS12_MOUSE	14,524.90	100.00%	2	3	5	0.07%	DVIEEYFKCK	K	-	99.70%	38	1,717.76	2,324.04	5339970	122	131
2189	POSITIVE 3	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLU_MOUSE	148,071.40	100.00%	5	8	10	0.15%	GLEMDPIDCTPPEYILPGSR	K	E	99.70%	45	2,647.18	3,370.51	751484	176	195
2190	POSITIVE 3	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial OS=Mus musculus GN=Idh3g PE=1 SV=1	IDHG1_MOUSE	42,785.60	100.00%	4	6	11	0.16%	LGDGLFLQCCR	K	E	99.70%	37.8	1,793.78	3,003.05	546220	227	237
2191	POSITIVE 3	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	RINI_MOUSE	49,817.90	100.00%	4	5	6	0.09%	LDDCGLTEVR	R	C	99.70%	59.2	1,564.67	1,911.38	1270170	30	39
2192	POSITIVE 3	Microtubule-associated protein 1B OS=Mus musculus GN=Map1b PE=1 SV=2	MAP1B_MOUSE	270,255.10	100.00%	5	5	6	0.09%	GSAESPDEGITTTEGEGECEQTPEELEPVEK	K	Q	99.70%	113	3,721.55	2,338.36	395069	884	914
2193	POSITIVE 3	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	PPCE_MOUSE	80,753.40	100.00%	4	4	8	0.12%	FTIGHAWTTDYGCSDTK	K	Q	99.70%	49.1	2,346.98	2,203.25	704168	589	605
2194	POSITIVE 3	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	SYNE2_MOUSE	782,735.30	100.00%	6	6	9	0.13%	DKGSNTFQCR	R	I	99.70%	34.7	1,599.66	762.546	181871	82	91
2195	POSITIVE 3	Protein PRRC2C OS=Mus musculus GN=Prrc2c PE=1 SV=3	PRC2C_MOUSE	310,888.30	99.00%	1	1	1	0.01%	HVDTNTQSACFDVIDQK	R	S	99.70%	73.6	2,365.02	1,873.24	433875	861	877
2196	POSITIVE 3	Adenosine kinase OS=Mus musculus GN=Adk PE=1 SV=2	ADK_MOUSE	40,149.50	100.00%	2	3	4	0.06%	SLVANLAAANCYKK	R	E	99.70%	44.4	1,909.93	1,858.12	809053	149	162
2197	POSITIVE 3	5-oxoprolinase OS=Mus musculus GN=Oplah PE=1 SV=1	OPLA_MOUSE	137,610.60	99.00%	1	1	1	0.01%	LLPASFPCIFGPGEDQPLSPEASR	R	K	99.70%	44.9	2,972.39	3,716.41	583059	401	424
2198	POSITIVE 3	Annexin A11 OS=Mus musculus GN=Anxa11 PE=1 SV=2	ANX11_MOUSE	54,081.40	100.00%	2	3	7	0.10%	FNAILCSR	K	S	99.00%	31.2	1,367.62	1,909.68	1019810	377	384
2199	POSITIVE 3	LIM domain-binding protein 3 OS=Mus musculus GN=Ldb3 PE=1 SV=1	LDB3_MOUSE	76,432.10	100.00%	2	2	4	0.06%	ASPGALEFGDTFSSSFSQTSVCSPLMEASGPVLPLGSPVAK	R	A	99.70%	46.3	4,501.09	4,207.82	71,898.20	128	168
2200	POSITIVE 3	Tubulin-specific chaperone D OS=Mus musculus GN=Tbcd PE=1 SV=1	TBCD_MOUSE	133,323.40	100.00%	2	2	2	0.03%	RGACSVGANVR	K	D	99.70%	35	1,533.70	796.152	424361	456	466
2201	POSITIVE 3	FH1/FH2 domain-containing protein 1 OS=Mus musculus GN=Fhod1 PE=1 SV=3	FHOD1_MOUSE	129,603.30	100.00%	2	2	2	0.03%	VQYLEDTDPFACANFPEPR	R	R	99.70%	49	2,656.14	3,201.21	711742	20	38
2202	POSITIVE 3	Nuclear factor 1 A-type OS=Mus musculus GN=Nfia PE=1 SV=1	NFIA_MOUSE	58,553.60	100.00%	2	4	9	0.13%	EFVQLVCPDAGQQAGQVGFLNPNGSSQGK	K	V	99.70%	94.7	3,419.57	3,149.51	415479	421	449
2203	POSITIVE 3	Ubiquitin carboxyl-terminal hydrolase isozyme L1 OS=Mus musculus GN=Uchl1 PE=1 SV=1	UCHL1_MOUSE	24,838.20	100.00%	3	5	5	0.07%	NEAIQAAHDSVAQEGQCRVDDK	K	V	99.70%	35.8	2,828.23	1,345.24	1025170	136	157
2204	POSITIVE 3	Cullin-associated NEDD8-dissociated protein 2 OS=Mus musculus GN=Cand2 PE=1 SV=2	CAND2_MOUSE	135,636.30	100.00%	3	3	4	0.06%	CESPEEGTRCVVAECIGK	R	L	99.70%	48.8	2,604.08	2,960.48	581334	944	961
2205	POSITIVE 3	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	RIR2_MOUSE	45,097.00	100.00%	3	4	4	0.06%	EREYLFNAIETMPCVK	K	K	99.70%	40.9	2,387.08	2,870.58	1110170	190	205
2206	POSITIVE 3	Conserved oligomeric Golgi complex subunit 1 OS=Mus musculus GN=Cog1 PE=1 SV=3	COG1_MOUSE	109,052.50	100.00%	2	2	3	0.04%	FLICGFTR	K	S	99.00%	45.9	1,400.65	2,660.58	1237610	690	697
2207	POSITIVE 3	Heat shock protein HSP 90-beta OS=Mus musculus GN=Hsp90ab1 PE=1 SV=3	HS90B_MOUSE	83,284.30	100.00%	4	10	22	0.32%	LVSDPCCIVTSTYGWTANMER	R	I	99.70%	42.2	2,915.25	3,792.75	1577350	0	0
2208	POSITIVE 3	Proteasome assembly chaperone 1 OS=Mus musculus GN=Psmg1 PE=1 SV=1	PSMG1_MOUSE	33,103.90	100.00%	3	6	8	0.12%	SDPSVFLCQCSCYIAEDQQFQWLEK	K	V	99.70%	88.6	3,661.54	4,348.30	335617	129	153
2209	POSITIVE 3	GrpE protein homolog 1, mitochondrial OS=Mus musculus GN=Grpel1 PE=1 SV=1	GRPE1_MOUSE	24,307.60	100.00%	3	11	17	0.25%	QKNNGQNLDEDLGHCEPK	K	T	99.70%	47.3	2,484.05	1,279.99	1124140	33	50
2210	POSITIVE 3	rRNA methyltransferase 1, mitochondrial OS=Mus musculus GN=Mrm1 PE=2 SV=2	MRM1_MOUSE	34,843.60	100.00%	2	2	3	0.04%	AQQGWLVVGTVGCPGPEISQSSK	K	V	99.70%	81.6	2,772.31	2,884.79	588132	213	235
2211	POSITIVE 3	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	7	9	27	0.40%	DERYCSKPPGPAEAVGYFLYNLIDSMSDSEVQAK	K	E	99.70%	36.3	4,223.90	4,479.06	1257320	566	599
2212	POSITIVE 3	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	LPPRC_MOUSE	156,622.20	100.00%	7	9	27	0.40%	VFEDTCSSGSPGSNQALLLLR	R	S	99.70%	48.3	2,638.22	3,098.76	856114	0	0
2213	POSITIVE 3	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	ECI1_MOUSE	32,251.50	100.00%	4	8	9	0.13%	GVIRTSECPGIFSAGLDLLEMYGR	R	N	99.70%	45.9	3,028.43	4,764.76	794723	0	0
2214	POSITIVE 3	60 kDa heat shock protein, mitochondrial OS=Mus musculus GN=Hspd1 PE=1 SV=1	CH60_MOUSE	60,956.80	100.00%	2	2	3	0.04%	CEFQDAYVLLSEKK	K	I	99.70%	43.4	2,116.97	2,547.67	811087	237	250
2215	POSITIVE 3	Porphobilinogen deaminase OS=Mus musculus GN=Hmbs PE=1 SV=2	HEM3_MOUSE	39,344.80	100.00%	3	4	4	0.06%	ENPCDAVVFHPK	R	F	99.70%	41.4	1,799.78	1,683.07	2170270	117	128
2216	POSITIVE 3	Sister chromatid cohesion protein PDS5 homolog A OS=Mus musculus GN=Pds5a PE=1 SV=3	PDS5A_MOUSE	150,332.90	100.00%	3	3	3	0.04%	SALCNADSPKDPVLPMK	K	F	99.30%	27.9	2,230.03	1,959.76	907577	1089	1105
2217	POSITIVE 3	Dedicator of cytokinesis protein 6 OS=Mus musculus GN=Dock6 PE=1 SV=4	DOCK6_MOUSE	233,270.90	100.00%	2	2	3	0.04%	TGPFCLPVSVDQPPPSYSVLTPDVALPGMR	R	W	99.70%	80.6	3,584.72	4,238.90	297519	667	696
2218	POSITIVE 3	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	SGT1_MOUSE	38,160.00	100.00%	4	5	9	0.13%	GICEYHEK	K	D	99.00%	39.2	1,422.58	815.679	1331990	86	93
2219	POSITIVE 3	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	MACF1_MOUSE	831,886.50	100.00%	4	4	5	0.07%	SVCIPDMMPHIQLADSAEQSK	R	V	99.70%	34.2	2,744.22	3,056.91	741058	1924	1944
2220	POSITIVE 3	Squamous cell carcinoma antigen recognized by T-cells 3 OS=Mus musculus GN=Sart3 PE=1 SV=1	SART3_MOUSE	109,620.20	100.00%	2	2	4	0.06%	CLTIDVGPPSK	K	Q	99.70%	65.8	1,573.74	2,227.05	1974370	670	680
2221	POSITIVE 3	Nocturnin OS=Mus musculus GN=Noct PE=1 SV=3	NOCT_MOUSE	48,302.00	99.00%	1	1	1	0.01%	SAQGCDLLQNLQNITQGAK	R	I	99.70%	80.8	2,446.15	3,227.42	1557530	296	314
2222	POSITIVE 3	Ribonucleoside-diphosphate reductase large subunit OS=Mus musculus GN=Rrm1 PE=1 SV=2	RIR1_MOUSE	90,213.90	100.00%	3	3	3	0.04%	NQIIACNGSIQSIPEIPDDLK	K	Q	99.70%	43.7	2,712.30	3,117.06	741010	657	677
2223	POSITIVE 3	Cytosolic acyl coenzyme A thioester hydrolase OS=Mus musculus GN=Acot7 PE=1 SV=2	BACH_MOUSE	42,536.00	100.00%	2	2	3	0.04%	GCVITISGR	K	M	99.70%	54.5	1,349.63	1,804.47	1757040	288	296
2224	POSITIVE 3	Kinesin light chain 1 OS=Mus musculus GN=Klc1 PE=1 SV=3	KLC1_MOUSE	61,451.30	100.00%	2	3	3	0.04%	LCQENQWLRDELANTQQK	R	L	99.70%	38.2	2,661.21	2,416.54	1092690	113	130
2225	POSITIVE 3	UDP-N-acetylhexosamine pyrophosphorylase-like protein 1 OS=Mus musculus GN=Uap1l1 PE=1 SV=1	UAP1L_MOUSE	56,613.80	100.00%	3	3	6	0.09%	NDDTADRDNPSTCRR	K	A	99.70%	39.4	2,179.88	431.676	394517	411	425
2226	POSITIVE 3	UDP-N-acetylhexosamine pyrophosphorylase-like protein 1 OS=Mus musculus GN=Uap1l1 PE=1 SV=1	UAP1L_MOUSE	56,613.80	100.00%	3	3	6	0.09%	VGSAIRCDQETR	R	L	99.70%	58	1,778.79	824.058	902187	79	90
2227	POSITIVE 3	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	STK39_MOUSE	60,320.50	100.00%	5	7	11	0.16%	EGPCAVNLVLR	R	L	99.70%	49.7	1,614.77	2,501.53	1318270	458	468
2228	POSITIVE 3	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	STK39_MOUSE	60,320.50	100.00%	5	7	11	0.16%	EIQAMSQCSHPNVVTYYTSFVVK	K	D	99.40%	28	3,075.40	3,034.61	365243	121	143
2229	POSITIVE 3	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	5	7	13	0.19%	GCDVVVIPAGVPR	K	K	99.70%	83.9	1,725.84	2,601.28	845073	92	104
2230	POSITIVE 3	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	MDHM_MOUSE	35,611.90	100.00%	5	7	13	0.19%	GYLGPEQLPDCLK	K	G	99.70%	36.1	1,876.86	2,617.52	1106460	79	91
2231	POSITIVE 3	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	PFKAP_MOUSE	85,456.90	100.00%	4	5	105	1.54%	KFVSDDSICVLGICK	K	R	99.70%	50.7	2,196.01	2,805.31	864116	709	723
2232	POSITIVE 3	26S proteasome non-ATPase regulatory subunit 9 OS=Mus musculus GN=Psmd9 PE=1 SV=1	PSMD9_MOUSE	24,719.60	100.00%	3	4	5	0.07%	GIGMNEPLVDCEGYPRADVDLYQVR	K	T	99.70%	36.5	3,253.47	2,938.52	2034120	49	73
2233	POSITIVE 3	Copine-1 OS=Mus musculus GN=Cpne1 PE=1 SV=1	CPNE1_MOUSE	58,886.00	100.00%	3	5	6	0.09%	NCSSPEFSK	R	T	99.70%	41.1	1,442.57	1,082.01	2056600	51	59
2234	POSITIVE 3	Copine-1 OS=Mus musculus GN=Cpne1 PE=1 SV=1	CPNE1_MOUSE	58,886.00	100.00%	3	5	6	0.09%	SDPLCVLLQDVGGAWAELCR	K	T	99.70%	38.2	2,714.24	4,550.77	280660	26	45
2235	POSITIVE 3	Ubiquitin-conjugating enzyme E2 N OS=Mus musculus GN=Ube2n PE=1 SV=1	UBE2N_MOUSE	17,138.60	100.00%	3	4	5	0.07%	LGRICLDILK	K	D	99.70%	51	1,587.83	2,537.23	492067	83	92
2236	POSITIVE 3	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HXK2_MOUSE	102,536.60	100.00%	5	8	12	0.18%	FRSQIESDCLALLQVR	K	A	98.90%	28.7	2,322.13	4,480.97	714488	0	0
2237	POSITIVE 3	Mothers against decapentaplegic homolog 2 OS=Mus musculus GN=Smad2 PE=1 SV=2	SMAD2_MOUSE	52,265.70	100.00%	2	2	2	0.03%	SAGGSGGAGGGEQNGQEEKWCEK	K	A	99.60%	32.2	2,667.08	1,034.38	269887	21	43
2238	POSITIVE 3	Receptor of activated protein C kinase 1 OS=Mus musculus GN=Rack1 PE=1 SV=3	RACK1_MOUSE	35,077.00	100.00%	2	2	2	0.03%	LWNTLGVCK	K	Y	99.70%	33.6	1,477.69	2,245.56	1308170	131	139
2239	POSITIVE 3	Receptor of activated protein C kinase 1 OS=Mus musculus GN=Rack1 PE=1 SV=3	RACK1_MOUSE	35,077.00	100.00%	2	2	2	0.03%	VWNLANCK	K	L	99.00%	41.8	1,391.62	1,801.24	875057	176	183
2240	POSITIVE 3	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ECHA_MOUSE	82,671.50	100.00%	3	5	7	0.10%	SAVLISSKPGCFVAGADINMLSSCTTPQEATR	R	I	99.70%	31.4	3,823.78	3,181.30	177708	87	118
2241	POSITIVE 3	Pleckstrin homology-like domain family B member 1 OS=Mus musculus GN=Phldb1 PE=1 SV=1	PHLB1_MOUSE	150,073.70	99.00%	1	1	1	0.01%	CGEESGGASQR	R	L	99.70%	40.7	1,524.58	387.936	1131670	669	679
2242	POSITIVE 3	Bleomycin hydrolase OS=Mus musculus GN=Blmh PE=1 SV=1	BLMH_MOUSE	52,510.80	100.00%	4	6	15	0.22%	CFPESHTTEATRR	K	M	99.70%	50.9	1,978.85	833.028	372323	164	176
2243	POSITIVE 3	Bleomycin hydrolase OS=Mus musculus GN=Blmh PE=1 SV=1	BLMH_MOUSE	52,510.80	100.00%	4	6	15	0.22%	LNSDPQFVLAQNVGTTHDLLDICLRR	K	A	99.70%	48.2	3,382.66	3,126.05	1349030	18	43
2244	POSITIVE 3	Putative transferase CAF17 homolog, mitochondrial OS=Mus musculus GN=Iba57 PE=1 SV=1	CAF17_MOUSE	38,399.40	100.00%	3	5	7	0.10%	VTVEPSPELHVWAVLPCVPQTSETAPLEER	K	V	99.70%	47.9	3,757.82	3,402.34	189950	150	179
2245	POSITIVE 3	SUN domain-containing protein 1 OS=Mus musculus GN=Sun1 PE=1 SV=2	SUN1_MOUSE	101,977.70	99.00%	1	1	3	0.04%	TSCEQAGAR	K	I	99.70%	48.5	1,366.55	415.476	479060	633	641
2246	POSITIVE 3	Nucleolar RNA helicase 2 OS=Mus musculus GN=Ddx21 PE=1 SV=3	DDX21_MOUSE	93,553.30	100.00%	2	4	5	0.07%	DSEDNPQTLLFSATCPHWVFNVAK	K	K	99.70%	35.1	3,163.43	3,744.92	839358	436	459
2247	POSITIVE 3	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	MAP1S_MOUSE	102,939.90	100.00%	3	5	6	0.09%	SWEDVDPAVCSLDEQLK	R	A	99.70%	39.3	2,378.03	3,158.09	781417	45	61
2248	POSITIVE 3	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	NAA15_MOUSE	100,966.20	100.00%	5	11	12	0.18%	NLQTCMEVLEALCDGSLGDCK	R	E	99.70%	29.8	2,936.22	4,477.46	354422	797	817
2249	POSITIVE 3	Opioid growth factor receptor OS=Mus musculus GN=Ogfr PE=1 SV=1	OGFR_MOUSE	70,678.60	100.00%	2	2	2	0.03%	EAEQPCLVAR	R	V	99.70%	42.1	1,559.69	1,473.41	2076220	411	420
2250	POSITIVE 3	Cytosolic 5'-nucleotidase 3A OS=Mus musculus GN=Nt5c3a PE=1 SV=4	5NT3A_MOUSE	37,252.90	100.00%	2	2	3	0.04%	IKNPTRVEEIICGLIK	R	G	99.70%	39.7	2,270.20	2,900.17	1128160	57	72
2251	POSITIVE 3	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	SYLM_MOUSE	101,481.70	100.00%	3	4	6	0.09%	EALVNWDPVDQTVLANEQVNEYGCDWR	K	S	99.70%	38.1	3,607.59	3,835.64	261783	0	0
2252	POSITIVE 3	Kinectin OS=Mus musculus GN=Ktn1 PE=1 SV=1	KTN1_MOUSE	152,593.40	100.00%	3	4	5	0.07%	EITDLCNELESLK	K	N	99.70%	35.8	1,950.88	3,055.18	798136	983	995
2253	POSITIVE 3	Cysteine-rich protein 2 OS=Mus musculus GN=Crip2 PE=1 SV=1	CRIP2_MOUSE	22,726.60	100.00%	2	3	3	0.04%	DWHRPCLR	K	C	99.00%	34.4	1,526.67	1,230.85	1086620	145	152
2254	POSITIVE 3	Mitochondrial carnitine/acylcarnitine carrier protein OS=Mus musculus GN=Slc25a20 PE=1 SV=1	MCAT_MOUSE	33,028.20	100.00%	2	3	4	0.06%	YSGTLDCAK	K	K	99.70%	30.1	1,401.58	1,087.60	449247	149	157
2255	POSITIVE 3	Lamina-associated polypeptide 2, isoforms alpha/zeta OS=Mus musculus GN=Tmpo PE=1 SV=4	LAP2A_MOUSE	75,169.20	100.00%	3	3	3	0.04%	DIVENICR	K	G	99.00%	31.2	1,405.62	1,916.05	274295	322	329
2256	POSITIVE 3	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	19	35	180	2.63%	IVSNASCTENCLAPLAK	K	V	99.70%	47.3	2,303.05	2,712.47	7153860	0	0
2257	POSITIVE 3	60S acidic ribosomal protein P0 OS=Mus musculus GN=Rplp0 PE=1 SV=3	RLA0_MOUSE	34,217.50	100.00%	2	4	5	0.07%	AGAIAPCEVEVPAQNTGLGPEK	R	T	99.70%	39.4	2,595.22	2,534.30	780094	0	0
2258	POSITIVE 3	A-kinase anchor protein 1, mitochondrial OS=Mus musculus GN=Akap1 PE=1 SV=4	AKAP1_MOUSE	92,194.40	100.00%	4	4	5	0.07%	GKEESCVPASQETSLGQDTSDPASTR	K	T	99.50%	32.7	3,124.34	1,583.90	744607	347	372
2259	POSITIVE 3	A-kinase anchor protein 1, mitochondrial OS=Mus musculus GN=Akap1 PE=1 SV=4	AKAP1_MOUSE	92,194.40	100.00%	4	4	5	0.07%	NSAHHISLAPCPPPVTPQR	K	Q	99.70%	33.8	2,466.18	1,615.83	1306390	408	426
2260	POSITIVE 3	Oxysterol-binding protein-related protein 11 OS=Mus musculus GN=Osbpl11 PE=1 SV=2	OSB11_MOUSE	83,629.40	100.00%	2	2	2	0.03%	NSGNSSCGGAISSSSSNSSR	K	G	99.70%	123	2,289.91	808.266	296287	31	50
2261	POSITIVE 3	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	M3K20_MOUSE	91,721.60	100.00%	4	4	8	0.12%	AEWRCEIEATLER	K	L	99.70%	30.5	2,049.91	2,565.07	888988	281	293
2262	POSITIVE 3	Ubiquitin carboxyl-terminal hydrolase 24 OS=Mus musculus GN=Usp24 PE=1 SV=1	UBP24_MOUSE	294,006.70	100.00%	3	3	4	0.06%	QLCSPVDNIQIFTNDSLLTVNK	K	D	99.70%	40.6	2,906.40	3,813.56	622209	990	1011
2263	POSITIVE 3	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	3	9	15	0.22%	IVVHMAHALKPGEFGLASICNGGGGASALLIEK	R	-	98.50%	33.9	3,704.87	2,848.36	1559080	391	423
2264	POSITIVE 3	ATP-dependent RNA helicase DDX1 OS=Mus musculus GN=Ddx1 PE=1 SV=1	DDX1_MOUSE	82,501.10	100.00%	2	4	6	0.09%	VWYHVCSNR	K	G	99.70%	32.7	1,607.68	1,372.30	549040	626	634
2265	POSITIVE 3	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	DNMT1_MOUSE	183,191.50	100.00%	7	10	12	0.18%	ANGCPANGSRPTWR	K	A	99.70%	29.8	1,930.84	1,061.90	159913	103	116
2266	POSITIVE 3	Electron transfer flavoprotein subunit beta OS=Mus musculus GN=Etfb PE=1 SV=3	ETFB_MOUSE	27,623.20	100.00%	2	2	2	0.03%	EIIAVSCGPSQCQETIR	K	T	99.70%	33.4	2,403.07	2,578.97	1403940	60	76
2267	POSITIVE 3	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	GCN1_MOUSE	293,027.10	100.00%	3	4	5	0.07%	SWCQEELPVAVR	K	R	99.70%	80.6	1,860.84	2,562.05	1303400	937	948
2268	POSITIVE 3	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	GCN1_MOUSE	293,027.10	100.00%	3	4	5	0.07%	VLQEALCVISGVPGLK	R	G	99.70%	87.1	2,070.07	3,468.71	1112130	642	657
2269	POSITIVE 3	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	NOP56_MOUSE	64,466.20	100.00%	5	6	6	0.09%	LVAFCPFSSSQVALENANAVSEGVVHEDLR	R	L	99.70%	43.8	3,632.71	3,594.51	212702	48	77
2270	POSITIVE 3	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	IF4G1_MOUSE	176,080.10	100.00%	4	4	5	0.07%	LPGINCGPDFTPSFANLGRPALSNR	R	G	99.70%	43.5	3,058.46	3,118.95	562943	661	685
2271	POSITIVE 3	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	IF4G1_MOUSE	176,080.10	100.00%	4	4	5	0.07%	QLDPSRLPGINCGPDFTPSFANLGRPALSNR	R	G	99.70%	36.7	3,754.82	3,093.26	7188950	655	685
2272	POSITIVE 3	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	ANM1_MOUSE	42,436.10	100.00%	5	8	14	0.21%	GQLCELSCSTDYR	K	M	99.70%	57	2,043.82	2,332.91	1589260	357	369
2273	POSITIVE 3	Exportin-5 OS=Mus musculus GN=Xpo5 PE=1 SV=1	XPO5_MOUSE	136,976.80	100.00%	3	4	4	0.06%	AVMEQIPEINKESLDQFDCK	R	L	99.70%	49.8	2,781.25	2,664.13	450989	1113	1132
2274	POSITIVE 3	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	FLNC_MOUSE	291,111.80	100.00%	7	10	14	0.21%	CTYRPVMEGPHTVHVAFAGAPITR	R	S	99.70%	39.8	3,054.45	2,084.48	1866310	439	462
2275	POSITIVE 3	Kinesin-1 heavy chain OS=Mus musculus GN=Kif5b PE=1 SV=3	KINH_MOUSE	109,552.60	100.00%	2	2	2	0.03%	DNADLRCELPK	R	L	99.70%	34.5	1,717.76	1,642.39	2730680	852	862
2276	POSITIVE 3	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	TLN1_MOUSE	269,819.30	100.00%	4	5	8	0.12%	HTSALCNSCR	K	L	99.70%	35.2	1,660.66	1,028.47	1738010	1501	1510
2277	POSITIVE 3	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	TLN1_MOUSE	269,819.30	100.00%	4	5	8	0.12%	QELAVFCSPEPPAK	R	T	99.70%	60.8	1,959.89	2,356.41	2183230	2155	2168
2278	POSITIVE 3	Nexilin OS=Mus musculus GN=Nexn PE=1 SV=3	NEXN_MOUSE	72,109.30	100.00%	2	2	2	0.03%	MRYEEECR	K	V	99.00%	40.6	1,559.60	805.86	527420	143	150
2279	POSITIVE 3	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	UN45B_MOUSE	103,641.30	100.00%	4	5	9	0.13%	LYDDLRCDPERDHFRK	K	I	99.10%	31.9	2,522.13	1,284.34	3404660	362	377
2280	POSITIVE 3	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	EF2_MOUSE	95,316.00	100.00%	10	15	64	0.94%	LMEPIYLVEIQCPEQVVGGIYGVLNR	R	K	99.70%	45	3,377.66	4,396.80	303764	740	765
2281	NEGATIVE 1	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,604.60	100.00%	2	2	3	0.21%	VDEFPFCGHMVSDEYEQLSSEALEAAR	K	I	99.70%	32.3	3,503.48	4,728.38	50,465.90	0	0
2282	NEGATIVE 1	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	DEST_MOUSE	18,522.10	100.00%	6	7	9	0.62%	AVIFCLSADK	K	K	99.70%	38.2	1,510.70	2,576.36	74,356.10	35	44
2283	NEGATIVE 1	Endoplasmin OS=Mus musculus GN=Hsp90b1 PE=1 SV=2	ENPL_MOUSE	92,478.60	100.00%	1	1	1	0.07%	LTESPCALVASQYGWSGNMER	R	I	99.70%	67.8	2,743.19	2,944.92	157664	640	660
2284	NEGATIVE 1	Glutaredoxin-1 OS=Mus musculus GN=Glrx PE=1 SV=3	GLRX1_MOUSE	11,871.10	100.00%	1	1	1	0.07%	VVVFIKPTCPYCR	K	K	99.70%	35.1	2,094.00	2,509.51	641922	15	27
2285	NEGATIVE 1	Sodium/potassium-transporting ATPase subunit alpha-1 OS=Mus musculus GN=Atp1a1 PE=1 SV=1	AT1A1_MOUSE	112,985.30	100.00%	2	3	4	0.28%	ACVVHGSDLK	K	D	99.70%	34.8	1,472.66	1,031.34	86,563.10	662	671
2286	NEGATIVE 1	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	FAS_MOUSE	272,429.30	99.10%	1	1	1	0.07%	GYDYGPQFQGICEATLEGEQGK	R	L	99.70%	51.7	2,834.20	2,888.00	210251	999	1020
2287	NEGATIVE 1	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	6	8	17	1.18%	VPTPNVSVVDLHCR	R	L	99.70%	39.5	1,979.94	4,738.38	130939	0	0
2288	NEGATIVE 1	Atrial natriuretic peptide receptor 3 OS=Mus musculus GN=Npr3 PE=1 SV=3	ANPRC_MOUSE	59,809.00	99.10%	1	1	2	0.14%	IVEHTNSSPCK	R	S	99.70%	43.3	1,658.73	479.22	401932	459	469
2289	NEGATIVE 2	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	2	2	2	0.13%	FPLCGHQVSDEYEQLSSEALEAAR	E	I	99.70%	43.9	3,123.38	3,580.81	246506	0	0
2290	NEGATIVE 2	Tubulin alpha-1A chain OS=Mus musculus GN=Tuba1a PE=1 SV=1	TBA1A_MOUSE	50,135.70	100.00%	0	0	0	0.00%	AVCMLSNTTAIAEAWAR	R	L	99.70%	56.4	2,252.03	3,364.51	378244	374	390
2291	NEGATIVE 2	Phosphoglycerate kinase 1 OS=Mus musculus GN=Pgk1 PE=1 SV=4	PGK1_MOUSE	44,551.10	100.00%	2	2	2	0.13%	VGPEVENACANPAAGTVILLENLR	C	F	99.70%	32.5	2,895.40	4,341.42	21,814.00	100	123
2292	NEGATIVE 2	Profilin-1 OS=Mus musculus GN=Pfn1 PE=1 SV=2	PROF1_MOUSE	14,957.30	100.00%	1	1	1	0.07%	CYEMASHLR	K	R	99.70%	44.6	1,553.63	1,363.12	132440	128	136
2293	NEGATIVE 2	Adhesion G protein-coupled receptor L2 OS=Mus musculus GN=Adgrl2 PE=1 SV=3	AGRL2_MOUSE	166,581.50	98.90%	1	1	1	0.07%	AIVDSPCIYEAEQK	K	S	99.70%	39.1	2,009.89	2,174.16	47,512.50	146	159
2294	NEGATIVE 3	60S ribosomal protein L10-like OS=Mus musculus GN=Rpl10l PE=2 SV=1	RL10L_MOUSE	24,558.60	100.00%	3	4	8	0.54%	FPLCGHLVSDEYEQLSSEALEAAR	E	I	99.70%	37.6	3,108.40	3,814.69	350655	0	0
2295	NEGATIVE 3	Plexin-B2 OS=Mus musculus GN=Plxnb2 PE=1 SV=1	PLXB2_MOUSE	206,230.30	100.00%	2	2	2	0.13%	VPSPGISFTYCENPMIR	R	A	99.70%	40.3	2,355.06	2,993.65	293219	973	989
2296	NEGATIVE 3	Mitochondrial 10-formyltetrahydrofolate dehydrogenase OS=Mus musculus GN=Aldh1l2 PE=1 SV=2	AL1L2_MOUSE	101,592.20	99.10%	1	1	1	0.07%	GENCIAAGR	K	L	99.70%	31.9	1,334.56	933.444	510416	725	733
2297	NEGATIVE 3	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	THIL_MOUSE	44,816.40	100.00%	2	5	6	0.40%	RPLLRGLLQEVRCLER	R	S	99.70%	31.2	2,395.28	2,386.21	56,042.90	13	28
2298	NEGATIVE 3	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	G3P_MOUSE	35,810.10	100.00%	10	12	25	1.67%	RVSNASCETNCLAPLAK	K	V	99.70%	31.6	2,346.06	3,757.24	386944	0	0
\.


--
-- Data for Name: vals2020pandas; Type: TABLE DATA; Schema: public; Owner: rohand
--

COPY public.vals2020pandas (index, "Accession #", "Uniprot ID", "Gene ", "Protein Name", "Peptide", "E1 RH/L", "E2 RH/L") FROM stdin;
0	P08113	sp|P08113|ENPL_MOUSE	Hsp90b1	Endoplasmin OS=Mus musculus GN=Hsp90b1 PE=1 SV=2	LTESPCALVASQYGWSGNMER	0.518675986	0.477851579
1	Q64514	sp|Q64514|TPP2_MOUSE	Tpp2	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	YEDLAPCITLK	0.673938818	0.500025001
2	Q99KC8	sp|Q99KC8|VMA5A_MOUSE	Vwa5a	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	SACSAIQK	0.64859455	0.68310677
3	Q8BRK8	sp|Q8BRK8|AAPK2_MOUSE	Prkaa2	5'-AMP-activated protein kinase catalytic subunit alpha-2 OS=Mus musculus GN=Prkaa2 PE=1 SV=3	SCSAAGLHR	1.191858584	0.824527687
4	P53702	sp|P53702|CCHL_MOUSE	Hccs	Cytochrome c-type heme lyase OS=Mus musculus GN=Hccs PE=1 SV=2	AYDYVECPVTGAR	0.465522794	0.869414015
5	Q91WG4	sp|Q91WG4|ELP2_MOUSE	Elp2	Elongator complex protein 2 OS=Mus musculus GN=Elp2 PE=1 SV=1	ALSLCGHEDWIR	0.709975151	0.881989769
6	Q8BYM8	sp|Q8BYM8|SYCM_MOUSE	Cars2	Probable cysteine--tRNA ligase, mitochondrial OS=Mus musculus GN=Cars2 PE=1 SV=2	QCVSGDSSTVTLR	0.551570132	1.011020119
7	Q61183	sp|Q61183|PAPOA_MOUSE	Papola	Poly(A) polymerase alpha OS=Mus musculus GN=Papola PE=1 SV=4	ETDCLLTQK	0.759342925	1.163783804
8	E9PVX6	sp|E9PVX6|KI67_MOUSE	Mki67	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	SPGTPAPVQEENDCTAFMETPK	0.746322455	1.32310135
9	Q7TMM9	sp|Q7TMM9|TBB2A_MOUSE	Tubb2a	Tubulin beta-2A chain OS=Mus musculus GN=Tubb2a PE=1 SV=1	TAVCDIPPR	1.092476183	1.34361249
10	Q9ES74	sp|Q9ES74|NEK7_MOUSE	Nek7	Serine/threonine-protein kinase Nek7 OS=Mus musculus GN=Nek7 PE=1 SV=1	MNLYSLCK	0.772295924	1.34643867
11	Q9CQA3	sp|Q9CQA3|SDHB_MOUSE	Sdhb	Succinate dehydrogenase [ubiquinone] iron-sulfur subunit, mitochondrial OS=Mus musculus GN=Sdhb PE=1 SV=1	CGPMVLDALIK	0.736350382	1.40828159
12	Q8VBV4	sp|Q8VBV4|FBXW7_MOUSE	Fbxw7	F-box/WD repeat-containing protein 7 OS=Mus musculus GN=Fbxw7 PE=1 SV=1	LVCAVGSR	0.680272109	1.505343971
13	Q6P9Q4	sp|Q6P9Q4|FHOD1_MOUSE	Fhod1	FH1/FH2 domain-containing protein 1 OS=Mus musculus GN=Fhod1 PE=1 SV=3	VDFEQLTENLGQLECR	0.785130672	1.531628121
14	O08529	sp|O08529|CAN2_MOUSE	Capn2	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	WNDNCPSWNTVDPEVR	0.749512817	1.543448063
15	Q9ERU9	sp|Q9ERU9|RBP2_MOUSE	Ranbp2	E3 SUMO-protein ligase RanBP2 OS=Mus musculus GN=Ranbp2 PE=1 SV=2	MICQQVEAIK	0.974563883	1.63371998
16	Q9DB77	sp|Q9DB77|QCR2_MOUSE	Uqcrc2	Cytochrome b-c1 complex subunit 2, mitochondrial OS=Mus musculus GN=Uqcrc2 PE=1 SV=1	NALANPLYCPDYR	1.212121212	1.714383679
17	P97315	sp|P97315|CSRP1_MOUSE	Csrp1	Cysteine and glycine-rich protein 1 OS=Mus musculus GN=Csrp1 PE=1 SV=3	CSQAVYAAEK	1.273398701	1.724356117
18	Q9EPL8	sp|Q9EPL8|IPO7_MOUSE	Ipo7	Importin-7 OS=Mus musculus GN=Ipo7 PE=1 SV=2	GIDQCIPLFVEAALER	1.124227094	1.733102253
19	Q9CY18	sp|Q9CY18|SNX7_MOUSE	Snx7	Sorting nexin-7 OS=Mus musculus GN=Snx7 PE=1 SV=1	VECANNALK	0.779910341	1.743071292
20	P18654	sp|P18654|KS6A3_MOUSE	Rps6ka3	Ribosomal protein S6 kinase alpha-3 OS=Mus musculus GN=Rps6ka3 PE=1 SV=2	AYSFCGTVEYMAPEVVNR	0.691850007	1.78412132
21	Q9R1J0	sp|Q9R1J0|NSDHL_MOUSE	Nsdhl	Sterol-4-alpha-carboxylate 3-dehydrogenase, decarboxylating OS=Mus musculus GN=Nsdhl PE=1 SV=1	VQFFIGDLCNQQDLYPALK	1.060477833	1.799533054
22	Q9CQR2	sp|Q9CQR2|RS21_MOUSE	Rps21	40S ribosomal protein S21 OS=Mus musculus GN=Rps21 PE=1 SV=1	TYGICGAIR	1.020019539	1.819174095
23	P27601	sp|P27601|GNA13_MOUSE	Gna13	Guanine nucleotide-binding protein subunit alpha-13 OS=Mus musculus GN=Gna13 PE=1 SV=1	DYFLEFEGDPHCLR	0.887326671	1.819964365
24	Q8VHE0	sp|Q8VHE0|SEC63_MOUSE	Sec63	Translocation protein SEC63 homolog OS=Mus musculus GN=Sec63 PE=1 SV=4	EQSICAAEEQPTEDGQSDANK	0.982683101	1.846789974
25	Q9QUR7	sp|Q9QUR7|PIN1_MOUSE	Pin1	Peptidyl-prolyl cis-trans isomerase NIMA-interacting 1 OS=Mus musculus GN=Pin1 PE=1 SV=1	SGEEDFESLASQFSDCSSAK	0.753017544	1.863238308
26	P63017	sp|P63017|HSP7C_MOUSE	Hspa8	Heat shock cognate 71 kDa protein OS=Mus musculus GN=Hspa8 PE=1 SV=1	VCNPIITK	0.609406596	1.894298163
27	P62874	sp|P62874|GBB1_MOUSE	Gnb1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1 OS=Mus musculus GN=Gnb1 PE=1 SV=3	ACADATLSQITNNIDPVGR	0.95038966	1.960399922
28	P42859	sp|P42859|HD_MOUSE	Htt	Huntingtin OS=Mus musculus GN=Htt PE=1 SV=2	CDQGQADPVVAVAR	0.900900901	1.980590216
29	P35979	sp|P35979|RL12_MOUSE	Rpl12	60S ribosomal protein L12 OS=Mus musculus GN=Rpl12 PE=1 SV=2	CTGGEVGATSALAPK	0.834237053	2.000694619
30	Q80TR8	sp|Q80TR8|DCAF1_MOUSE	Dcaf1	DDB1- and CUL4-associated factor 1 OS=Mus musculus GN=Dcaf1 PE=1 SV=4	LPLFSSCQIQQLMK	0.817260543	2.034141805
31	O08663	sp|O08663|MAP2_MOUSE	Metap2	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	VQTDPPSVPICDLYPNGVFPK	1.24409057	2.037489813
32	O70194	sp|O70194|EIF3D_MOUSE	Eif3d	Eukaryotic translation initiation factor 3 subunit D OS=Mus musculus GN=Eif3d PE=1 SV=2	FMTPVIQDNPSGWGPCAVPEQFR	1.095770327	2.074258453
33	P19096	sp|P19096|FAS_MOUSE	Fasn	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	GYDYGPQFQGICEATLEGEQGK	1.287001287	2.079866889
34	O55143	sp|O55143|AT2A2_MOUSE	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	ANACNSVIK	0.90628965	2.111046352
35	Q6PAV2	sp|Q6PAV2|HERC4_MOUSE	Herc4	Probable E3 ubiquitin-protein ligase HERC4 OS=Mus musculus GN=Herc4 PE=1 SV=2	YGQLGLGIDCQK	0.57964294	2.122241087
36	Q8BK67	sp|Q8BK67|RCC2_MOUSE	Rcc2	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	IEYDCELVPR	0.56922328	2.170546483
37	P14211	sp|P14211|CALR_MOUSE	Calr	Calreticulin OS=Mus musculus GN=Calr PE=1 SV=1	HEQNIDCGGGYVK	0.911410864	2.281021898
38	Q9D662	sp|Q9D662|SC23B_MOUSE	Sec23b	Protein transport protein Sec23B OS=Mus musculus GN=Sec23b PE=1 SV=1	MVQVHELSCEGISK	0.896214191	2.355157796
39	Q8C570	sp|Q8C570|RAE1L_MOUSE	Rae1	mRNA export factor OS=Mus musculus GN=Rae1 PE=1 SV=1	VFTASCDK	0.82699816	2.491901321
40	O08788	sp|O08788|DCTN1_MOUSE	Dctn1	Dynactin subunit 1 OS=Mus musculus GN=Dctn1 PE=1 SV=3	VTFSCAAGLGQR	0.707714084	2.497843381
41	Q6ZWV3	sp|Q6ZWV3|RL10_MOUSE	Rpl10	60S ribosomal protein L10 OS=Mus musculus GN=Rpl10 PE=1 SV=3	LIPDGCGVK	0.830356201	2.50501002
42	Q8BZW8	sp|Q8BZW8|NHLC2_MOUSE	Nhlrc2	NHL repeat-containing protein 2 OS=Mus musculus GN=Nhlrc2 PE=1 SV=1	QPLQITSTQPACAAPVELAYAF	0.622006593	2.528982754
43	P09541	sp|P09541|MYL4_MOUSE	Myl4	Myosin light chain 4 OS=Mus musculus GN=Myl4 PE=1 SV=3	ITYGQCGDVLR	0.596409614	2.613695766
44	G5E870	sp|G5E870|TRIPC_MOUSE	Trip12	E3 ubiquitin-protein ligase TRIP12 OS=Mus musculus GN=Trip12 PE=1 SV=1	TFESTENPDDFLPSVMTCVNYLK	1.168342346	2.685979995
45	Q7TNE3	sp|Q7TNE3|SPAG7_MOUSE	Spag7	Sperm-associated antigen 7 OS=Mus musculus GN=Spag7 PE=1 SV=1	TYGCVPVANK	0.420574505	2.727768685
46	Q9Z321	sp|Q9Z321|TOP3B_MOUSE	Top3b	DNA topoisomerase 3-beta-1 OS=Mus musculus GN=Top3b PE=1 SV=1	IGCAFTR	0.777882937	2.73000273
47	Q8BJ71	sp|Q8BJ71|NUP93_MOUSE	Nup93	Nuclear pore complex protein Nup93 OS=Mus musculus GN=Nup93 PE=1 SV=1	SSGQSAQLLSHEPGDPPCMR	0.810303588	2.827254736
48	P41241	sp|P41241|CSK_MOUSE	Csk	Tyrosine-protein kinase CSK OS=Mus musculus GN=Csk PE=1 SV=2	YNFHGTAEQDLPFCK	0.925154963	2.868185448
49	P13864	sp|P13864|DNMT1_MOUSE	Dnmt1	DNA (cytosine-5)-methyltransferase 1 OS=Mus musculus GN=Dnmt1 PE=1 SV=5	SQLCDLETK	0.779702058	2.914602157
50	Q3URQ7	sp|Q3URQ7|MTHSD_MOUSE	Mthfsd	Methenyltetrahydrofolate synthase domain-containing protein OS=Mus musculus GN=Mthfsd PE=2 SV=1	VSCEMLTK	0.999268766	2.92997363
51	Q5I043	sp|Q5I043|UBP28_MOUSE	Usp28	Ubiquitin carboxyl-terminal hydrolase 28 OS=Mus musculus GN=Usp28 PE=1 SV=1	AIEQMYCDPLLR	1.107280749	2.938583603
52	P34884	sp|P34884|MIF_MOUSE	Mif	Macrophage migration inhibitory factor OS=Mus musculus GN=Mif PE=1 SV=2	LLCGLLSDR	0.770416025	2.957704821
53	Q9Z2W0	sp|Q9Z2W0|DNPEP_MOUSE	Dnpep	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	ETACTTGVLQTLTLFK	1.039825309	2.963261959
54	Q9CQY6	sp|Q9CQY6|UQCC2_MOUSE	Uqcc2	Ubiquinol-cytochrome-c reductase complex assembly factor 2 OS=Mus musculus GN=Uqcc2 PE=1 SV=1	LCEEWPVDETK	1.317587575	2.990430622
55	Q60864	sp|Q60864|STIP1_MOUSE	Stip1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	ALSAGNIDDALQCYSEAIK	1.00495417	3.032140691
56	P17742	sp|P17742|PPIA_MOUSE	Ppia	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	IIPGFMCQGGDFTR	0.82701675	3.050640635
57	Q60875	sp|Q60875|ARHG2_MOUSE	Arhgef2	Rho guanine nucleotide exchange factor 2 OS=Mus musculus GN=Arhgef2 PE=1 SV=4	LIHEGCLLWK	0.882924245	3.055788378
58	Q9WUM5	sp|Q9WUM5|SUCA_MOUSE	Suclg1	Succinate--CoA ligase [ADP/GDP-forming] subunit alpha, mitochondrial OS=Mus musculus GN=Suclg1 PE=1 SV=4	IICQGFTGK	0.730300153	3.081713558
59	Q60598	sp|Q60598|SRC8_MOUSE	Cttn	Src substrate cortactin OS=Mus musculus GN=Cttn PE=1 SV=2	CALGWDHQEK	0.766484196	3.083743425
60	P70398	sp|P70398|USP9X_MOUSE	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	DGQLWLCAPQAK	0.919795087	3.136762861
61	Q3UZ39	sp|Q3UZ39|LRRF1_MOUSE	Lrrfip1	Leucine-rich repeat flightless-interacting protein 1 OS=Mus musculus GN=Lrrfip1 PE=1 SV=2	EIDCLSPEAQR	0.933056197	3.141081198
62	Q8BGK2	sp|Q8BGK2|ARHL1_MOUSE	Adprhl1	[Protein ADP-ribosylarginine] hydrolase-like protein 1 OS=Mus musculus GN=Adprhl1 PE=1 SV=1	AAMLLGSVGDALGYGNICR	0.712352187	3.182686187
63	Q99KP6	sp|Q99KP6|PRP19_MOUSE	Prpf19	Pre-mRNA-processing factor 19 OS=Mus musculus GN=Prpf19 PE=1 SV=1	IWSVPNTSCVQVVR	0.882166068	3.202049312
64	Q8CDM8	sp|Q8CDM8|F16B1_MOUSE	Fam160b1	Protein FAM160B1 OS=Mus musculus GN=Fam160b1 PE=1 SV=2	VVNSFLCLVPDDAK	0.855988871	3.203907067
65	P09103	sp|P09103|PDIA1_MOUSE	P4hb	Protein disulfide-isomerase OS=Mus musculus GN=P4hb PE=1 SV=2	ITEFCHR	0.910580951	3.205128205
66	Q8K298	sp|Q8K298|ANLN_MOUSE	Anln	Anillin OS=Mus musculus GN=Anln PE=1 SV=2	ADFVCSTAQK	0.645294211	3.206155819
67	P57780	sp|P57780|ACTN4_MOUSE	Actn4	Alpha-actinin-4 OS=Mus musculus GN=Actn4 PE=1 SV=1	CQLEINFNTLQTK	1.071581655	3.206155819
68	Q9Z1N5	sp|Q9Z1N5|DX39B_MOUSE	Ddx39b	Spliceosome RNA helicase Ddx39b OS=Mus musculus GN=Ddx39b PE=1 SV=1	NCPHIVVGTPGR	0.675447484	3.233107016
69	Q8CG48	sp|Q8CG48|SMC2_MOUSE	Smc2	Structural maintenance of chromosomes protein 2 OS=Mus musculus GN=Smc2 PE=1 SV=2	ALNCEIEELER	0.661984866	3.237293623
70	Q9ESL4	sp|Q9ESL4|M3K20_MOUSE	Map3k20	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	FDDLQFFENCGGGSFGSVYR	0.770912429	3.357706848
71	P25444	sp|P25444|RS2_MOUSE	Rps2	40S ribosomal protein S2 OS=Mus musculus GN=Rps2 PE=1 SV=3	GCTATLGNFAK	0.840483936	3.390979993
72	Q9WU78	sp|Q9WU78|PDC6I_MOUSE	Pdcd6ip	Programmed cell death 6-interacting protein OS=Mus musculus GN=Pdcd6ip PE=1 SV=3	FIQQTYPSGGEEQAQYCR	0.944465433	3.463803256
73	P17742	sp|P17742|PPIA_MOUSE	Ppia	Peptidyl-prolyl cis-trans isomerase A OS=Mus musculus GN=Ppia PE=1 SV=2	ITISDCGQL	0.633713561	3.55592856
74	Q8BWQ4	sp|Q8BWQ4|CMTR2_MOUSE	Cmtr2	Cap-specific mRNA (nucleoside-2'-O-)-methyltransferase 2 OS=Mus musculus GN=Cmtr2 PE=2 SV=1	CLPDEQGAEPSGPVK	0.858074481	3.563987409
75	P37913	sp|P37913|DNLI1_MOUSE	Lig1	DNA ligase 1 OS=Mus musculus GN=Lig1 PE=1 SV=2	VAQVLSCEGEDEDEAPGTPK	0.584863727	3.575269913
76	Q8CCB4	sp|Q8CCB4|VPS53_MOUSE	Vps53	Vacuolar protein sorting-associated protein 53 homolog OS=Mus musculus GN=Vps53 PE=1 SV=1	LLTDCNSETFQK	0.911932541	3.625815809
77	O70378	sp|O70378|EMC8_MOUSE	Emc8	ER membrane protein complex subunit 8 OS=Mus musculus GN=Emc8 PE=1 SV=1	YPHCAVNGLLVAER	1.03626943	3.63372093
78	P04223	sp|P04223|HA1K_MOUSE	H2-K1	H-2 class I histocompatibility antigen, K-K alpha chain OS=Mus musculus GN=H2-K1 PE=1 SV=1	GGDYALAPGSQTSDLSLPDCK	0.587889477	3.666262375
79	P05201	sp|P05201|AATC_MOUSE	Got1	Aspartate aminotransferase, cytoplasmic OS=Mus musculus GN=Got1 PE=1 SV=3	INMCGLTTK	0.727325624	3.668378577
80	Q9JJG0	sp|Q9JJG0|TACC2_MOUSE	Tacc2	Transforming acidic coiled-coil-containing protein 2 OS=Mus musculus GN=Tacc2 PE=1 SV=2	CAQEYLSR	1.032083426	3.702332469
81	Q8VDC1	sp|Q8VDC1|FYCO1_MOUSE	Fyco1	FYVE and coiled-coil domain-containing protein 1 OS=Mus musculus GN=Fyco1 PE=1 SV=1	LCQEVTNR	0.870192685	3.711020603
82	O55143	sp|O55143|AT2A2_MOUSE	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	TGTLTTNQMSVCR	0.812743823	3.731343284
83	Q61211	sp|Q61211|EIF2D_MOUSE	Eif2d	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	NLETYGLDPCSVAAILQQR	0.810681953	3.772161449
84	Q6ZQI3	sp|Q6ZQI3|MLEC_MOUSE	Mlec	Malectin OS=Mus musculus GN=Mlec PE=1 SV=2	VCALYILAGTVDDVPK	1.03820598	3.849114704
85	Q62419	sp|Q62419|SH3G1_MOUSE	Sh3gl1	Endophilin-A2 OS=Mus musculus GN=Sh3gl1 PE=1 SV=1	EPFELGELEQPNGGFPCAPAPK	0.866349499	3.868428943
86	Q8K337	sp|Q8K337|I5P2_MOUSE	Inpp5b	Type II inositol 1,4,5-trisphosphate 5-phosphatase OS=Mus musculus GN=Inpp5b PE=1 SV=1	AQEFIHQFLCGPL	0.856871688	3.889201296
87	P17751	sp|P17751|TPIS_MOUSE	Tpi1	Triosephosphate isomerase OS=Mus musculus GN=Tpi1 PE=1 SV=4	IAVAAQNCYK	0.760922342	3.913894325
88	Q7TQK4	sp|Q7TQK4|EXOS3_MOUSE	Exosc3	Exosome complex component RRP40 OS=Mus musculus GN=Exosc3 PE=1 SV=3	LLAPDCEIVQELGK	0.716435019	3.921703061
89	Q9CQS5	sp|Q9CQS5|RIOK2_MOUSE	Riok2	Serine/threonine-protein kinase RIO2 OS=Mus musculus GN=Riok2 PE=1 SV=1	NHEIVPCSLIASIASLK	0.94790772	3.969892711
90	Q9Z2I9	sp|Q9Z2I9|SUCB1_MOUSE	Sucla2	Succinate--CoA ligase [ADP-forming] subunit beta, mitochondrial OS=Mus musculus GN=Sucla2 PE=1 SV=2	CDVIAQGIVMAVK	0.690917149	4.005981421
91	P38060	sp|P38060|HMGCL_MOUSE	Hmgcl	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	LLEAGDFICQALNR	0.994134606	4.026499141
92	Q9ERA6	sp|Q9ERA6|TFP11_MOUSE	Tfip11	Tuftelin-interacting protein 11 OS=Mus musculus GN=Tfip11 PE=1 SV=1	WLQVLCSWLSNSPNYEEITK	1.029018317	4.060984935
93	Q9CR70	sp|Q9CR70|LAGE3_MOUSE	Lage3	EKC/KEOPS complex subunit Lage3 OS=Mus musculus GN=Lage3 PE=2 SV=1	VSGCMLEVR	1.080730574	4.101722724
94	Q6ZWY3	sp|Q6ZWY3|RS27L_MOUSE	Rps27l	40S ribosomal protein S27-like OS=Mus musculus GN=Rps27l PE=1 SV=3	LTEGCSFR	0.670151509	4.132231405
95	Q9CU62	sp|Q9CU62|SMC1A_MOUSE	Smc1a	Structural maintenance of chromosomes protein 1A OS=Mus musculus GN=Smc1a PE=1 SV=4	AESLIGVYPEQGDCVISK	0.963740919	4.132231405
96	Q9JKP8	sp|Q9JKP8|CHRC1_MOUSE	Chrac1	Chromatin accessibility complex protein 1 OS=Mus musculus GN=Chrac1 PE=1 SV=1	ATELFVQYLATCSYR	1.142857143	4.132231405
97	O35678	sp|O35678|MGLL_MOUSE	Mgll	Monoglyceride lipase OS=Mus musculus GN=Mgll PE=1 SV=1	VCFGIQLLNAVAR	1.036305884	4.148103957
98	Q80X73	sp|Q80X73|PELO_MOUSE	Pelo	Protein pelota homolog OS=Mus musculus GN=Pelo PE=1 SV=3	EALCDPTVASR	0.808751759	4.151762036
99	P06151	sp|P06151|LDHA_MOUSE	Ldha	L-lactate dehydrogenase A chain OS=Mus musculus GN=Ldha PE=1 SV=3	VIGSGCNLDSAR	0.915677933	4.210526316
100	Q8K1E0	sp|Q8K1E0|STX5_MOUSE	Stx5	Syntaxin-5 OS=Mus musculus GN=Stx5 PE=1 SV=3	QCSEFTLMAR	0.667146576	4.217629692
101	O88738	sp|O88738|BIRC6_MOUSE	Birc6	Baculoviral IAP repeat-containing protein 6 OS=Mus musculus GN=Birc6 PE=1 SV=2	VTMFLQSPCPLYK	0.97761267	4.22832981
102	Q9QWT9	sp|Q9QWT9|KIFC1_MOUSE	Kifc1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	FQATEAALSSSQEEVVCLR	0.774953503	4.235994091
103	Q9QUR6	sp|Q9QUR6|PPCE_MOUSE	Prep	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	ITVPFLEQCPIR	0.783914666	4.279027578
104	Q80X82	sp|Q80X82|SYMPK_MOUSE	Sympk	Symplekin OS=Mus musculus GN=Sympk PE=1 SV=1	AVACSGAAQVR	0.838456473	4.370014868
105	Q6A4J8	sp|Q6A4J8|UBP7_MOUSE	Usp7	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	IIGVHQEDELLECLSPATSR	0.719217491	4.380127648
106	Q9CQJ8	sp|Q9CQJ8|NDUB9_MOUSE	Ndufb9	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 9 OS=Mus musculus GN=Ndufb9 PE=1 SV=3	HLESWCIHR	0.969274014	4.416867411
107	Q08093	sp|Q08093|CNN2_MOUSE	Cnn2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	AGQCVIGLQMGTNK	1.272912424	4.457377304
108	Q6ZWX6	sp|Q6ZWX6|IF2A_MOUSE	Eif2s1	Eukaryotic translation initiation factor 2 subunit 1 OS=Mus musculus GN=Eif2s1 PE=1 SV=3	AGLNCSTETMPIK	1.05290213	4.481697885
109	O55143	sp|O55143|AT2A2_MOUSE	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2 OS=Mus musculus GN=Atp2a2 PE=1 SV=2	VGEATETALTCLVEK	0.875656743	4.490345757
110	Q3TPX4	sp|Q3TPX4|EXOC5_MOUSE	Exoc5	Exocyst complex component 5 OS=Mus musculus GN=Exoc5 PE=1 SV=2	YHDLECQLIQEFTSAQR	0.892964157	4.495949806
111	Q9D6Z1	sp|Q9D6Z1|NOP56_MOUSE	Nop56	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	GLTDLSACK	0.848847536	4.52079566
112	Q6PEB4	sp|Q6PEB4|OSGP2_MOUSE	Osgepl1	Probable tRNA N6-adenosine threonylcarbamoyltransferase, mitochondrial OS=Mus musculus GN=Osgepl1 PE=1 SV=2	CPLGVDISR	0.856604728	4.621072089
113	Q9CSU0	sp|Q9CSU0|RPR1B_MOUSE	Rprd1b	Regulation of nuclear pre-mRNA domain-containing protein 1B OS=Mus musculus GN=Rprd1b PE=1 SV=2	TVDEACLLLAEYNGR	1.228652169	4.656794666
114	Q9QYB1	sp|Q9QYB1|CLIC4_MOUSE	Clic4	Chloride intracellular channel protein 4 OS=Mus musculus GN=Clic4 PE=1 SV=3	AGSDGESIGNCPFSQR	0.615119641	4.672897196
115	Q9R0P5	sp|Q9R0P5|DEST_MOUSE	Dstn	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	AVIFCLSADK	1.011326861	4.761964373
116	P51175	sp|P51175|PPOX_MOUSE	Ppox	Protoporphyrinogen oxidase OS=Mus musculus GN=Ppox PE=1 SV=1	LGPEVASLAMDSLCR	1.099512011	4.777830865
117	Q61990	sp|Q61990|PCBP2_MOUSE	Pcbp2	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	AITIAGIPQSIIECVK	0.79967466	4.816684715
118	Q9D0K2	sp|Q9D0K2|SCOT1_MOUSE	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial OS=Mus musculus GN=Oxct1 PE=1 SV=1	CTLPLTGK	1.02462951	4.85556697
119	Q8BIQ5	sp|Q8BIQ5|CSTF2_MOUSE	Cstf2	Cleavage stimulation factor subunit 2 OS=Mus musculus GN=Cstf2 PE=1 SV=2	LCVQNSPQEAR	1.135589371	4.857681539
120	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	CGQSAAVASPGGSIDSR	0.720921269	4.893314275
121	Q9JLV1	sp|Q9JLV1|BAG3_MOUSE	Bag3	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	SGTPVHCPSPIR	0.655007533	4.897159647
122	Q9CQB5	sp|Q9CQB5|CISD2_MOUSE	Cisd2	CDGSH iron-sulfur domain-containing protein 2 OS=Mus musculus GN=Cisd2 PE=1 SV=1	VVNEINIEDLCLTK	0.704501926	4.901960784
123	P62754	sp|P62754|RS6_MOUSE	Rps6	40S ribosomal protein S6 OS=Mus musculus GN=Rps6 PE=1 SV=1	LNISFPATGCQK	0.708902362	4.906771344
124	Q8R4H2	sp|Q8R4H2|ARHGC_MOUSE	Arhgef12	Rho guanine nucleotide exchange factor 12 OS=Mus musculus GN=Arhgef12 PE=1 SV=2	TVWQDLICR	1.112594571	4.926108374
125	O70373	sp|O70373|XIRP1_MOUSE	Xirp1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	FTWLFENCPMGSLAAESIR	0.684884597	4.961391294
126	P33174	sp|P33174|KIF4_MOUSE	Kif4	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	GLLCLGNVISALGDDK	0.666444518	4.962779156
127	Q8CI51	sp|Q8CI51|PDLI5_MOUSE	Pdlim5	PDZ and LIM domain protein 5 OS=Mus musculus GN=Pdlim5 PE=1 SV=4	QPTVTSVCSESAQELAEGQR	0.516422227	4.966714563
128	Q99JY0	sp|Q99JY0|ECHB_MOUSE	Hadhb	Trifunctional enzyme subunit beta, mitochondrial OS=Mus musculus GN=Hadhb PE=1 SV=1	FNIWGGSLSLGHPFGATGCR	0.94126506	5.021863355
129	E9Q7G0	sp|E9Q7G0|NUMA1_MOUSE	Numa1	Nuclear mitotic apparatus protein 1 OS=Mus musculus GN=Numa1 PE=1 SV=1	HPSSTQCLVSVQK	0.706648064	5.028206372
130	Q8BFY6	sp|Q8BFY6|PEF1_MOUSE	Pef1	Peflin OS=Mus musculus GN=Pef1 PE=1 SV=1	SAIPAMQLDCFIK	1.118973642	5.071184546
131	Q60932	sp|Q60932|VDAC1_MOUSE	Vdac1	Voltage-dependent anion-selective channel protein 1 OS=Mus musculus GN=Vdac1 PE=1 SV=3	YQVDPDACFSAK	0.806814358	5.094243505
132	P54071	sp|P54071|IDHP_MOUSE	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	VCVQTVESGAMTK	1.074575543	5.113838151
133	Q80W21	sp|Q80W21|GSTM7_MOUSE	Gstm7	Glutathione S-transferase Mu 7 OS=Mus musculus GN=Gstm7 PE=1 SV=1	HNLCGETEEER	0.850267834	5.197505198
134	Q69ZR9	sp|Q69ZR9|TASOR_MOUSE	Fam208a	Protein TASOR OS=Mus musculus GN=Fam208a PE=1 SV=2	LDVETVMSIDCLK	1.734526328	5.205622072
135	Q6A4J8	sp|Q6A4J8|UBP7_MOUSE	Usp7	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	GTCVEGTIPK	0.711690616	5.212573373
136	Q91YT0	sp|Q91YT0|NDUV1_MOUSE	Ndufv1	NADH dehydrogenase [ubiquinone] flavoprotein 1, mitochondrial OS=Mus musculus GN=Ndufv1 PE=1 SV=1	GAGAYICGEETALIESIEGK	1.099263493	5.241762944
137	Q8K010	sp|Q8K010|OPLA_MOUSE	Oplah	5-oxoprolinase OS=Mus musculus GN=Oplah PE=1 SV=1	GCTGDLLEIQQPVDLAALR	1.032062782	5.260815573
138	Q3UH60	sp|Q3UH60|DIP2B_MOUSE	Dip2b	Disco-interacting protein 2 homolog B OS=Mus musculus GN=Dip2b PE=1 SV=1	GEPLGVICNWPPALESALQR	0.825801466	5.387931034
139	P14152	sp|P14152|MDHC_MOUSE	Mdh1	Malate dehydrogenase, cytoplasmic OS=Mus musculus GN=Mdh1 PE=1 SV=3	ENFSCLTR	0.852369587	5.418030566
140	Q3UFY8	sp|Q3UFY8|MRRP1_MOUSE	Trmt10c	Mitochondrial ribonuclease P protein 1 OS=Mus musculus GN=Trmt10c PE=1 SV=2	TLMECASK	1.062105718	5.460575144
141	P04247	sp|P04247|MYG_MOUSE	Mb	Myoglobin OS=Mus musculus GN=Mb PE=1 SV=3	HGCTVLTALGTILK	1.118818528	5.50660793
142	Q9JHU4	sp|Q9JHU4|DYHC1_MOUSE	Dync1h1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	VQYPQSQACK	0.91424392	5.510074922
143	Q9D071	sp|Q9D071|MMS19_MOUSE	Mms19	MMS19 nucleotide excision repair protein homolog OS=Mus musculus GN=Mms19 PE=1 SV=1	YHPLSACLTTR	0.498504487	5.572754355
144	P03975	sp|P03975|IGEB_MOUSE	Iap	IgE-binding protein OS=Mus musculus GN=Iap PE=2 SV=1	LQGPPYAESPPCVVR	0.659820916	5.590742044
145	Q8BGQ7	sp|Q8BGQ7|SYAC_MOUSE	Aars	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	NVGCLQEALQLATSFAQLR	0.930249491	5.636978579
146	P57759	sp|P57759|ERP29_MOUSE	Erp29	Endoplasmic reticulum resident protein 29 OS=Mus musculus GN=Erp29 PE=1 SV=2	GQGVYLGMPGCLPAYDALAGEFIK	1.331912627	5.662514156
147	Q07076	sp|Q07076|ANXA7_MOUSE	Anxa7	Annexin A7 OS=Mus musculus GN=Anxa7 PE=1 SV=2	CYQLEFGR	0.937734434	5.717094846
148	Q6P8X1	sp|Q6P8X1|SNX6_MOUSE	Snx6	Sorting nexin-6 OS=Mus musculus GN=Snx6 PE=1 SV=2	TVAMHEVFLCR	1.17172954	5.72213037
149	Q8BH58	sp|Q8BH58|TIPRL_MOUSE	Tiprl	TIP41-like protein OS=Mus musculus GN=Tiprl PE=1 SV=1	VACAEEWQESR	0.667807326	5.746178877
150	Q60953	sp|Q60953|PML_MOUSE	Pml	Protein PML OS=Mus musculus GN=Pml PE=1 SV=3	DYQEIAGQLSCLEAVLQR	1.077489432	5.750431282
151	Q6P9R2	sp|Q6P9R2|OXSR1_MOUSE	Oxsr1	Serine/threonine-protein kinase OSR1 OS=Mus musculus GN=Oxsr1 PE=1 SV=1	CQTSMDELLK	0.780021686	5.858551522
152	Q9R069	sp|Q9R069|BCAM_MOUSE	Bcam	Basal cell adhesion molecule OS=Mus musculus GN=Bcam PE=1 SV=1	GGSGGFGDEC	0.478789805	5.865102639
153	Q566J8	sp|Q566J8|COQ8B_MOUSE	Coq8b	Atypical kinase COQ8B, mitochondrial OS=Mus musculus GN=Coq8b PE=1 SV=1	IVQTLCTVR	0.848104486	5.944074833
154	Q9EQ20	sp|Q9EQ20|MMSA_MOUSE	Aldh6a1	Methylmalonate-semialdehyde dehydrogenase [acylating], mitochondrial OS=Mus musculus GN=Aldh6a1 PE=1 SV=1	VCNLIDSGTK	0.975229179	5.955926147
155	P03903	sp|P03903|NU4LM_MOUSE	Mtnd4l	NADH-ubiquinone oxidoreductase chain 4L OS=Mus musculus GN=Mtnd4l PE=1 SV=2	VSNTYGTDYVQNLNLLQC	1.219214826	5.973715651
156	Q9Z1W9	sp|Q9Z1W9|STK39_MOUSE	Stk39	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	EGPCAVNLVLR	0.722800348	5.989330578
157	Q9WTX5	sp|Q9WTX5|SKP1_MOUSE	Skp1	S-phase kinase-associated protein 1 OS=Mus musculus GN=Skp1 PE=1 SV=3	GLLDVTCK	1.128247031	6.027727547
158	O55126	sp|O55126|NIPS2_MOUSE	Nipsnap2	Protein NipSnap homolog 2 OS=Mus musculus GN=Nipsnap2 PE=1 SV=1	ICQEVLPK	1.04595239	6.031548082
159	Q99KR3	sp|Q99KR3|LACB2_MOUSE	Lactb2	Endoribonuclease LACTB2 OS=Mus musculus GN=Lactb2 PE=1 SV=1	NINNDTTYCIK	0.982800983	6.049606776
160	Q922H4	sp|Q922H4|GMPPA_MOUSE	Gmppa	Mannose-1-phosphate guanyltransferase alpha OS=Mus musculus GN=Gmppa PE=1 SV=1	LLPAITILGCR	0.837310558	6.112469438
161	P32233	sp|P32233|DRG1_MOUSE	Drg1	Developmentally-regulated GTP-binding protein 1 OS=Mus musculus GN=Drg1 PE=1 SV=1	GGINLTATCPQSELDAETVK	0.725320955	6.133799601
162	P35235	sp|P35235|PTN11_MOUSE	Ptpn11	Tyrosine-protein phosphatase non-receptor type 11 OS=Mus musculus GN=Ptpn11 PE=1 SV=2	QGFWEEFETLQQQECK	0.833348916	6.157635468
163	P17182	sp|P17182|ENOA_MOUSE	Eno1	Alpha-enolase OS=Mus musculus GN=Eno1 PE=1 SV=3	VNQIGSVTESLQACK	0.819537781	6.195786865
164	Q8BHG1	sp|Q8BHG1|NRDC_MOUSE	Nrdc	Nardilysin OS=Mus musculus GN=Nrdc PE=1 SV=1	AFDCPETEYPAK	0.756403525	6.207136863
165	Q60875	sp|Q60875|ARHG2_MOUSE	Arhgef2	Rho guanine nucleotide exchange factor 2 OS=Mus musculus GN=Arhgef2 PE=1 SV=4	DLLLGPCVDLPMTSR	0.557444674	6.217801648
166	Q9Z1Q5	sp|Q9Z1Q5|CLIC1_MOUSE	Clic1	Chloride intracellular channel protein 1 OS=Mus musculus GN=Clic1 PE=1 SV=3	LCPGGQLPFLLYGTEVHTDTNK	0.805996615	6.287614781
167	Q922S8	sp|Q922S8|KIF2C_MOUSE	Kif2c	Kinesin-like protein KIF2C OS=Mus musculus GN=Kif2c PE=1 SV=1	CLLLVHEPK	0.947204815	6.330309864
168	Q60668	sp|Q60668|HNRPD_MOUSE	Hnrnpd	Heterogeneous nuclear ribonucleoprotein D0 OS=Mus musculus GN=Hnrnpd PE=1 SV=2	FGEVVDCTLK	1.00020004	6.389776358
169	Q07832	sp|Q07832|PLK1_MOUSE	Plk1	Serine/threonine-protein kinase PLK1 OS=Mus musculus GN=Plk1 PE=1 SV=2	TLCGTPNYIAPEVLSK	1.070573052	6.44209805
170	Q5SSI6	sp|Q5SSI6|UTP18_MOUSE	Utp18	U3 small nucleolar RNA-associated protein 18 homolog OS=Mus musculus GN=Utp18 PE=1 SV=1	CLEQLVFGDVEDDEDALLQR	0.780553981	6.44625785
171	P22892	sp|P22892|AP1G1_MOUSE	Ap1g1	AP-1 complex subunit gamma-1 OS=Mus musculus GN=Ap1g1 PE=1 SV=3	FTCTVNR	0.520724849	6.45994832
172	Q02053	sp|Q02053|UBA1_MOUSE	Uba1	Ubiquitin-like modifier-activating enzyme 1 OS=Mus musculus GN=Uba1 PE=1 SV=1	DNPGVVTCLDEAR	1.003512293	6.472491909
173	Q6A009	sp|Q6A009|LTN1_MOUSE	Ltn1	E3 ubiquitin-protein ligase listerin OS=Mus musculus GN=Ltn1 PE=1 SV=3	THLPDFLICK	0.863433523	6.481265705
174	Q80UU9	sp|Q80UU9|PGRC2_MOUSE	Pgrmc2	Membrane-associated progesterone receptor component 2 OS=Mus musculus GN=Pgrmc2 PE=1 SV=2	GLCSGPGAGEESPAATLPR	0.723766756	6.52597899
175	Q8K2B3	sp|Q8K2B3|SDHA_MOUSE	Sdha	Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial OS=Mus musculus GN=Sdha PE=1 SV=1	TLNEADCATVPPAIR	0.862571163	6.540222368
176	Q0GNC1	sp|Q0GNC1|INF2_MOUSE	Inf2	Inverted formin-2 OS=Mus musculus GN=Inf2 PE=1 SV=1	AVLLASDAQACTLEEVVER	0.83063434	6.587971491
177	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	SLHDALCVVK	0.707126253	6.605019815
178	Q9WUD1	sp|Q9WUD1|CHIP_MOUSE	Stub1	STIP1 homology and U box-containing protein 1 OS=Mus musculus GN=Stub1 PE=1 SV=1	AQQACIEAK	0.770335845	6.605019815
179	Q8K1R3	sp|Q8K1R3|PNPT1_MOUSE	Pnpt1	Polyribonucleotide nucleotidyltransferase 1, mitochondrial OS=Mus musculus GN=Pnpt1 PE=1 SV=1	SQIVMLEASAENILQQDFCHAIK	1.323223594	6.663113006
180	Q9JKF1	sp|Q9JKF1|IQGA1_MOUSE	Iqgap1	Ras GTPase-activating-like protein IQGAP1 OS=Mus musculus GN=Iqgap1 PE=1 SV=2	QLSSSVTGLTNIEEENCQR	0.891424496	6.711409396
181	Q9DBC7	sp|Q9DBC7|KAP0_MOUSE	Prkar1a	cAMP-dependent protein kinase type I-alpha regulatory subunit OS=Mus musculus GN=Prkar1a PE=1 SV=3	QIQCLQK	0.830319017	6.735930261
182	Q5SW19	sp|Q5SW19|CLU_MOUSE	Cluh	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	DAAAFLLSCQIPGLVK	1.349709812	6.793478261
183	P26443	sp|P26443|DHE3_MOUSE	Glud1	Glutamate dehydrogenase 1, mitochondrial OS=Mus musculus GN=Glud1 PE=1 SV=1	CVGVGESDGSIWNPDGIDPK	1.146920518	6.805315525
184	Q8BXK9	sp|Q8BXK9|CLIC5_MOUSE	Clic5	Chloride intracellular channel protein 5 OS=Mus musculus GN=Clic5 PE=1 SV=1	AGIDGESIGNCPFSQR	0.759186152	6.83994528
185	Q80SY5	sp|Q80SY5|PR38B_MOUSE	Prpf38b	Pre-mRNA-splicing factor 38B OS=Mus musculus GN=Prpf38b PE=1 SV=1	AGGGCVMTIGEMLR	0.998702174	6.876580857
186	Q9CXT8	sp|Q9CXT8|MPPB_MOUSE	Pmpcb	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	TNMLLQLDGSTPICEDIGR	0.954380607	6.901311249
187	Q6NV72	sp|Q6NV72|WDCP_MOUSE	Wdcp	WD repeat and coiled-coil-containing protein OS=Mus musculus GN=Wdcp PE=2 SV=2	LVSVWQLCPSTAGASK	0.897439064	6.917027186
188	P49586	sp|P49586|PCY1A_MOUSE	Pcyt1a	Choline-phosphate cytidylyltransferase A OS=Mus musculus GN=Pcyt1a PE=1 SV=1	VTMEEACR	0.857332676	6.987651839
189	O70373	sp|O70373|XIRP1_MOUSE	Xirp1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	ISGSTPCPPPSR	0.7008692	7.01754386
190	Q69ZF3	sp|Q69ZF3|GBA2_MOUSE	Gba2	Non-lysosomal glucosylceramidase OS=Mus musculus GN=Gba2 PE=1 SV=2	LGLAFQTPEAYCQQQVFR	0.805736846	7.031754101
191	Q6A009	sp|Q6A009|LTN1_MOUSE	Ltn1	E3 ubiquitin-protein ligase listerin OS=Mus musculus GN=Ltn1 PE=1 SV=3	LLCFLPNNELDSLEEK	1.059097649	7.042253521
192	D3YYU8	sp|D3YYU8|OBSL1_MOUSE	Obsl1	Obscurin-like protein 1 OS=Mus musculus GN=Obsl1 PE=1 SV=1	LEVEALPLQMCR	0.838435202	7.062128562
193	Q66JS6	sp|Q66JS6|EI3JB_MOUSE	Eif3j2	Eukaryotic translation initiation factor 3 subunit J-B OS=Mus musculus GN=Eif3j2 PE=1 SV=1	ITNSLTVLCSEK	0.965623793	7.106369283
194	P14152	sp|P14152|MDHC_MOUSE	Mdh1	Malate dehydrogenase, cytoplasmic OS=Mus musculus GN=Mdh1 PE=1 SV=3	VIVVGNPANTNCLTASK	0.891265597	7.127583749
195	Q9QZE5	sp|Q9QZE5|COPG1_MOUSE	Copg1	Coatomer subunit gamma-1 OS=Mus musculus GN=Copg1 PE=1 SV=1	EMSCIAEDVIIVTSSLTK	0.926955877	7.204221259
196	Q6P9P6	sp|Q6P9P6|KIF11_MOUSE	Kif11	Kinesin-like protein KIF11 OS=Mus musculus GN=Kif11 PE=1 SV=1	ETHSQELCQLSSSWAER	0.712315203	7.274179603
197	P49615	sp|P49615|CDK5_MOUSE	Cdk5	Cyclin-dependent-like kinase 5 OS=Mus musculus GN=Cdk5 PE=1 SV=1	ISAEEALQHPYFSDFCPP	0.602191979	7.371783176
198	Q9DAR7	sp|Q9DAR7|DCPS_MOUSE	Dcps	m7GpppX diphosphatase OS=Mus musculus GN=Dcps PE=1 SV=1	AHLLAQVIENLECDPK	0.883704489	7.407407407
199	Q8K1R3	sp|Q8K1R3|PNPT1_MOUSE	Pnpt1	Polyribonucleotide nucleotidyltransferase 1, mitochondrial OS=Mus musculus GN=Pnpt1 PE=1 SV=1	ALCPVIPK	0.952108921	7.429420505
200	Q6PDY2	sp|Q6PDY2|AEDO_MOUSE	Ado	2-aminoethanethiol dioxygenase OS=Mus musculus GN=Ado PE=1 SV=2	EASGSACDLPR	0.882605661	7.462686567
201	W8DXL4	sp|W8DXL4|LRIT3_MOUSE	Lrit3	Leucine-rich repeat, immunoglobulin-like domain and transmembrane domain-containing protein 3 OS=Mus musculus GN=Lrit3 PE=1 SV=1	NLTCLDLSSNR	0.593788967	7.592735654
202	P17563	sp|P17563|SBP1_MOUSE	Selenbp1	Selenium-binding protein 1 OS=Mus musculus GN=Selenbp1 PE=1 SV=2	GGSVQVLEDQELTCQPEPLVVK	0.764240626	7.593014427
203	Q9CRA5	sp|Q9CRA5|GOLP3_MOUSE	Golph3	Golgi phosphoprotein 3 OS=Mus musculus GN=Golph3 PE=1 SV=1	LQLEACGMR	0.934409333	7.603704612
204	P08249	sp|P08249|MDHM_MOUSE	Mdh2	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	EGVVECSFVQSK	0.877654906	7.610350076
205	Q91V92	sp|Q91V92|ACLY_MOUSE	Acly	ATP-citrate synthase OS=Mus musculus GN=Acly PE=1 SV=1	GVTIIGPATVGGIKPGCFK	1.025430681	7.610609878
206	A2BH40	sp|A2BH40|ARI1A_MOUSE	Arid1a	AT-rich interactive domain-containing protein 1A OS=Mus musculus GN=Arid1a PE=1 SV=1	DETPLCTLLDWQDSLAK	1.035411058	7.632166791
207	P97384	sp|P97384|ANX11_MOUSE	Anxa11	Annexin A11 OS=Mus musculus GN=Anxa11 PE=1 SV=2	GAGTDEACLIEIFASR	0.763125763	7.645259939
208	A6H6A9	sp|A6H6A9|RBG1L_MOUSE	Rabgap1l	Rab GTPase-activating protein 1-like OS=Mus musculus GN=Rabgap1l PE=1 SV=1	ILYSFCTAFK	1.009358313	7.80464877
209	Q3TC93	sp|Q3TC93|H1BP3_MOUSE	Hs1bp3	HCLS1-binding protein 3 OS=Mus musculus GN=Hs1bp3 PE=1 SV=2	LYSCYPAASLPPLPR	0.934404784	7.806520181
210	Q8BG30	sp|Q8BG30|NELFA_MOUSE	Nelfa	Negative elongation factor A OS=Mus musculus GN=Nelfa PE=1 SV=1	ENPCPEQGDVIQIK	0.769598248	7.863400226
211	Q9Z1Q5	sp|Q9Z1Q5|CLIC1_MOUSE	Clic1	Chloride intracellular channel protein 1 OS=Mus musculus GN=Clic1 PE=1 SV=3	IGNCPFSQR	0.596196268	7.886435331
212	P59325	sp|P59325|IF5_MOUSE	Eif5	Eukaryotic translation initiation factor 5 OS=Mus musculus GN=Eif5 PE=1 SV=1	YFGCELGAQTQFDVK	1.053629755	7.886435331
213	Q91W50	sp|Q91W50|CSDE1_MOUSE	Csde1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	ATVECVK	1.105844278	7.936507937
214	Q91ZJ5	sp|Q91ZJ5|UGPA_MOUSE	Ugp2	UTP--glucose-1-phosphate uridylyltransferase OS=Mus musculus GN=Ugp2 PE=1 SV=3	LNGGLGTSMGCK	0.921733167	7.96812749
215	Q60739	sp|Q60739|BAG1_MOUSE	Bag1	BAG family molecular chaperone regulator 1 OS=Mus musculus GN=Bag1 PE=1 SV=3	ELQAEALCK	0.801282051	7.993605116
216	Q9CQB7	sp|Q9CQB7|LYRM1_MOUSE	Lyrm1	LYR motif-containing protein 1 OS=Mus musculus GN=Lyrm1 PE=1 SV=1	QEVLCLYR	1.136492783	8.052047455
217	Q5SSW2	sp|Q5SSW2|PSME4_MOUSE	Psme4	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	NYECLVNTLLDGVEQR	1.359234892	8.084074373
218	Q9Z1J3	sp|Q9Z1J3|NFS1_MOUSE	Nfs1	Cysteine desulfurase, mitochondrial OS=Mus musculus GN=Nfs1 PE=1 SV=3	DVALSSGSACTSASLEPSYVLR	1.017181468	8.143322476
219	A2ASZ8	sp|A2ASZ8|SCMC2_MOUSE	Slc25a25	Calcium-binding mitochondrial carrier protein SCaMC-2 OS=Mus musculus GN=Slc25a25 PE=1 SV=1	SNNMCIVGGFTQMIR	1.151303018	8.163265306
220	P80318	sp|P80318|TCPG_MOUSE	Cct3	T-complex protein 1 subunit gamma OS=Mus musculus GN=Cct3 PE=1 SV=1	IPGGIIEDSCVLR	0.914776081	8.176173613
221	Q01853	sp|Q01853|TERA_MOUSE	Vcp	Transitional endoplasmic reticulum ATPase OS=Mus musculus GN=Vcp PE=1 SV=4	GVLFYGPPGCGK	0.745611027	8.179751069
222	A2AN08	sp|A2AN08|UBR4_MOUSE	Ubr4	E3 ubiquitin-protein ligase UBR4 OS=Mus musculus GN=Ubr4 PE=1 SV=1	LIASCHWK	0.673350174	8.19000819
223	Q61733	sp|Q61733|RT31_MOUSE	Mrps31	28S ribosomal protein S31, mitochondrial OS=Mus musculus GN=Mrps31 PE=1 SV=1	LFMELVTCGLSK	0.896023534	8.298690296
224	O35710	sp|O35710|NOCT_MOUSE	Noct	Nocturnin OS=Mus musculus GN=Noct PE=1 SV=3	SAQGCDLLQNLQNITQGAK	1.184138367	8.333333333
225	Q80YV4	sp|Q80YV4|PANK4_MOUSE	Pank4	Pantothenate kinase 4 OS=Mus musculus GN=Pank4 PE=1 SV=2	QYWLTCFEEALDGVVK	1.14321105	8.333505727
226	Q99KK2	sp|Q99KK2|NEUA_MOUSE	Cmas	N-acylneuraminate cytidylyltransferase OS=Mus musculus GN=Cmas PE=1 SV=2	VGLSAVPADACSGAQK	1.13507378	8.33984591
227	Q8BWN8	sp|Q8BWN8|ACOT4_MOUSE	Acot4	Acyl-coenzyme A thioesterase 4 OS=Mus musculus GN=Acot4 PE=1 SV=1	SCWDEPLSIAVR	1.163602513	8.344484092
228	Q61234	sp|Q61234|SNTA1_MOUSE	Snta1	Alpha-1-syntrophin OS=Mus musculus GN=Snta1 PE=1 SV=1	ELLFYCSLPQSR	1.88253012	8.37520938
229	Q9DBG5	sp|Q9DBG5|PLIN3_MOUSE	Plin3	Perilipin-3 OS=Mus musculus GN=Plin3 PE=1 SV=1	TVCDVAEK	0.527087502	8.496596475
230	P27641	sp|P27641|XRCC5_MOUSE	Xrcc5	X-ray repair cross-complementing protein 5 OS=Mus musculus GN=Xrcc5 PE=1 SV=4	CTPTEAQLSAIDDLIDSMSLVK	0.706050284	8.510607839
231	Q922Q4	sp|Q922Q4|P5CR2_MOUSE	Pycr2	Pyrroline-5-carboxylate reductase 2 OS=Mus musculus GN=Pycr2 PE=1 SV=1	SLLINAVEASCIR	1.100594321	8.552164915
232	P70303	sp|P70303|PYRG2_MOUSE	Ctps2	CTP synthase 2 OS=Mus musculus GN=Ctps2 PE=1 SV=1	LGLPINDCSSNLLFK	0.777023319	8.553946793
233	Q9DBJ1	sp|Q9DBJ1|PGAM1_MOUSE	Pgam1	Phosphoglycerate mutase 1 OS=Mus musculus GN=Pgam1 PE=1 SV=3	YADLTEDQLPSCESLK	0.963701872	8.562359179
234	Q9D083	sp|Q9D083|SPC24_MOUSE	Spc24	Kinetochore protein Spc24 OS=Mus musculus GN=Spc24 PE=1 SV=1	EDTCVQAR	1.103833426	8.627593045
235	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	LDQAGEVLYQACNAITTAILTVK	0.857559386	8.635578584
236	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	ICDDELILIK	0.808797617	8.658008658
237	Q64511	sp|Q64511|TOP2B_MOUSE	Top2b	DNA topoisomerase 2-beta OS=Mus musculus GN=Top2b PE=1 SV=2	FTVETACK	1.375030132	8.712905452
238	Q9QXZ0	sp|Q9QXZ0|MACF1_MOUSE	Macf1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	DLSTVVSQELECVDR	1.284026708	8.786852308
239	Q99P88	sp|Q99P88|NU155_MOUSE	Nup155	Nuclear pore complex protein Nup155 OS=Mus musculus GN=Nup155 PE=1 SV=1	YVENPSLVLNCER	0.804494139	8.795074758
240	Q920E5	sp|Q920E5|FPPS_MOUSE	Fdps	Farnesyl pyrophosphate synthase OS=Mus musculus GN=Fdps PE=1 SV=1	SLIEQCSAPLPPSIFMELANK	1.249219238	8.795074758
241	Q07076	sp|Q07076|ANXA7_MOUSE	Anxa7	Annexin A7 OS=Mus musculus GN=Anxa7 PE=1 SV=2	LGTDESCFNMILATR	0.985221675	8.826125331
242	Q8BI72	sp|Q8BI72|CARF_MOUSE	Cdkn2aip	CDKN2A-interacting protein OS=Mus musculus GN=Cdkn2aip PE=1 SV=1	SVYLGTGCGK	0.842530963	8.833922261
243	Q8K0C9	sp|Q8K0C9|GMDS_MOUSE	Gmds	GDP-mannose 4,6 dehydratase OS=Mus musculus GN=Gmds PE=1 SV=1	IYLGQLECFSLGNLDAK	1.009693053	8.849557522
244	P55264	sp|P55264|ADK_MOUSE	Adk	Adenosine kinase OS=Mus musculus GN=Adk PE=1 SV=2	SLVANLAAANCYK	0.819470622	8.912655971
245	A2AGH6	sp|A2AGH6|MED12_MOUSE	Med12	Mediator of RNA polymerase II transcription subunit 12 OS=Mus musculus GN=Med12 PE=1 SV=1	FGELFSDFCSK	1.018079664	8.967636351
246	P62880	sp|P62880|GBB2_MOUSE	Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2 OS=Mus musculus GN=Gnb2 PE=1 SV=3	ACGDSTLTQITAGLDPVGR	0.926526452	8.976660682
247	Q69ZR2	sp|Q69ZR2|HECD1_MOUSE	Hectd1	E3 ubiquitin-protein ligase HECTD1 OS=Mus musculus GN=Hectd1 PE=1 SV=2	LLQLSCNGNVK	0.886996629	9.025270758
248	Q6ZQK0	sp|Q6ZQK0|CNDD3_MOUSE	Ncapd3	Condensin-2 complex subunit D3 OS=Mus musculus GN=Ncapd3 PE=1 SV=3	AWLMGVIPVVMDCESTVQEK	1.254075746	9.119746233
249	Q61595	sp|Q61595|KTN1_MOUSE	Ktn1	Kinectin OS=Mus musculus GN=Ktn1 PE=1 SV=1	ACVAGTSDAEAVK	0.722809567	9.197782061
250	Q9CXA2	sp|Q9CXA2|T3HPD_MOUSE	L3hypdh	Trans-L-3-hydroxyproline dehydratase OS=Mus musculus GN=L3hypdh PE=1 SV=1	LGLDVCSAK	0.656028634	9.251196014
251	Q8K411	sp|Q8K411|PREP_MOUSE	Pitrm1	Presequence protease, mitochondrial OS=Mus musculus GN=Pitrm1 PE=1 SV=1	HQDASCLPALK	1.46092038	9.259259259
252	Q9CPV4	sp|Q9CPV4|GLOD4_MOUSE	Glod4	Glyoxalase domain-containing protein 4 OS=Mus musculus GN=Glod4 PE=1 SV=1	HEEFEEGCK	0.805947357	9.268897736
253	Q9CRC8	sp|Q9CRC8|LRC40_MOUSE	Lrrc40	Leucine-rich repeat-containing protein 40 OS=Mus musculus GN=Lrrc40 PE=1 SV=2	NQLCEIPQR	0.75839444	9.310986965
254	Q1HFZ0	sp|Q1HFZ0|NSUN2_MOUSE	Nsun2	tRNA (cytosine(34)-C(5))-methyltransferase OS=Mus musculus GN=Nsun2 PE=1 SV=2	MVYSTCSLNPVEDEAVIAALLEK	1.004217806	9.425070688
255	Q9D1R9	sp|Q9D1R9|RL34_MOUSE	Rpl34	60S ribosomal protein L34 OS=Mus musculus GN=Rpl34 PE=1 SV=2	AYGGSMCAK	0.60805059	9.43833831
256	Q3V0C5	sp|Q3V0C5|UBP48_MOUSE	Usp48	Ubiquitin carboxyl-terminal hydrolase 48 OS=Mus musculus GN=Usp48 PE=1 SV=2	ILNDDCATLGTLGVIPESVILLK	0.839819742	9.447954523
257	P54071	sp|P54071|IDHP_MOUSE	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	CATITPDEAR	1.361059009	9.487666034
258	Q6RHR9	sp|Q6RHR9|MAGI1_MOUSE	Magi1	Membrane-associated guanylate kinase, WW and PDZ domain-containing protein 1 OS=Mus musculus GN=Magi1 PE=1 SV=1	ILAVNGCSITNK	0.79086149	9.489885253
259	Q60714	sp|Q60714|S27A1_MOUSE	Slc27a1	Long-chain fatty acid transport protein 1 OS=Mus musculus GN=Slc27a1 PE=1 SV=1	AGDTIPCIFQAVAR	1.190965466	9.514675435
260	P52825	sp|P52825|CPT2_MOUSE	Cpt2	Carnitine O-palmitoyltransferase 2, mitochondrial OS=Mus musculus GN=Cpt2 PE=1 SV=2	EFLHCVQK	1.267748479	9.593983006
261	E9Q555	sp|E9Q555|RN213_MOUSE	Rnf213	E3 ubiquitin-protein ligase RNF213 OS=Mus musculus GN=Rnf213 PE=1 SV=2	MCDQTAQVLK	0.846990874	9.61065382
262	Q00PI9	sp|Q00PI9|HNRL2_MOUSE	Hnrnpul2	Heterogeneous nuclear ribonucleoprotein U-like protein 2 OS=Mus musculus GN=Hnrnpul2 PE=1 SV=2	EGCTEVSLLR	1.337255951	9.651182771
263	Q78J03	sp|Q78J03|MSRB2_MOUSE	Msrb2	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	FCINSVALK	1.259445844	9.746588694
352	P48678	sp|P48678|LMNA_MOUSE	Lmna	Prelamin-A/C OS=Mus musculus GN=Lmna PE=1 SV=2	AQNTWGCGSSLR	0.78455622	14.20454545
264	Q5NCE8	sp|Q5NCE8|MRS2_MOUSE	Mrs2	Magnesium transporter MRS2 homolog, mitochondrial OS=Mus musculus GN=Mrs2 PE=2 SV=2	AVITPECLLILDYR	1.231072264	9.950714239
265	Q8R050	sp|Q8R050|ERF3A_MOUSE	Gspt1	Eukaryotic peptide chain release factor GTP-binding subunit ERF3A OS=Mus musculus GN=Gspt1 PE=1 SV=2	LESGSICK	0.710202713	9.970089731
266	Q9QWT9	sp|Q9QWT9|KIFC1_MOUSE	Kifc1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	GQLCDLNEELK	0.885818053	9.972227153
267	O35465	sp|O35465|FKBP8_MOUSE	Fkbp8	Peptidyl-prolyl cis-trans isomerase FKBP8 OS=Mus musculus GN=Fkbp8 PE=1 SV=2	VDMTCEEEEELLQLK	0.67749621	10.09081736
268	Q9D7G0	sp|Q9D7G0|PRPS1_MOUSE	Prps1	Ribose-phosphate pyrophosphokinase 1 OS=Mus musculus GN=Prps1 PE=1 SV=4	INNACFEAVVVTNTIPQEDK	0.866648213	10.13240545
269	Q5PRF0	sp|Q5PRF0|HTR5A_MOUSE	Heatr5a	HEAT repeat-containing protein 5A OS=Mus musculus GN=Heatr5a PE=1 SV=2	LPGGQLSCTVTASLQTLK	0.989284658	10.2102509
270	Q505F5	sp|Q505F5|LRC47_MOUSE	Lrrc47	Leucine-rich repeat-containing protein 47 OS=Mus musculus GN=Lrrc47 PE=1 SV=1	DGQCPLVVEQVR	0.804482324	10.28860006
271	P11157	sp|P11157|RIR2_MOUSE	Rrm2	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	EYLFNAIETMPCVK	0.8441939	10.29179154
272	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	IWCFGPDGTGPNILTDITK	0.923361034	10.30927835
273	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	CLIEILASR	0.814929509	10.35196687
274	P99029	sp|P99029|PRDX5_MOUSE	Prdx5	Peroxiredoxin-5, mitochondrial OS=Mus musculus GN=Prdx5 PE=1 SV=2	ALNVEPDGTGLTCSLAPNILSQL	0.857126353	10.42752868
275	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	TFCQLILDPIFK	0.912741877	10.46025105
276	Q61941	sp|Q61941|NNTM_MOUSE	Nnt	NAD(P) transhydrogenase, mitochondrial OS=Mus musculus GN=Nnt PE=1 SV=2	EANSIVITPGYGLCAAK	0.992851469	10.46025105
277	P51859	sp|P51859|HDGF_MOUSE	Hdgf	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	CGDLVFAK	0.787603854	10.47120419
278	Q922Q1	sp|Q922Q1|MARC2_MOUSE	Marc2	Mitochondrial amidoxime reducing component 2 OS=Mus musculus GN=Marc2 PE=1 SV=1	LCDPSVK	0.712158261	10.47695145
279	Q9R0E2	sp|Q9R0E2|PLOD1_MOUSE	Plod1	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 1 OS=Mus musculus GN=Plod1 PE=1 SV=1	VGEDYEGGGCR	1.16836079	10.49317943
280	O08553	sp|O08553|DPYL2_MOUSE	Dpysl2	Dihydropyrimidinase-related protein 2 OS=Mus musculus GN=Dpysl2 PE=1 SV=2	GLYDGPVCEVSVTPK	0.480607488	10.60445387
281	Q9D0K2	sp|Q9D0K2|SCOT1_MOUSE	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial OS=Mus musculus GN=Oxct1 PE=1 SV=1	STGCDFAVSPNLMPMQQIST	1.015577785	10.61437239
282	Q7TMF2	sp|Q7TMF2|ERI1_MOUSE	Eri1	3'-5' exoribonuclease 1 OS=Mus musculus GN=Eri1 PE=1 SV=2	EIAMTNGCINR	0.841566681	10.66098081
283	Q9CZU3	sp|Q9CZU3|SK2L2_MOUSE	Skiv2l2	Superkiller viralicidic activity 2-like 2 OS=Mus musculus GN=Skiv2l2 PE=1 SV=1	MVEEVFNNAIDCLSDEDK	0.939711227	10.67171466
284	Q8CI94	sp|Q8CI94|PYGB_MOUSE	Pygb	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	TCFETFPDK	0.7417366	10.68976313
285	Q33DR3	sp|Q33DR3|DLP1_MOUSE	Pdss2	Decaprenyl-diphosphate synthase subunit 2 OS=Mus musculus GN=Pdss2 PE=1 SV=2	CLLSDELSNIAMQVR	1.005025126	10.83004156
286	Q60598	sp|Q60598|SRC8_MOUSE	Cttn	Src substrate cortactin OS=Mus musculus GN=Cttn PE=1 SV=2	HCSQVDSVR	0.918001576	10.83039876
287	O54692	sp|O54692|ZW10_MOUSE	Zw10	Centromere/kinetochore protein zw10 homolog OS=Mus musculus GN=Zw10 PE=1 SV=3	LAPILCDGTTTFVDLVPGFR	0.99740697	10.87871749
288	Q8VDK1	sp|Q8VDK1|NIT1_MOUSE	Nit1	Nitrilase homolog 1 OS=Mus musculus GN=Nit1 PE=1 SV=2	THLCDVEIPGQGPMR	0.881290209	10.9141791
289	Q9JKF1	sp|Q9JKF1|IQGA1_MOUSE	Iqgap1	Ras GTPase-activating-like protein IQGAP1 OS=Mus musculus GN=Iqgap1 PE=1 SV=2	VNTSSALANISLALEQGCAVTLLK	0.787385545	10.95290252
290	Q6PGH2	sp|Q6PGH2|JUPI2_MOUSE	Jpt2	Jupiter microtubule associated homolog 2 OS=Mus musculus GN=Jpt2 PE=1 SV=1	DHVLLCEGEDSK	0.647737885	11.00110011
291	P63038	sp|P63038|CH60_MOUSE	Hspd1	60 kDa heat shock protein, mitochondrial OS=Mus musculus GN=Hspd1 PE=1 SV=1	AAVEEGIVLGGGCALLR	1.160362033	11.09799151
292	Q8BGQ7	sp|Q8BGQ7|SYAC_MOUSE	Aars	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	YNYQSDSSGSYVFECTVATVLALR	1.096731739	11.16683299
293	P26039	sp|P26039|TLN1_MOUSE	Tln1	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	QELAVFCSPEPPAK	1.399032184	11.22964981
294	Q9ER72	sp|Q9ER72|SYCC_MOUSE	Cars	Cysteine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Cars PE=1 SV=2	VQPQWSPPAGTEPCR	1.172032392	11.24859393
295	Q60710	sp|Q60710|SAMH1_MOUSE	Samhd1	Deoxynucleoside triphosphate triphosphohydrolase SAMHD1 OS=Mus musculus GN=Samhd1 PE=1 SV=2	TSSCLQEVSK	0.660972508	11.32502831
296	Q9CR51	sp|Q9CR51|VATG1_MOUSE	Atp6v1g1	V-type proton ATPase subunit G 1 OS=Mus musculus GN=Atp6v1g1 PE=1 SV=3	EAAALGSHGSCSSEVEK	0.686967538	11.42366922
297	P08249	sp|P08249|MDHM_MOUSE	Mdh2	Malate dehydrogenase, mitochondrial OS=Mus musculus GN=Mdh2 PE=1 SV=3	TIIPLISQCTPK	0.909587047	11.57407407
298	Q8R3D1	sp|Q8R3D1|TBC13_MOUSE	Tbc1d13	TBC1 domain family member 13 OS=Mus musculus GN=Tbc1d13 PE=1 SV=1	LLQDYPITDVCQILQK	0.995967225	11.57407407
299	Q9JK23	sp|Q9JK23|PSMG1_MOUSE	Psmg1	Proteasome assembly chaperone 1 OS=Mus musculus GN=Psmg1 PE=1 SV=1	TPESTCSLSSPFLR	0.904336986	11.60894124
300	Q9WV95	sp|Q9WV95|PHLA3_MOUSE	Phlda3	Pleckstrin homology-like domain family A member 3 OS=Mus musculus GN=Phlda3 PE=1 SV=1	AVECVESTGR	0.857604555	11.66861144
301	Q8BH86	sp|Q8BH86|GLUCM_MOUSE	Dglycy	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	TICPQLQK	0.951655881	11.67966776
302	P49962	sp|P49962|SRP09_MOUSE	Srp9	Signal recognition particle 9 kDa protein OS=Mus musculus GN=Srp9 PE=1 SV=2	VTDDLVCLVYR	1.200522764	11.86652953
303	Q3UKJ7	sp|Q3UKJ7|SMU1_MOUSE	Smu1	WD40 repeat-containing protein SMU1 OS=Mus musculus GN=Smu1 PE=2 SV=2	IQSGQCLR	1.016047787	11.88027204
304	Q922D4	sp|Q922D4|PP6R3_MOUSE	Ppp6r3	Serine/threonine-protein phosphatase 6 regulatory subunit 3 OS=Mus musculus GN=Ppp6r3 PE=1 SV=1	LLTCIEPPQPR	1.160681504	11.91895113
305	Q9CRC8	sp|Q9CRC8|LRC40_MOUSE	Lrrc40	Leucine-rich repeat-containing protein 40 OS=Mus musculus GN=Lrrc40 PE=1 SV=2	LDLSNNDISSLPCSLGNLHLK	0.996150105	11.95433485
306	Q9D6S7	sp|Q9D6S7|RRFM_MOUSE	Mrrf	Ribosome-recycling factor, mitochondrial OS=Mus musculus GN=Mrrf PE=1 SV=1	SPQVILVNMASFPECTAAAIK	1.170960187	12.03120357
307	Q9JJZ2	sp|Q9JJZ2|TBA8_MOUSE	Tuba8	Tubulin alpha-8 chain OS=Mus musculus GN=Tuba8 PE=1 SV=1	TIQFVDWCPTGFK	0.781240723	12.04819277
308	Q5SWU9	sp|Q5SWU9|ACACA_MOUSE	Acaca	Acetyl-CoA carboxylase 1 OS=Mus musculus GN=Acaca PE=1 SV=1	QVNCEVDQR	0.933619643	12.06025556
309	Q80VL1	sp|Q80VL1|TDRKH_MOUSE	Tdrkh	Tudor and KH domain-containing protein OS=Mus musculus GN=Tdrkh PE=1 SV=1	VLLISGFPVQVCK	0.860281887	12.10653753
310	P05202	sp|P05202|AATM_MOUSE	Got2	Aspartate aminotransferase, mitochondrial OS=Mus musculus GN=Got2 PE=1 SV=1	TCGFDFSGALEDISK	0.810635538	12.13483205
311	O55201	sp|O55201|SPT5H_MOUSE	Supt5h	Transcription elongation factor SPT5 OS=Mus musculus GN=Supt5h PE=1 SV=1	SFAFLHCK	0.885451217	12.17455308
312	P10711	sp|P10711|TCEA1_MOUSE	Tcea1	Transcription elongation factor A protein 1 OS=Mus musculus GN=Tcea1 PE=1 SV=2	NVLCGNIPPDLFAR	0.887780124	12.22493888
313	Q3UYV9	sp|Q3UYV9|NCBP1_MOUSE	Ncbp1	Nuclear cap-binding protein subunit 1 OS=Mus musculus GN=Ncbp1 PE=1 SV=2	SACSLESNLEGLAGVLEADLPNYK	0.764175455	12.28501229
314	P26231	sp|P26231|CTNA1_MOUSE	Ctnna1	Catenin alpha-1 OS=Mus musculus GN=Ctnna1 PE=1 SV=1	QMCMIMMEMTDFTR	1.00391527	12.32437016
315	Q8BWM0	sp|Q8BWM0|PGES2_MOUSE	Ptges2	Prostaglandin E synthase 2 OS=Mus musculus GN=Ptges2 PE=1 SV=3	EVTEFCNK	0.8567285	12.33177166
316	Q9CZJ1	sp|Q9CZJ1|UTP11_MOUSE	Utp11	Probable U3 small nucleolar RNA-associated protein 11 OS=Mus musculus GN=Utp11 PE=2 SV=1	QYDCLTQR	0.909438536	12.33538898
317	Q6PIE5	sp|Q6PIE5|AT1A2_MOUSE	Atp1a2	Sodium/potassium-transporting ATPase subunit alpha-2 OS=Mus musculus GN=Atp1a2 PE=1 SV=1	IAGLCNR	0.937646507	12.33757023
318	Q3TYX3	sp|Q3TYX3|SMYD5_MOUSE	Smyd5	SET and MYND domain-containing protein 5 OS=Mus musculus GN=Smyd5 PE=1 SV=2	LFNHFCSR	0.871209661	12.36093943
319	P11881	sp|P11881|ITPR1_MOUSE	Itpr1	Inositol 1,4,5-trisphosphate receptor type 1 OS=Mus musculus GN=Itpr1 PE=1 SV=2	LLQAPFTDCGDGPMLR	0.954421239	12.42840084
320	Q61191	sp|Q61191|HCFC1_MOUSE	Hcfc1	Host cell factor 1 OS=Mus musculus GN=Hcfc1 PE=1 SV=2	LVIYGGMSGCR	0.807408394	12.5
321	P40124	sp|P40124|CAP1_MOUSE	Cap1	Adenylyl cyclase-associated protein 1 OS=Mus musculus GN=Cap1 PE=1 SV=4	ALLATASQCQQPAGNK	1.013684744	12.57861635
322	Q9JIF7	sp|Q9JIF7|COPB_MOUSE	Copb1	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	ALSGYCGFMAANLYAR	0.620221279	12.63537906
323	Q9JLV1	sp|Q9JLV1|BAG3_MOUSE	Bag3	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	SQSPAASDCSSSSSSASLPSSGR	0.639082341	12.77993783
324	Q9WVM3	sp|Q9WVM3|APC7_MOUSE	Anapc7	Anaphase-promoting complex subunit 7 OS=Mus musculus GN=Anapc7 PE=1 SV=3	AINTICSLEK	0.803600129	12.83697047
325	Q8VIK2	sp|Q8VIK2|M17L2_MOUSE	Mpv17l2	Mpv17-like protein 2 OS=Mus musculus GN=Mpv17l2 PE=1 SV=1	YWVPEPLQTPGCAD	0.626670375	12.90792326
326	Q8VHL1	sp|Q8VHL1|SETD7_MOUSE	Setd7	Histone-lysine N-methyltransferase SETD7 OS=Mus musculus GN=Setd7 PE=1 SV=2	STSSCISSDALLPDPYESER	0.98658088	12.98465901
327	Q9Z1Z0	sp|Q9Z1Z0|USO1_MOUSE	Uso1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	SQLCSQSLEITR	0.761516277	13.00390117
328	Q9CSH3	sp|Q9CSH3|RRP44_MOUSE	Dis3	Exosome complex exonuclease RRP44 OS=Mus musculus GN=Dis3 PE=1 SV=4	LLAVAIGADCTYPELTDK	0.770777473	13.11770727
329	P39429	sp|P39429|TRAF2_MOUSE	Traf2	TNF receptor-associated factor 2 OS=Mus musculus GN=Traf2 PE=1 SV=1	IATFENIVCVLNR	0.822846063	13.15789474
330	Q9DB29	sp|Q9DB29|IAH1_MOUSE	Iah1	Isoamyl acetate-hydrolyzing esterase 1 homolog OS=Mus musculus GN=Iah1 PE=1 SV=1	VILITPPPLCEAAWEK	0.97541943	13.15789474
331	P47757	sp|P47757|CAPZB_MOUSE	Capzb	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	NLSDLIDLVPSLCEDLLSSVDQPLK	1.331929765	13.17523057
332	Q8K0Z7	sp|Q8K0Z7|TACO1_MOUSE	Taco1	Translational activator of cytochrome c oxidase 1 OS=Mus musculus GN=Taco1 PE=1 SV=1	EGGPNPENNSSLANILELCR	0.990200195	13.19474557
333	A2AIV2	sp|A2AIV2|VIR_MOUSE	Kiaa1429	Protein virilizer homolog OS=Mus musculus GN=Kiaa1429 PE=1 SV=1	FEINCIPNLIEYVK	0.92779107	13.24273241
334	P08752	sp|P08752|GNAI2_MOUSE	Gnai2	Guanine nucleotide-binding protein G(i) subunit alpha-2 OS=Mus musculus GN=Gnai2 PE=1 SV=5	QLFALSCAAEEQGMLPEDLSGVIR	0.746473912	13.28229858
335	Q60931	sp|Q60931|VDAC3_MOUSE	Vdac3	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	SCSGVEFSTSGHAYTDTGK	0.926020419	13.31314652
336	Q9JJ28	sp|Q9JJ28|FLII_MOUSE	Flii	Protein flightless-1 homolog OS=Mus musculus GN=Flii PE=1 SV=1	TGLCYLPEELAALQK	0.82635469	13.35113485
337	Q5SUQ9	sp|Q5SUQ9|CTC1_MOUSE	Ctc1	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	EQLILLGTLVDLLGDSEQECR	0.722330906	13.39019485
338	Q8VDG3	sp|Q8VDG3|PARN_MOUSE	Parn	Poly(A)-specific ribonuclease PARN OS=Mus musculus GN=Parn PE=1 SV=1	EMAICVFPR	0.761088278	13.43625135
339	Q9CPY7	sp|Q9CPY7|AMPL_MOUSE	Lap3	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	SAGACTAAAFLR	0.956297217	13.53179973
340	Q8BU85	sp|Q8BU85|MSRB3_MOUSE	Msrb3	Methionine-R-sulfoxide reductase B3, mitochondrial OS=Mus musculus GN=Msrb3 PE=1 SV=2	YCINSASLSFTPADSSEAEGSGIK	1.14064104	13.56811466
341	Q4VC33	sp|Q4VC33|MAEA_MOUSE	Maea	Macrophage erythroblast attacher OS=Mus musculus GN=Maea PE=1 SV=1	TLSSCPAVDSVVSLLDGVVEK	0.774163938	13.6239782
342	Q6ZWQ0	sp|Q6ZWQ0|SYNE2_MOUSE	Syne2	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	TAACPNSSEVLYTNAK	0.963112781	13.72991465
343	Q61699	sp|Q61699|HS105_MOUSE	Hsph1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	CTPSVISFGSK	0.799488327	13.73626374
344	Q9D7P6	sp|Q9D7P6|ISCU_MOUSE	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	LHCSMLAEDAIK	0.775891915	13.77410468
345	Q91VD9	sp|Q91VD9|NDUS1_MOUSE	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	HSFCEVLK	1.438228103	13.80878738
346	P49717	sp|P49717|MCM4_MOUSE	Mcm4	DNA replication licensing factor MCM4 OS=Mus musculus GN=Mcm4 PE=1 SV=1	FLQCFTDPLAK	1.071066046	13.83125864
347	Q8BK67	sp|Q8BK67|RCC2_MOUSE	Rcc2	Protein RCC2 OS=Mus musculus GN=Rcc2 PE=1 SV=1	YGCLSGVR	0.667507699	13.94700139
348	Q69ZR2	sp|Q69ZR2|HECD1_MOUSE	Hectd1	E3 ubiquitin-protein ligase HECTD1 OS=Mus musculus GN=Hectd1 PE=1 SV=2	NCSQLIAAYK	0.775374118	13.96789041
349	Q9EQC5	sp|Q9EQC5|SCYL1_MOUSE	Scyl1	N-terminal kinase-like protein OS=Mus musculus GN=Scyl1 PE=1 SV=1	SLVTHYCELVGANPK	1.140250855	14.00560224
350	Q9CR00	sp|Q9CR00|PSMD9_MOUSE	Psmd9	26S proteasome non-ATPase regulatory subunit 9 OS=Mus musculus GN=Psmd9 PE=1 SV=1	GIGMNEPLVDCEGYPR	0.691466358	14.02524544
351	P25206	sp|P25206|MCM3_MOUSE	Mcm3	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	GCYTSGTFR	1.134687394	14.07177491
353	Q8BH04	sp|Q8BH04|PCKGM_MOUSE	Pck2	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial OS=Mus musculus GN=Pck2 PE=1 SV=1	YVAAAFPSACGK	0.945000945	14.20454545
354	P50136	sp|P50136|ODBA_MOUSE	Bckdha	2-oxoisovalerate dehydrogenase subunit alpha, mitochondrial OS=Mus musculus GN=Bckdha PE=1 SV=1	DYPLELFMSQCYGNVNDPGK	1.100473203	14.20867375
355	Q8R349	sp|Q8R349|CDC16_MOUSE	Cdc16	Cell division cycle protein 16 homolog OS=Mus musculus GN=Cdc16 PE=1 SV=1	LCAEEQELLR	0.757059581	14.24501425
356	Q3THK7	sp|Q3THK7|GUAA_MOUSE	Gmps	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	TVGVQGDCR	0.751293808	14.24501425
357	Q3TXS7	sp|Q3TXS7|PSMD1_MOUSE	Psmd1	26S proteasome non-ATPase regulatory subunit 1 OS=Mus musculus GN=Psmd1 PE=1 SV=1	VLSMTETCR	0.542290815	14.28571429
358	P61759	sp|P61759|PFD3_MOUSE	Vbp1	Prefoldin subunit 3 OS=Mus musculus GN=Vbp1 PE=1 SV=2	DGCGLETAAGNGR	0.750819095	14.30615165
359	Q61753	sp|Q61753|SERA_MOUSE	Phgdh	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	QHVLEAFQFCF	1.148820561	14.30615165
360	Q9R1P3	sp|Q9R1P3|PSB2_MOUSE	Psmb2	Proteasome subunit beta type-2 OS=Mus musculus GN=Psmb2 PE=1 SV=1	NLADCLR	1.026694045	14.36781609
361	P25911	sp|P25911|LYN_MOUSE	Lyn	Tyrosine-protein kinase Lyn OS=Mus musculus GN=Lyn PE=1 SV=4	WTAPEAINFGCFTIK	0.777420805	14.38848921
362	Q99L45	sp|Q99L45|IF2B_MOUSE	Eif2s2	Eukaryotic translation initiation factor 2 subunit 2 OS=Mus musculus GN=Eif2s2 PE=1 SV=1	CSVASIK	0.799311238	14.43957379
363	Q9DCX2	sp|Q9DCX2|ATP5H_MOUSE	Atp5h	ATP synthase subunit d, mitochondrial OS=Mus musculus GN=Atp5h PE=1 SV=3	SCAEFVSGSQLR	0.915667063	14.47807785
364	Q80UM3	sp|Q80UM3|NAA15_MOUSE	Naa15	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	GELLLQLCR	0.870516531	14.52317479
365	P58281	sp|P58281|OPA1_MOUSE	Opa1	Dynamin-like 120 kDa protein, mitochondrial OS=Mus musculus GN=Opa1 PE=1 SV=1	EGCTVSPETISLNVK	0.845404543	14.6627566
366	Q9QYB1	sp|Q9QYB1|CLIC4_MOUSE	Clic4	Chloride intracellular channel protein 4 OS=Mus musculus GN=Clic4 PE=1 SV=3	IEEFLEEVLCPPK	1.041992289	14.70588235
367	P70336	sp|P70336|ROCK2_MOUSE	Rock2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	NCLLETAK	0.720414586	14.7618987
368	Q3TQB2	sp|Q3TQB2|FXRD1_MOUSE	Foxred1	FAD-dependent oxidoreductase domain-containing protein 1 OS=Mus musculus GN=Foxred1 PE=1 SV=1	VCLMSPEQLQTK	1.150747986	14.85884101
369	Q3TW96	sp|Q3TW96|UAP1L_MOUSE	Uap1l1	UDP-N-acetylhexosamine pyrophosphorylase-like protein 1 OS=Mus musculus GN=Uap1l1 PE=1 SV=1	LLRPQDC	0.457184657	14.92537313
370	Q6NS46	sp|Q6NS46|RRP5_MOUSE	Pdcd11	Protein RRP5 homolog OS=Mus musculus GN=Pdcd11 PE=1 SV=2	VGQGVCLTLK	1.304339355	14.95479043
371	P10518	sp|P10518|HEM2_MOUSE	Alad	Delta-aminolevulinic acid dehydratase OS=Mus musculus GN=Alad PE=1 SV=1	CYQLPPGAR	0.796368559	15.03759398
372	Q9Z277	sp|Q9Z277|BAZ1B_MOUSE	Baz1b	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	QVFANAELYNCR	0.557351466	15.10574018
373	Q64737	sp|Q64737|PUR2_MOUSE	Gart	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	SSLQYSSPAPGGCGDQTLGDLLLTPTR	0.837297442	15.20236166
374	Q3TJ91	sp|Q3TJ91|L2GL2_MOUSE	Llgl2	Lethal(2) giant larvae protein homolog 2 OS=Mus musculus GN=Llgl2 PE=1 SV=2	TICSDEVLQWLPEEAR	1.089087345	15.29051988
375	Q8JZY4	sp|Q8JZY4|MRRP3_MOUSE	Kiaa0391	Mitochondrial ribonuclease P protein 3 OS=Mus musculus GN=Kiaa0391 PE=2 SV=1	SSCEVPTK	0.978022514	15.3609831
376	Q9JIF0	sp|Q9JIF0|ANM1_MOUSE	Prmt1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	QLVTNACLIK	0.819067901	15.39834489
377	Q7TMC8	sp|Q7TMC8|FUK_MOUSE	Fuk	L-fucose kinase OS=Mus musculus GN=Fuk PE=1 SV=1	SGPAANPEWIQPFSYLECGDLMR	1.264062698	15.43209877
378	P48962	sp|P48962|ADT1_MOUSE	Slc25a4	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	GADIMYTGTLDCWR	0.972573429	15.46929095
379	P09541	sp|P09541|MYL4_MOUSE	Myl4	Myosin light chain 4 OS=Mus musculus GN=Myl4 PE=1 SV=3	MSEAEVEQLLSGQEDANGCINYEAFVK	1.072499728	15.53603921
380	Q8BLY2	sp|Q8BLY2|SYTC2_MOUSE	Tarsl2	Probable threonine--tRNA ligase 2, cytoplasmic OS=Mus musculus GN=Tarsl2 PE=1 SV=1	WLCAEVQR	1.072367939	15.57636058
381	Q62426	sp|Q62426|CYTB_MOUSE	Cstb	Cystatin-B OS=Mus musculus GN=Cstb PE=1 SV=1	MMCGAPSATMPATAETQEVADQVK	0.760803408	15.60997276
382	Q8BJU0	sp|Q8BJU0|SGTA_MOUSE	Sgta	Small glutamine-rich tetratricopeptide repeat-containing protein alpha OS=Mus musculus GN=Sgta PE=1 SV=2	AIELNPANAVYFCNR	0.927855103	15.61377615
383	P99029	sp|P99029|PRDX5_MOUSE	Prdx5	Peroxiredoxin-5, mitochondrial OS=Mus musculus GN=Prdx5 PE=1 SV=2	GVLFGVPGAFTPGCSK	0.79743913	15.625
384	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	TSTEMSQEEAEGTLADLCPAVLK	0.98990299	15.67398119
385	Q8R3U1	sp|Q8R3U1|PA216_MOUSE	Pla2g16	HRAS-like suppressor 3 OS=Mus musculus GN=Pla2g16 PE=1 SV=2	LTSENCEHFVNELR	0.81387285	15.77512062
386	Q8K2Z4	sp|Q8K2Z4|CND1_MOUSE	Ncapd2	Condensin complex subunit 1 OS=Mus musculus GN=Ncapd2 PE=1 SV=2	NAIQLLASFLANNPFSCK	0.799386214	15.85575898
387	Q8C5Q4	sp|Q8C5Q4|GRSF1_MOUSE	Grsf1	G-rich sequence factor 1 OS=Mus musculus GN=Grsf1 PE=1 SV=2	YIELFLNSCPK	1.096491228	15.86309725
388	P17918	sp|P17918|PCNA_MOUSE	Pcna	Proliferating cell nuclear antigen OS=Mus musculus GN=Pcna PE=1 SV=2	CAGNEDIITLR	1.003656959	15.88980415
389	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	YCYLQNEIFGLFQK	0.998207382	15.89825119
390	Q61687	sp|Q61687|ATRX_MOUSE	Atrx	Transcriptional regulator ATRX OS=Mus musculus GN=Atrx PE=1 SV=3	QQMLINCVQR	1.187789524	16
391	F6ZDS4	sp|F6ZDS4|TPR_MOUSE	Tpr	Nucleoprotein TPR OS=Mus musculus GN=Tpr PE=1 SV=1	FLAEQQSEIDCLK	1.728159424	16
392	O54786	sp|O54786|DFFA_MOUSE	Dffa	DNA fragmentation factor subunit alpha OS=Mus musculus GN=Dffa PE=1 SV=2	FVALACNEK	0.916086479	16.04427037
393	P61080	sp|P61080|UB2D1_MOUSE	Ube2d1	Ubiquitin-conjugating enzyme E2 D1 OS=Mus musculus GN=Ube2d1 PE=2 SV=1	IYHPNINSNGSICLDILR	1.221526014	16.05136437
394	Q91WD5	sp|Q91WD5|NDUS2_MOUSE	Ndufs2	NADH dehydrogenase [ubiquinone] iron-sulfur protein 2, mitochondrial OS=Mus musculus GN=Ndufs2 PE=1 SV=1	IIEQCLNK	1.081081081	16.06370925
395	Q09143	sp|Q09143|CTR1_MOUSE	Slc7a1	High affinity cationic amino acid transporter 1 OS=Mus musculus GN=Slc7a1 PE=1 SV=1	TPDSNLDQCK	0.645809314	16.07717042
396	Q8JZK9	sp|Q8JZK9|HMCS1_MOUSE	Hmgcs1	Hydroxymethylglutaryl-CoA synthase, cytoplasmic OS=Mus musculus GN=Hmgcs1 PE=1 SV=1	ITASLCDLK	0.834371621	16.20745543
397	P47757	sp|P47757|CAPZB_MOUSE	Capzb	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	GCWDSIHVVEVQEK	1.163602513	16.23376623
398	P68040	sp|P68040|RACK1_MOUSE	Rack1	Receptor of activated protein C kinase 1 OS=Mus musculus GN=Rack1 PE=1 SV=3	LWNTLGVCK	1.096371012	16.26865477
399	Q8BQU3	sp|Q8BQU3|SDHF3_MOUSE	Sdhaf3	Succinate dehydrogenase assembly factor 3, mitochondrial OS=Mus musculus GN=Sdhaf3 PE=2 SV=1	ACFGTSLPEEK	0.770193721	16.36782892
400	Q9Z1B5	sp|Q9Z1B5|MD2L1_MOUSE	Mad2l1	Mitotic spindle assembly checkpoint protein MAD2A OS=Mus musculus GN=Mad2l1 PE=1 SV=2	WEESGPQFITNCEEVR	1.000771376	16.37740754
401	P28740	sp|P28740|KIF2A_MOUSE	Kif2a	Kinesin-like protein KIF2A OS=Mus musculus GN=Kif2a PE=1 SV=2	CVEDVLK	0.718921336	16.42036125
402	Q9D404	sp|Q9D404|OXSM_MOUSE	Oxsm	3-oxoacyl-[acyl-carrier-protein] synthase, mitochondrial OS=Mus musculus GN=Oxsm PE=1 SV=1	DHACALAISSTK	1.025430681	16.42036125
403	Q8VDR9	sp|Q8VDR9|DOCK6_MOUSE	Dock6	Dedicator of cytokinesis protein 6 OS=Mus musculus GN=Dock6 PE=1 SV=4	AFLFCTPFTPDGR	1.09373291	16.42036125
404	Q6P9R2	sp|Q6P9R2|OXSR1_MOUSE	Oxsr1	Serine/threonine-protein kinase OSR1 OS=Mus musculus GN=Oxsr1 PE=1 SV=1	TFVGTPCWMAPEVMEQVR	0.997866495	16.4755983
405	Q80Y14	sp|Q80Y14|GLRX5_MOUSE	Glrx5	Glutaredoxin-related protein 5, mitochondrial OS=Mus musculus GN=Glrx5 PE=1 SV=2	GTPEQPQCGFSNAVVQILR	0.708801422	16.50165017
406	P47856	sp|P47856|GFPT1_MOUSE	Gfpt1	Glutamine--fructose-6-phosphate aminotransferase [isomerizing] 1 OS=Mus musculus GN=Gfpt1 PE=1 SV=3	VDSTTCLFPVEEK	0.921319329	16.50269421
407	Q8BIP0	sp|Q8BIP0|SYDM_MOUSE	Dars2	Aspartate--tRNA ligase, mitochondrial OS=Mus musculus GN=Dars2 PE=1 SV=1	ILCEAPVESVVR	0.892219843	16.52892562
408	P46471	sp|P46471|PRS7_MOUSE	Psmc2	26S proteasome regulatory subunit 7 OS=Mus musculus GN=Psmc2 PE=1 SV=5	TDACFIR	0.788527631	16.55629139
409	Q8VEJ9	sp|Q8VEJ9|VPS4A_MOUSE	Vps4a	Vacuolar protein sorting-associated protein 4A OS=Mus musculus GN=Vps4a PE=1 SV=1	LLEPVVCMSDMLR	0.87943541	16.60255648
410	Q9WUR2	sp|Q9WUR2|ECI2_MOUSE	Eci2	Enoyl-CoA delta isomerase 2, mitochondrial OS=Mus musculus GN=Eci2 PE=1 SV=2	WLSEECMNAIMSFVSR	0.971534052	16.66394157
411	Q61768	sp|Q61768|KINH_MOUSE	Kif5b	Kinesin-1 heavy chain OS=Mus musculus GN=Kif5b PE=1 SV=3	FVCSPDEVMDTIDEGK	1.110307034	16.86571125
412	P10639	sp|P10639|THIO_MOUSE	Txn	Thioredoxin OS=Mus musculus GN=Txn PE=1 SV=3	MIKPFFHSLCDK	0.867148246	16.89189189
413	Q80YV3	sp|Q80YV3|TRRAP_MOUSE	Trrap	Transformation/transcription domain-associated protein OS=Mus musculus GN=Trrap PE=1 SV=2	IYPYLVMNDACLTESR	1.039457496	16.89189189
414	Q9QXZ0	sp|Q9QXZ0|MACF1_MOUSE	Macf1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	TECLIQQYEAVSLLNSER	1.084604562	16.99318868
415	Q9Z2W0	sp|Q9Z2W0|DNPEP_MOUSE	Dnpep	Aspartyl aminopeptidase OS=Mus musculus GN=Dnpep PE=1 SV=2	NDSPCGTTIGPILASR	0.751823171	17.03577513
416	Q9D6F9	sp|Q9D6F9|TBB4A_MOUSE	Tubb4a	Tubulin beta-4A chain OS=Mus musculus GN=Tubb4a PE=1 SV=3	EIVHLQAGQCGNQIGAK	0.847107216	17.12839399
417	Q9JJK2	sp|Q9JJK2|LANC2_MOUSE	Lancl2	LanC-like protein 2 OS=Mus musculus GN=Lancl2 PE=1 SV=1	TIVCQESELPDELLYGR	0.651213489	17.2378414
418	Q8VHE0	sp|Q8VHE0|SEC63_MOUSE	Sec63	Translocation protein SEC63 homolog OS=Mus musculus GN=Sec63 PE=1 SV=4	NEPPLTCPYSLK	1.012145749	17.24137931
419	Q99KC8	sp|Q99KC8|VMA5A_MOUSE	Vwa5a	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	ANLGGTEILTPLCNIYK	1.175306897	17.36111111
420	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	SQCTQVVQER	1.177717583	17.39130435
421	P11370	sp|P11370|ENV2_MOUSE	Fv4	Retrovirus-related Env polyprotein from Fv-4 locus OS=Mus musculus GN=Fv4 PE=1 SV=2	CNTAWNR	1.249375312	17.39130435
422	Q9Z0N1	sp|Q9Z0N1|IF2G_MOUSE	Eif2s3x	Eukaryotic translation initiation factor 2 subunit 3, X-linked OS=Mus musculus GN=Eif2s3x PE=1 SV=2	SCGSSTPDEFPTDIPGTK	0.90065748	17.42653603
423	Q99KY4	sp|Q99KY4|GAK_MOUSE	Gak	Cyclin-G-associated kinase OS=Mus musculus GN=Gak PE=1 SV=2	VTECGWAVR	1.481042654	17.53641252
424	Q9ET30	sp|Q9ET30|TM9S3_MOUSE	Tm9sf3	Transmembrane 9 superfamily member 3 OS=Mus musculus GN=Tm9sf3 PE=1 SV=1	NLSGQPNFPCR	0.88251212	17.6056338
425	Q8C0E3	sp|Q8C0E3|TRI47_MOUSE	Trim47	Tripartite motif-containing protein 47 OS=Mus musculus GN=Trim47 PE=1 SV=2	VLCPINYPESPTR	0.907609144	17.61862041
426	Q8BVQ5	sp|Q8BVQ5|PPME1_MOUSE	Ppme1	Protein phosphatase methylesterase 1 OS=Mus musculus GN=Ppme1 PE=1 SV=5	QCEGITSPEGSK	0.947123224	17.71214466
427	Q3TJZ6	sp|Q3TJZ6|FA98A_MOUSE	Fam98a	Protein FAM98A OS=Mus musculus GN=Fam98a PE=1 SV=1	MLCVNAPPK	1.520912548	17.73049645
428	Q9D6Z0	sp|Q9D6Z0|ALKB7_MOUSE	Alkbh7	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	SCWSDASQVILQR	0.947508054	17.77564257
429	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	ACGSETMQK	0.928936368	17.80442007
430	Q9JIF0	sp|Q9JIF0|ANM1_MOUSE	Prmt1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	VEDLTFTSPFCLQVK	0.938526513	17.82531194
431	Q8VDJ3	sp|Q8VDJ3|VIGLN_MOUSE	Hdlbp	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	DCVEAAK	1.078362452	17.88908766
432	P50462	sp|P50462|CSRP3_MOUSE	Csrp3	Cysteine and glycine-rich protein 3 OS=Mus musculus GN=Csrp3 PE=1 SV=1	TVYHAEEIQCNGR	0.955657492	17.97858804
433	O55106	sp|O55106|STRN_MOUSE	Strn	Striatin OS=Mus musculus GN=Strn PE=1 SV=2	CYIASAGADALAK	1.037169389	17.98561151
434	P68510	sp|P68510|1433F_MOUSE	Ywhah	14-3-3 protein eta OS=Mus musculus GN=Ywhah PE=1 SV=2	NCNDFQYESK	0.637039517	18.14882033
435	P57780	sp|P57780|ACTN4_MOUSE	Actn4	Alpha-actinin-4 OS=Mus musculus GN=Actn4 PE=1 SV=1	ICDQWDNLGSLTHSR	0.986874568	18.19146883
436	Q9CXT8	sp|Q9CXT8|MPPB_MOUSE	Pmpcb	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	LPDFNQICSNMR	0.920979923	18.24817518
437	Q60875	sp|Q60875|ARHG2_MOUSE	Arhgef2	Rho guanine nucleotide exchange factor 2 OS=Mus musculus GN=Arhgef2 PE=1 SV=4	QALCPGSTR	0.87001914	18.38906166
438	Q99KI0	sp|Q99KI0|ACON_MOUSE	Aco2	Aconitate hydratase, mitochondrial OS=Mus musculus GN=Aco2 PE=1 SV=1	CTTDHISAAGPWLK	0.952018279	18.43964512
439	Q9CQR6	sp|Q9CQR6|PPP6_MOUSE	Ppp6c	Serine/threonine-protein phosphatase 6 catalytic subunit OS=Mus musculus GN=Ppp6c PE=1 SV=1	CGNIASIMVFK	1.049533181	18.4501845
440	Q9CZ13	sp|Q9CZ13|QCR1_MOUSE	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	VYEEDAVPGLTPCR	0.92163269	18.69317124
441	Q61074	sp|Q61074|PPM1G_MOUSE	Ppm1g	Protein phosphatase 1G OS=Mus musculus GN=Ppm1g PE=1 SV=3	CSGDGVGAPR	0.791320574	18.90359168
442	P60335	sp|P60335|PCBP1_MOUSE	Pcbp1	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	VMTIPYQPMPASSPVICAGGQDR	0.881099773	18.90359168
443	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	VGVTEGCDPTR	0.810964236	19.09545916
444	Q9D6K5	sp|Q9D6K5|SYJ2B_MOUSE	Synj2bp	Synaptojanin-2-binding protein OS=Mus musculus GN=Synj2bp PE=1 SV=1	NAGCAVSLR	0.657798563	19.10742901
445	Q9QXZ0	sp|Q9QXZ0|MACF1_MOUSE	Macf1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	FQNLSCSLDER	0.828816274	19.31983038
446	Q9CQT1	sp|Q9CQT1|MTNA_MOUSE	Mri1	Methylthioribose-1-phosphate isomerase OS=Mus musculus GN=Mri1 PE=1 SV=1	VTVLTHCNTGALATAGYGTALGVIR	1.268391679	19.32257721
447	Q9R0P3	sp|Q9R0P3|ESTD_MOUSE	Esd	S-formylglutathione hydrolase OS=Mus musculus GN=Esd PE=1 SV=1	AYDATCLVK	0.934230194	19.42252904
448	Q8VEH6	sp|Q8VEH6|CBWD1_MOUSE	Cbwd1	COBW domain-containing protein 1 OS=Mus musculus GN=Cbwd1 PE=1 SV=1	EECLNVFIQNLLWEK	2.568053416	19.49317739
449	Q9WVJ2	sp|Q9WVJ2|PSD13_MOUSE	Psmd13	26S proteasome non-ATPase regulatory subunit 13 OS=Mus musculus GN=Psmd13 PE=1 SV=1	CAWGQQPDLAANEAQLLR	0.711178639	19.53125
450	Q8BGC4	sp|Q8BGC4|PTGR3_MOUSE	Zadh2	Prostaglandin reductase-3 OS=Mus musculus GN=Zadh2 PE=1 SV=1	DCPVPLPGDGDLLVR	1.297690112	19.58113715
451	Q8CHP8	sp|Q8CHP8|PGP_MOUSE	Pgp	Glycerol-3-phosphate phosphatase OS=Mus musculus GN=Pgp PE=1 SV=1	SNQESDCMFK	0.74447182	19.60784314
452	Q9R0B9	sp|Q9R0B9|PLOD2_MOUSE	Plod2	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2 OS=Mus musculus GN=Plod2 PE=1 SV=2	LDPDMALCR	1.239925604	19.68503937
453	Q3V3R1	sp|Q3V3R1|C1TM_MOUSE	Mthfd1l	Monofunctional C1-tetrahydrofolate synthase, mitochondrial OS=Mus musculus GN=Mthfd1l PE=1 SV=2	EAGLDITHICLPPDSGEDEIIDEILK	1.173245691	19.73068093
454	Q9QVP4	sp|Q9QVP4|MLRA_MOUSE	Myl7	Myosin regulatory light chain 2, atrial isoform OS=Mus musculus GN=Myl7 PE=1 SV=1	EAFSCIDQNR	0.926151432	19.83198086
455	Q9CPY7	sp|Q9CPY7|AMPL_MOUSE	Lap3	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	LNLPINIIGLAPLCENMPSGK	1.822157434	19.8733508
456	O70373	sp|O70373|XIRP1_MOUSE	Xirp1	Xin actin-binding repeat-containing protein 1 OS=Mus musculus GN=Xirp1 PE=1 SV=2	EELVCGELPR	0.749955712	19.88071571
457	Q3UM45	sp|Q3UM45|PP1R7_MOUSE	Ppp1r7	Protein phosphatase 1 regulatory subunit 7 OS=Mus musculus GN=Ppp1r7 PE=1 SV=2	CIENLEELQSLR	1.637197119	19.95206895
458	P68040	sp|P68040|RACK1_MOUSE	Rack1	Receptor of activated protein C kinase 1 OS=Mus musculus GN=Rack1 PE=1 SV=3	VWNLANCK	1.181055864	20.04008016
459	Q9D968	sp|Q9D968|HCFC2_MOUSE	Hcfc2	Host cell factor 2 OS=Mus musculus GN=Hcfc2 PE=1 SV=1	TCTPGFPGAPSTVR	0.837520938	20.1968032
460	P20108	sp|P20108|PRDX3_MOUSE	Prdx3	Thioredoxin-dependent peroxide reductase, mitochondrial OS=Mus musculus GN=Prdx3 PE=1 SV=1	YLVLFFYPLDFTFVCPTEIVAFSDK	1.457088737	20.33549982
461	Q9ESL4	sp|Q9ESL4|M3K20_MOUSE	Map3k20	Mitogen-activated protein kinase kinase kinase 20 OS=Mus musculus GN=Map3k20 PE=1 SV=1	CEIEATLER	0.766026858	20.36659878
462	Q9D0J4	sp|Q9D0J4|ARL2_MOUSE	Arl2	ADP-ribosylation factor-like protein 2 OS=Mus musculus GN=Arl2 PE=1 SV=1	QDLPGALSCNAIQEALELDSIR	1.095050372	20.49180328
463	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	LSVTVTGCPKPK	0.841976147	20.6185567
464	Q60597	sp|Q60597|ODO1_MOUSE	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ICEEAFTR	0.973804655	20.70393375
465	Q8BWF0	sp|Q8BWF0|SSDH_MOUSE	Aldh5a1	Succinate-semialdehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh5a1 PE=1 SV=1	DMLCITEETFGPLAPVIK	1.131318855	20.72748619
466	Q60902	sp|Q60902|EP15R_MOUSE	Eps15l1	Epidermal growth factor receptor substrate 15-like 1 OS=Mus musculus GN=Eps15l1 PE=1 SV=3	CTQDDINQAR	0.791763418	20.74688797
467	P39054	sp|P39054|DYN2_MOUSE	Dnm2	Dynamin-2 OS=Mus musculus GN=Dnm2 PE=1 SV=2	TEYAEFLHCK	0.906371794	20.8217565
468	P52293	sp|P52293|IMA1_MOUSE	Kpna2	Importin subunit alpha-1 OS=Mus musculus GN=Kpna2 PE=1 SV=2	TDCSPIQFESAWALTNIASGTSEQTK	1.557875058	20.84117229
469	P15331	sp|P15331|PERI_MOUSE	Prph	Peripherin OS=Mus musculus GN=Prph PE=1 SV=2	ADQLCQQELR	0.92792253	20.84446106
470	Q9CR57	sp|Q9CR57|RL14_MOUSE	Rpl14	60S ribosomal protein L14 OS=Mus musculus GN=Rpl14 PE=1 SV=3	ALVDGPCTR	0.913106647	21.06504887
471	Q8VCT3	sp|Q8VCT3|AMPB_MOUSE	Rnpep	Aminopeptidase B OS=Mus musculus GN=Rnpep PE=1 SV=2	VWAEPCLIEAAK	0.856311012	21.24117223
472	Q91VW5	sp|Q91VW5|GOGA4_MOUSE	Golga4	Golgin subfamily A member 4 OS=Mus musculus GN=Golga4 PE=1 SV=2	ESCITQLK	0.863781636	21.41327623
473	Q8CAK1	sp|Q8CAK1|CAF17_MOUSE	Iba57	Putative transferase CAF17 homolog, mitochondrial OS=Mus musculus GN=Iba57 PE=1 SV=1	GCYIGQELTAR	1.15593573	21.45922747
474	Q8BYA0	sp|Q8BYA0|TBCD_MOUSE	Tbcd	Tubulin-specific chaperone D OS=Mus musculus GN=Tbcd PE=1 SV=1	QIHQQLCDR	0.873761214	21.54761905
475	Q9D7P6	sp|Q9D7P6|ISCU_MOUSE	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	TFGCGSAIASSSLATEWVK	0.952562393	21.6265449
476	P56380	sp|P56380|AP4A_MOUSE	Nudt2	Bis(5'-nucleosyl)-tetraphosphatase [asymmetrical] OS=Mus musculus GN=Nudt2 PE=1 SV=3	ATLQEGHQFLCSTPA	1.150880424	21.67422367
477	Q80WT5	sp|Q80WT5|AFTIN_MOUSE	Aftph	Aftiphilin OS=Mus musculus GN=Aftph PE=1 SV=2	LLCSLGIDTR	0.706963591	21.67535854
478	O88508	sp|O88508|DNM3A_MOUSE	Dnmt3a	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	HIQEWGPFDLVIGGSPCNDLSIVNPAR	1.181334908	21.73913043
479	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	MVCSSVAR	0.936402424	21.83406114
480	Q9Z0R6	sp|Q9Z0R6|ITSN2_MOUSE	Itsn2	Intersectin-2 OS=Mus musculus GN=Itsn2 PE=1 SV=2	FGWFPCNYVEK	0.940088578	21.97044759
481	Q8BH86	sp|Q8BH86|GLUCM_MOUSE	Dglycy	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	FGTCTGILTSLEEHSEQLK	1.09469075	21.97750703
482	P51881	sp|P51881|ADT2_MOUSE	Slc25a5	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	GLGDCLVK	1.019783806	21.97802198
483	Q9WUA2	sp|Q9WUA2|SYFB_MOUSE	Farsb	Phenylalanine--tRNA ligase beta subunit OS=Mus musculus GN=Farsb PE=1 SV=2	EYTACELMNIYK	0.778898844	22.02643172
484	Q8C052	sp|Q8C052|MAP1S_MOUSE	Map1s	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	GPQPSCPTVLFEK	1.014713343	22.07505519
485	P61963	sp|P61963|DCAF7_MOUSE	Dcaf7	DDB1- and CUL4-associated factor 7 OS=Mus musculus GN=Dcaf7 PE=1 SV=1	VPCTPVAR	0.827061451	22.32142857
486	Q8CI51	sp|Q8CI51|PDLI5_MOUSE	Pdlim5	PDZ and LIM domain protein 5 OS=Mus musculus GN=Pdlim5 PE=1 SV=4	ACTGSLNMTLQR	0.898792072	22.41242639
487	O54988	sp|O54988|SLK_MOUSE	Slk	STE20-like serine/threonine-protein kinase OS=Mus musculus GN=Slk PE=1 SV=2	CHLLVEHETQK	1.036769378	22.48110577
488	Q61024	sp|Q61024|ASNS_MOUSE	Asns	Asparagine synthetase [glutamine-hydrolyzing] OS=Mus musculus GN=Asns PE=1 SV=3	ETFEDCNLLPK	0.747663551	22.57336343
489	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	AHVAPCFDASK	0.749574456	22.57336343
490	Q9QUR6	sp|Q9QUR6|PPCE_MOUSE	Prep	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	YVLLSIWEGCDPVNR	1.087665869	22.57336343
491	Q3UH60	sp|Q3UH60|DIP2B_MOUSE	Dip2b	Disco-interacting protein 2 homolog B OS=Mus musculus GN=Dip2b PE=1 SV=1	TCPLSWVQR	0.905551028	22.70729145
492	Q99LG0	sp|Q99LG0|UBP16_MOUSE	Usp16	Ubiquitin carboxyl-terminal hydrolase 16 OS=Mus musculus GN=Usp16 PE=1 SV=2	GLSNLGNTCFFNAVMQNLSQTPVLR	1.26486213	22.77904328
493	Q3U6U5	sp|Q3U6U5|GTPB6_MOUSE	Gtpbp6	Putative GTP-binding protein 6 OS=Mus musculus GN=Gtpbp6 PE=1 SV=1	VDLVPGYTPPCSGALAVSAISGR	0.960614793	22.92405236
494	Q8JZQ9	sp|Q8JZQ9|EIF3B_MOUSE	Eif3b	Eukaryotic translation initiation factor 3 subunit B OS=Mus musculus GN=Eif3b PE=1 SV=1	FSHQGVQLIDFSPCER	0.803083842	23.31002331
495	P50544	sp|P50544|ACADV_MOUSE	Acadvl	Very long-chain specific acyl-CoA dehydrogenase, mitochondrial OS=Mus musculus GN=Acadvl PE=1 SV=3	SSAIPSPCGK	0.612820199	23.36448598
496	P70398	sp|P70398|USP9X_MOUSE	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	NAGATCYMNSVIQQLYMIPSIR	1.184553423	23.58490566
497	Q921F4	sp|Q921F4|HNRLL_MOUSE	Hnrnpll	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	GLCESVVEADLVEALEK	0.899517866	23.58490566
498	Q61990	sp|Q61990|PCBP2_MOUSE	Pcbp2	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	LVVPASQCGSLIGK	0.771314556	23.69668246
499	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	STLTDSLVCK	0.80072095	23.69668246
500	Q9D8W5	sp|Q9D8W5|PSD12_MOUSE	Psmd12	26S proteasome non-ATPase regulatory subunit 12 OS=Mus musculus GN=Psmd12 PE=1 SV=4	AIYDTPCIQAESDK	1.017273223	23.80952381
501	Q9DCJ1	sp|Q9DCJ1|LST8_MOUSE	Mlst8	Target of rapamycin complex subunit LST8 OS=Mus musculus GN=Mlst8 PE=1 SV=1	LWCVETGEIK	0.989511181	23.8988349
502	Q01853	sp|Q01853|TERA_MOUSE	Vcp	Transitional endoplasmic reticulum ATPase OS=Mus musculus GN=Vcp PE=1 SV=4	LGDVISIQPCPDVK	1.006094684	23.92344498
503	P63330	sp|P63330|PP2AA_MOUSE	Ppp2ca	Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform OS=Mus musculus GN=Ppp2ca PE=1 SV=1	CGNQAAIMELDDTLK	1.1149515	23.98081535
504	Q7TPR4	sp|Q7TPR4|ACTN1_MOUSE	Actn1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	ICDQWDNLGALTQK	0.845379998	24.01755465
505	P15508	sp|P15508|SPTB1_MOUSE	Sptb	Spectrin beta chain, erythrocytic OS=Mus musculus GN=Sptb PE=1 SV=4	IHCLENVDK	0.991300895	24.03846154
506	Q9QUJ7	sp|Q9QUJ7|ACSL4_MOUSE	Acsl4	Long-chain-fatty-acid--CoA ligase 4 OS=Mus musculus GN=Acsl4 PE=1 SV=2	WINYLEVNCR	0.934142924	24.11885773
507	Q9CQQ8	sp|Q9CQQ8|LSM7_MOUSE	Lsm7	U6 snRNA-associated Sm-like protein LSm7 OS=Mus musculus GN=Lsm7 PE=1 SV=1	GTSVVLICPQDGMEAIPNPFVQQQDT	1.247193814	24.13344109
508	P16546	sp|P16546|SPTN1_MOUSE	Sptan1	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	ALCAEADR	0.904813608	24.21307506
509	Q8R035	sp|Q8R035|ICT1_MOUSE	Mrpl58	Peptidyl-tRNA hydrolase ICT1, mitochondrial OS=Mus musculus GN=Mrpl58 PE=1 SV=1	LSISYCR	0.966370313	24.27184466
510	P41241	sp|P41241|CSK_MOUSE	Csk	Tyrosine-protein kinase CSK OS=Mus musculus GN=Csk PE=1 SV=2	SVLGGDCLLK	1.003009027	24.35929164
511	P26039	sp|P26039|TLN1_MOUSE	Tln1	Talin-1 OS=Mus musculus GN=Tln1 PE=1 SV=2	AGALQCSPSDVYTK	0.796409278	24.4347946
512	O08807	sp|O08807|PRDX4_MOUSE	Prdx4	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	ENECHFYAGGQVYPGEASR	1.183291918	24.44987775
513	Q7TMY8	sp|Q7TMY8|HUWE1_MOUSE	Huwe1	E3 ubiquitin-protein ligase HUWE1 OS=Mus musculus GN=Huwe1 PE=1 SV=5	HIIEDPCTLR	0.904484898	24.69135802
514	Q922B2	sp|Q922B2|SYDC_MOUSE	Dars	Aspartate--tRNA ligase, cytoplasmic OS=Mus musculus GN=Dars PE=1 SV=2	LEYCEALAMLR	0.861184704	24.75247525
515	Q9D0T1	sp|Q9D0T1|NH2L1_MOUSE	Snu13	NHP2-like protein 1 OS=Mus musculus GN=Snu13 PE=1 SV=4	LLDLVQQSCNYK	0.935191247	24.75247525
516	Q80WC7	sp|Q80WC7|AGFG2_MOUSE	Agfg2	Arf-GAP domain and FG repeat-containing protein 2 OS=Mus musculus GN=Agfg2 PE=1 SV=1	ELGGCSQAGNR	0.780457348	24.80852481
517	P48722	sp|P48722|HS74L_MOUSE	Hspa4l	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	LMSANASDLPLNIECFMNDLDVSSK	1.17071281	24.94462901
518	Q80VP5	sp|Q80VP5|CL065_MOUSE	\N	Probable peptide chain release factor C12orf65 homolog, mitochondrial OS=Mus musculus PE=1 SV=1	TSNCVVLK	0.787091696	25.01875284
519	P84084	sp|P84084|ARF5_MOUSE	Arf5	ADP-ribosylation factor 5 OS=Mus musculus GN=Arf5 PE=1 SV=2	NICFTVWDVGGQDK	0.947687642	25.13303956
520	Q8R1F1	sp|Q8R1F1|NIBL1_MOUSE	Fam129b	Niban-like protein 1 OS=Mus musculus GN=Fam129b PE=1 SV=2	VHFEDVLCK	0.906614872	25.17744914
521	Q9R0P5	sp|Q9R0P5|DEST_MOUSE	Dstn	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	CSTPEEIK	0.642425348	25.18891688
522	Q8BM55	sp|Q8BM55|TM214_MOUSE	Tmem214	Transmembrane protein 214 OS=Mus musculus GN=Tmem214 PE=1 SV=1	SSGLLPVGQQVCAR	0.979674581	25.30442992
523	P68254	sp|P68254|1433T_MOUSE	Ywhaq	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	DNLTLWTSDSAGEECDAAEGAEN	0.581835108	25.3164557
524	P00493	sp|P00493|HPRT_MOUSE	Hprt1	Hypoxanthine-guanine phosphoribosyltransferase OS=Mus musculus GN=Hprt1 PE=1 SV=3	SYCNDQSTGDIK	0.636457422	25.3164557
525	P51881	sp|P51881|ADT2_MOUSE	Slc25a5	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	GIIDCVVR	0.905961225	25.4243151
526	Q99K43	sp|Q99K43|PRC1_MOUSE	Prc1	Protein regulator of cytokinesis 1 OS=Mus musculus GN=Prc1 PE=1 SV=2	SEVLADESITCLQK	1.006860434	25.70331036
527	Q91VD9	sp|Q91VD9|NDUS1_MOUSE	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	MLFLLGADGGCITR	1.130710086	25.70694087
528	P28271	sp|P28271|ACOC_MOUSE	Aco1	Cytoplasmic aconitate hydratase OS=Mus musculus GN=Aco1 PE=1 SV=3	WGSQAFCNMR	0.660066007	25.97696687
529	O55236	sp|O55236|MCE1_MOUSE	Rngtt	mRNA-capping enzyme OS=Mus musculus GN=Rngtt PE=1 SV=1	FNAQPVGDCDFNIR	1.313715187	25.98210345
530	Q91VR2	sp|Q91VR2|ATPG_MOUSE	Atp5c1	ATP synthase subunit gamma, mitochondrial OS=Mus musculus GN=Atp5c1 PE=1 SV=1	GLCGAIHSSVAK	0.787401575	26.31578947
531	Q9DCL4	sp|Q9DCL4|MET15_MOUSE	Mettl15	Probable methyltransferase-like protein 15 OS=Mus musculus GN=Mettl15 PE=1 SV=2	AVEGTALCGPQK	0.979623824	26.35501355
532	Q91VR5	sp|Q91VR5|DDX1_MOUSE	Ddx1	ATP-dependent RNA helicase DDX1 OS=Mus musculus GN=Ddx1 PE=1 SV=1	MHNQIPQITCDGK	0.70805795	26.49687757
533	Q8C7E7	sp|Q8C7E7|STBD1_MOUSE	Stbd1	Starch-binding domain-containing protein 1 OS=Mus musculus GN=Stbd1 PE=1 SV=1	WNTYIPLHYCK	0.83610012	26.6313933
534	P07901	sp|P07901|HS90A_MOUSE	Hsp90aa1	Heat shock protein HSP 90-alpha OS=Mus musculus GN=Hsp90aa1 PE=1 SV=4	VFIMDNCEELIPEYLNFIR	0.75001875	26.66666667
535	Q9CX00	sp|Q9CX00|IST1_MOUSE	Ist1	IST1 homolog OS=Mus musculus GN=Ist1 PE=1 SV=1	IVADQLCAK	1.042318115	26.73587378
536	P48962	sp|P48962|ADT1_MOUSE	Slc25a4	ADP/ATP translocase 1 OS=Mus musculus GN=Slc25a4 PE=1 SV=4	EFNGLGDCLTK	0.962834585	26.80965147
537	P26231	sp|P26231|CTNA1_MOUSE	Ctnna1	Catenin alpha-1 OS=Mus musculus GN=Ctnna1 PE=1 SV=1	SAAGEFADDPCSSVK	0.721969533	27.2479564
538	Q91WG2	sp|Q91WG2|RABE2_MOUSE	Rabep2	Rab GTPase-binding effector protein 2 OS=Mus musculus GN=Rabep2 PE=1 SV=3	CLSQEVK	0.63538595	27.34877735
539	Q91V92	sp|Q91V92|ACLY_MOUSE	Acly	ATP-citrate synthase OS=Mus musculus GN=Acly PE=1 SV=1	YICTTSAIQNR	0.544514021	27.54820937
540	Q922B1	sp|Q922B1|MACD1_MOUSE	Macrod1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	AAGSLLTDECR	0.999700473	27.73121417
541	Q9Z0R6	sp|Q9Z0R6|ITSN2_MOUSE	Itsn2	Intersectin-2 OS=Mus musculus GN=Itsn2 PE=1 SV=2	AQALCSWTAK	1.065903541	28.01120448
542	Q7TPR4	sp|Q7TPR4|ACTN1_MOUSE	Actn1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	IDQLECDHQLIQEALIFDNK	0.852079073	28.14797794
543	Q9JLQ0	sp|Q9JLQ0|CD2AP_MOUSE	Cd2ap	CD2-associated protein OS=Mus musculus GN=Cd2ap PE=1 SV=3	AQIIELLCIVDALK	0.917262888	28.16901408
544	Q9DCS3	sp|Q9DCS3|MECR_MOUSE	Mecr	Enoyl-[acyl-carrier-protein] reductase, mitochondrial OS=Mus musculus GN=Mecr PE=1 SV=2	LALNCVGGK	1.015331506	28.2505799
545	Q9D0W5	sp|Q9D0W5|PPIL1_MOUSE	Ppil1	Peptidyl-prolyl cis-trans isomerase-like 1 OS=Mus musculus GN=Ppil1 PE=1 SV=1	VCQGIGMVNR	1.030793574	28.57142857
546	Q9DCC4	sp|Q9DCC4|P5CR3_MOUSE	Pycr3	Pyrroline-5-carboxylate reductase 3 OS=Mus musculus GN=Pycr3 PE=1 SV=2	AATMSAVEAATCR	1.135202634	28.57142857
547	Q9CQF0	sp|Q9CQF0|RM11_MOUSE	Mrpl11	39S ribosomal protein L11, mitochondrial OS=Mus musculus GN=Mrpl11 PE=1 SV=1	HVYEIACVK	1.146920518	28.79099949
548	Q9CX34	sp|Q9CX34|SGT1_MOUSE	Sugt1	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	SLELNPNNCTALLR	0.881078822	28.9017341
549	Q6PDY2	sp|Q6PDY2|AEDO_MOUSE	Ado	2-aminoethanethiol dioxygenase OS=Mus musculus GN=Ado PE=1 SV=2	QACLTFR	0.887468939	28.9017341
550	P47757	sp|P47757|CAPZB_MOUSE	Capzb	F-actin-capping protein subunit beta OS=Mus musculus GN=Capzb PE=1 SV=3	DETVSDCSPHIANIGR	0.673400673	28.98550725
551	Q9D273	sp|Q9D273|MMAB_MOUSE	Mmab	Cob(I)yrinic acid a,c-diamide adenosyltransferase, mitochondrial OS=Mus musculus GN=Mmab PE=1 SV=1	IQCMLQDVGSALATPR	1.230769231	28.98575077
552	Q5SUR0	sp|Q5SUR0|PUR4_MOUSE	Pfas	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	FCDNSSAIQGK	1.155430729	29.23976608
553	Q9CZD3	sp|Q9CZD3|GARS_MOUSE	Gars	Glycine--tRNA ligase OS=Mus musculus GN=Gars PE=1 SV=1	FQSVADLCLYLYSAK	1.53233221	29.23976608
554	Q921E6	sp|Q921E6|EED_MOUSE	Eed	Polycomb protein EED OS=Mus musculus GN=Eed PE=1 SV=1	IINPITMQCIK	0.876501008	29.3255132
555	Q99PL5	sp|Q99PL5|RRBP1_MOUSE	Rrbp1	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	CEELSSLHGQLK	0.902340418	29.46758566
556	P11499	sp|P11499|HS90B_MOUSE	Hsp90ab1	Heat shock protein HSP 90-beta OS=Mus musculus GN=Hsp90ab1 PE=1 SV=3	VFIMDSCDELIPEYLNFIR	0.727008361	29.49852507
557	Q9D8N0	sp|Q9D8N0|EF1G_MOUSE	Eef1g	Elongation factor 1-gamma OS=Mus musculus GN=Eef1g PE=1 SV=3	AAAPAPEEEMDECEQALAAEPK	0.695555401	29.6735905
558	Q8C460	sp|Q8C460|ERI3_MOUSE	Eri3	ERI1 exoribonuclease 3 OS=Mus musculus GN=Eri3 PE=1 SV=1	AYSFAMGCWPK	0.881911985	29.79383729
559	Q6P2B1	sp|Q6P2B1|TNPO3_MOUSE	Tnpo3	Transportin-3 OS=Mus musculus GN=Tnpo3 PE=1 SV=1	IVCTPGQGLGDLR	0.830876147	29.93107057
560	P10639	sp|P10639|THIO_MOUSE	Txn	Thioredoxin OS=Mus musculus GN=Txn PE=1 SV=3	CMPTFQFYK	0.790641352	30.03003003
561	O08528	sp|O08528|HXK2_MOUSE	Hk2	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	HLGLESTCDDSIIVK	0.871004268	30.4509509
562	P31001	sp|P31001|DESM_MOUSE	Des	Desmin OS=Mus musculus GN=Des PE=1 SV=3	HQIQSYTCEIDALK	0.885818053	30.46884193
563	P29341	sp|P29341|PABP1_MOUSE	Pabpc1	Polyadenylate-binding protein 1 OS=Mus musculus GN=Pabpc1 PE=1 SV=2	VVCDENGSK	0.875482816	30.86419753
564	P42932	sp|P42932|TCPQ_MOUSE	Cct8	T-complex protein 1 subunit theta OS=Mus musculus GN=Cct8 PE=1 SV=3	IAVYSCPFDGMITETK	0.998278415	30.95975232
565	Q8BZM1	sp|Q8BZM1|GLMN_MOUSE	Glmn	Glomulin OS=Mus musculus GN=Glmn PE=1 SV=1	LEDNSLCYQYLEIK	1.081431816	31.00812231
566	Q3TCH7	sp|Q3TCH7|CUL4A_MOUSE	Cul4a	Cullin-4A OS=Mus musculus GN=Cul4a PE=1 SV=1	TLQSLACGK	0.916086479	31.44654088
567	Q61656	sp|Q61656|DDX5_MOUSE	Ddx5	Probable ATP-dependent RNA helicase DDX5 OS=Mus musculus GN=Ddx5 PE=1 SV=2	LIDFLECGK	0.773634535	31.54408018
568	Q9EQP2	sp|Q9EQP2|EHD4_MOUSE	Ehd4	EH domain-containing protein 4 OS=Mus musculus GN=Ehd4 PE=1 SV=1	GYDFCQVLQWFAER	0.955805107	31.54574132
569	Q05920	sp|Q05920|PYC_MOUSE	Pc	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	FLYECPWR	0.710239425	31.70229161
570	Q99KD5	sp|Q99KD5|UN45A_MOUSE	Unc45a	Protein unc-45 homolog A OS=Mus musculus GN=Unc45a PE=1 SV=2	LLAAGVVSAMTCMVK	1.057558302	31.94888179
571	Q76MZ3	sp|Q76MZ3|2AAA_MOUSE	Ppp2r1a	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	DCEAEVR	0.738661545	32.05614248
572	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	GCEYVFR	1.047888505	32.07817456
573	P25911	sp|P25911|LYN_MOUSE	Lyn	Tyrosine-protein kinase Lyn OS=Mus musculus GN=Lyn PE=1 SV=4	ITFPCISDMIK	0.880191686	32.4097808
574	P05213	sp|P05213|TBA1B_MOUSE	Tuba1b	Tubulin alpha-1B chain OS=Mus musculus GN=Tuba1b PE=1 SV=2	SIQFVDWCPTGFK	0.841608985	32.5732899
575	Q6PEB6	sp|Q6PEB6|PHOCN_MOUSE	Mob4	MOB-like protein phocein OS=Mus musculus GN=Mob4 PE=1 SV=1	HTLDGAACLLNSNK	1.056859015	32.67973856
576	Q8VCM4	sp|Q8VCM4|LIPT_MOUSE	Lipt1	Lipoyltransferase 1, mitochondrial OS=Mus musculus GN=Lipt1 PE=1 SV=1	FCPVETTLLTNVLLR	1.078050884	32.89473684
577	P03958	sp|P03958|ADA_MOUSE	Ada	Adenosine deaminase OS=Mus musculus GN=Ada PE=1 SV=3	FDYYMPVIAGCR	0.840901446	33.15376759
578	Q8CGC6	sp|Q8CGC6|RBM28_MOUSE	Rbm28	RNA-binding protein 28 OS=Mus musculus GN=Rbm28 PE=1 SV=4	EITTFEGCK	1.189332163	33.32700041
579	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	LYAQDADGCPIDIK	0.874243542	33.67003367
580	Q3TKT4	sp|Q3TKT4|SMCA4_MOUSE	Smarca4	Transcription activator BRG1 OS=Mus musculus GN=Smarca4 PE=1 SV=1	SCSTFEQWFNAPFAMTGEK	1.219719856	33.96556363
581	P60764	sp|P60764|RAC3_MOUSE	Rac3	Ras-related C3 botulinum toxin substrate 3 OS=Mus musculus GN=Rac3 PE=1 SV=1	AVLCPPPVK	0.831425038	34.24657534
582	Q8K2Q7	sp|Q8K2Q7|BROX_MOUSE	Brox	BRO1 domain-containing protein BROX OS=Mus musculus GN=Brox PE=1 SV=1	LYAEAEALCK	0.826514588	34.36426117
583	P47941	sp|P47941|CRKL_MOUSE	Crkl	Crk-like protein OS=Mus musculus GN=Crkl PE=1 SV=2	DSSTCPGDYVLSVSENSR	0.816326531	34.37375138
584	Q61595	sp|Q61595|KTN1_MOUSE	Ktn1	Kinectin OS=Mus musculus GN=Ktn1 PE=1 SV=1	TMMFSEDEALCVVDLLK	1.15742718	34.48275862
585	Q5HZI9	sp|Q5HZI9|S2551_MOUSE	Slc25a51	Solute carrier family 25 member 51 OS=Mus musculus GN=Slc25a51 PE=1 SV=1	CHGIAEYYR	1.067932246	34.48879552
586	P17710	sp|P17710|HXK1_MOUSE	Hk1	Hexokinase-1 OS=Mus musculus GN=Hk1 PE=1 SV=3	AILQQLGLNSTCDDSILVK	0.888967908	34.60207612
587	O35381	sp|O35381|AN32A_MOUSE	Anp32a	Acidic leucine-rich nuclear phosphoprotein 32 family member A OS=Mus musculus GN=Anp32a PE=1 SV=1	ELVLDNCK	0.921913893	34.60207612
588	Q9CPY7	sp|Q9CPY7|AMPL_MOUSE	Lap3	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	LILADALCYAHTFNPK	1.151808339	34.60207612
589	Q3UFY8	sp|Q3UFY8|MRRP1_MOUSE	Trmt10c	Mitochondrial ribonuclease P protein 1 OS=Mus musculus GN=Trmt10c PE=1 SV=2	APSLSCHNK	0.983372418	34.84320557
590	P60335	sp|P60335|PCBP1_MOUSE	Pcbp1	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	LVVPATQCGSLIGK	0.747984426	35.0877193
591	P57724	sp|P57724|PCBP4_MOUSE	Pcbp4	Poly(rC)-binding protein 4 OS=Mus musculus GN=Pcbp4 PE=1 SV=1	LVIPASQCGSLIGK	0.759653088	35.0877193
592	Q9CZB0	sp|Q9CZB0|C560_MOUSE	Sdhc	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial OS=Mus musculus GN=Sdhc PE=1 SV=1	SLCLGPTLIYSAK	0.788954635	35.0877193
593	Q64261	sp|Q64261|CDK6_MOUSE	Cdk6	Cyclin-dependent kinase 6 OS=Mus musculus GN=Cdk6 PE=1 SV=2	LFDVCTVSR	0.940379913	35.37599296
594	Q7TPD2	sp|Q7TPD2|F185A_MOUSE	Fam185a	Protein FAM185A OS=Mus musculus GN=Fam185a PE=2 SV=1	LQGSCVNISTEDGLLQAK	1.124985938	35.42126408
595	P70677	sp|P70677|CASP3_MOUSE	Casp3	Caspase-3 OS=Mus musculus GN=Casp3 PE=1 SV=1	LFIIQACR	0.684697022	35.47635495
596	Q9D6Z0	sp|Q9D6Z0|ALKB7_MOUSE	Alkbh7	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	LLSGCAWVR	0.964971533	35.64414768
597	Q9D6Z0	sp|Q9D6Z0|ALKB7_MOUSE	Alkbh7	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	FCGSTIAGLSLLSPSVMK	1.014404545	35.67012859
598	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	TPCEEVYVK	0.747851831	35.71428571
599	O88342	sp|O88342|WDR1_MOUSE	Wdr1	WD repeat-containing protein 1 OS=Mus musculus GN=Wdr1 PE=1 SV=3	VCALGESK	1.003823305	35.71428571
600	P54071	sp|P54071|IDHP_MOUSE	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial OS=Mus musculus GN=Idh2 PE=1 SV=3	DLAGCIHGLSNVK	1.192748092	35.74207353
601	Q60936	sp|Q60936|COQ8A_MOUSE	Coq8a	Atypical kinase COQ8A, mitochondrial OS=Mus musculus GN=Coq8a PE=1 SV=2	IVSTLCK	1.139211666	36.43960166
602	Q8R1B4	sp|Q8R1B4|EIF3C_MOUSE	Eif3c	Eukaryotic translation initiation factor 3 subunit C OS=Mus musculus GN=Eif3c PE=1 SV=1	GCILTLVER	0.821018062	36.49635036
603	Q5KU39	sp|Q5KU39|VPS41_MOUSE	Vps41	Vacuolar protein sorting-associated protein 41 homolog OS=Mus musculus GN=Vps41 PE=1 SV=1	ALEICQQR	0.838783443	37.09241808
604	P35282	sp|P35282|RAB21_MOUSE	Rab21	Ras-related protein Rab-21 OS=Mus musculus GN=Rab21 PE=1 SV=4	VVLLGEGCVGK	0.985086062	37.17472119
605	Q9CZR8	sp|Q9CZR8|EFTS_MOUSE	Tsfm	Elongation factor Ts, mitochondrial OS=Mus musculus GN=Tsfm PE=1 SV=1	ALETCGGDLK	1.158748552	37.45318352
606	Q8R081	sp|Q8R081|HNRPL_MOUSE	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	MNVCVSK	1.048327917	38.00087261
607	Q9JHU4	sp|Q9JHU4|DYHC1_MOUSE	Dync1h1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	LSCLPAFK	0.910580951	38.1634676
608	P68254	sp|P68254|1433T_MOUSE	Ywhaq	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	YLAEVACGDDR	0.796749263	38.47207948
609	Q61879	sp|Q61879|MYH10_MOUSE	Myh10	Myosin-10 OS=Mus musculus GN=Myh10 PE=1 SV=2	VEDMAELTCLNEASVLHNLK	1.207146306	38.61003861
610	Q9JJU8	sp|Q9JJU8|SH3L1_MOUSE	Sh3bgrl	SH3 domain-binding glutamic acid-rich-like protein OS=Mus musculus GN=Sh3bgrl PE=1 SV=1	QQDVLCFLEANK	0.79870845	38.86487957
611	Q922F4	sp|Q922F4|TBB6_MOUSE	Tubb6	Tubulin beta-6 chain OS=Mus musculus GN=Tubb6 PE=1 SV=1	NMMAACDPR	0.782414831	39.21568627
612	Q8C7H1	sp|Q8C7H1|MMAA_MOUSE	Mmaa	Methylmalonic aciduria type A homolog, mitochondrial OS=Mus musculus GN=Mmaa PE=1 SV=1	LSVLAVDPSSCTSGGSLLGDK	0.97799511	39.26032955
613	Q9Z1Z0	sp|Q9Z1Z0|USO1_MOUSE	Uso1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	LQTENCELLQR	0.753046572	39.32302968
614	Q3KNM2	sp|Q3KNM2|MARH5_MOUSE	March5	E3 ubiquitin-protein ligase MARCH5 OS=Mus musculus GN=March5 PE=1 SV=1	LQILNSIFPGIGCPVPR	0.926781648	39.34848601
615	O54833	sp|O54833|CSK22_MOUSE	Csnk2a2	Casein kinase II subunit alpha' OS=Mus musculus GN=Csnk2a2 PE=1 SV=1	EQSQPCAENTVLSSGLTAAR	0.606358005	39.39181052
616	Q8VDD5	sp|Q8VDD5|MYH9_MOUSE	Myh9	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	MEDGVGCLETAEEAK	0.83633301	39.80099502
617	Q9WUA3	sp|Q9WUA3|PFKAP_MOUSE	Pfkp	ATP-dependent 6-phosphofructokinase, platelet type OS=Mus musculus GN=Pfkp PE=1 SV=1	WDCVSSILQVGGTIIGSAR	0.921680979	40.16064257
618	Q8QZT1	sp|Q8QZT1|THIL_MOUSE	Acat1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	IHMGNCAENTAK	0.908425289	40.48582996
619	Q6P5F9	sp|Q6P5F9|XPO1_MOUSE	Xpo1	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	LQMSVPGILNPHEIPEEMCD	1.267266506	40.63444468
620	P52196	sp|P52196|THTR_MOUSE	Tst	Thiosulfate sulfurtransferase OS=Mus musculus GN=Tst PE=1 SV=3	VDLSQPLIATCR	1.042634064	41.15226337
621	P06151	sp|P06151|LDHA_MOUSE	Ldha	L-lactate dehydrogenase A chain	DYCVTANSK	0.78070107	41.32231405
622	O55022	sp|O55022|PGRC1_MOUSE	Pgrmc1	Membrane-associated progesterone receptor component 1 OS=Mus musculus GN=Pgrmc1 PE=1 SV=4	GLATFCLDK	0.919357206	41.32231405
623	P70333	sp|P70333|HNRH2_MOUSE	Hnrnph2	Heterogeneous nuclear ribonucleoprotein H2 OS=Mus musculus GN=Hnrnph2 PE=1 SV=1	DLNYCFSGMSDHR	0.795079293	41.45169732
624	Q9EST4	sp|Q9EST4|PSMG2_MOUSE	Psmg2	Proteasome assembly chaperone 2 OS=Mus musculus GN=Psmg2 PE=1 SV=1	YLLTPCLQK	0.886897853	41.46454817
625	Q8BGQ7	sp|Q8BGQ7|SYAC_MOUSE	Aars	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	IQSLGDCK	0.498057575	41.49377593
626	Q91YR9	sp|Q91YR9|PTGR1_MOUSE	Ptgr1	Prostaglandin reductase 1 OS=Mus musculus GN=Ptgr1 PE=1 SV=2	TGPCPQGPAPEVVIYQQLR	0.817899759	41.49377593
627	Q7TMK9	sp|Q7TMK9|HNRPQ_MOUSE	Syncrip	Heterogeneous nuclear ribonucleoprotein Q OS=Mus musculus GN=Syncrip PE=1 SV=2	SAFLCGVMK	0.974943941	41.66666667
628	Q61510	sp|Q61510|TRI25_MOUSE	Trim25	E3 ubiquitin/ISG15 ligase TRIM25 OS=Mus musculus GN=Trim25 PE=1 SV=2	QQCVQDSMK	0.794852269	42.17627033
629	P38060	sp|P38060|HMGCL_MOUSE	Hmgcl	Hydroxymethylglutaryl-CoA lyase, mitochondrial OS=Mus musculus GN=Hmgcl PE=1 SV=2	NANCSIEESFQR	0.881134902	42.19409283
630	Q6NS46	sp|Q6NS46|RRP5_MOUSE	Pdcd11	Protein RRP5 homolog OS=Mus musculus GN=Pdcd11 PE=1 SV=2	CVLPSSVIIGLGPSVLGLAK	1.171207586	42.37288136
631	Q03963	sp|Q03963|E2AK2_MOUSE	Eif2ak2	Interferon-induced, double-stranded RNA-activated protein kinase OS=Mus musculus GN=Eif2ak2 PE=1 SV=2	LSVNYEQCEPNSELPQR	0.876962203	42.45186961
632	Q76MZ3	sp|Q76MZ3|2AAA_MOUSE	Ppp2r1a	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform OS=Mus musculus GN=Ppp2r1a PE=1 SV=3	LNIISNLDCVNEVIGIR	1.050420168	42.91845494
633	Q9D0E1	sp|Q9D0E1|HNRPM_MOUSE	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	MEEESGAPCVPSGNGAPGPK	0.773903698	43.10344828
634	Q9WVA3	sp|Q9WVA3|BUB3_MOUSE	Bub3	Mitotic checkpoint protein BUB3 OS=Mus musculus GN=Bub3 PE=1 SV=2	TPCNAGTFSQPEK	0.771031237	43.48326647
635	P63087	sp|P63087|PP1G_MOUSE	Ppp1cc	Serine/threonine-protein phosphatase PP1-gamma catalytic subunit OS=Mus musculus GN=Ppp1cc PE=1 SV=1	GNHECASINR	0.991951246	43.66812227
636	Q8BMJ2	sp|Q8BMJ2|SYLC_MOUSE	Lars	Leucine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Lars PE=1 SV=2	EMLASCSSLR	0.738767609	43.78149195
637	P11157	sp|P11157|RIR2_MOUSE	Rrm2	Ribonucleoside-diphosphate reductase subunit M2 OS=Mus musculus GN=Rrm2 PE=1 SV=1	LIGMNCTLMK	0.882667237	43.85964912
638	Q8R123	sp|Q8R123|FAD1_MOUSE	Flad1	FAD synthase OS=Mus musculus GN=Flad1 PE=1 SV=1	LAESGSCLGK	1.016466762	43.86269975
639	Q80UJ7	sp|Q80UJ7|RB3GP_MOUSE	Rab3gap1	Rab3 GTPase-activating protein catalytic subunit OS=Mus musculus GN=Rab3gap1 PE=1 SV=4	FVSCLLEQPEVSVTGAGR	1.265502404	43.93959744
640	Q9QWT9	sp|Q9QWT9|KIFC1_MOUSE	Kifc1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	VLELEECLGTR	1.112718371	44.05286344
641	Q3U0J8	sp|Q3U0J8|TBD2B_MOUSE	Tbc1d2b	TBC1 domain family member 2B OS=Mus musculus GN=Tbc1d2b PE=1 SV=2	LCQVESK	1.017071284	44.64285714
642	Q9WV85	sp|Q9WV85|NDK3_MOUSE	Nme3	Nucleoside diphosphate kinase 3 OS=Mus musculus GN=Nme3 PE=1 SV=3	EAELLCWEDSAGHWLYE	1.070332727	44.64285714
643	Q8R480	sp|Q8R480|NUP85_MOUSE	Nup85	Nuclear pore complex protein Nup85 OS=Mus musculus GN=Nup85 PE=1 SV=1	MEELDCEPAVTWIPGVNSK	0.931611514	45.02711106
644	Q61686	sp|Q61686|CBX5_MOUSE	Cbx5	Chromobox protein homolog 5 OS=Mus musculus GN=Cbx5 PE=1 SV=1	IIGATDSCGDLMFLMK	0.827149507	45.04504505
645	Q9D7P6	sp|Q9D7P6|ISCU_MOUSE	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	NVGTGLVGAPACGDVMK	0.868432479	45.24886878
646	Q66GT5	sp|Q66GT5|PTPM1_MOUSE	Ptpmt1	Phosphatidylglycerophosphatase and protein-tyrosine phosphatase 1 OS=Mus musculus GN=Ptpmt1 PE=1 SV=1	FLCNTSK	0.969422377	45.38330939
647	P62858	sp|P62858|RS28_MOUSE	Rps28	40S ribosomal protein S28 OS=Mus musculus GN=Rps28 PE=1 SV=1	TGSQGQCTQVR	0.907331009	45.45454545
648	P97377	sp|P97377|CDK2_MOUSE	Cdk2	Cyclin-dependent kinase 2 OS=Mus musculus GN=Cdk2 PE=1 SV=2	APEILLGCK	0.89637863	45.99303136
649	P47915	sp|P47915|RL29_MOUSE	Rpl29	60S ribosomal protein L29 OS=Mus musculus GN=Rpl29 PE=2 SV=2	LCQPKPK	0.823249632	46.12794613
650	O70209	sp|O70209|PDLI3_MOUSE	Pdlim3	PDZ and LIM domain protein 3 OS=Mus musculus GN=Pdlim3 PE=1 SV=1	AASYQLCLK	1.01999184	46.18226601
651	Q9D8N0	sp|Q9D8N0|EF1G_MOUSE	Eef1g	Elongation factor 1-gamma OS=Mus musculus GN=Eef1g PE=1 SV=3	FPEELTQTFMSCNLITGMFQR	1.214181642	46.2962963
652	Q8BNV1	sp|Q8BNV1|TRM2A_MOUSE	Trmt2a	tRNA (uracil-5-)-methyltransferase homolog A OS=Mus musculus GN=Trmt2a PE=1 SV=1	LLYVSCNPR	0.644498662	46.77558503
653	Q9D0E1	sp|Q9D0E1|HNRPM_MOUSE	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	ACQIFVR	0.933358223	46.79708477
654	P85094	sp|P85094|ISC2A_MOUSE	Isoc2a	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	EPVPDSGLLSLFQGQSPLTSC	1.089087345	47.02928158
655	Q8R081	sp|Q8R081|HNRPL_MOUSE	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	LCFSTAQHAS	0.681054571	47.19274978
656	Q9WUL7	sp|Q9WUL7|ARL3_MOUSE	Arl3	ADP-ribosylation factor-like protein 3 OS=Mus musculus GN=Arl3 PE=1 SV=1	LSCVPVLIFANK	0.760229651	47.38196755
657	Q9R0Q7	sp|Q9R0Q7|TEBP_MOUSE	Ptges3	Prostaglandin E synthase 3 OS=Mus musculus GN=Ptges3 PE=1 SV=1	HLNEIDLFHCIDPNDSK	1.075750388	47.39336493
658	Q9Z2Z6	sp|Q9Z2Z6|MCAT_MOUSE	Slc25a20	Mitochondrial carnitine/acylcarnitine carrier protein OS=Mus musculus GN=Slc25a20 PE=1 SV=1	CLLQIQASSGENK	1.25250501	47.39336493
659	P21981	sp|P21981|TGM2_MOUSE	Tgm2	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	YSGCLTESNLIK	1.077144696	47.61904762
660	Q8BG51	sp|Q8BG51|MIRO1_MOUSE	Rhot1	Mitochondrial Rho GTPase 1 OS=Mus musculus GN=Rhot1 PE=1 SV=1	AVLHPTGPLYCPEEK	0.935634104	48.04147465
661	Q8JZK9	sp|Q8JZK9|HMCS1_MOUSE	Hmgcs1	Hydroxymethylglutaryl-CoA synthase, cytoplasmic OS=Mus musculus GN=Hmgcs1 PE=1 SV=1	HSLSYDCIGR	0.941885655	48.07692308
662	Q60864	sp|Q60864|STIP1_MOUSE	Stip1	Stress-induced-phosphoprotein 1 OS=Mus musculus GN=Stip1 PE=1 SV=1	ALDLDSSCK	0.841738373	48.30917874
663	Q9EQX4	sp|Q9EQX4|AIF1L_MOUSE	Aif1l	Allograft inflammatory factor 1-like OS=Mus musculus GN=Aif1l PE=1 SV=1	EFLCDQK	0.735291167	48.5380117
664	P43247	sp|P43247|MSH2_MOUSE	Msh2	DNA mismatch repair protein Msh2 OS=Mus musculus GN=Msh2 PE=1 SV=1	HVIACAK	0.86043426	48.54368932
665	Q9CQL1	sp|Q9CQL1|MGN2_MOUSE	Magohb	Protein mago nashi homolog 2 OS=Mus musculus GN=Magohb PE=2 SV=1	CLVFSLIGLHFK	0.973899494	48.56982855
666	Q9CXT8	sp|Q9CXT8|MPPB_MOUSE	Pmpcb	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	FHFGDSLCSHK	0.901306895	49.26108374
667	O70468	sp|O70468|MYPC3_MOUSE	Mybpc3	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	LLCETEGR	0.669442691	49.5049505
668	Q3UHB1	sp|Q3UHB1|NT5D3_MOUSE	Nt5dc3	5'-nucleotidase domain-containing protein 3 OS=Mus musculus GN=Nt5dc3 PE=1 SV=1	YICYADQTR	1.181753723	50.50505051
669	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	VTEAVECLLSLK	1.082987785	50.61250806
670	Q3U186	sp|Q3U186|SYRM_MOUSE	Rars2	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	CDTVVTAISAGPR	1.094293315	50.67220854
671	Q9DCM0	sp|Q9DCM0|ETHE1_MOUSE	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	SLLPGCQSVISR	0.965344145	51.02040816
672	Q9Z1Q9	sp|Q9Z1Q9|SYVC_MOUSE	Vars	Valine--tRNA ligase OS=Mus musculus GN=Vars PE=1 SV=1	CVVHPFLSR	1.121266813	51.02040816
673	Q6A4J8	sp|Q6A4J8|UBP7_MOUSE	Usp7	Ubiquitin carboxyl-terminal hydrolase 7 OS=Mus musculus GN=Usp7 PE=1 SV=1	NQGATCYMNSLLQTLFFTNQLR	1.332445037	51.60092807
674	P85094	sp|P85094|ISC2A_MOUSE	Isoc2a	Isochorismatase domain-containing protein 2A OS=Mus musculus GN=Isoc2a PE=1 SV=1	TCFSMVPALQK	1.126633619	52.63157895
675	P20152	sp|P20152|VIME_MOUSE	Vim	Vimentin OS=Mus musculus GN=Vim PE=1 SV=3	QVQSLTCEVDALK	0.975754093	52.91005291
676	Q61699	sp|Q61699|HS105_MOUSE	Hsph1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	LMSSNSTDLPLNIECFMNDK	1.28600823	53.08988764
677	Q9Z1D1	sp|Q9Z1D1|EIF3G_MOUSE	Eif3g	Eukaryotic translation initiation factor 3 subunit G OS=Mus musculus GN=Eif3g PE=1 SV=2	EDLNCQEEEDPMNK	0.746607929	53.19879861
678	Q8R2Q4	sp|Q8R2Q4|RRF2M_MOUSE	Gfm2	Ribosome-releasing factor 2, mitochondrial OS=Mus musculus GN=Gfm2 PE=1 SV=2	IEYADCVGEDLLQASR	1.028928997	53.38654012
679	P52633	sp|P52633|STAT6_MOUSE	Stat6	Signal transducer and transcription activator 6 OS=Mus musculus GN=Stat6 PE=1 SV=2	CVSWSQFNK	1.165031009	53.95299145
680	P18155	sp|P18155|MTDC_MOUSE	Mthfd2	Bifunctional methylenetetrahydrofolate dehydrogenase/cyclohydrolase, mitochondrial OS=Mus musculus GN=Mthfd2 PE=1 SV=1	MCLDQYSMLPATPWGVWEIIK	1.155268022	54.4912429
681	P09405	sp|P09405|NUCL_MOUSE	Ncl	Nucleolin OS=Mus musculus GN=Ncl PE=1 SV=2	EALNSCNK	0.909857392	54.94505495
682	Q61655	sp|Q61655|DD19A_MOUSE	Ddx19a	ATP-dependent RNA helicase DDX19A OS=Mus musculus GN=Ddx19a PE=1 SV=2	VLVTTNVCAR	0.789079145	55.18263183
683	Q5SW19	sp|Q5SW19|CLU_MOUSE	Cluh	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	CLTQQAVALQR	0.991375037	55.24861878
684	Q7TPR4	sp|Q7TPR4|ACTN1_MOUSE	Actn1	Alpha-actinin-1 OS=Mus musculus GN=Actn1 PE=1 SV=1	MVSDINNAWGCLEQAEK	0.946431952	55.55555556
685	P23198	sp|P23198|CBX3_MOUSE	Cbx3	Chromobox protein homolog 3 OS=Mus musculus GN=Cbx3 PE=1 SV=2	LTWHSCPEDEAQ	0.722690811	55.55555556
686	Q8CEI1	sp|Q8CEI1|BOLA3_MOUSE	Bola3	BolA-like protein 3 OS=Mus musculus GN=Bola3 PE=1 SV=1	ATAIQVTDISGGCGAMYEIK	0.886289108	56.9424271
687	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	GTVCAANDFNPDADAK	0.946790381	57.47126437
688	Q5SYD0	sp|Q5SYD0|MYO1D_MOUSE	Myo1d	Unconventional myosin-Id OS=Mus musculus GN=Myo1d PE=1 SV=1	LFCWIVTR	0.980776775	58.13953488
689	P60487	sp|P60487|PLPP_MOUSE	Pdxp	Pyridoxal phosphate phosphatase OS=Mus musculus GN=Pdxp PE=1 SV=1	DVLGQAQGVLFDCDGVLWNGER	1.006968372	58.13953488
690	Q9CZY3	sp|Q9CZY3|UB2V1_MOUSE	Ube2v1	Ubiquitin-conjugating enzyme E2 variant 1 OS=Mus musculus GN=Ube2v1 PE=1 SV=1	LPQPPEGQCYSN	0.842512799	58.82352941
691	Q91VA6	sp|Q91VA6|PDIP2_MOUSE	Poldip2	Polymerase delta-interacting protein 2 OS=Mus musculus GN=Poldip2 PE=1 SV=1	DCPHISQR	1.076426265	59.17159763
692	P14869	sp|P14869|RLA0_MOUSE	Rplp0	60S acidic ribosomal protein P0 OS=Mus musculus GN=Rplp0 PE=1 SV=3	AGAIAPCEVTVPAQNTGLGPEK	1.081571095	59.17159763
693	P62717	sp|P62717|RL18A_MOUSE	Rpl18a	60S ribosomal protein L18a OS=Mus musculus GN=Rpl18a PE=1 SV=1	CHTPPLYR	1.102995383	59.52380952
694	Q9QXS1	sp|Q9QXS1|PLEC_MOUSE	Plec	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	AFCGFEDPR	0.885281192	59.52380952
695	P35821	sp|P35821|PTN1_MOUSE	Ptpn1	Tyrosine-protein phosphatase non-receptor type 1 OS=Mus musculus GN=Ptpn1 PE=1 SV=2	HEASDFPCK	1.120950566	59.79437229
696	Q8BKC5	sp|Q8BKC5|IPO5_MOUSE	Ipo5	Importin-5 OS=Mus musculus GN=Ipo5 PE=1 SV=3	YAEYFISPMLQYVCDNSPEVR	1.292156609	60.1517341
697	Q9D1H7	sp|Q9D1H7|GET4_MOUSE	Get4	Golgi to ER traffic protein 4 homolog OS=Mus musculus GN=Get4 PE=1 SV=2	EQNYCESR	0.83001328	60.24096386
698	P58044	sp|P58044|IDI1_MOUSE	Idi1	Isopentenyl-diphosphate Delta-isomerase 1 OS=Mus musculus GN=Idi1 PE=1 SV=1	SYCYVSK	1.063490375	60.60606061
699	Q80X90	sp|Q80X90|FLNB_MOUSE	Flnb	Filamin-B OS=Mus musculus GN=Flnb PE=1 SV=3	IAGPGLSSCVR	1.00715077	62.11180124
700	O70250	sp|O70250|PGAM2_MOUSE	Pgam2	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	FCGWFDAELSEK	0.890234721	62.5
701	Q6NZJ6	sp|Q6NZJ6|IF4G1_MOUSE	Eif4g1	Eukaryotic translation initiation factor 4 gamma 1 OS=Mus musculus GN=Eif4g1 PE=1 SV=1	YLCDEQK	1.067591784	62.81800391
702	P63300	sp|P63300|SELW_MOUSE	Selenow	Selenoprotein W OS=Mus musculus GN=Selenow PE=1 SV=3	AALAQCQ	0.825430014	63.15433975
703	Q9Z1P6	sp|Q9Z1P6|NDUA7_MOUSE	Ndufa7	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 7 OS=Mus musculus GN=Ndufa7 PE=1 SV=3	LSNNYYCTR	0.829411351	64.80816782
704	O88508	sp|O88508|DNM3A_MOUSE	Dnmt3a	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	FSVVCVEK	0.846310088	65.25337408
705	Q3U186	sp|Q3U186|SYRM_MOUSE	Rars2	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	SIACQLSR	0.825186785	65.29982363
706	P54276	sp|P54276|MSH6_MOUSE	Msh6	DNA mismatch repair protein Msh6 OS=Mus musculus GN=Msh6 PE=1 SV=3	LFCNFDK	0.934142924	65.60832903
707	Q9JJG9	sp|Q9JJG9|NOA1_MOUSE	Noa1	Nitric oxide-associated protein 1 OS=Mus musculus GN=Noa1 PE=1 SV=1	FPICNPTPYR	1.018952517	65.90673575
708	O88986	sp|O88986|KBL_MOUSE	Gcat	2-amino-3-ketobutyrate coenzyme A ligase, mitochondrial OS=Mus musculus GN=Gcat PE=1 SV=2	CILDSELEGIR	1.152604887	66.44794219
709	P21981	sp|P21981|TGM2_MOUSE	Tgm2	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	VVSAMVNCNDDQGVLLGR	1.095825579	66.66666667
710	Q91XR9	sp|Q91XR9|GPX42_MOUSE	Gpx4	Phospholipid hydroperoxide glutathione peroxidase, nuclear OS=Mus musculus GN=Gpx4 PE=1 SV=3	YAECGLR	0.743338801	67.11409396
711	Q9D0I9	sp|Q9D0I9|SYRC_MOUSE	Rars	Arginine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Rars PE=1 SV=2	LQEVFGCAIR	0.890053881	67.11409396
712	Q9QZE5	sp|Q9QZE5|COPG1_MOUSE	Copg1	Coatomer subunit gamma-1 OS=Mus musculus GN=Copg1 PE=1 SV=1	CSFDVVK	0.756290855	67.57099391
713	Q9Z0S1	sp|Q9Z0S1|BPNT1_MOUSE	Bpnt1	3'(2'),5'-bisphosphate nucleotidase 1 OS=Mus musculus GN=Bpnt1 PE=1 SV=2	CVIAEGDLGIVQK	0.777484062	68.60826522
714	Q61699	sp|Q61699|HS105_MOUSE	Hsph1	Heat shock protein 105 kDa OS=Mus musculus GN=Hsph1 PE=1 SV=2	FICEQEHEK	0.778798009	68.96551724
715	Q9CWG8	sp|Q9CWG8|NDUF7_MOUSE	Ndufaf7	Protein arginine methyltransferase NDUFAF7, mitochondrial OS=Mus musculus GN=Ndufaf7 PE=1 SV=4	FVLAPCATPAEAFIQR	1.078515962	70.23809524
716	Q9CY73	sp|Q9CY73|RM44_MOUSE	Mrpl44	39S ribosomal protein L44, mitochondrial OS=Mus musculus GN=Mrpl44 PE=1 SV=3	TAFINSCYIK	0.85246636	70.42253521
717	Q91V12	sp|Q91V12|BACH_MOUSE	Acot7	Cytosolic acyl coenzyme A thioester hydrolase OS=Mus musculus GN=Acot7 PE=1 SV=2	LGHCVTMGR	1.027010373	70.84767749
718	P40338	sp|P40338|VHL_MOUSE	Vhl	Von Hippel-Lindau disease tumor suppressor OS=Mus musculus GN=Vhl PE=1 SV=1	EPSQVIFCNR	1.024873168	71.83908046
719	P38647	sp|P38647|GRP75_MOUSE	Hspa9	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	CELSSSVQTDINLPYLTMDASGPK	1.35998912	71.83908046
720	Q99PU8	sp|Q99PU8|DHX30_MOUSE	Dhx30	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	LATLTLLWPCPMTFVAK	1.341921632	72.0498173
721	Q9CPY7	sp|Q9CPY7|AMPL_MOUSE	Lap3	Cytosol aminopeptidase OS=Mus musculus GN=Lap3 PE=1 SV=3	QVIDCQLADVNNLGK	0.876885303	72.32084155
722	D3YXK2	sp|D3YXK2|SAFB1_MOUSE	Safb	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	FAFDACNDVPAPPK	1.409641951	72.74467576
723	Q99KI0	sp|Q99KI0|ACON_MOUSE	Aco2	Aconitate hydratase, mitochondrial OS=Mus musculus GN=Aco2 PE=1 SV=1	VGLIGSCTNSSYEDMGR	0.934492104	73.52941176
724	P62908	sp|P62908|RS3_MOUSE	Rps3	40S ribosomal protein S3 OS=Mus musculus GN=Rps3 PE=1 SV=1	GLCAIAQAESLR	0.911419015	74.62686567
725	Q9CZS1	sp|Q9CZS1|AL1B1_MOUSE	Aldh1b1	Aldehyde dehydrogenase X, mitochondrial OS=Mus musculus GN=Aldh1b1 PE=1 SV=1	LLCGGER	0.784990973	74.77924945
726	Q99K48	sp|Q99K48|NONO_MOUSE	Nono	Non-POU domain-containing octamer-binding protein OS=Mus musculus GN=Nono PE=1 SV=3	FACHSASLTVR	0.921876558	75.75757576
727	Q9WVA4	sp|Q9WVA4|TAGL2_MOUSE	Tagln2	Transgelin-2 OS=Mus musculus GN=Tagln2 PE=1 SV=4	NMACVQR	0.817539638	76.92307692
728	P30275	sp|P30275|KCRU_MOUSE	Ckmt1	Creatine kinase U-type, mitochondrial OS=Mus musculus GN=Ckmt1 PE=1 SV=1	LGYILTCPSNLGTGLR	0.945447669	76.92307692
729	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	VANPSGNLTDTYVQDCGDGTYK	1.202935162	76.92307692
730	Q8BZW8	sp|Q8BZW8|NHLC2_MOUSE	Nhlrc2	NHL repeat-containing protein 2 OS=Mus musculus GN=Nhlrc2 PE=1 SV=1	TVSVLPVCK	0.815533582	78.125
731	Q6P5D8	sp|Q6P5D8|SMHD1_MOUSE	Smchd1	Structural maintenance of chromosomes flexible hinge domain-containing protein 1 OS=Mus musculus GN=Smchd1 PE=1 SV=2	ANLGVFTVCAPR	1.287318709	78.19990412
732	Q9DCM0	sp|Q9DCM0|ETHE1_MOUSE	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	TDFQQGCAK	0.912242292	80
733	Q791V5	sp|Q791V5|MTCH2_MOUSE	Mtch2	Mitochondrial carrier homolog 2 OS=Mus musculus GN=Mtch2 PE=1 SV=1	TYCYDLR	0.876151052	80.64516129
734	Q60930	sp|Q60930|VDAC2_MOUSE	Vdac2	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	WCEYGLTFTEK	0.896474629	81.96721311
735	O70468	sp|O70468|MYPC3_MOUSE	Mybpc3	Myosin-binding protein C, cardiac-type OS=Mus musculus GN=Mybpc3 PE=1 SV=1	LTIDDVTPADEADYSFVPEGFACNLSAK	1.189484953	81.96721311
736	Q60931	sp|Q60931|VDAC3_MOUSE	Vdac3	Voltage-dependent anion-selective channel protein 3 OS=Mus musculus GN=Vdac3 PE=1 SV=1	VCNYGLTFTQK	0.919130311	82.6446281
737	Q60930	sp|Q60930|VDAC2_MOUSE	Vdac2	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	SCSGVEFSTSGSSNTDTGK	0.938601137	82.6446281
738	Q9CR21	sp|Q9CR21|ACPM_MOUSE	Ndufab1	Acyl carrier protein, mitochondrial OS=Mus musculus GN=Ndufab1 PE=1 SV=1	LMCPQEIVDYIADK	1.235025318	85.47008547
739	Q99MR8	sp|Q99MR8|MCCA_MOUSE	Mccc1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	VLGDLSSEDGCTYLK	1.023017903	86.20689655
740	Q9CPP6	sp|Q9CPP6|NDUA5_MOUSE	Ndufa5	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 5 OS=Mus musculus GN=Ndufa5 PE=1 SV=3	TTGLVGLAVCDTPHER	1.055297594	86.8540232
741	Q61990	sp|Q61990|PCBP2_MOUSE	Pcbp2	Poly(rC)-binding protein 2 OS=Mus musculus GN=Pcbp2 PE=1 SV=1	INISEGNCPER	0.811770974	86.95652174
742	Q71RI9	sp|Q71RI9|KAT3_MOUSE	Kyat3	Kynurenine--oxoglutarate transaminase 3 OS=Mus musculus GN=Kyat3 PE=1 SV=1	ALSCLYGK	1.024170422	86.95652174
743	Q9JK42	sp|Q9JK42|PDK2_MOUSE	Pdk2	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial OS=Mus musculus GN=Pdk2 PE=1 SV=2	QFLDFGSSNACEK	1.069289991	87.1754107
744	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	VACQGEVVR	0.798755504	87.71929825
745	Q9D8S9	sp|Q9D8S9|BOLA1_MOUSE	Bola1	BolA-like protein 1 OS=Mus musculus GN=Bola1 PE=1 SV=1	ENPQLDISPPCLGGSK	0.959232614	87.71929825
746	Q61753	sp|Q61753|SERA_MOUSE	Phgdh	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	NAGTCLSPAVIVGLLR	1.092155176	87.71929825
747	Q9EPB4	sp|Q9EPB4|ASC_MOUSE	Pycard	Apoptosis-associated speck-like protein containing a CARD OS=Mus musculus GN=Pycard PE=1 SV=1	LFSFVPSWNLTCK	0.995817566	89.28571429
748	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	SCQFVAVR	1.124786842	89.28571429
749	Q91YQ5	sp|Q91YQ5|RPN1_MOUSE	Rpn1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	VACITEQVLTLVNK	0.948917043	90.09009009
750	Q6ZWV3	sp|Q6ZWV3|RL10_MOUSE	Rpl10	60S ribosomal protein L10 OS=Mus musculus GN=Rpl10 PE=1 SV=3	MLSCAGADR	0.791166624	90.90909091
751	O08528	sp|O08528|HXK2_MOUSE	Hk2	Hexokinase-2 OS=Mus musculus GN=Hk2 PE=1 SV=1	FLSQIESDCLALLQVR	0.939353881	91.40117538
752	Q921F2	sp|Q921F2|TADBP_MOUSE	Tardbp	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	VAQSLCGEDLIIK	1.058009372	93.45794393
753	Q61584	sp|Q61584|FXR1_MOUSE	Fxr1	Fragile X mental retardation syndrome-related protein 1 OS=Mus musculus GN=Fxr1 PE=1 SV=2	ANDQEPCGWWLAK	1.191753069	97.06457926
754	Q9R0P5	sp|Q9R0P5|DEST_MOUSE	Dstn	Destrin OS=Mus musculus GN=Dstn PE=1 SV=3	CIVVEEGK	1.228803146	97.08737864
755	Q9JHW2	sp|Q9JHW2|NIT2_MOUSE	Nit2	Omega-amidase NIT2 OS=Mus musculus GN=Nit2 PE=1 SV=1	VGLGICYDMR	0.962371283	98.03921569
756	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	VQVQDNEGCSVEATVK	1.038098204	99.00990099
757	Q3U186	sp|Q3U186|SYRM_MOUSE	Rars2	Probable arginine--tRNA ligase, mitochondrial OS=Mus musculus GN=Rars2 PE=1 SV=1	AVLQQVTEDGCK	1.018765832	104.1666667
758	Q64737	sp|Q64737|PUR2_MOUSE	Gart	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	QVLVAPGNAGTACAGK	0.74141168	106.3829787
759	Q8CGY6	sp|Q8CGY6|UN45B_MOUSE	Unc45b	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	AGVISALACMVK	1.000800641	106.3829787
760	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C OS=Mus musculus GN=Flnc PE=1 SV=3	VCAYGPGLK	0.988126489	108.7702107
761	Q61316	sp|Q61316|HSP74_MOUSE	Hspa4	Heat shock 70 kDa protein 4 OS=Mus musculus GN=Hspa4 PE=1 SV=1	WNSPAEEGLSDCEVFPK	1.246261216	109.7149287
762	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	LENINGVSDGYLNSLCSVR	1.047230076	111.1111111
763	O35295	sp|O35295|PURB_MOUSE	Purb	Transcriptional activator protein Pur-beta OS=Mus musculus GN=Purb PE=1 SV=3	FGGAFCR	1.169043722	111.1111111
764	Q8VDD5	sp|Q8VDD5|MYH9_MOUSE	Myh9	Myosin-9 OS=Mus musculus GN=Myh9 PE=1 SV=4	LEEDQIIMEDQNCK	0.734419933	114.9425287
765	Q9JIF0	sp|Q9JIF0|ANM1_MOUSE	Prmt1	Protein arginine N-methyltransferase 1 OS=Mus musculus GN=Prmt1 PE=1 SV=1	VIGIECSSISDYAVK	1.123974373	117.6470588
766	Q9D6Z0	sp|Q9D6Z0|ALKB7_MOUSE	Alkbh7	Alpha-ketoglutarate-dependent dioxygenase alkB homolog 7, mitochondrial OS=Mus musculus GN=Alkbh7 PE=1 SV=1	SLPEGMGPGRPEEPPPAC	1.121956692	118.5744568
767	P31254	sp|P31254|UBA1Y_MOUSE	Uba1y	Ubiquitin-like modifier-activating enzyme 1 Y OS=Mus musculus GN=Uba1y PE=1 SV=2	SIPICTLK	0.962560483	120.4819277
768	Q9D0I9	sp|Q9D0I9|SYRC_MOUSE	Rars	Arginine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Rars PE=1 SV=2	IVFVPGCSVPLTIVK	1.085950516	123.4567901
769	P45377	sp|P45377|ALD2_MOUSE	Akr1b8	Aldose reductase-related protein 2 OS=Mus musculus GN=Akr1b8 PE=1 SV=2	ACLLPETVNMEEYPYDAEY	1.301913813	129.2959626
770	Q91XR9	sp|Q91XR9|GPX42_MOUSE	Gpx4	Phospholipid hydroperoxide glutathione peroxidase, nuclear OS=Mus musculus GN=Gpx4 PE=1 SV=3	ICVNGDDAHPLWK	1.199472232	136.0294118
771	Q80UM3	sp|Q80UM3|NAA15_MOUSE	Naa15	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	LFHSVCESK	1.050309841	138.8888889
772	Q9D0R2	sp|Q9D0R2|SYTC_MOUSE	Tars	Threonine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Tars PE=1 SV=2	FMADTDLDPGCTLNK	1.223692868	142.8571429
773	Q9CQC6	sp|Q9CQC6|BZW1_MOUSE	Bzw1	Basic leucine zipper and W2 domain-containing protein 1 OS=Mus musculus GN=Bzw1 PE=1 SV=1	FDPTQFQDCIIQGLTETGTDLEAVAK	1.391182046	144.1666667
774	Q8BYL4	sp|Q8BYL4|SYYM_MOUSE	Yars2	Tyrosine--tRNA ligase, mitochondrial OS=Mus musculus GN=Yars2 PE=1 SV=2	EALSAECVR	1.039165184	144.9275362
775	P47738	sp|P47738|ALDH2_MOUSE	Aldh2	Aldehyde dehydrogenase, mitochondrial OS=Mus musculus GN=Aldh2 PE=1 SV=1	LLCGGGAAADR	0.897827258	147.0588235
776	Q9WUB3	sp|Q9WUB3|PYGM_MOUSE	Pygm	Glycogen phosphorylase, muscle form OS=Mus musculus GN=Pygm PE=1 SV=3	ICGGWQMEEADDWLR	0.808182695	156.25
777	Q9Z2I0	sp|Q9Z2I0|LETM1_MOUSE	Letm1	Mitochondrial proton/calcium exchanger protein OS=Mus musculus GN=Letm1 PE=1 SV=1	EEIDILSDACSK	0.838082467	156.8627451
778	Q6PB66	sp|Q6PB66|LPPRC_MOUSE	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	VFESTCSSGSPGSNQALLLLR	1.236552492	158.7301587
779	Q9CZ13	sp|Q9CZ13|QCR1_MOUSE	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	YFYDQCPAVAGYGPIEQLPDYNR	1.332800213	158.7301587
780	Q9DCM0	sp|Q9DCM0|ETHE1_MOUSE	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	LTLSCEEFIK	0.995619275	161.2903226
781	P70698	sp|P70698|PYRG1_MOUSE	Ctps1	CTP synthase 1 OS=Mus musculus GN=Ctps1 PE=1 SV=2	CLEEQGLK	1.072202739	222.2222222
782	Q68FD5	sp|Q68FD5|CLH1_MOUSE	Cltc	Clathrin heavy chain 1 OS=Mus musculus GN=Cltc PE=1 SV=3	IHEGCEEPATHNALAK	0.855285665	243.902439
783	Q9Z1Q9	sp|Q9Z1Q9|SYVC_MOUSE	Vars	Valine--tRNA ligase OS=Mus musculus GN=Vars PE=1 SV=1	ICLQPPPSSR	1.092481671	243.902439
784	Q99JB2	sp|Q99JB2|STML2_MOUSE	Stoml2	Stomatin-like protein 2, mitochondrial OS=Mus musculus GN=Stoml2 PE=1 SV=1	ESLNANIVDAINQAADCWGIR	1.227947901	250
785	Q9WTP7	sp|Q9WTP7|KAD3_MOUSE	Ak3	GTP:AMP phosphotransferase AK3, mitochondrial OS=Mus musculus GN=Ak3 PE=1 SV=3	TLTQCSWLLDGFPR	1.220107369	263.1578947
786	Q6PB66	sp|Q6PB66|LPPRC_MOUSE	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial OS=Mus musculus GN=Lrpprc PE=1 SV=2	AALQENECLLASSTFAQAEVK	1.178967225	312.5
787	P42125	sp|P42125|ECI1_MOUSE	Eci1	Enoyl-CoA delta isomerase 1, mitochondrial OS=Mus musculus GN=Eci1 PE=1 SV=2	GVILTSECPGIFSAGLDLLEMYGR	1.199616123	317.7966102
788	Q8BJ71	sp|Q8BJ71|NUP93_MOUSE	Nup93	Nuclear pore complex protein Nup93 OS=Mus musculus GN=Nup93 PE=1 SV=1	LNQVCFDDDGTSSPQDR	0.974089227	318.1818182
789	Q60597	sp|Q60597|ODO1_MOUSE	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	AEQFYCGDTEGK	1.152472053	344.8275862
790	Q8CI94	sp|Q8CI94|PYGB_MOUSE	Pygb	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	MSVIEEGDCK	0.950931913	370.3703704
791	Q9Z110	sp|Q9Z110|P5CS_MOUSE	Aldh18a1	Delta-1-pyrroline-5-carboxylate synthase OS=Mus musculus GN=Aldh18a1 PE=1 SV=2	GDECGLALGR	1.095770327	370.3703704
792	Q64105	sp|Q64105|SPRE_MOUSE	Spr	Sepiapterin reductase OS=Mus musculus GN=Spr PE=1 SV=1	SDGALVDCGTSAQK	0.840387807	375
793	Q91VD9	sp|Q91VD9|NDUS1_MOUSE	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial OS=Mus musculus GN=Ndufs1 PE=1 SV=2	AVTEGAQAVEEPSIC	1.032311345	384.6153846
794	Q3TBW2	sp|Q3TBW2|RM10_MOUSE	Mrpl10	39S ribosomal protein L10, mitochondrial OS=Mus musculus GN=Mrpl10 PE=1 SV=2	EQNEGDCATSANEK	1.093793761	426.5873016
795	Q8R081	sp|Q8R081|HNRPL_MOUSE	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L OS=Mus musculus GN=Hnrnpl PE=1 SV=2	QPAIMPGQSYGLEDGSCSYK	0.893495354	526.3157895
796	Q60936	sp|Q60936|COQ8A_MOUSE	Coq8a	Atypical kinase COQ8A, mitochondrial OS=Mus musculus GN=Coq8a PE=1 SV=2	AMFEEAYSNYCR	1.183011948	555.5555556
797	Q9QWT9	sp|Q9QWT9|KIFC1_MOUSE	Kifc1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	YVPVSCEK	0.424777583	NL
798	O54931	sp|O54931|AKAP2_MOUSE	Akap2	A-kinase anchor protein 2 OS=Mus musculus GN=Akap2 PE=1 SV=3	APCVSESQSAGAGPANAATQGK	0.503068719	NL
799	P70261	sp|P70261|PALD_MOUSE	Pald1	Paladin OS=Mus musculus GN=Pald1 PE=1 SV=1	GQECGSQQAVQQR	0.527983608	NL
800	Q9CZU4	sp|Q9CZU4|ERAL1_MOUSE	Eral1	GTPase Era, mitochondrial OS=Mus musculus GN=Eral1 PE=2 SV=1	CQALGVITEK	0.539199827	NL
801	Q9EQQ9	sp|Q9EQQ9|OGA_MOUSE	Mgea5	Protein O-GlcNAcase OS=Mus musculus GN=Mgea5 PE=1 SV=2	ANSSVVSVNCK	0.571484353	NL
802	Q08093	sp|Q08093|CNN2_MOUSE	Cnn2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	CASQSGMTAYGTR	0.578368999	NL
803	P16546	sp|P16546|SPTN1_MOUSE	Sptan1	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	TYLLDGSCMVEESGTLESQLEATK	0.580408627	NL
804	Q80X90	sp|Q80X90|FLNB_MOUSE	Flnb	Filamin-B OS=Mus musculus GN=Flnb PE=1 SV=3	GAGTGGLGLTVEGPCEAK	0.584100832	NL
805	Q9Z0P5	sp|Q9Z0P5|TWF2_MOUSE	Twf2	Twinfilin-2 OS=Mus musculus GN=Twf2 PE=1 SV=1	HLSSCAAPAPLTSAER	0.410189097	NL
806	Q8CJG0	sp|Q8CJG0|AGO2_MOUSE	Ago2	Protein argonaute-2 OS=Mus musculus GN=Ago2 PE=1 SV=3	SFFTASEGCSNPLGGGR	0.595947557	NL
807	Q9JLV1	sp|Q9JLV1|BAG3_MOUSE	Bag3	BAG family molecular chaperone regulator 3 OS=Mus musculus GN=Bag3 PE=1 SV=2	VSSAPIPCPSPSPAPSAVPSPPK	0.611545988	NL
808	Q5SW19	sp|Q5SW19|CLU_MOUSE	Cluh	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	SEDSIGPEAGCEEEGSSVSGLAK	0.433294337	NL
809	Q6PHZ2	sp|Q6PHZ2|KCC2D_MOUSE	Camk2d	Calcium/calmodulin-dependent protein kinase type II subunit delta OS=Mus musculus GN=Camk2d PE=1 SV=1	HPWICQR	0.614854894	NL
810	Q9Z1W9	sp|Q9Z1W9|STK39_MOUSE	Stk39	STE20/SPS1-related proline-alanine-rich protein kinase OS=Mus musculus GN=Stk39 PE=1 SV=1	LASGCDGSEIPDEVK	0.467967617	NL
811	Q80XI3	sp|Q80XI3|IF4G3_MOUSE	Eif4g3	Eukaryotic translation initiation factor 4 gamma 3 OS=Mus musculus GN=Eif4g3 PE=1 SV=2	AAIIADCSTFR	0.480723007	NL
812	P54823	sp|P54823|DDX6_MOUSE	Ddx6	Probable ATP-dependent RNA helicase DDX6 OS=Mus musculus GN=Ddx6 PE=1 SV=1	GNEFEDYCLK	0.480445854	NL
813	Q91V76	sp|Q91V76|CK054_MOUSE	\N	Ester hydrolase C11orf54 homolog OS=Mus musculus PE=1 SV=1	AHIMPAEFSSCPLNSDEAVNK	0.7218653	NL
814	P48678	sp|P48678|LMNA_MOUSE	Lmna	Prelamin-A/C OS=Mus musculus GN=Lmna PE=1 SV=2	GSHCSGSGDPAEYNLR	0.620059613	NL
815	Q8C052	sp|Q8C052|MAP1S_MOUSE	Map1s	Microtubule-associated protein 1S OS=Mus musculus GN=Map1s PE=1 SV=2	SWEDVDPAVCSLDEQLK	0.626950245	NL
816	O70400	sp|O70400|PDLI1_MOUSE	Pdlim1	PDZ and LIM domain protein 1 OS=Mus musculus GN=Pdlim1 PE=1 SV=4	GCADNMTLTVSR	0.640026898	NL
817	Q9D1A2	sp|Q9D1A2|CNDP2_MOUSE	Cndp2	Cytosolic non-specific dipeptidase OS=Mus musculus GN=Cndp2 PE=1 SV=1	DVGAETLLHSCK	0.642618627	NL
818	Q8VCN9	sp|Q8VCN9|TBCC_MOUSE	Tbcc	Tubulin-specific chaperone C OS=Mus musculus GN=Tbcc PE=1 SV=1	MEGVDCSMALADAAAGSPR	0.645971141	NL
819	Q8BRK8	sp|Q8BRK8|AAPK2_MOUSE	Prkaa2	5'-AMP-activated protein kinase catalytic subunit alpha-2 OS=Mus musculus GN=Prkaa2 PE=1 SV=3	ACDIMAEVYR	0.646663218	NL
820	Q9DBR1	sp|Q9DBR1|XRN2_MOUSE	Xrn2	5'-3' exoribonuclease 2 OS=Mus musculus GN=Xrn2 PE=1 SV=1	NSPGCQVASNPR	0.649550737	NL
821	Q8VDJ3	sp|Q8VDJ3|VIGLN_MOUSE	Hdlbp	Vigilin OS=Mus musculus GN=Hdlbp PE=1 SV=1	AACLESAQEPAGAWSNK	0.653480784	NL
822	Q5SWU9	sp|Q5SWU9|ACACA_MOUSE	Acaca	Acetyl-CoA carboxylase 1 OS=Mus musculus GN=Acaca PE=1 SV=1	RPGAALDPGCVIAK	0.657556844	NL
823	O35127	sp|O35127|C10_MOUSE	Grcc10	Protein C10 OS=Mus musculus GN=Grcc10 PE=1 SV=1	AYGFSCDGEGVLK	0.659717641	NL
824	Q8BY71	sp|Q8BY71|HAT1_MOUSE	Hat1	Histone acetyltransferase type B catalytic subunit OS=Mus musculus GN=Hat1 PE=1 SV=1	VDENFDCVEADDVEGK	0.667568227	NL
825	O08734	sp|O08734|BAK_MOUSE	Bak1	Bcl-2 homologous antagonist/killer OS=Mus musculus GN=Bak1 PE=1 SV=3	VGCDESPSPSEQQVAQDTEEVFR	0.690416262	NL
826	Q3UFY7	sp|Q3UFY7|5NT3B_MOUSE	Nt5c3b	7-methylguanosine phosphate-specific 5'-nucleotidase OS=Mus musculus GN=Nt5c3b PE=1 SV=3	NSSVCENSSYFQQLQNK	0.693048721	NL
827	Q9Z1G3	sp|Q9Z1G3|VATC1_MOUSE	Atp6v1c1	V-type proton ATPase subunit C 1 OS=Mus musculus GN=Atp6v1c1 PE=1 SV=4	TCQQTWEK	0.698552845	NL
828	Q921G7	sp|Q921G7|ETFD_MOUSE	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial OS=Mus musculus GN=Etfdh PE=1 SV=1	FCPAGVYEFVPLEQGDGFR	0.701523348	NL
829	Q9D5T0	sp|Q9D5T0|ATAD1_MOUSE	Atad1	ATPase family AAA domain-containing protein 1 OS=Mus musculus GN=Atad1 PE=1 SV=1	DAAFQNVLTHVCLD	0.702141164	NL
830	Q9R1T4	sp|Q9R1T4|SEPT6_MOUSE	Septin6	Septin-6 OS=Mus musculus GN=Sept6 PE=1 SV=4	CLDEEMNAFK	0.705482616	NL
831	Q9DCC4	sp|Q9DCC4|P5CR3_MOUSE	Pycr3	Pyrroline-5-carboxylate reductase 3 OS=Mus musculus GN=Pycr3 PE=1 SV=2	QVLASAPTDNNLCHFR	0.708289122	NL
832	Q9R190	sp|Q9R190|MTA2_MOUSE	Mta2	Metastasis-associated protein MTA2 OS=Mus musculus GN=Mta2 PE=1 SV=1	ALDCSSSIR	0.708431456	NL
833	Q9CYA6	sp|Q9CYA6|ZCHC8_MOUSE	Zcchc8	Zinc finger CCHC domain-containing protein 8 OS=Mus musculus GN=Zcchc8 PE=1 SV=3	MFGSIPMQACQQK	0.711398613	NL
834	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase OS=Mus musculus GN=Eprs PE=1 SV=4	ERPAPAVSSTCATAEDSSVLYSR	0.712062092	NL
835	B2RQC6	sp|B2RQC6|PYR1_MOUSE	Cad	CAD protein OS=Mus musculus GN=Cad PE=1 SV=1	VVEPELMGTPDGPCYPAPPVPR	0.720951933	NL
836	Q9Z277	sp|Q9Z277|BAZ1B_MOUSE	Baz1b	Tyrosine-protein kinase BAZ1B OS=Mus musculus GN=Baz1b PE=1 SV=2	SALSCVISK	0.722021661	NL
837	A2A432	sp|A2A432|CUL4B_MOUSE	Cul4b	Cullin-4B OS=Mus musculus GN=Cul4b PE=1 SV=1	SVCPGTSGFSSPNPSAASAAAQEVR	0.723749403	NL
838	Q99J09	sp|Q99J09|MEP50_MOUSE	Wdr77	Methylosome protein 50 OS=Mus musculus GN=Wdr77 PE=1 SV=1	NASCTLSSAVHSQGVTR	0.724859147	NL
839	Q80U72	sp|Q80U72|SCRIB_MOUSE	Scrib	Protein scribble homolog OS=Mus musculus GN=Scrib PE=1 SV=2	GHAGNPCDPTDEGIFISK	0.725186816	NL
840	Q8K0D5	sp|Q8K0D5|EFGM_MOUSE	Gfm1	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	YQPCSPSTQEELINK	0.72743144	NL
841	P31230	sp|P31230|AIMP1_MOUSE	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1 OS=Mus musculus GN=Aimp1 PE=1 SV=2	LSTPLQTNCTASESVVQSPSVATTASPATK	0.73313783	NL
842	D3YXK2	sp|D3YXK2|SAFB1_MOUSE	Safb	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	AIEDEGGNPDEIEVTSECNK	0.73883729	NL
843	Q922X9	sp|Q922X9|ANM7_MOUSE	Prmt7	Protein arginine N-methyltransferase 7 OS=Mus musculus GN=Prmt7 PE=1 SV=1	HSTEVTVGPDGDLPCR	0.74200643	NL
844	Q8R5L3	sp|Q8R5L3|VPS39_MOUSE	Vps39	Vam6/Vps39-like protein OS=Mus musculus GN=Vps39 PE=1 SV=1	LICDFPFDGLLEER	0.743051279	NL
845	Q8BZA9	sp|Q8BZA9|TIGAR_MOUSE	Tigar	Fructose-2,6-bisphosphatase TIGAR OS=Mus musculus GN=Tigar PE=1 SV=1	AAGEECPMFTPPGGETVEQVK	0.74848008	NL
846	Q3UMY5	sp|Q3UMY5|EMAL4_MOUSE	Eml4	Echinoderm microtubule-associated protein-like 4 OS=Mus musculus GN=Eml4 PE=1 SV=1	HYLGHTDCVR	0.749232037	NL
847	P51859	sp|P51859|HDGF_MOUSE	Hdgf	Hepatoma-derived growth factor OS=Mus musculus GN=Hdgf PE=1 SV=2	SCAAEPEVEPEAHEGDGDK	0.751397	NL
848	Q07139	sp|Q07139|ECT2_MOUSE	Ect2	Protein ECT2 OS=Mus musculus GN=Ect2 PE=1 SV=2	VTHLVANCTQGEK	0.753920386	NL
849	P16858	sp|P16858|G3P_MOUSE	Gapdh	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	VPTPNVSVVDLTCR	0.755513062	NL
850	Q6Q899	sp|Q6Q899|DDX58_MOUSE	Ddx58	Probable ATP-dependent RNA helicase DDX58 OS=Mus musculus GN=Ddx58 PE=1 SV=2	CIISQLMK	0.758304542	NL
851	Q60870	sp|Q60870|REEP5_MOUSE	Reep5	Receptor expression-enhancing protein 5 OS=Mus musculus GN=Reep5 PE=1 SV=1	NCMTDLLAK	0.758799818	NL
852	Q05920	sp|Q05920|PYC_MOUSE	Pc	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	ACTELGIR	0.761001795	NL
853	Q9WUM4	sp|Q9WUM4|COR1C_MOUSE	Coro1c	Coronin-1C OS=Mus musculus GN=Coro1c PE=1 SV=2	ETICSQDER	0.761753551	NL
854	Q6P5D8	sp|Q6P5D8|SMHD1_MOUSE	Smchd1	Structural maintenance of chromosomes flexible hinge domain-containing protein 1 OS=Mus musculus GN=Smchd1 PE=1 SV=2	QCVVLGK	0.780414789	NL
855	Q65Z40	sp|Q65Z40|WAPL_MOUSE	Wapl	Wings apart-like protein homolog OS=Mus musculus GN=Wapl PE=1 SV=2	FLSFMNLTCAVGTTGQK	0.781209126	NL
856	O35226	sp|O35226|PSMD4_MOUSE	Psmd4	26S proteasome non-ATPase regulatory subunit 4 OS=Mus musculus GN=Psmd4 PE=1 SV=1	ITFCTGIR	0.781793013	NL
857	Q9CRB2	sp|Q9CRB2|NHP2_MOUSE	Nhp2	H/ACA ribonucleoprotein complex subunit 2 OS=Mus musculus GN=Nhp2 PE=1 SV=1	AAPEESEAQAEGCSEER	0.782241242	NL
858	Q99LS3	sp|Q99LS3|SERB_MOUSE	Psph	Phosphoserine phosphatase OS=Mus musculus GN=Psph PE=1 SV=1	FCGVEAAVSEMTR	0.782881157	NL
859	P46061	sp|P46061|RAGP1_MOUSE	Rangap1	Ran GTPase-activating protein 1 OS=Mus musculus GN=Rangap1 PE=1 SV=2	AFSCSSFNSNTFLTR	0.783245366	NL
860	Q61749	sp|Q61749|EI2BD_MOUSE	Eif2b4	Translation initiation factor eIF-2B subunit delta OS=Mus musculus GN=Eif2b4 PE=1 SV=2	VQTDAFVSNELDDPDDLQCK	0.783453463	NL
861	P02340	sp|P02340|P53_MOUSE	Tp53	Cellular tumor antigen p53 OS=Mus musculus GN=Tp53 PE=1 SV=3	CSDGDGLAPPQHLIR	0.790701352	NL
862	P21981	sp|P21981|TGM2_MOUSE	Tgm2	Protein-glutamine gamma-glutamyltransferase 2 OS=Mus musculus GN=Tgm2 PE=1 SV=4	DHHTADLCQEK	0.791058495	NL
863	Q8R5K4	sp|Q8R5K4|NOL6_MOUSE	Nol6	Nucleolar protein 6 OS=Mus musculus GN=Nol6 PE=2 SV=2	QAVDPPVASFCR	0.791193543	NL
864	P70460	sp|P70460|VASP_MOUSE	Vasp	Vasodilator-stimulated phosphoprotein OS=Mus musculus GN=Vasp PE=1 SV=4	SSSSVTTSEAHPSTPCSSDDSDLER	0.792015192	NL
865	O55201	sp|O55201|SPT5H_MOUSE	Supt5h	Transcription elongation factor SPT5 OS=Mus musculus GN=Supt5h PE=1 SV=1	VELHSTCQTISVDR	0.79321434	NL
866	A2AKG8	sp|A2AKG8|FOCAD_MOUSE	Focad	Focadhesin OS=Mus musculus GN=Focad PE=1 SV=1	SAAATALSLLVPVFIISCK	0.796761738	NL
867	Q6IR34	sp|Q6IR34|GPSM1_MOUSE	Gpsm1	G-protein-signaling modulator 1 OS=Mus musculus GN=Gpsm1 PE=1 SV=3	APSSDEECFFDLLSK	0.802506271	NL
868	Q9DAW9	sp|Q9DAW9|CNN3_MOUSE	Cnn3	Calponin-3 OS=Mus musculus GN=Cnn3 PE=1 SV=1	CASQAGMTAYGTR	0.803083842	NL
869	Q62376	sp|Q62376|RU17_MOUSE	Snrnp70	U1 small nuclear ribonucleoprotein 70 kDa OS=Mus musculus GN=Snrnp70 PE=1 SV=2	HHNQPYCGIAPYIR	0.805894207	NL
870	Q01405	sp|Q01405|SC23A_MOUSE	Sec23a	Protein transport protein Sec23A OS=Mus musculus GN=Sec23a PE=1 SV=2	MVQVHELGCEGISK	0.811172983	NL
871	Q99LI2	sp|Q99LI2|CLCC1_MOUSE	Clcc1	Chloride channel CLIC-like protein 1 OS=Mus musculus GN=Clcc1 PE=1 SV=1	EAAVAAHGTEPVSSPCG	0.811692582	NL
872	Q5EG47	sp|Q5EG47|AAPK1_MOUSE	Prkaa1	5'-AMP-activated protein kinase catalytic subunit alpha-1 OS=Mus musculus GN=Prkaa1 PE=1 SV=2	TSCGSPNYAAPEVISGR	0.812942037	NL
873	Q99NH0	sp|Q99NH0|ANR17_MOUSE	Ankrd17	Ankyrin repeat domain-containing protein 17 OS=Mus musculus GN=Ankrd17 PE=1 SV=2	AGHVCTVQFLISK	0.813337407	NL
874	Q9JJC6	sp|Q9JJC6|RIPL1_MOUSE	Rilpl1	RILP-like protein 1 OS=Mus musculus GN=Rilpl1 PE=1 SV=1	VIDQHGCESIAR	0.813703501	NL
875	A2APB8	sp|A2APB8|TPX2_MOUSE	Tpx2	Targeting protein for Xklp2 OS=Mus musculus GN=Tpx2 PE=1 SV=1	QSIPSNDCSSLDAK	0.815507898	NL
876	P61222	sp|P61222|ABCE1_MOUSE	Abce1	ATP-binding cassette sub-family E member 1 OS=Mus musculus GN=Abce1 PE=1 SV=1	YCANAFK	0.815727221	NL
877	P17918	sp|P17918|PCNA_MOUSE	Pcna	Proliferating cell nuclear antigen OS=Mus musculus GN=Pcna PE=1 SV=2	DLSHIGDAVVISCAK	0.819060606	NL
878	E9PVA8	sp|E9PVA8|GCN1_MOUSE	Gcn1	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	LACQADSVEQVDDTILT	0.819336338	NL
879	Q8K245	sp|Q8K245|UVRAG_MOUSE	Uvrag	UV radiation resistance associated protein OS=Mus musculus GN=Uvrag PE=1 SV=2	NLLQVDQNCVR	0.820277736	NL
880	Q9JIF7	sp|Q9JIF7|COPB_MOUSE	Copb1	Coatomer subunit beta OS=Mus musculus GN=Copb1 PE=1 SV=1	VLSECSPLMNDIFNK	0.825286787	NL
881	Q9JLN9	sp|Q9JLN9|MTOR_MOUSE	Mtor	Serine/threonine-protein kinase mTOR OS=Mus musculus GN=Mtor PE=1 SV=2	YDVLICR	0.827431364	NL
882	P80316	sp|P80316|TCPE_MOUSE	Cct5	T-complex protein 1 subunit epsilon OS=Mus musculus GN=Cct5 PE=1 SV=1	SLHDALCVIR	0.830787969	NL
883	Q6IRU2	sp|Q6IRU2|TPM4_MOUSE	Tpm4	Tropomyosin alpha-4 chain OS=Mus musculus GN=Tpm4 PE=1 SV=3	EENVGLHQTLDQTLNELNCI	0.833184611	NL
884	Q8BIJ6	sp|Q8BIJ6|SYIM_MOUSE	Iars2	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	CSASGHLYILAEDK	0.836211674	NL
885	Q61233	sp|Q61233|PLSL_MOUSE	Lcp1	Plastin-2 OS=Mus musculus GN=Lcp1 PE=1 SV=4	AACLPLPGYR	0.837250278	NL
886	Q64514	sp|Q64514|TPP2_MOUSE	Tpp2	Tripeptidyl-peptidase 2 OS=Mus musculus GN=Tpp2 PE=1 SV=3	GAGPGCYLAGSLTLSK	0.842342341	NL
887	Q8R574	sp|Q8R574|KPRB_MOUSE	Prpsap2	Phosphoribosyl pyrophosphate synthase-associated protein 2 OS=Mus musculus GN=Prpsap2 PE=1 SV=1	LLASMMCK	0.845594453	NL
888	P83940	sp|P83940|ELOC_MOUSE	Eloc	Elongin-C OS=Mus musculus GN=Eloc PE=1 SV=1	TYGGCEGPDAMYVK	0.84859973	NL
889	Q9DBT5	sp|Q9DBT5|AMPD2_MOUSE	Ampd2	AMP deaminase 2 OS=Mus musculus GN=Ampd2 PE=1 SV=1	CGVPFTDLLDAAK	0.849112677	NL
890	Q91YQ5	sp|Q91YQ5|RPN1_MOUSE	Rpn1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1 OS=Mus musculus GN=Rpn1 PE=1 SV=1	TEGSDLCDR	0.849505423	NL
891	Q9DC50	sp|Q9DC50|OCTC_MOUSE	Crot	Peroxisomal carnitine O-octanoyltransferase OS=Mus musculus GN=Crot PE=1 SV=1	AFVFDVLHEGCLITPPELLR	0.853207075	NL
892	Q6NSR8	sp|Q6NSR8|PEPL1_MOUSE	Npepl1	Probable aminopeptidase NPEPL1 OS=Mus musculus GN=Npepl1 PE=1 SV=1	ASEDPLLNLVSPLDCEVDAQEGDNMGR	0.853497576	NL
893	Q3TIU4	sp|Q3TIU4|PDE12_MOUSE	Pde12	2',5'-phosphodiesterase 12 OS=Mus musculus GN=Pde12 PE=1 SV=2	VYTPCNADIGLR	0.855465767	NL
894	Q61210	sp|Q61210|ARHG1_MOUSE	Arhgef1	Rho guanine nucleotide exchange factor 1 OS=Mus musculus GN=Arhgef1 PE=1 SV=2	FCAFVQEAESRPR	0.85733882	NL
895	P80315	sp|P80315|TCPD_MOUSE	Cct4	T-complex protein 1 subunit delta OS=Mus musculus GN=Cct4 PE=1 SV=3	IGLIQFCLSAPK	0.857907746	NL
896	Q922Q1	sp|Q922Q1|MARC2_MOUSE	Marc2	Mitochondrial amidoxime reducing component 2 OS=Mus musculus GN=Marc2 PE=1 SV=1	CVLTTVDPDTGIIDR	0.859919168	NL
897	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6 OS=Mus musculus GN=Anxa6 PE=1 SV=3	QEICQNYK	0.865501125	NL
898	P97770	sp|P97770|THUM3_MOUSE	Thumpd3	THUMP domain-containing protein 3 OS=Mus musculus GN=Thumpd3 PE=1 SV=1	HCFTSNEAAR	0.867664104	NL
899	Q8K1A5	sp|Q8K1A5|TM41B_MOUSE	Tmem41b	Transmembrane protein 41B OS=Mus musculus GN=Tmem41b PE=1 SV=1	DHLNEKPCAEAGSAR	0.870795775	NL
900	Q9WTU6	sp|Q9WTU6|MK09_MOUSE	Mapk9	Mitogen-activated protein kinase 9 OS=Mus musculus GN=Mapk9 PE=1 SV=2	TACTNFMMTPYVVTR	0.874577143	NL
901	P56375	sp|P56375|ACYP2_MOUSE	Acyp2	Acylphosphatase-2 OS=Mus musculus GN=Acyp2 PE=1 SV=2	SVDYEVFGTVQGVCFR	0.874584572	NL
902	Q8BKS9	sp|Q8BKS9|PUM3_MOUSE	Pum3	Pumilio homolog 3 OS=Mus musculus GN=Pum3 PE=1 SV=2	GAIILSSLLQSCDQEVVNK	0.879513226	NL
903	P60335	sp|P60335|PCBP1_MOUSE	Pcbp1	Poly(rC)-binding protein 1 OS=Mus musculus GN=Pcbp1 PE=1 SV=1	AITIAGVPQSVTECVK	0.880049283	NL
904	Q3TXS7	sp|Q3TXS7|PSMD1_MOUSE	Psmd1	26S proteasome non-ATPase regulatory subunit 1 OS=Mus musculus GN=Psmd1 PE=1 SV=1	SNCKPSTFAYPAPLEVPK	0.881600987	NL
905	Q9QXZ0	sp|Q9QXZ0|MACF1_MOUSE	Macf1	Microtubule-actin cross-linking factor 1 OS=Mus musculus GN=Macf1 PE=1 SV=2	LCTMPPVGTDLNTVK	0.884643601	NL
906	Q9Z0H1	sp|Q9Z0H1|WDR46_MOUSE	Wdr46	WD repeat-containing protein 46 OS=Mus musculus GN=Wdr46 PE=2 SV=1	VPAELICLNPR	0.885263717	NL
907	Q64364	sp|Q64364|ARF_MOUSE	Cdkn2a	Tumor suppressor ARF OS=Mus musculus GN=Cdkn2a PE=1 SV=1	TASCALAFVNMLLR	0.885896527	NL
908	O35737	sp|O35737|HNRH1_MOUSE	Hnrnph1	Heterogeneous nuclear ribonucleoprotein H OS=Mus musculus GN=Hnrnph1 PE=1 SV=3	GLPWSCSADEVQR	0.88691796	NL
909	O55106	sp|O55106|STRN_MOUSE	Strn	Striatin OS=Mus musculus GN=Strn PE=1 SV=2	VLTLESNVDSTSSSSCQINR	0.889517904	NL
910	Q61753	sp|Q61753|SERA_MOUSE	Phgdh	D-3-phosphoglycerate dehydrogenase OS=Mus musculus GN=Phgdh PE=1 SV=3	CGEEIAVQFVDMVK	0.890478708	NL
911	Q8CGY6	sp|Q8CGY6|UN45B_MOUSE	Unc45b	Protein unc-45 homolog B OS=Mus musculus GN=Unc45b PE=1 SV=1	WLCNTAIDTR	0.890592155	NL
912	O08915	sp|O08915|AIP_MOUSE	Aip	AH receptor-interacting protein OS=Mus musculus GN=Aip PE=1 SV=1	YYDAIACLK	0.892299456	NL
913	Q9Z1Z0	sp|Q9Z1Z0|USO1_MOUSE	Uso1	General vesicular transport factor p115 OS=Mus musculus GN=Uso1 PE=1 SV=2	CQNEQLQTAVTQQASQIQQHK	0.892399186	NL
914	P70336	sp|P70336|ROCK2_MOUSE	Rock2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	CLMQNDLK	0.894870454	NL
915	Q6ZWR6	sp|Q6ZWR6|SYNE1_MOUSE	Syne1	Nesprin-1 OS=Mus musculus GN=Syne1 PE=1 SV=2	VQHLANVYCTGK	0.896379648	NL
916	O08997	sp|O08997|ATOX1_MOUSE	Atox1	Copper transport protein ATOX1 OS=Mus musculus GN=Atox1 PE=1 SV=1	VCIDSEHSSDTLLATLNK	0.900738606	NL
917	P17918	sp|P17918|PCNA_MOUSE	Pcna	Proliferating cell nuclear antigen OS=Mus musculus GN=Pcna PE=1 SV=2	LMDLDVEQLGIPEQEYSCVIK	0.902364194	NL
918	Q8BWY3	sp|Q8BWY3|ERF1_MOUSE	Etf1	Eukaryotic peptide chain release factor subunit 1 OS=Mus musculus GN=Etf1 PE=1 SV=4	YVLHCQGTEEEK	0.903342367	NL
919	Q9DCM0	sp|Q9DCM0|ETHE1_MOUSE	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial OS=Mus musculus GN=Ethe1 PE=1 SV=2	SCTYTYLLGDR	0.904731747	NL
920	Q9D7P6	sp|Q9D7P6|ISCU_MOUSE	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial OS=Mus musculus GN=Iscu PE=1 SV=1	ELCLPPVK	0.905469033	NL
921	Q9Z2V5	sp|Q9Z2V5|HDAC6_MOUSE	Hdac6	Histone deacetylase 6 OS=Mus musculus GN=Hdac6 PE=1 SV=3	IMCHLEEVGLAAR	0.90572836	NL
922	Q3UMR0	sp|Q3UMR0|ANR27_MOUSE	Ankrd27	Ankyrin repeat domain-containing protein 27 OS=Mus musculus GN=Ankrd27 PE=1 SV=2	MNLLSQMTSTPIDCLFK	0.907852928	NL
923	Q99J25	sp|Q99J25|MRM1_MOUSE	Mrm1	rRNA methyltransferase 1, mitochondrial OS=Mus musculus GN=Mrm1 PE=2 SV=2	NSCPLTPVVSK	0.912408759	NL
924	Q9CQR6	sp|Q9CQR6|PPP6_MOUSE	Ppp6c	Serine/threonine-protein phosphatase 6 catalytic subunit OS=Mus musculus GN=Ppp6c PE=1 SV=1	LVTVWSAPNYCYR	0.915605099	NL
925	O08749	sp|O08749|DLDH_MOUSE	Dld	Dihydrolipoyl dehydrogenase, mitochondrial OS=Mus musculus GN=Dld PE=1 SV=2	VCHAHPTLSEAFR	0.915918666	NL
926	Q9D020	sp|Q9D020|5NT3A_MOUSE	Nt5c3a	Cytosolic 5'-nucleotidase 3A OS=Mus musculus GN=Nt5c3a PE=1 SV=4	VEEIICGLIK	0.918526683	NL
927	Q62418	sp|Q62418|DBNL_MOUSE	Dbnl	Drebrin-like protein OS=Mus musculus GN=Dbnl PE=1 SV=2	AEEDVEPECIMEK	0.922662509	NL
928	Q99JX7	sp|Q99JX7|NXF1_MOUSE	Nxf1	Nuclear RNA export factor 1 OS=Mus musculus GN=Nxf1 PE=1 SV=3	SCMAATLR	0.923445121	NL
929	Q62448	sp|Q62448|IF4G2_MOUSE	Eif4g2	Eukaryotic translation initiation factor 4 gamma 2 OS=Mus musculus GN=Eif4g2 PE=1 SV=2	MCSLMLSK	0.923787529	NL
930	Q8C6G8	sp|Q8C6G8|WDR26_MOUSE	Wdr26	WD repeat-containing protein 26 OS=Mus musculus GN=Wdr26 PE=1 SV=3	CELTPLK	0.924275968	NL
931	Q8BFS6	sp|Q8BFS6|CPPED_MOUSE	Cpped1	Serine/threonine-protein phosphatase CPPED1 OS=Mus musculus GN=Cpped1 PE=1 SV=1	AWSTGNCDAGGDEWGQEIR	0.924727205	NL
932	Q91ZU6	sp|Q91ZU6|DYST_MOUSE	Dst	Dystonin OS=Mus musculus GN=Dst PE=1 SV=2	ACMQTFLK	0.925154963	NL
933	Q8BI84	sp|Q8BI84|MIA3_MOUSE	Mia3	Melanoma inhibitory activity protein 3 OS=Mus musculus GN=Mia3 PE=1 SV=2	CNLEDQIK	0.927110136	NL
934	Q9JHU4	sp|Q9JHU4|DYHC1_MOUSE	Dync1h1	Cytoplasmic dynein 1 heavy chain 1 OS=Mus musculus GN=Dync1h1 PE=1 SV=2	LHSLQPHACFR	0.930447335	NL
935	Q99K01	sp|Q99K01|PDXD1_MOUSE	Pdxdc1	Pyridoxal-dependent decarboxylase domain-containing protein 1 OS=Mus musculus GN=Pdxdc1 PE=1 SV=2	HSCDALNR	0.930542513	NL
936	Q9DAM5	sp|Q9DAM5|TPC_MOUSE	Slc25a19	Mitochondrial thiamine pyrophosphate carrier OS=Mus musculus GN=Slc25a19 PE=1 SV=1	LCPSDPNAK	0.959048624	NL
937	Q9ESD7	sp|Q9ESD7|DYSF_MOUSE	Dysf	Dysferlin OS=Mus musculus GN=Dysf PE=1 SV=3	SVSDQDNYIPCTLEPVFGK	0.931532371	NL
938	Q9ER35	sp|Q9ER35|FN3K_MOUSE	Fn3k	Fructosamine-3-kinase OS=Mus musculus GN=Fn3k PE=1 SV=1	QNTVGCGAEGAEPQGVTK	0.932894567	NL
939	Q4PJX1	sp|Q4PJX1|ODR4_MOUSE	Odr4	Protein odr-4 homolog OS=Mus musculus GN=Odr4 PE=1 SV=2	GNDCDLLEGQK	0.935150024	NL
940	Q8BT14	sp|Q8BT14|CNOT4_MOUSE	Cnot4	CCR4-NOT transcription complex subunit 4 OS=Mus musculus GN=Cnot4 PE=1 SV=2	AIQCVNNVVVDGR	0.935278713	NL
941	Q8K2A7	sp|Q8K2A7|INT10_MOUSE	Ints10	Integrator complex subunit 10 OS=Mus musculus GN=Ints10 PE=1 SV=3	SCSDLLHR	0.936417268	NL
942	Q9Z2B9	sp|Q9Z2B9|KS6A4_MOUSE	Rps6ka4	Ribosomal protein S6 kinase alpha-4 OS=Mus musculus GN=Rps6ka4 PE=1 SV=2	CSPPFPLR	0.936424093	NL
943	Q99LP6	sp|Q99LP6|GRPE1_MOUSE	Grpel1	GrpE protein homolog 1, mitochondrial OS=Mus musculus GN=Grpel1 PE=1 SV=1	NNGQNLDEDLGHCEPK	0.937646507	NL
944	Q9CZ04	sp|Q9CZ04|CSN7A_MOUSE	Cops7a	COP9 signalosome complex subunit 7a OS=Mus musculus GN=Cops7a PE=1 SV=2	CIPYAVLLEALALR	0.939143501	NL
945	Q8CGF1	sp|Q8CGF1|RHG29_MOUSE	Arhgap29	Rho GTPase-activating protein 29 OS=Mus musculus GN=Arhgap29 PE=1 SV=1	ALCLQGIYR	0.939472188	NL
946	Q9CQE8	sp|Q9CQE8|RTRAF_MOUSE	RTRAF	RNA transcription, translation and transport factor protein	LTALDYHNPSGFNCK	0.941885655	NL
947	Q9R0P9	sp|Q9R0P9|UCHL1_MOUSE	Uchl1	Ubiquitin carboxyl-terminal hydrolase isozyme L1 OS=Mus musculus GN=Uchl1 PE=1 SV=1	NEAIQAAHDSVAQEGQCR	0.942266235	NL
948	Q9WVM1	sp|Q9WVM1|RGAP1_MOUSE	Racgap1	Rac GTPase-activating protein 1 OS=Mus musculus GN=Racgap1 PE=1 SV=1	DILMCDTSGSIQLSEEQK	0.943865278	NL
949	P61089	sp|P61089|UBE2N_MOUSE	Ube2n	Ubiquitin-conjugating enzyme E2 N OS=Mus musculus GN=Ube2n PE=1 SV=1	ICLDILK	0.944984056	NL
950	O35593	sp|O35593|PSDE_MOUSE	Psmd14	26S proteasome non-ATPase regulatory subunit 14 OS=Mus musculus GN=Psmd14 PE=1 SV=2	SWMEGLTLQDYSEHCK	0.950623787	NL
951	Q922B1	sp|Q922B1|MACD1_MOUSE	Macrod1	O-acetyl-ADP-ribose deacetylase MACROD1 OS=Mus musculus GN=Macrod1 PE=1 SV=2	TLQNCETGK	0.950841495	NL
952	Q9D2L9	sp|Q9D2L9|F111A_MOUSE	Fam111a	Protein FAM111A OS=Mus musculus GN=Fam111a PE=2 SV=1	FCTFIESDDWK	0.953379731	NL
953	Q6P5F9	sp|Q6P5F9|XPO1_MOUSE	Xpo1	Exportin-1 OS=Mus musculus GN=Xpo1 PE=1 SV=1	TSSDPTCVEK	0.95489956	NL
954	Q921F2	sp|Q921F2|TADBP_MOUSE	Tardbp	TAR DNA-binding protein 43 OS=Mus musculus GN=Tardbp PE=1 SV=1	NPVSQCMR	0.955586824	NL
955	Q8BTW8	sp|Q8BTW8|CK5P1_MOUSE	Cdk5rap1	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	IGILGCMAER	0.955931555	NL
956	P24547	sp|P24547|IMDH2_MOUSE	Impdh2	Inosine-5'-monophosphate dehydrogenase 2 OS=Mus musculus GN=Impdh2 PE=1 SV=2	HGFCGIPITDTGR	0.956846235	NL
957	Q8BWY9	sp|Q8BWY9|CIP2A_MOUSE	Kiaa1524	Protein CIP2A OS=Mus musculus GN=Kiaa1524 PE=1 SV=3	MDSTACLK	0.957212597	NL
958	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2 OS=Mus musculus GN=Eef2 PE=1 SV=2	YVEPIEDVPCGNIVGLVGVDQFLVK	0.959324635	NL
959	Q8BIJ6	sp|Q8BIJ6|SYIM_MOUSE	Iars2	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	CGFSELYSWQR	0.960930091	NL
960	Q9WTX8	sp|Q9WTX8|MD1L1_MOUSE	Mad1l1	Mitotic spindle assembly checkpoint protein MAD1 OS=Mus musculus GN=Mad1l1 PE=1 SV=1	LCLQEQDAAVVK	0.960984048	NL
961	Q8BGH2	sp|Q8BGH2|SAM50_MOUSE	Samm50	Sorting and assembly machinery component 50 homolog OS=Mus musculus GN=Samm50 PE=1 SV=1	DDIIICEIGEVFK	0.96234184	NL
962	Q8C1A5	sp|Q8C1A5|THOP1_MOUSE	Thop1	Thimet oligopeptidase OS=Mus musculus GN=Thop1 PE=1 SV=1	GLQVEGSEAPAC	0.962663693	NL
963	Q2YDW2	sp|Q2YDW2|MSTO1_MOUSE	Msto1	Protein misato homolog 1 OS=Mus musculus GN=Msto1 PE=1 SV=1	MAEDEESPGELCPDVLYR	0.962834585	NL
964	Q921F4	sp|Q921F4|HNRLL_MOUSE	Hnrnpll	Heterogeneous nuclear ribonucleoprotein L-like OS=Mus musculus GN=Hnrnpll PE=1 SV=3	FGTICYVMMMPFK	0.963669654	NL
965	Q9Z1Z2	sp|Q9Z1Z2|STRAP_MOUSE	Strap	Serine-threonine kinase receptor-associated protein OS=Mus musculus GN=Strap PE=1 SV=2	CVLPEEDSGELAKPK	0.965195498	NL
966	Q6P9Q4	sp|Q6P9Q4|FHOD1_MOUSE	Fhod1	FH1/FH2 domain-containing protein 1 OS=Mus musculus GN=Fhod1 PE=1 SV=3	FGPCPTLWASLEPVSVDTAR	0.965437343	NL
967	P13542	sp|P13542|MYH8_MOUSE	Myh8	Myosin-8 OS=Mus musculus GN=Myh8 PE=2 SV=2	AAYLQCLNSADLLK	0.966430083	NL
968	O70250	sp|O70250|PGAM2_MOUSE	Pgam2	Phosphoglycerate mutase 2 OS=Mus musculus GN=Pgam2 PE=1 SV=3	YAGLKPEELPTCESLK	0.966837475	NL
969	Q3V1L4	sp|Q3V1L4|5NTC_MOUSE	Nt5c2	Cytosolic purine 5'-nucleotidase OS=Mus musculus GN=Nt5c2 PE=1 SV=2	YTSCDTGFK	0.967398665	NL
970	Q07417	sp|Q07417|ACADS_MOUSE	Acads	Short-chain specific acyl-CoA dehydrogenase, mitochondrial OS=Mus musculus GN=Acads PE=1 SV=2	IGIASQALGIAQASLDCAVK	0.970496894	NL
971	A2BE28	sp|A2BE28|LAS1L_MOUSE	Las1l	Ribosomal biogenesis protein LAS1L OS=Mus musculus GN=Las1l PE=1 SV=1	VQCILEELK	0.971003276	NL
972	B1AUH1	sp|B1AUH1|PTPRU_MOUSE	Ptpru	Receptor-type tyrosine-protein phosphatase U OS=Mus musculus GN=Ptpru PE=1 SV=1	TVVHCLNGGGR	0.976300446	NL
973	P62307	sp|P62307|RUXF_MOUSE	Snrpf	Small nuclear ribonucleoprotein F OS=Mus musculus GN=Snrpf PE=1 SV=1	CNNVLYIR	0.976304352	NL
974	P25206	sp|P25206|MCM3_MOUSE	Mcm3	DNA replication licensing factor MCM3 OS=Mus musculus GN=Mcm3 PE=1 SV=2	YVLCTAPR	0.977326036	NL
975	Q61235	sp|Q61235|SNTB2_MOUSE	Sntb2	Beta-2-syntrophin OS=Mus musculus GN=Sntb2 PE=1 SV=2	DAWASPCHSYPLVATR	0.978545037	NL
976	O08807	sp|O08807|PRDX4_MOUSE	Prdx4	Peroxiredoxin-4 OS=Mus musculus GN=Prdx4 PE=1 SV=1	HGEVCPAGWKPGSETIIPDPAGK	0.978584319	NL
977	Q9CPR5	sp|Q9CPR5|RM15_MOUSE	Mrpl15	39S ribosomal protein L15, mitochondrial OS=Mus musculus GN=Mrpl15 PE=1 SV=1	GCGTSLDLLR	0.98461455	NL
978	Q8K202	sp|Q8K202|RPA49_MOUSE	Polr1e	DNA-directed RNA polymerase I subunit RPA49 OS=Mus musculus GN=Polr1e PE=1 SV=2	QFTCLTYNNGR	0.98462996	NL
979	Q8BMS1	sp|Q8BMS1|ECHA_MOUSE	Hadha	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	ALMGLYNGQVLCK	0.988142292	NL
980	Q8K2H2	sp|Q8K2H2|OTU6B_MOUSE	Otud6b	OTU domain-containing protein 6B OS=Mus musculus GN=Otud6b PE=1 SV=1	LVNSATENCS	0.993739442	NL
981	P53702	sp|P53702|CCHL_MOUSE	Hccs	Cytochrome c-type heme lyase OS=Mus musculus GN=Hccs PE=1 SV=2	GCPVTAATSDLTSESK	0.994134606	NL
982	Q8BMJ2	sp|Q8BMJ2|SYLC_MOUSE	Lars	Leucine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Lars PE=1 SV=2	ELMGEEILGASLSAPLTCYK	0.995084477	NL
983	Q8BTW8	sp|Q8BTW8|CK5P1_MOUSE	Cdk5rap1	CDK5 regulatory subunit-associated protein 1 OS=Mus musculus GN=Cdk5rap1 PE=2 SV=2	TSVGCSQLVLVEGFSK	0.99690958	NL
984	Q9ER88	sp|Q9ER88|RT29_MOUSE	Dap3	28S ribosomal protein S29, mitochondrial OS=Mus musculus GN=Dap3 PE=1 SV=1	FLSNCNPEQLER	0.998777985	NL
985	Q9CZ13	sp|Q9CZ13|QCR1_MOUSE	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial OS=Mus musculus GN=Uqcrc1 PE=1 SV=2	NALVSHLDGTTPVCEDIGR	0.99992487	NL
986	P15532	sp|P15532|NDKA_MOUSE	Nme1	Nucleoside diphosphate kinase A OS=Mus musculus GN=Nme1 PE=1 SV=1	GDFCIQVGR	1.000765616	NL
987	Q9EQI8	sp|Q9EQI8|RM46_MOUSE	Mrpl46	39S ribosomal protein L46, mitochondrial OS=Mus musculus GN=Mrpl46 PE=1 SV=1	FLLDSDGLSCL	1.004745563	NL
988	Q99MR8	sp|Q99MR8|MCCA_MOUSE	Mccc1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	DQSDQCLR	1.007861318	NL
989	Q3UFK8	sp|Q3UFK8|FRMD8_MOUSE	Frmd8	FERM domain-containing protein 8 OS=Mus musculus GN=Frmd8 PE=1 SV=2	VQLGPYQPGQPAACTLR	1.008603998	NL
990	Q8BG81	sp|Q8BG81|PDIP3_MOUSE	Poldip3	Polymerase delta-interacting protein 3 OS=Mus musculus GN=Poldip3 PE=1 SV=1	CLDGQPMK	1.008822809	NL
991	P63323	sp|P63323|RS12_MOUSE	Rps12	40S ribosomal protein S12 OS=Mus musculus GN=Rps12 PE=1 SV=2	LGEWVGLCK	1.009298995	NL
992	B2RRE7	sp|B2RRE7|OTUD4_MOUSE	Otud4	OTU domain-containing protein 4 OS=Mus musculus GN=Otud4 PE=1 SV=1	DGSCLFR	1.009591116	NL
993	Q921G7	sp|Q921G7|ETFD_MOUSE	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial OS=Mus musculus GN=Etfdh PE=1 SV=1	ASCDAQTYGIGLK	1.01010101	NL
994	Q5SW19	sp|Q5SW19|CLU_MOUSE	Cluh	Clustered mitochondria protein homolog OS=Mus musculus GN=Cluh PE=1 SV=2	ERPLCPLQPQNR	1.01378751	NL
995	Q8BIJ6	sp|Q8BIJ6|SYIM_MOUSE	Iars2	Isoleucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Iars2 PE=1 SV=1	EENIVHSYPCDWR	1.014539306	NL
996	P11881	sp|P11881|ITPR1_MOUSE	Itpr1	Inositol 1,4,5-trisphosphate receptor type 1 OS=Mus musculus GN=Itpr1 PE=1 SV=2	LFENFLVDICR	1.014872125	NL
997	Q8VC74	sp|Q8VC74|COX18_MOUSE	Cox18	Mitochondrial inner membrane protein COX18 OS=Mus musculus GN=Cox18 PE=1 SV=5	LNQEVAVCAR	1.016570093	NL
998	Q9CWG8	sp|Q9CWG8|NDUF7_MOUSE	Ndufaf7	Protein arginine methyltransferase NDUFAF7, mitochondrial OS=Mus musculus GN=Ndufaf7 PE=1 SV=4	TCAISIHLVEVSQK	1.017501018	NL
999	P30285	sp|P30285|CDK4_MOUSE	Cdk4	Cyclin-dependent kinase 4 OS=Mus musculus GN=Cdk4 PE=1 SV=1	LMDVCATSR	1.019783806	NL
1000	Q6P2B1	sp|Q6P2B1|TNPO3_MOUSE	Tnpo3	Transportin-3 OS=Mus musculus GN=Tnpo3 PE=1 SV=1	QVCWALR	1.02084062	NL
1001	Q8BMA6	sp|Q8BMA6|SRP68_MOUSE	Srp68	Signal recognition particle subunit SRP68 OS=Mus musculus GN=Srp68 PE=1 SV=2	FESFCLDPSLVTK	1.021698557	NL
1002	Q9D7N3	sp|Q9D7N3|RT09_MOUSE	Mrps9	28S ribosomal protein S9, mitochondrial OS=Mus musculus GN=Mrps9 PE=1 SV=3	LLTLPCGPAEEEFVQR	1.026328942	NL
1003	Q8R3N6	sp|Q8R3N6|THOC1_MOUSE	Thoc1	THO complex subunit 1 OS=Mus musculus GN=Thoc1 PE=1 SV=1	CTLDQAFR	1.026761313	NL
1004	Q8VE95	sp|Q8VE95|CH082_MOUSE	\N	UPF0598 protein C8orf82 homolog OS=Mus musculus PE=1 SV=1	YEASFPFLSLCGR	1.02817191	NL
1005	P63085	sp|P63085|MK01_MOUSE	Mapk1	Mitogen-activated protein kinase 1 OS=Mus musculus GN=Mapk1 PE=1 SV=3	DLKPSNLLLNTTCDLK	1.029827773	NL
1006	Q3U6U5	sp|Q3U6U5|GTPB6_MOUSE	Gtpbp6	Putative GTP-binding protein 6 OS=Mus musculus GN=Gtpbp6 PE=1 SV=1	QVLTLCVR	1.031353135	NL
1007	Q60676	sp|Q60676|PPP5_MOUSE	Ppp5c	Serine/threonine-protein phosphatase 5 OS=Mus musculus GN=Ppp5c PE=1 SV=3	TECYGYALGDATR	1.031852491	NL
1008	Q6P9R1	sp|Q6P9R1|DDX51_MOUSE	Ddx51	ATP-dependent RNA helicase DDX51 OS=Mus musculus GN=Ddx51 PE=1 SV=1	VVAAAFYSEGPTGSCALLQR	1.034982405	NL
1009	Q8R2L5	sp|Q8R2L5|RT18C_MOUSE	Mrps18c	28S ribosomal protein S18c, mitochondrial OS=Mus musculus GN=Mrps18c PE=1 SV=1	NVQLLSQFISPFTGCIYGR	1.037819112	NL
1010	Q8K126	sp|Q8K126|RF1M_MOUSE	Mtrf1	Peptide chain release factor 1, mitochondrial OS=Mus musculus GN=Mtrf1 PE=2 SV=1	TTGGDICQQFTR	1.042100875	NL
1011	Q8VD62	sp|Q8VD62|CK068_MOUSE	Bles03	UPF0696 protein C11orf68 homolog OS=Mus musculus GN=Bles03 PE=1 SV=1	WHLCPTLYESR	1.042535446	NL
1012	Q9DCM2	sp|Q9DCM2|GSTK1_MOUSE	Gstk1	Glutathione S-transferase kappa 1 OS=Mus musculus GN=Gstk1 PE=1 SV=3	LIENTDAACK	1.044059303	NL
1013	Q3U0V1	sp|Q3U0V1|FUBP2_MOUSE	Khsrp	Far upstream element-binding protein 2 OS=Mus musculus GN=Khsrp PE=1 SV=2	CGLVIGR	1.044347996	NL
1014	P03899	sp|P03899|NU3M_MOUSE	Mtnd3	NADH-ubiquinone oxidoreductase chain 3 OS=Mus musculus GN=Mtnd3 PE=1 SV=3	ANPYECGFDPTSSAR	1.045696957	NL
1015	Q80U93	sp|Q80U93|NU214_MOUSE	Nup214	Nuclear pore complex protein Nup214 OS=Mus musculus GN=Nup214 PE=1 SV=2	ACLQVGTSEEMK	1.052045923	NL
1016	Q5EG47	sp|Q5EG47|AAPK1_MOUSE	Prkaa1	5'-AMP-activated protein kinase catalytic subunit alpha-1 OS=Mus musculus GN=Prkaa1 PE=1 SV=2	ICDGIFYTPQYLNPSVISLLK	1.052077854	NL
1017	Q8CIM3	sp|Q8CIM3|D2HDH_MOUSE	D2hgdh	D-2-hydroxyglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=D2hgdh PE=1 SV=3	LPFSTVSEEDLAAFECIIPGR	1.05401651	NL
1018	Q9R0Q4	sp|Q9R0Q4|MO4L2_MOUSE	Morf4l2	Mortality factor 4-like protein 2 OS=Mus musculus GN=Morf4l2 PE=1 SV=1	NVDAILEEYANCK	1.056039254	NL
1019	Q9QWT9	sp|Q9QWT9|KIFC1_MOUSE	Kifc1	Kinesin-like protein KIFC1 OS=Mus musculus GN=Kifc1 PE=1 SV=2	GLQCGAPLNLVDLAGSER	1.056970722	NL
1020	Q8BIJ7	sp|Q8BIJ7|RUFY1_MOUSE	Rufy1	RUN and FYVE domain-containing protein 1 OS=Mus musculus GN=Rufy1 PE=1 SV=1	LCPEASDIATSVR	1.057528958	NL
1021	Q9CZP7	sp|Q9CZP7|CD37L_MOUSE	Cdc37l1	Hsp90 co-chaperone Cdc37-like 1 OS=Mus musculus GN=Cdc37l1 PE=1 SV=1	NCNVDPR	1.05834654	NL
1022	P58501	sp|P58501|PAXB1_MOUSE	Paxbp1	PAX3- and PAX7-binding protein 1 OS=Mus musculus GN=Paxbp1 PE=1 SV=3	VFEDVLESFYSIDCIK	1.063603489	NL
1023	P70698	sp|P70698|PYRG1_MOUSE	Ctps1	CTP synthase 1 OS=Mus musculus GN=Ctps1 PE=1 SV=2	LCSAHGVLVPGGFGVR	1.065889712	NL
1024	P97452	sp|P97452|BOP1_MOUSE	Bop1	Ribosome biogenesis protein BOP1 OS=Mus musculus GN=Bop1 PE=1 SV=1	DLQPFPVCQALVYR	1.068147832	NL
1025	Q8BFP9	sp|Q8BFP9|PDK1_MOUSE	Pdk1	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 1, mitochondrial OS=Mus musculus GN=Pdk1 PE=1 SV=2	QFLDFGSVNACEK	1.068147832	NL
1026	Q91WM1	sp|Q91WM1|STRBP_MOUSE	Strbp	Spermatid perinuclear RNA-binding protein OS=Mus musculus GN=Strbp PE=1 SV=1	YQVEQCINEASIIIR	1.068800417	NL
1027	Q9CXT8	sp|Q9CXT8|MPPB_MOUSE	Pmpcb	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	IVLAAAGGVCHNELLELAK	1.069976461	NL
1028	Q9D0F1	sp|Q9D0F1|NDC80_MOUSE	Ndc80	Kinetochore protein NDC80 homolog OS=Mus musculus GN=Ndc80 PE=1 SV=1	CEEEVPR	1.070434596	NL
1029	A2ALS5	sp|A2ALS5|RPGP1_MOUSE	Rap1gap	Rap1 GTPase-activating protein 1 OS=Mus musculus GN=Rap1gap PE=1 SV=2	LECNPTAR	1.071545764	NL
1030	Q8C0K5	sp|Q8C0K5|GDC_MOUSE	Slc25a16	Graves disease carrier protein homolog OS=Mus musculus GN=Slc25a16 PE=1 SV=1	CIPSQAVAFTTYELMK	1.073767851	NL
1031	Q8BGE6	sp|Q8BGE6|ATG4B_MOUSE	Atg4b	Cysteine protease ATG4B OS=Mus musculus GN=Atg4b PE=1 SV=2	NFPAIGGTGPTSDTGWGCMLR	1.080613789	NL
1032	Q8R3Y8	sp|Q8R3Y8|I2BP1_MOUSE	Irf2bp1	Interferon regulatory factor 2-binding protein 1 OS=Mus musculus GN=Irf2bp1 PE=1 SV=2	NADCLAELNEAMR	1.081548778	NL
1033	Q9WTI7	sp|Q9WTI7|MYO1C_MOUSE	Myo1c	Unconventional myosin-Ic OS=Mus musculus GN=Myo1c PE=1 SV=2	CPENAFFLDHVR	1.082133968	NL
1034	P31266	sp|P31266|SUH_MOUSE	Rbpj	Recombining binding protein suppressor of hairless OS=Mus musculus GN=Rbpj PE=1 SV=1	IIQFQATPCPK	1.082930519	NL
1035	Q8BYM8	sp|Q8BYM8|SYCM_MOUSE	Cars2	Probable cysteine--tRNA ligase, mitochondrial OS=Mus musculus GN=Cars2 PE=1 SV=2	CVVDELVR	1.084260157	NL
1036	P15327	sp|P15327|PMGE_MOUSE	Bpgm	Bisphosphoglycerate mutase OS=Mus musculus GN=Bpgm PE=1 SV=2	FCSWVDQK	1.088671766	NL
1037	Q91W50	sp|Q91W50|CSDE1_MOUSE	Csde1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	QRPGQQIATCVR	1.088731628	NL
1038	O08663	sp|O08663|MAP2_MOUSE	Metap2	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	GQECEYPPTQDGR	1.095170299	NL
1039	Q9CQJ8	sp|Q9CQJ8|NDUB9_MOUSE	Ndufb9	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 9 OS=Mus musculus GN=Ndufb9 PE=1 SV=3	YFACLMR	1.099384345	NL
1040	Q68FL4	sp|Q68FL4|SAHH3_MOUSE	Ahcyl2	Putative adenosylhomocysteinase 3 OS=Mus musculus GN=Ahcyl2 PE=1 SV=1	LCVPAMNVNDSVTK	1.100568246	NL
1041	Q99J39	sp|Q99J39|DCMC_MOUSE	Mlycd	Malonyl-CoA decarboxylase, mitochondrial OS=Mus musculus GN=Mlycd PE=1 SV=1	ISECEAVHPVK	1.104240283	NL
1042	Q99KH8	sp|Q99KH8|STK24_MOUSE	Stk24	Serine/threonine-protein kinase 24 OS=Mus musculus GN=Stk24 PE=1 SV=1	SQACGGNLGSIEELR	1.106305361	NL
1043	O70571	sp|O70571|PDK4_MOUSE	Pdk4	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 4, mitochondrial OS=Mus musculus GN=Pdk4 PE=1 SV=1	DTCTVDPVTNQNLQYFLDR	1.109262341	NL
1044	Q9WUT3	sp|Q9WUT3|KS6A2_MOUSE	Rps6ka2	Ribosomal protein S6 kinase alpha-2 OS=Mus musculus GN=Rps6ka2 PE=1 SV=1	AENGLLMTPCYTANFVAPEVLK	1.110740864	NL
1045	Q8BK64	sp|Q8BK64|AHSA1_MOUSE	Ahsa1	Activator of 90 kDa heat shock protein ATPase homolog 1 OS=Mus musculus GN=Ahsa1 PE=1 SV=2	NGETELCMEGR	1.111605158	NL
1046	Q69ZJ7	sp|Q69ZJ7|RIC1_MOUSE	Ric1	RAB6A-GEF complex partner protein 1 OS=Mus musculus GN=Ric1 PE=1 SV=2	LYLNCGEASQAQNPK	1.112099644	NL
1047	B2RR83	sp|B2RR83|YTDC2_MOUSE	Ythdc2	Probable ATP-dependent RNA helicase YTHDC2 OS=Mus musculus GN=Ythdc2 PE=1 SV=1	LLAPVNCTIADFLMK	1.301913813	NL
1048	Q9Z2I9	sp|Q9Z2I9|SUCB1_MOUSE	Sucla2	Succinate--CoA ligase [ADP-forming] subunit beta, mitochondrial OS=Mus musculus GN=Sucla2 PE=1 SV=2	ILACDDLDEAAK	1.113924464	NL
1049	Q60631	sp|Q60631|GRB2_MOUSE	Grb2	Growth factor receptor-bound protein 2 OS=Mus musculus GN=Grb2 PE=1 SV=1	VLNEECDQNWYK	1.116684595	NL
1050	P97930	sp|P97930|KTHY_MOUSE	Dtymk	Thymidylate kinase OS=Mus musculus GN=Dtymk PE=1 SV=2	LVTALCASGHR	1.122082585	NL
1051	Q8CI94	sp|Q8CI94|PYGB_MOUSE	Pygb	Glycogen phosphorylase, brain form OS=Mus musculus GN=Pygb PE=1 SV=3	NIACSGK	1.127125719	NL
1052	Q9CYF5	sp|Q9CYF5|RCC1L_MOUSE	Rcc1l	RCC1-like G exchanging factor-like protein OS=Mus musculus GN=Rcc1l PE=2 SV=1	CLPFSGVGK	1.128302491	NL
1053	P70398	sp|P70398|USP9X_MOUSE	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X OS=Mus musculus GN=Usp9x PE=1 SV=2	VVIQSNDDIACR	1.1330135	NL
1054	P51175	sp|P51175|PPOX_MOUSE	Ppox	Protoporphyrinogen oxidase OS=Mus musculus GN=Ppox PE=1 SV=1	GVTVLSGQPVCGLSLQPEGR	1.133016089	NL
1055	Q9DB20	sp|Q9DB20|ATPO_MOUSE	Atp5o	ATP synthase subunit O, mitochondrial OS=Mus musculus GN=Atp5o PE=1 SV=1	GEVPCTVTTASPLDDAVLSELK	1.135331517	NL
1056	Q64520	sp|Q64520|KGUA_MOUSE	Guk1	Guanylate kinase OS=Mus musculus GN=Guk1 PE=1 SV=2	TDLCPIYIFVQPPSLDVLEQR	1.140728931	NL
1057	Q8BT60	sp|Q8BT60|CPNE3_MOUSE	Cpne3	Copine-3 OS=Mus musculus GN=Cpne3 PE=1 SV=2	EALAQCVLAEIPQQVVGYFNTYK	1.142290564	NL
1058	Q99N84	sp|Q99N84|RT18B_MOUSE	Mrps18b	28S ribosomal protein S18b, mitochondrial OS=Mus musculus GN=Mrps18b PE=1 SV=1	ECGLLSYYVPQVEPR	1.146074811	NL
1059	Q99JT1	sp|Q99JT1|GATB_MOUSE	Gatb	Glutamyl-tRNA(Gln) amidotransferase subunit B, mitochondrial OS=Mus musculus GN=Gatb PE=1 SV=1	VTNWVLNTFLCYLK	1.147777945	NL
1060	Q924C1	sp|Q924C1|XPO5_MOUSE	Xpo5	Exportin-5 OS=Mus musculus GN=Xpo5 PE=1 SV=1	CALMEALVLVSNQFK	1.156441052	NL
1061	Q8K411	sp|Q8K411|PREP_MOUSE	Pitrm1	Presequence protease, mitochondrial OS=Mus musculus GN=Pitrm1 PE=1 SV=1	LVTDPTFKPCQMK	1.157675388	NL
1062	Q5PSV9	sp|Q5PSV9|MDC1_MOUSE	Mdc1	Mediator of DNA damage checkpoint protein 1 OS=Mus musculus GN=Mdc1 PE=1 SV=1	AGCFLPPDDYLVTDPEQEK	1.164232079	NL
1063	P18872	sp|P18872|GNAO_MOUSE	Gnao1	Guanine nucleotide-binding protein G(o) subunit alpha OS=Mus musculus GN=Gnao1 PE=1 SV=3	MVCDVVSR	1.166044776	NL
1064	Q68FE6	sp|Q68FE6|RIPR1_MOUSE	Ripor1	Rho family-interacting cell polarization regulator 1 OS=Mus musculus GN=Ripor1 PE=1 SV=2	VLLTFCSQYGAR	1.166222835	NL
1065	Q8BMS1	sp|Q8BMS1|ECHA_MOUSE	Hadha	Trifunctional enzyme subunit alpha, mitochondrial OS=Mus musculus GN=Hadha PE=1 SV=1	CLAPMMSEVMR	1.16713352	NL
1066	A2APY7	sp|A2APY7|NDUF5_MOUSE	Ndufaf5	Arginine-hydroxylase NDUFAF5, mitochondrial OS=Mus musculus GN=Ndufaf5 PE=1 SV=1	CSLQLAETER	1.171920778	NL
1067	Q9CZW5	sp|Q9CZW5|TOM70_MOUSE	Tomm70	Mitochondrial import receptor subunit TOM70 OS=Mus musculus GN=Tomm70 PE=1 SV=2	CAEGYALYAQALTDQQQFGK	1.175115136	NL
1068	P51881	sp|P51881|ADT2_MOUSE	Slc25a5	ADP/ATP translocase 2 OS=Mus musculus GN=Slc25a5 PE=1 SV=3	GTDIMYTGTLDCWR	1.177717583	NL
1069	Q3THK7	sp|Q3THK7|GUAA_MOUSE	Gmps	GMP synthase [glutamine-hydrolyzing] OS=Mus musculus GN=Gmps PE=1 SV=2	ACTTEEDQEK	1.177856302	NL
1070	Q80UM3	sp|Q80UM3|NAA15_MOUSE	Naa15	N-alpha-acetyltransferase 15, NatA auxiliary subunit OS=Mus musculus GN=Naa15 PE=1 SV=1	EALEHLCTYEK	1.17793963	NL
1071	Q925I1	sp|Q925I1|ATAD3_MOUSE	Atad3	ATPase family AAA domain-containing protein 3 OS=Mus musculus GN=Atad3 PE=1 SV=1	IDEMVCFALPQR	1.178828245	NL
1072	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A OS=Mus musculus GN=Flna PE=1 SV=5	YTPCGAGSYTIMVLFADQATPTSPIR	1.183410252	NL
1073	Q99PU8	sp|Q99PU8|DHX30_MOUSE	Dhx30	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	CQSGFAYHLFPR	1.18623962	NL
1074	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	DNYQSFCK	1.189626457	NL
1075	Q8K0D5	sp|Q8K0D5|EFGM_MOUSE	Gfm1	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	QELIECVANSDEQLGELFLEEK	1.191611058	NL
1076	Q9CQV5	sp|Q9CQV5|RT24_MOUSE	Mrps24	28S ribosomal protein S24, mitochondrial OS=Mus musculus GN=Mrps24 PE=1 SV=1	ANQVDICALVLR	1.19760479	NL
1077	Q9QUJ7	sp|Q9QUJ7|ACSL4_MOUSE	Acsl4	Long-chain-fatty-acid--CoA ligase 4 OS=Mus musculus GN=Acsl4 PE=1 SV=2	TAEDYCVDENGQR	1.198035222	NL
1078	Q8C7R4	sp|Q8C7R4|UBA6_MOUSE	Uba6	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	LYATVYCIPFSEK	1.203492207	NL
1079	Q8VDC0	sp|Q8VDC0|SYLM_MOUSE	Lars2	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	LPSGQCLK	1.206831807	NL
1080	Q8BH95	sp|Q8BH95|ECHM_MOUSE	Echs1	Enoyl-CoA hydratase, mitochondrial OS=Mus musculus GN=Echs1 PE=1 SV=1	TFQDCYSSK	1.207583625	NL
1081	Q91VW5	sp|Q91VW5|GOGA4_MOUSE	Golga4	Golgin subfamily A member 4 OS=Mus musculus GN=Golga4 PE=1 SV=2	HVCEELDAQR	1.217067561	NL
1082	P61087	sp|P61087|UBE2K_MOUSE	Ube2k	Ubiquitin-conjugating enzyme E2 K OS=Mus musculus GN=Ube2k PE=1 SV=3	IENLCAMGFDR	1.223336658	NL
1083	Q8C7R4	sp|Q8C7R4|UBA6_MOUSE	Uba6	Ubiquitin-like modifier-activating enzyme 6 OS=Mus musculus GN=Uba6 PE=1 SV=1	TFCFEPLESQIK	1.229196823	NL
1084	Q80Y81	sp|Q80Y81|RNZ2_MOUSE	Elac2	Zinc phosphodiesterase ELAC protein 2 OS=Mus musculus GN=Elac2 PE=1 SV=1	VCFGDFPTVPK	1.231217692	NL
1085	P70191	sp|P70191|TRAF5_MOUSE	Traf5	TNF receptor-associated factor 5 OS=Mus musculus GN=Traf5 PE=1 SV=1	RPDGEMNIASGCPR	1.236370103	NL
1086	Q9JHW4	sp|Q9JHW4|SELB_MOUSE	Eefsec	Selenocysteine-specific elongation factor OS=Mus musculus GN=Eefsec PE=1 SV=2	LDADIHTNTCR	1.238284065	NL
1087	A2AIL4	sp|A2AIL4|NDUF6_MOUSE	Ndufaf6	NADH dehydrogenase (ubiquinone) complex I, assembly factor 6 OS=Mus musculus GN=Ndufaf6 PE=1 SV=1	AVEDMYCDNPPHQPVAIELWK	1.238850347	NL
1088	Q3U0V1	sp|Q3U0V1|FUBP2_MOUSE	Khsrp	Far upstream element-binding protein 2 OS=Mus musculus GN=Khsrp PE=1 SV=2	VQQACEMVMDILR	1.246727341	NL
1089	Q8K0D5	sp|Q8K0D5|EFGM_MOUSE	Gfm1	Elongation factor G, mitochondrial OS=Mus musculus GN=Gfm1 PE=1 SV=1	GEYTMEYCR	1.247816321	NL
1090	Q8C460	sp|Q8C460|ERI3_MOUSE	Eri3	ERI1 exoribonuclease 3 OS=Mus musculus GN=Eri3 PE=1 SV=1	SIFVTCGDWDLK	1.255492781	NL
1091	D3YXK2	sp|D3YXK2|SAFB1_MOUSE	Safb	Scaffold attachment factor B1 OS=Mus musculus GN=Safb PE=1 SV=2	CYGFVTMSTAEEATK	1.286531016	NL
1092	Q9CX34	sp|Q9CX34|SGT1_MOUSE	Sugt1	Protein SGT1 homolog OS=Mus musculus GN=Sugt1 PE=1 SV=3	ALEQNPDDAQYYCQR	1.291575075	NL
1093	Q9JLV5	sp|Q9JLV5|CUL3_MOUSE	Cul3	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	ALQSLACGKPTQR	1.299038711	NL
1094	Q9WUT3	sp|Q9WUT3|KS6A2_MOUSE	Rps6ka2	Ribosomal protein S6 kinase alpha-2 OS=Mus musculus GN=Rps6ka2 PE=1 SV=1	EDIGVGSYSVCK	1.305951949	NL
1095	P38647	sp|P38647|GRP75_MOUSE	Hspa9	Stress-70 protein, mitochondrial OS=Mus musculus GN=Hspa9 PE=1 SV=3	DQLPADECNK	1.306335728	NL
1096	Q99LX0	sp|Q99LX0|PARK7_MOUSE	Park7	Protein DJ-1 OS=Mus musculus GN=Park7 PE=1 SV=1	DVMICPDTSLEDAK	1.314578678	NL
1097	Q6ZQ73	sp|Q6ZQ73|CAND2_MOUSE	Cand2	Cullin-associated NEDD8-dissociated protein 2 OS=Mus musculus GN=Cand2 PE=1 SV=2	LATLCPAPVLQR	1.327140013	NL
1098	Q9JIK5	sp|Q9JIK5|DDX21_MOUSE	Ddx21	Nucleolar RNA helicase 2 OS=Mus musculus GN=Ddx21 PE=1 SV=3	DAQELSQNTCIK	1.341741581	NL
1099	Q8VDC0	sp|Q8VDC0|SYLM_MOUSE	Lars2	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	EALVNWDPVDQTVLANEQVNEYGCSWR	1.36911592	NL
1100	Q9CZN8	sp|Q9CZN8|GATA_MOUSE	Qrsl1	Glutamyl-tRNA(Gln) amidotransferase subunit A, mitochondrial OS=Mus musculus GN=Qrsl1 PE=1 SV=1	AFCDQQLLTVAK	1.369863014	NL
1101	Q99LS3	sp|Q99LS3|SERB_MOUSE	Psph	Phosphoserine phosphatase OS=Mus musculus GN=Psph PE=1 SV=1	IIMIGDGATDMEACPPADAFIGFGGNVIR	1.401625252	NL
1102	D3YZG8	sp|D3YZG8|MTD2L_MOUSE	Mthfd2l	Probable bifunctional methylenetetrahydrofolate dehydrogenase/cyclohydrolase 2 OS=Mus musculus GN=Mthfd2l PE=3 SV=1	AASAVGICSELIIKPK	1.402524544	NL
1103	Q9D071	sp|Q9D071|MMS19_MOUSE	Mms19	MMS19 nucleotide excision repair protein homolog OS=Mus musculus GN=Mms19 PE=1 SV=1	TAVPCLFALAVQASMPEK	1.408649106	NL
1104	A2ASS6	sp|A2ASS6|TITIN_MOUSE	Ttn	Titin OS=Mus musculus GN=Ttn PE=1 SV=1	FGCGPPVEIGPILAVDPLGPPTSPER	1.413771509	NL
1105	P53395	sp|P53395|ODB2_MOUSE	Dbt	Lipoamide acyltransferase component of branched-chain alpha-keto acid dehydrogenase complex, mitochondrial OS=Mus musculus GN=Dbt PE=1 SV=2	AASLGLLQFPILNASVDENCQNITYK	1.434078314	NL
1106	Q60930	sp|Q60930|VDAC2_MOUSE	Vdac2	Voltage-dependent anion-selective channel protein 2 OS=Mus musculus GN=Vdac2 PE=1 SV=2	WNTDNTLGTEIAIEDQICQGLK	1.439482452	NL
1107	Q8BKY8	sp|Q8BKY8|MTEF2_MOUSE	Mterf2	Transcription termination factor 2, mitochondrial OS=Mus musculus GN=Mterf2 PE=1 SV=1	CLQGQGFTDSEVLQLLSK	1.471453796	NL
1108	Q8K4B0	sp|Q8K4B0|MTA1_MOUSE	Mta1	Metastasis-associated protein MTA1 OS=Mus musculus GN=Mta1 PE=1 SV=1	ALDCSSSVR	1.513854384	NL
1109	Q9WU40	sp|Q9WU40|MAN1_MOUSE	Lemd3	Inner nuclear membrane protein Man1 OS=Mus musculus GN=Lemd3 PE=1 SV=2	LCEPEEELLQQFK	1.524021422	NL
1110	Q8VDC0	sp|Q8VDC0|SYLM_MOUSE	Lars2	Probable leucine--tRNA ligase, mitochondrial OS=Mus musculus GN=Lars2 PE=1 SV=1	EDIDFTGPAPVCAK	1.52590594	NL
1111	P0C605	sp|P0C605|KGP1_MOUSE	Prkg1	cGMP-dependent protein kinase 1 OS=Mus musculus GN=Prkg1 PE=1 SV=1	LCTMGPGK	1.595914459	NL
1112	Q9QUR6	sp|Q9QUR6|PPCE_MOUSE	Prep	Prolyl endopeptidase OS=Mus musculus GN=Prep PE=1 SV=1	ICDPYSWLEDPDSEQTK	1.650709805	NL
1113	Q99JB8	sp|Q99JB8|PACN3_MOUSE	Pacsin3	Protein kinase C and casein kinase II substrate protein 3 OS=Mus musculus GN=Pacsin3 PE=1 SV=1	IGLYPANYVECVGA	1.785718826	NL
1114	Q9D0K2	sp|Q9D0K2|SCOT1_MOUSE	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial OS=Mus musculus GN=Oxct1 PE=1 SV=1	NFNLPMCK	1.823154057	NL
1115	Q921I6	sp|Q921I6|SH3B4_MOUSE	Sh3bp4	SH3 domain-binding protein 4 OS=Mus musculus GN=Sh3bp4 PE=1 SV=1	VCMFSNMTNYEVK	1.838235294	NL
1116	Q5SUQ9	sp|Q5SUQ9|CTC1_MOUSE	Ctc1	CST complex subunit CTC1 OS=Mus musculus GN=Ctc1 PE=1 SV=2	CQLGLPLYLWAAK	1.906941266	NL
1117	Q60960	sp|Q60960|IMA5_MOUSE	Kpna1	Importin subunit alpha-5 OS=Mus musculus GN=Kpna1 PE=1 SV=2	ENCTLQFESAWVLTNIASGNSLQTR	2.119442107	NL
1118	Q9DCZ1	sp|Q9DCZ1|GMPR1_MOUSE	Gmpr	GMP reductase 1 OS=Mus musculus GN=Gmpr PE=1 SV=1	VGVGPGSVCTTR	0.618735305	NL
1119	Q6PDY2	sp|Q6PDY2|AEDO_MOUSE	Ado	2-aminoethanethiol dioxygenase OS=Mus musculus GN=Ado PE=1 SV=2	EVWLLETPQADDFWCEGEPYPGPK	2.815315315	NL
1120	Q99KC8	sp|Q99KC8|VMA5A_MOUSE	Vwa5a	von Willebrand factor A domain-containing protein 5A OS=Mus musculus GN=Vwa5a PE=1 SV=2	ACGEFVFLMDR	1.720874204	NL
1121	Q91W50	sp|Q91W50|CSDE1_MOUSE	Csde1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	MNGQVVCAVPHNLESK	3.393281303	NL
1122	Q922H2	sp|Q922H2|PDK3_MOUSE	Pdk3	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 3, mitochondrial OS=Mus musculus GN=Pdk3 PE=1 SV=1	HIGSIDPTCNVADVVK	1.19047619	NL
1123	Q91VI7	sp|Q91VI7|RINI_MOUSE	Rnh1	Ribonuclease inhibitor OS=Mus musculus GN=Rnh1 PE=1 SV=1	ELDLSNNCMGGPGVLQLLESLK	0.770119369	NL
1124	Q4KML4	sp|Q4KML4|ABRAL_MOUSE	Abracl	Costars family protein ABRACL OS=Mus musculus GN=Abracl PE=1 SV=1	CANLFEALVGTLK	0.421034904	NL
1125	P35235	sp|P35235|PTN11_MOUSE	Ptpn11	Tyrosine-protein phosphatase non-receptor type 11 OS=Mus musculus GN=Ptpn11 PE=1 SV=2	QESIVDAGPVVVHCSAGIGR	0.528764805	NL
1126	Q9Z0E0	sp|Q9Z0E0|NCDN_MOUSE	Ncdn	Neurochondrin OS=Mus musculus GN=Ncdn PE=1 SV=1	EVCQLLPFLVR	0.458263282	NL
1127	Q99NH0	sp|Q99NH0|ANR17_MOUSE	Ankrd17	Ankyrin repeat domain-containing protein 17 OS=Mus musculus GN=Ankrd17 PE=1 SV=2	LTSSVSCALDEAAAALTR	0.507183599	NL
1128	Q3TQQ9	sp|Q3TQQ9|CA112_MOUSE	\N	Uncharacterized protein C1orf112 homolog OS=Mus musculus PE=1 SV=2	LFDGMICELTSEAR	0.546179475	NL
1129	A2BE28	sp|A2BE28|LAS1L_MOUSE	Las1l	Ribosomal biogenesis protein LAS1L OS=Mus musculus GN=Las1l PE=1 SV=1	CSNLPLK	0.548083371	NL
1130	Q3UFY7	sp|Q3UFY7|5NT3B_MOUSE	Nt5c3b	7-methylguanosine phosphate-specific 5'-nucleotidase OS=Mus musculus GN=Nt5c3b PE=1 SV=3	HILYQGDCVELQGS	0.560098577	NL
1131	Q6PJN8	sp|Q6PJN8|DALD3_MOUSE	Dalrd3	DALR anticodon-binding domain-containing protein 3 OS=Mus musculus GN=Dalrd3 PE=2 SV=1	AVSCLQGPGVAPVLR	0.577333872	NL
1132	Q9CT10	sp|Q9CT10|RANB3_MOUSE	Ranbp3	Ran-binding protein 3 OS=Mus musculus GN=Ranbp3 PE=1 SV=2	ATAWTCLLEK	0.551480726	NL
1133	P35700	sp|P35700|PRDX1_MOUSE	Prdx1	Peroxiredoxin-1 OS=Mus musculus GN=Prdx1 PE=1 SV=1	HGEVCPAGWKPGSDTIKPDVNK	0.588301578	NL
1134	Q9ES28	sp|Q9ES28|ARHG7_MOUSE	Arhgef7	Rho guanine nucleotide exchange factor 7 OS=Mus musculus GN=Arhgef7 PE=1 SV=2	TLGSVTYMSQVTIQCAGSEEK	0.593190177	NL
1135	Q505F5	sp|Q505F5|LRC47_MOUSE	Lrrc47	Leucine-rich repeat-containing protein 47 OS=Mus musculus GN=Lrrc47 PE=1 SV=1	MVGGCQTK	0.658067913	NL
1136	P68254	sp|P68254|1433T_MOUSE	Ywhaq	14-3-3 protein theta OS=Mus musculus GN=Ywhaq PE=1 SV=1	SICTTVLELLDK	0.622626237	NL
1137	P16045	sp|P16045|LEG1_MOUSE	Lgals1	Galectin-1 OS=Mus musculus GN=Lgals1 PE=1 SV=3	FNAHGDANTIVCNTK	0.637215081	NL
1138	Q8C0E3	sp|Q8C0E3|TRI47_MOUSE	Trim47	Tripartite motif-containing protein 47 OS=Mus musculus GN=Trim47 PE=1 SV=2	LALEEGCGPGPGPPR	0.640391094	NL
1139	O88508	sp|O88508|DNM3A_MOUSE	Dnmt3a	DNA (cytosine-5)-methyltransferase 3A OS=Mus musculus GN=Dnmt3a PE=1 SV=2	LFPACHDSDESDSGK	0.648689816	NL
1140	Q8C878	sp|Q8C878|UBA3_MOUSE	Uba3	NEDD8-activating enzyme E1 catalytic subunit OS=Mus musculus GN=Uba3 PE=1 SV=2	MAVDGGCGDTGDWEGR	0.65017183	NL
1141	Q5XFR0	sp|Q5XFR0|EPAB2_MOUSE	Pabpn1l	Embryonic polyadenylate-binding protein 2 OS=Mus musculus GN=Pabpn1l PE=2 SV=1	VTILCDK	0.652656311	NL
1142	Q8BMK4	sp|Q8BMK4|CKAP4_MOUSE	Ckap4	Cytoskeleton-associated protein 4 OS=Mus musculus GN=Ckap4 PE=1 SV=2	SSAATANASSASCSR	0.65447452	NL
1143	Q8VDF2	sp|Q8VDF2|UHRF1_MOUSE	Uhrf1	E3 ubiquitin-protein ligase UHRF1 OS=Mus musculus GN=Uhrf1 PE=1 SV=2	ALSEDEPCSSSAVK	0.655115873	NL
1144	P05064	sp|P05064|ALDOA_MOUSE	Aldoa	Fructose-bisphosphate aldolase A OS=Mus musculus GN=Aldoa PE=1 SV=2	ALANSLACQGK	0.656555709	NL
1145	Q8BGQ7	sp|Q8BGQ7|SYAC_MOUSE	Aars	Alanine--tRNA ligase, cytoplasmic OS=Mus musculus GN=Aars PE=1 SV=1	AEEIVNGMIEAAKPVYTQDCPLAAAK	0.664927928	NL
1146	Q99LN9	sp|Q99LN9|DOHH_MOUSE	Dohh	Deoxyhypusine hydroxylase OS=Mus musculus GN=Dohh PE=1 SV=2	EAALALAEGLQCGSALFR	0.667743967	NL
1147	Q6P3B9	sp|Q6P3B9|RBFA_MOUSE	Rbfa	Putative ribosome-binding factor A, mitochondrial OS=Mus musculus GN=Rbfa PE=2 SV=1	GLQCQSLAPPSGR	0.67550138	NL
1148	Q05D44	sp|Q05D44|IF2P_MOUSE	Eif5b	Eukaryotic translation initiation factor 5B OS=Mus musculus GN=Eif5b PE=1 SV=2	LAHCEELR	0.679187822	NL
1149	Q91V12	sp|Q91V12|BACH_MOUSE	Acot7	Cytosolic acyl coenzyme A thioester hydrolase OS=Mus musculus GN=Acot7 PE=1 SV=2	GCVITISGR	0.681318137	NL
1150	Q9D1C1	sp|Q9D1C1|UBE2C_MOUSE	Ube2c	Ubiquitin-conjugating enzyme E2 C OS=Mus musculus GN=Ube2c PE=1 SV=1	GAEPCGGAAR	0.692734623	NL
1151	Q6P542	sp|Q6P542|ABCF1_MOUSE	Abcf1	ATP-binding cassette sub-family F member 1 OS=Mus musculus GN=Abcf1 PE=1 SV=1	FGLESHAHTIQICK	0.693144798	NL
1152	E9PVX6	sp|E9PVX6|KI67_MOUSE	Mki67	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	DSFCADPDGEGQDTK	0.696849668	NL
1153	Q8BHS6	sp|Q8BHS6|ARMX3_MOUSE	Armcx3	Armadillo repeat-containing X-linked protein 3 OS=Mus musculus GN=Armcx3 PE=1 SV=1	MAEGGSGDVDDAGDCSGAR	0.697090297	NL
1154	Q8VDW0	sp|Q8VDW0|DX39A_MOUSE	Ddx39a	ATP-dependent RNA helicase DDX39A OS=Mus musculus GN=Ddx39a PE=1 SV=1	NCPHVVVGTPGR	0.698763189	NL
1155	P18760	sp|P18760|COF1_MOUSE	Cfl1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	HELQANCYEEVK	0.702531289	NL
1156	Q99MS7	sp|Q99MS7|EH1L1_MOUSE	Ehbp1l1	EH domain-binding protein 1-like protein 1 OS=Mus musculus GN=Ehbp1l1 PE=1 SV=1	VGNAQPSLPDCLDAGDLAQR	0.708338579	NL
1157	O88327	sp|O88327|CTNL1_MOUSE	Ctnnal1	Alpha-catulin OS=Mus musculus GN=Ctnnal1 PE=1 SV=1	VTEIVTDCR	0.711600946	NL
1158	Q8BIW9	sp|Q8BIW9|CTF18_MOUSE	Chtf18	Chromosome transmission fidelity protein 18 homolog OS=Mus musculus GN=Chtf18 PE=1 SV=2	GCGQLDLLGVPFASLK	0.713804079	NL
1159	Q9D6Z1	sp|Q9D6Z1|NOP56_MOUSE	Nop56	Nucleolar protein 56 OS=Mus musculus GN=Nop56 PE=1 SV=2	LAALALASSENSSTPEECEEVNEK	0.714418887	NL
1160	Q8R3B1	sp|Q8R3B1|PLCD1_MOUSE	Plcd1	1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase delta-1 OS=Mus musculus GN=Plcd1 PE=1 SV=2	ILFCDVLR	0.71508132	NL
1161	Q501J6	sp|Q501J6|DDX17_MOUSE	Ddx17	Probable ATP-dependent RNA helicase DDX17 OS=Mus musculus GN=Ddx17 PE=1 SV=1	TTSSANNPNLMYQDECDR	0.730336576	NL
1162	P47856	sp|P47856|GFPT1_MOUSE	Gfpt1	Glutamine--fructose-6-phosphate aminotransferase [isomerizing] 1 OS=Mus musculus GN=Gfpt1 PE=1 SV=3	DWEANACK	0.73043405	NL
1163	Q91WV0	sp|Q91WV0|NC2B_MOUSE	Dr1	Protein Dr1 OS=Mus musculus GN=Dr1 PE=1 SV=1	EVLQECK	0.737064865	NL
1164	Q8JZM0	sp|Q8JZM0|TFB1M_MOUSE	Tfb1m	Dimethyladenosine transferase 1, mitochondrial OS=Mus musculus GN=Tfb1m PE=1 SV=1	DGDPESCGF	0.737678989	NL
1165	Q9JLV5	sp|Q9JLV5|CUL3_MOUSE	Cul3	Cullin-3 OS=Mus musculus GN=Cul3 PE=1 SV=1	TEDLACMYK	0.744047619	NL
1166	Q8BL66	sp|Q8BL66|EEA1_MOUSE	Eea1	Early endosome antigen 1 OS=Mus musculus GN=Eea1 PE=1 SV=2	ELQEQEEVVSCTK	0.745453635	NL
1167	Q8VBT1	sp|Q8VBT1|TXLNB_MOUSE	Txlnb	Beta-taxilin OS=Mus musculus GN=Txlnb PE=1 SV=2	LCQENTELAEK	0.749105317	NL
1168	Q9JJY4	sp|Q9JJY4|DDX20_MOUSE	Ddx20	Probable ATP-dependent RNA helicase DDX20 OS=Mus musculus GN=Ddx20 PE=1 SV=2	CGLDLIVQAK	0.755686841	NL
1169	Q9D906	sp|Q9D906|ATG7_MOUSE	Atg7	Ubiquitin-like modifier-activating enzyme ATG7 OS=Mus musculus GN=Atg7 PE=1 SV=1	MVNLSGCMDPK	0.759186152	NL
1170	O55033	sp|O55033|NCK2_MOUSE	Nck2	Cytoplasmic protein NCK2 OS=Mus musculus GN=Nck2 PE=1 SV=1	HQAECALNER	0.762886474	NL
1171	Q9D0T2	sp|Q9D0T2|DUS12_MOUSE	Dusp12	Dual specificity protein phosphatase 12 OS=Mus musculus GN=Dusp12 PE=2 SV=1	AVLVHCHAGVSR	0.7680611	NL
1172	Q921M7	sp|Q921M7|FA49B_MOUSE	Fam49b	Protein FAM49B OS=Mus musculus GN=Fam49b PE=1 SV=1	VLTCTDLEQGPNFFLDFENAQPTESEK	0.768875903	NL
1173	Q9Z2X1	sp|Q9Z2X1|HNRPF_MOUSE	Hnrnpf	Heterogeneous nuclear ribonucleoprotein F OS=Mus musculus GN=Hnrnpf PE=1 SV=3	DLSYCLSGMYDHR	0.773935558	NL
1174	Q9D799	sp|Q9D799|FMT_MOUSE	Mtfmt	Methionyl-tRNA formyltransferase, mitochondrial OS=Mus musculus GN=Mtfmt PE=2 SV=3	LLLCNSALSS	0.783604152	NL
1175	Q9D1G2	sp|Q9D1G2|PMVK_MOUSE	Pmvk	Phosphomevalonate kinase OS=Mus musculus GN=Pmvk PE=1 SV=3	DMICWGEQK	0.785863561	NL
1176	Q921G8	sp|Q921G8|GCP2_MOUSE	Tubgcp2	Gamma-tubulin complex component 2 OS=Mus musculus GN=Tubgcp2 PE=1 SV=2	LSVYSTSDCEHGMASVISR	0.794592175	NL
1177	Q9D0E1	sp|Q9D0E1|HNRPM_MOUSE	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M OS=Mus musculus GN=Hnrnpm PE=1 SV=3	GCAVVEFK	0.795924865	NL
1178	Q8VEH5	sp|Q8VEH5|EPMIP_MOUSE	Epm2aip1	EPM2A-interacting protein 1 OS=Mus musculus GN=Epm2aip1 PE=1 SV=1	CLNNWLR	0.797247372	NL
1179	P62071	sp|P62071|RRAS2_MOUSE	Rras2	Ras-related protein R-Ras2 OS=Mus musculus GN=Rras2 PE=1 SV=1	FQEQECPPSPEPTR	0.797882194	NL
1180	Q9EQQ9	sp|Q9EQQ9|OGA_MOUSE	Mgea5	Protein O-GlcNAcase OS=Mus musculus GN=Mgea5 PE=1 SV=2	SFVQWLGCR	0.798054274	NL
1181	O88532	sp|O88532|ZFR_MOUSE	Zfr	Zinc finger RNA-binding protein OS=Mus musculus GN=Zfr PE=1 SV=2	MIPICPVVSFTYVPSR	0.806344098	NL
1182	Q9JK42	sp|Q9JK42|PDK2_MOUSE	Pdk2	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial OS=Mus musculus GN=Pdk2 PE=1 SV=2	HYQTIQEAGDWCVPSTEPK	0.806779971	NL
1183	Q8VBT0	sp|Q8VBT0|TMX1_MOUSE	Tmx1	Thioredoxin-related transmembrane protein 1 OS=Mus musculus GN=Tmx1 PE=1 SV=1	CVGLPSATDTS	0.807579882	NL
1184	Q8C2E4	sp|Q8C2E4|PTCD1_MOUSE	Ptcd1	Pentatricopeptide repeat-containing protein 1, mitochondrial OS=Mus musculus GN=Ptcd1 PE=2 SV=2	EMSSLCSDSSK	0.809865918	NL
1185	O08788	sp|O08788|DCTN1_MOUSE	Dctn1	Dynactin subunit 1 OS=Mus musculus GN=Dctn1 PE=1 SV=3	ASEQIYGSPSSSPYECLR	0.812677773	NL
1186	A2AUC9	sp|A2AUC9|KLH41_MOUSE	Klhl41	Kelch-like protein 41 OS=Mus musculus GN=Klhl41 PE=1 SV=1	CLFGLGEVDDK	0.813889197	NL
1187	Q9DBR1	sp|Q9DBR1|XRN2_MOUSE	Xrn2	5'-3' exoribonuclease 2 OS=Mus musculus GN=Xrn2 PE=1 SV=1	HDELADSLPCAEGEFIFLR	0.815647717	NL
1188	P05202	sp|P05202|AATM_MOUSE	Got2	Aspartate aminotransferase, mitochondrial OS=Mus musculus GN=Got2 PE=1 SV=1	VGAFTVVCK	0.81679327	NL
1189	P42225	sp|P42225|STAT1_MOUSE	Stat1	Signal transducer and activator of transcription 1 OS=Mus musculus GN=Stat1 PE=1 SV=1	DQVMCIEQEIK	0.817034742	NL
1190	Q91XR9	sp|Q91XR9|GPX42_MOUSE	Gpx4	Phospholipid hydroperoxide glutathione peroxidase, nuclear OS=Mus musculus GN=Gpx4 PE=1 SV=3	DIDGHMVCLDK	0.817910692	NL
1191	A2AIG8	sp|A2AIG8|1A1L1_MOUSE	Accs	1-aminocyclopropane-1-carboxylate synthase-like protein 1 OS=Mus musculus GN=Accs PE=2 SV=1	LYGVGDPTATFSSDSSCLSSR	0.818933748	NL
1192	Q9D1P4	sp|Q9D1P4|CHRD1_MOUSE	Chordc1	Cysteine and histidine-rich domain-containing protein 1 OS=Mus musculus GN=Chordc1 PE=1 SV=1	TTDFSDFLSIVGCTK	0.823858955	NL
1193	Q8K1J5	sp|Q8K1J5|SDE2_MOUSE	Sde2	Protein SDE2 homolog OS=Mus musculus GN=Sde2 PE=1 SV=1	CELMVLGLK	0.827017152	NL
1194	Q5SSW2	sp|Q5SSW2|PSME4_MOUSE	Psme4	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	TLHLTCK	0.83408165	NL
1195	E9PVX6	sp|E9PVX6|KI67_MOUSE	Mki67	Proliferation marker protein Ki-67 OS=Mus musculus GN=Mki67 PE=1 SV=1	APGTPAPVQEENDCTAYMETPK	0.836817482	NL
1196	Q9WVM3	sp|Q9WVM3|APC7_MOUSE	Anapc7	Anaphase-promoting complex subunit 7 OS=Mus musculus GN=Anapc7 PE=1 SV=3	VRPSTGNSASTPQSQCLPSEIEVK	0.841113634	NL
1197	Q61211	sp|Q61211|EIF2D_MOUSE	Eif2d	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	LPWDCLLTR	0.842131255	NL
1198	Q9D1H8	sp|Q9D1H8|RM53_MOUSE	Mrpl53	39S ribosomal protein L53, mitochondrial OS=Mus musculus GN=Mrpl53 PE=1 SV=1	ATNLNCSVIADVR	0.843150246	NL
1199	P52503	sp|P52503|NDUS6_MOUSE	Ndufs6	NADH dehydrogenase [ubiquinone] iron-sulfur protein 6, mitochondrial OS=Mus musculus GN=Ndufs6 PE=1 SV=2	IIACDGGGGALGHPK	0.849028542	NL
1200	P32921	sp|P32921|SYWC_MOUSE	Wars	Tryptophan--tRNA ligase, cytoplasmic OS=Mus musculus GN=Wars PE=1 SV=2	GIFGFTDSDCIGK	0.85176567	NL
1201	Q78J03	sp|Q78J03|MSRB2_MOUSE	Msrb2	Methionine-R-sulfoxide reductase B2, mitochondrial OS=Mus musculus GN=Msrb2 PE=1 SV=1	LDTSLGCPR	0.852878465	NL
1202	Q62432	sp|Q62432|SMAD2_MOUSE	Smad2	Mothers against decapentaplegic homolog 2 OS=Mus musculus GN=Smad2 PE=1 SV=2	AITTQNCNTK	0.857424338	NL
1203	Q99K23	sp|Q99K23|UFSP2_MOUSE	Ufsp2	Ufm1-specific protease 2 OS=Mus musculus GN=Ufsp2 PE=1 SV=1	IDDNGWGCAYR	0.858139241	NL
1204	Q8QZT1	sp|Q8QZT1|THIL_MOUSE	Acat1	Acetyl-CoA acetyltransferase, mitochondrial OS=Mus musculus GN=Acat1 PE=1 SV=1	QATLGAGLPISTPCTTVNK	0.862172368	NL
1205	Q91W86	sp|Q91W86|VPS11_MOUSE	Vps11	Vacuolar protein sorting-associated protein 11 homolog OS=Mus musculus GN=Vps11 PE=1 SV=3	CSNDSFSVIADYFGR	0.863244564	NL
1206	Q8VBT9	sp|Q8VBT9|ASPC1_MOUSE	Aspscr1	Tether containing UBX domain for GLUT4 OS=Mus musculus GN=Aspscr1 PE=1 SV=1	LQDAFCSR	0.866701335	NL
1207	Q6ZWQ0	sp|Q6ZWQ0|SYNE2_MOUSE	Syne2	Nesprin-2 OS=Mus musculus GN=Syne2 PE=1 SV=2	DSASETYCNK	0.869070122	NL
1208	Q99KY4	sp|Q99KY4|GAK_MOUSE	Gak	Cyclin-G-associated kinase OS=Mus musculus GN=Gak PE=1 SV=2	AIIQEVCFLK	0.87427872	NL
1209	Q8BH86	sp|Q8BH86|GLUCM_MOUSE	Dglycy	D-glutamate cyclase, mitochondrial OS=Mus musculus PE=1 SV=1	DTASSASCLTPEMVPEVHAISK	0.874431619	NL
1210	A6H8H2	sp|A6H8H2|DEN4C_MOUSE	Dennd4c	DENN domain-containing protein 4C OS=Mus musculus GN=Dennd4c PE=1 SV=1	CANVNNSSTTSQR	0.875503414	NL
1211	O35127	sp|O35127|C10_MOUSE	Grcc10	Protein C10 OS=Mus musculus GN=Grcc10 PE=1 SV=1	DNACNDMGK	0.875851103	NL
1212	Q99PL5	sp|Q99PL5|RRBP1_MOUSE	Rrbp1	Ribosome-binding protein 1 OS=Mus musculus GN=Rrbp1 PE=1 SV=2	ELESQVSCLEK	0.876119795	NL
1213	Q8VEK3	sp|Q8VEK3|HNRPU_MOUSE	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U OS=Mus musculus GN=Hnrnpu PE=1 SV=1	MCLFAGFQR	0.877583324	NL
1214	Q99MR8	sp|Q99MR8|MCCA_MOUSE	Mccc1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial OS=Mus musculus GN=Mccc1 PE=1 SV=2	ESVCQAALGLILK	0.879467872	NL
1215	Q9D0B5	sp|Q9D0B5|TSTD3_MOUSE	Tstd3	Thiosulfate sulfurtransferase/rhodanese-like domain-containing protein 3 OS=Mus musculus GN=Tstd3 PE=1 SV=1	LVFSCLAGVR	0.881082629	NL
1216	Q91ZA3	sp|Q91ZA3|PCCA_MOUSE	Pcca	Propionyl-CoA carboxylase alpha chain, mitochondrial OS=Mus musculus GN=Pcca PE=1 SV=2	MADEAVCVGPAPTSK	0.881523272	NL
1217	Q78PY7	sp|Q78PY7|SND1_MOUSE	Snd1	Staphylococcal nuclease domain-containing protein 1 OS=Mus musculus GN=Snd1 PE=1 SV=1	MVLSGCAIIVR	0.881741439	NL
1218	Q8R0G9	sp|Q8R0G9|NU133_MOUSE	Nup133	Nuclear pore complex protein Nup133 OS=Mus musculus GN=Nup133 PE=1 SV=2	EDTYSDTCVDLGGEK	0.882288113	NL
1219	E9Q401	sp|E9Q401|RYR2_MOUSE	Ryr2	Ryanodine receptor 2 OS=Mus musculus GN=Ryr2 PE=1 SV=1	CSSLQQLISETMVR	0.883466605	NL
1220	Q91X96	sp|Q91X96|MSS4_MOUSE	Rabif	Guanine nucleotide exchange factor MSS4 OS=Mus musculus GN=Rabif PE=1 SV=1	MEPCELQNELVSAEGR	0.886017449	NL
1221	Q99L20	sp|Q99L20|GSTT3_MOUSE	Gstt3	Glutathione S-transferase theta-3 OS=Mus musculus GN=Gstt3 PE=1 SV=1	LSVQCLLH	0.886289108	NL
1222	O88736	sp|O88736|DHB7_MOUSE	Hsd17b7	3-keto-steroid reductase OS=Mus musculus GN=Hsd17b7 PE=1 SV=1	AFFCGIFSR	0.888494003	NL
1223	Q3UIJ9	sp|Q3UIJ9|MYZAP_MOUSE	Myzap	Myocardial zonula adherens protein OS=Mus musculus GN=Myzap PE=1 SV=1	HLDDMVHCQQK	0.900024386	NL
1224	P28740	sp|P28740|KIF2A_MOUSE	Kif2a	Kinesin-like protein KIF2A OS=Mus musculus GN=Kif2a PE=1 SV=2	LIDIGNSCR	0.903750565	NL
1225	Q8BVA5	sp|Q8BVA5|LDAH_MOUSE	Ldah	Lipid droplet-associated hydrolase OS=Mus musculus GN=Ldah PE=1 SV=1	DFPEGNIYLCEK	0.905497859	NL
1226	Q8BVU5	sp|Q8BVU5|NUDT9_MOUSE	Nudt9	ADP-ribose pyrophosphatase, mitochondrial OS=Mus musculus GN=Nudt9 PE=1 SV=1	DCGEWAIPGGMVDPGEK	0.91229051	NL
1227	Q9CR39	sp|Q9CR39|WIPI3_MOUSE	Wdr45b	WD repeat domain phosphoinositide-interacting protein 3 OS=Mus musculus GN=Wdr45b PE=1 SV=2	CNYLALVGGGK	0.912407014	NL
1228	Q924C1	sp|Q924C1|XPO5_MOUSE	Xpo5	Exportin-5 OS=Mus musculus GN=Xpo5 PE=1 SV=1	SILCGEDEIAEDNPESQEMLEEQLVR	0.920499367	NL
1229	Q6Y685	sp|Q6Y685|TACC1_MOUSE	Tacc1	Transforming acidic coiled-coil-containing protein 1 OS=Mus musculus GN=Tacc1 PE=1 SV=1	CAQDYLAR	0.920610148	NL
1230	P63101	sp|P63101|1433Z_MOUSE	Ywhaz	14-3-3 protein zeta/delta OS=Mus musculus GN=Ywhaz PE=1 SV=1	YDDMAACMK	0.926612305	NL
1231	Q9WUK4	sp|Q9WUK4|RFC2_MOUSE	Rfc2	Replication factor C subunit 2 OS=Mus musculus GN=Rfc2 PE=1 SV=1	MEVQESGCDPSESGAQEPSPVPSK	0.926848458	NL
1232	Q64442	sp|Q64442|DHSO_MOUSE	Sord	Sorbitol dehydrogenase OS=Mus musculus GN=Sord PE=1 SV=3	MHSVGICGSDVHYWEHGR	0.927988122	NL
1233	Q5SUR0	sp|Q5SUR0|PUR4_MOUSE	Pfas	Phosphoribosylformylglycinamidine synthase OS=Mus musculus GN=Pfas PE=1 SV=1	LMWLFGCPLVR	0.933982803	NL
1234	P63038	sp|P63038|CH60_MOUSE	Hspd1	60 kDa heat shock protein, mitochondrial OS=Mus musculus GN=Hspd1 PE=1 SV=1	CEFQDAYVLLSEK	0.935366196	NL
1235	Q6QD59	sp|Q6QD59|SEC20_MOUSE	Bnip1	Vesicle transport protein SEC20 OS=Mus musculus GN=Bnip1 PE=1 SV=1	ICNQEIVK	0.935450335	NL
1236	Q9D1M4	sp|Q9D1M4|MCA3_MOUSE	Eef1e1	Eukaryotic translation elongation factor 1 epsilon-1 OS=Mus musculus GN=Eef1e1 PE=1 SV=1	WFCHIQHYPDIR	0.935453695	NL
1237	Q9CZU4	sp|Q9CZU4|ERAL1_MOUSE	Eral1	GTPase Era, mitochondrial OS=Mus musculus GN=Eral1 PE=2 SV=1	SSTHCPGPETEGPNAHSVR	0.93835038	NL
1238	Q80XI3	sp|Q80XI3|IF4G3_MOUSE	Eif4g3	Eukaryotic translation initiation factor 4 gamma 3 OS=Mus musculus GN=Eif4g3 PE=1 SV=2	LCNWVSR	0.939937964	NL
1239	Q9DCE5	sp|Q9DCE5|PK1IP_MOUSE	Pak1ip1	p21-activated protein kinase-interacting protein 1 OS=Mus musculus GN=Pak1ip1 PE=1 SV=2	AANGMASLPPAAEPCPDQPK	0.942818999	NL
1240	Q8VCM4	sp|Q8VCM4|LIPT_MOUSE	Lipt1	Lipoyltransferase 1, mitochondrial OS=Mus musculus GN=Lipt1 PE=1 SV=1	WYILCEK	0.944465433	NL
1241	A3KGB4	sp|A3KGB4|TBC8B_MOUSE	Tbc1d8b	TBC1 domain family member 8B OS=Mus musculus GN=Tbc1d8b PE=1 SV=1	LLDENSDCLINFK	0.945367275	NL
1242	Q9D0D3	sp|Q9D0D3|PAPD1_MOUSE	Mtpap	Poly(A) RNA polymerase, mitochondrial OS=Mus musculus GN=Mtpap PE=1 SV=1	LGCDLDMFLDLDETGK	0.945715907	NL
1243	E9PVA8	sp|E9PVA8|GCN1_MOUSE	Gcn1	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	VLQEALCVISGVPGLK	0.947238799	NL
1244	O35972	sp|O35972|RM23_MOUSE	Mrpl23	39S ribosomal protein L23, mitochondrial OS=Mus musculus GN=Mrpl23 PE=1 SV=1	CPGIPSWFGL	0.947489311	NL
1245	Q6ZQL4	sp|Q6ZQL4|WDR43_MOUSE	Wdr43	WD repeat-containing protein 43 OS=Mus musculus GN=Wdr43 PE=2 SV=2	DISNCWAPTVETAITK	0.949838869	NL
1246	Q6A026	sp|Q6A026|PDS5A_MOUSE	Pds5a	Sister chromatid cohesion protein PDS5 homolog A OS=Mus musculus GN=Pds5a PE=1 SV=3	QPTSEANCSAMFGK	0.951791802	NL
1247	Q8VD75	sp|Q8VD75|HIP1_MOUSE	Hip1	Huntingtin-interacting protein 1 OS=Mus musculus GN=Hip1 PE=1 SV=2	LAGAQESMCQQVK	0.958632127	NL
1248	Q9CZD5	sp|Q9CZD5|IF3M_MOUSE	Mtif3	Translation initiation factor IF-3, mitochondrial OS=Mus musculus GN=Mtif3 PE=1 SV=1	ESDVVCQ	0.96070708	NL
1249	Q08093	sp|Q08093|CNN2_MOUSE	Cnn2	Calponin-2 OS=Mus musculus GN=Cnn2 PE=1 SV=1	CASQVGMTAPGTR	0.961376413	NL
1250	Q8CI70	sp|Q8CI70|LRC20_MOUSE	Lrrc20	Leucine-rich repeat-containing protein 20 OS=Mus musculus GN=Lrrc20 PE=1 SV=1	LVSFPICIYK	0.962603168	NL
1251	Q6PDN3	sp|Q6PDN3|MYLK_MOUSE	Mylk	Myosin light chain kinase, smooth muscle OS=Mus musculus GN=Mylk PE=1 SV=3	QAQVNLTVVDKPDPPAGTPCASDIR	0.964857133	NL
1252	P10107	sp|P10107|ANXA1_MOUSE	Anxa1	Annexin A1 OS=Mus musculus GN=Anxa1 PE=1 SV=2	CQDLSVNQDLADTDAR	0.976467142	NL
1253	Q8CD10	sp|Q8CD10|MICU2_MOUSE	Micu2	Calcium uptake protein 2, mitochondrial OS=Mus musculus GN=Micu2 PE=1 SV=2	CGSTFFR	0.977880995	NL
1254	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	GANDFMCDEMER	0.979521769	NL
1255	Q61458	sp|Q61458|CCNH_MOUSE	Ccnh	Cyclin-H OS=Mus musculus GN=Ccnh PE=1 SV=2	TCLSQLLDIMK	0.979623824	NL
1256	P97314	sp|P97314|CSRP2_MOUSE	Csrp2	Cysteine and glycine-rich protein 2 OS=Mus musculus GN=Csrp2 PE=1 SV=3	TVYHAEEVQCDGR	0.982704403	NL
1257	P39054	sp|P39054|DYN2_MOUSE	Dnm2	Dynamin-2 OS=Mus musculus GN=Dnm2 PE=1 SV=2	LQDAFSSIGQSCHLDLPQIAVVGGQSAGK	0.983574309	NL
1258	Q8VDD8	sp|Q8VDD8|WASH1_MOUSE	Washc1	WASH complex subunit 1 OS=Mus musculus GN=Washc1 PE=1 SV=1	TQCSLAGQLYAVPLIQPDLR	0.983929522	NL
1259	P19096	sp|P19096|FAS_MOUSE	Fasn	Fatty acid synthase OS=Mus musculus GN=Fasn PE=1 SV=2	DCMLGMEFSGR	0.985124618	NL
1260	O88396	sp|O88396|GRPE2_MOUSE	Grpel2	GrpE protein homolog 2, mitochondrial OS=Mus musculus GN=Grpel2 PE=2 SV=2	TAGEDCSSEDPPDGLGPSLAEQALR	0.989707047	NL
1261	Q9JKX6	sp|Q9JKX6|NUDT5_MOUSE	Nudt5	ADP-sugar pyrophosphatase OS=Mus musculus GN=Nudt5 PE=1 SV=1	TLHHECVILVK	0.989790095	NL
1262	Q9Z2E2	sp|Q9Z2E2|MBD1_MOUSE	Mbd1	Methyl-CpG-binding domain protein 1 OS=Mus musculus GN=Mbd1 PE=1 SV=2	YLGPACDLTLFDFR	0.998901209	NL
1263	Q8K126	sp|Q8K126|RF1M_MOUSE	Mtrf1	Peptide chain release factor 1, mitochondrial OS=Mus musculus GN=Mtrf1 PE=2 SV=1	CLDQLIER	1.001001001	NL
1264	Q8BZJ7	sp|Q8BZJ7|DCNL2_MOUSE	Dcun1d2	DCN1-like protein 2 OS=Mus musculus GN=Dcun1d2 PE=1 SV=3	AATQCEFSK	1.001698157	NL
1265	Q505F1	sp|Q505F1|NR2C1_MOUSE	Nr2c1	Nuclear receptor subfamily 2 group C member 1 OS=Mus musculus GN=Nr2c1 PE=1 SV=3	QDSVQCER	1.004621258	NL
1266	Q3UA16	sp|Q3UA16|SPC25_MOUSE	Spc25	Kinetochore protein Spc25 OS=Mus musculus GN=Spc25 PE=2 SV=1	EYEVYDSSPHLECLAEFQEK	1.006119781	NL
1267	Q9R0Q6	sp|Q9R0Q6|ARC1A_MOUSE	Arpc1a	Actin-related protein 2/3 complex subunit 1A OS=Mus musculus GN=Arpc1a PE=1 SV=1	GCLTFVSK	1.006542526	NL
1268	Q499X9	sp|Q499X9|SYMM_MOUSE	Mars2	Methionine--tRNA ligase, mitochondrial OS=Mus musculus GN=Mars2 PE=1 SV=2	QVGPSGDPCPVSLESGHPVSWTK	1.007155715	NL
1269	Q9CQN1	sp|Q9CQN1|TRAP1_MOUSE	Trap1	Heat shock protein 75 kDa, mitochondrial OS=Mus musculus GN=Trap1 PE=1 SV=1	LVCEGQVLPEMEIHLQTDAK	1.009328092	NL
1270	P68037	sp|P68037|UB2L3_MOUSE	Ube2l3	Ubiquitin-conjugating enzyme E2 L3 OS=Mus musculus GN=Ube2l3 PE=1 SV=1	GQVCLPVISAENWKPATK	1.011327573	NL
1271	P53996	sp|P53996|CNBP_MOUSE	Cnbp	Cellular nucleic acid-binding protein OS=Mus musculus GN=Cnbp PE=1 SV=2	ECTIEATA	1.011633789	NL
1272	B1AUR6	sp|B1AUR6|MMS22_MOUSE	Mms22l	Protein MMS22-like OS=Mus musculus GN=Mms22l PE=1 SV=1	DTEMGACDLELLLPGILK	1.013130631	NL
1273	Q8R216	sp|Q8R216|SIR4_MOUSE	Sirt4	NAD-dependent protein lipoamidase sirtuin-4, mitochondrial OS=Mus musculus GN=Sirt4 PE=1 SV=3	SDDLACLK	1.014534922	NL
1274	Q8BZT9	sp|Q8BZT9|LACC1_MOUSE	Lacc1	Laccase domain-containing protein 1 OS=Mus musculus GN=Lacc1 PE=1 SV=1	GVTITALGADCIPIVFADPVK	1.017604559	NL
1275	O54984	sp|O54984|ASNA_MOUSE	Asna1	ATPase Asna1 OS=Mus musculus GN=Asna1 PE=1 SV=2	NQISPFISQMCNMLGLGDMNADQLASK	1.020711569	NL
1276	Q9DC69	sp|Q9DC69|NDUA9_MOUSE	Ndufa9	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 9, mitochondrial OS=Mus musculus GN=Ndufa9 PE=1 SV=2	CDVYDIMHLR	1.021137547	NL
1277	Q689Z5	sp|Q689Z5|SBNO1_MOUSE	Sbno1	Protein strawberry notch homolog 1 OS=Mus musculus GN=Sbno1 PE=1 SV=2	NLCPVGSSKPTK	1.021846046	NL
1278	Q04690	sp|Q04690|NF1_MOUSE	Nf1	Neurofibromin OS=Mus musculus GN=Nf1 PE=1 SV=1	CLLLSMVK	1.022181335	NL
1279	Q9CQ60	sp|Q9CQ60|6PGL_MOUSE	Pgls	6-phosphogluconolactonase OS=Mus musculus GN=Pgls PE=1 SV=1	TGALCWFLDEAAAR	1.023541453	NL
1280	Q9CR57	sp|Q9CR57|RL14_MOUSE	Rpl14	60S ribosomal protein L14 OS=Mus musculus GN=Rpl14 PE=1 SV=3	CMQLTDFILK	1.025562064	NL
1281	Q8R3F5	sp|Q8R3F5|FABD_MOUSE	Mcat	Malonyl-CoA-acyl carrier protein transacylase, mitochondrial OS=Mus musculus GN=Mcat PE=1 SV=3	MLPVSGGFHTCLMEPAVDPLMK	1.02891244	NL
1282	Q8VCA8	sp|Q8VCA8|SCRN2_MOUSE	Scrn2	Secernin-2 OS=Mus musculus GN=Scrn2 PE=1 SV=1	AGCEMLQR	1.032951141	NL
1283	P18760	sp|P18760|COF1_MOUSE	Cfl1	Cofilin-1 OS=Mus musculus GN=Cfl1 PE=1 SV=3	AVLFCLSEDK	1.034843637	NL
1284	Q8R0F6	sp|Q8R0F6|ILKAP_MOUSE	Ilkap	Integrin-linked kinase-associated serine/threonine phosphatase 2C OS=Mus musculus GN=Ilkap PE=1 SV=1	FILLACDGLFK	1.035303862	NL
1285	E9Q557	sp|E9Q557|DESP_MOUSE	Dsp	Desmoplakin OS=Mus musculus GN=Dsp PE=1 SV=1	YQAECSQFK	1.035840066	NL
1286	Q920Q8	sp|Q920Q8|NS1BP_MOUSE	Ivns1abp	Influenza virus NS1A-binding protein homolog OS=Mus musculus GN=Ivns1abp PE=1 SV=2	NFASCMGDSR	1.03622105	NL
1287	O35350	sp|O35350|CAN1_MOUSE	Capn1	Calpain-1 catalytic subunit OS=Mus musculus GN=Capn1 PE=1 SV=1	VNGSYEALSGGCTSEAFEDFTGGVTEWYDLQK	1.039402486	NL
1288	Q3TCX3	sp|Q3TCX3|K0907_MOUSE	Kiaa0907	UPF0469 protein KIAA0907 OS=Mus musculus GN=Kiaa0907 PE=1 SV=1	GSGCIEPASGR	1.040474456	NL
1289	Q9QXS1	sp|Q9QXS1|PLEC_MOUSE	Plec	Plectin OS=Mus musculus GN=Plec PE=1 SV=3	QEQIQAVPIANCQAAR	1.043930085	NL
1290	Q8BGF6	sp|Q8BGF6|ELMD2_MOUSE	Elmod2	ELMO domain-containing protein 2 OS=Mus musculus GN=Elmod2 PE=1 SV=1	GLLMDCNAVLTLK	1.045558324	NL
1291	Q925I1	sp|Q925I1|ATAD3_MOUSE	Atad3	ATPase family AAA domain-containing protein 3 OS=Mus musculus GN=Atad3 PE=1 SV=1	VERPDSQTNKPPHPSLLSC	1.047120419	NL
1292	Q9ERU9	sp|Q9ERU9|RBP2_MOUSE	Ranbp2	E3 SUMO-protein ligase RanBP2 OS=Mus musculus GN=Ranbp2 PE=1 SV=2	TGEEDEEEFFCNR	1.047245232	NL
1293	P16858	sp|P16858|G3P_MOUSE	Gapdh	Glyceraldehyde-3-phosphate dehydrogenase OS=Mus musculus GN=Gapdh PE=1 SV=2	IVSNASCTTNCLAPLAK	1.048327917	NL
1294	Q3UW53	sp|Q3UW53|NIBAN_MOUSE	Fam129a	Protein Niban OS=Mus musculus GN=Fam129a PE=1 SV=2	ALASTCKPELQK	1.049758556	NL
1295	Q5U458	sp|Q5U458|DJC11_MOUSE	Dnajc11	DnaJ homolog subfamily C member 11 OS=Mus musculus GN=Dnajc11 PE=1 SV=2	VIDVTVPLQCLVK	1.050309841	NL
1296	Q8VCW8	sp|Q8VCW8|ACSF2_MOUSE	Acsf2	Acyl-CoA synthetase family member 2, mitochondrial OS=Mus musculus GN=Acsf2 PE=1 SV=1	FLSCYDPINIQFTSGTTGNPK	1.056300834	NL
1297	P24788	sp|P24788|CD11B_MOUSE	Cdk11b	Cyclin-dependent kinase 11B OS=Mus musculus GN=Cdk11b PE=1 SV=2	SVEEFQCLNR	1.058089091	NL
1298	Q8BWT1	sp|Q8BWT1|THIM_MOUSE	Acaa2	3-ketoacyl-CoA thiolase, mitochondrial OS=Mus musculus GN=Acaa2 PE=1 SV=3	VVGYFVSGCDPTIMGIGPVPAINGALK	1.060342271	NL
1299	Q8VDK1	sp|Q8VDK1|NIT1_MOUSE	Nit1	Nitrilase homolog 1 OS=Mus musculus GN=Nit1 PE=1 SV=2	VGLAICYDMR	1.064622591	NL
1300	Q05920	sp|Q05920|PYC_MOUSE	Pc	Pyruvate carboxylase, mitochondrial OS=Mus musculus GN=Pc PE=1 SV=1	ADFAQACQDAGVR	1.065870816	NL
1301	Q8BZH0	sp|Q8BZH0|S39AD_MOUSE	Slc39a13	Zinc transporter ZIP13 OS=Mus musculus GN=Slc39a13 PE=2 SV=1	SLGAAAACR	1.065914733	NL
1302	Q91Z67	sp|Q91Z67|SRGP2_MOUSE	Srgap2	SLIT-ROBO Rho GTPase-activating protein 2 OS=Mus musculus GN=Srgap2 PE=1 SV=2	LMEMYNNVFCPPMK	1.066008433	NL
1303	P54822	sp|P54822|PUR8_MOUSE	Adsl	Adenylosuccinate lyase OS=Mus musculus GN=Adsl PE=1 SV=2	EMCFLFSDR	1.06643916	NL
1304	Q9JK81	sp|Q9JK81|MYG1_MOUSE	Myg1	UPF0160 protein MYG1, mitochondrial OS=Mus musculus GN=Myg1 PE=1 SV=1	TFTETMSSLCPGKPWQTK	1.066995148	NL
1305	Q5SS80	sp|Q5SS80|DHR13_MOUSE	Dhrs13	Dehydrogenase/reductase SDR family member 13 OS=Mus musculus GN=Dhrs13 PE=1 SV=1	LDCPVVGWQQELR	1.068261938	NL
1306	Q9D1M0	sp|Q9D1M0|SEC13_MOUSE	Sec13	Protein SEC13 homolog OS=Mus musculus GN=Sec13 PE=1 SV=3	FASGGCDNLIK	1.073522806	NL
1307	P97311	sp|P97311|MCM6_MOUSE	Mcm6	DNA replication licensing factor MCM6 OS=Mus musculus GN=Mcm6 PE=1 SV=1	LGFAEYCR	1.074113856	NL
1308	P60122	sp|P60122|RUVB1_MOUSE	Ruvbl1	RuvB-like 1 OS=Mus musculus GN=Ruvbl1 PE=1 SV=1	EVYEGEVTELTPCETENPMGGYGK	1.07561579	NL
1309	Q5SSW2	sp|Q5SSW2|PSME4_MOUSE	Psme4	Proteasome activator complex subunit 4 OS=Mus musculus GN=Psme4 PE=1 SV=1	LWELLCPLLR	1.07712193	NL
1310	O88574	sp|O88574|SAP30_MOUSE	Sap30	Histone deacetylase complex subunit SAP30 OS=Mus musculus GN=Sap30 PE=1 SV=1	DTLTCFIYSVR	1.081408012	NL
1311	Q6NVF4	sp|Q6NVF4|HELB_MOUSE	Helb	DNA helicase B OS=Mus musculus GN=Helb PE=1 SV=2	DFCSFESSK	1.082128824	NL
1312	Q8BUE4	sp|Q8BUE4|AIFM2_MOUSE	Aifm2	Apoptosis-inducing factor 2 OS=Mus musculus GN=Aifm2 PE=1 SV=1	FNEVSCQQAAIQAYEDMVK	1.082761489	NL
1313	Q921J4	sp|Q921J4|UBE2S_MOUSE	Ube2s	Ubiquitin-conjugating enzyme E2 S OS=Mus musculus GN=Ube2s PE=1 SV=1	CLLIHPNPESALNEEAGR	1.088166259	NL
1314	Q9Z0E0	sp|Q9Z0E0|NCDN_MOUSE	Ncdn	Neurochondrin OS=Mus musculus GN=Ncdn PE=1 SV=1	EAPDGCPDHVLR	1.090525388	NL
1315	Q3UJB9	sp|Q3UJB9|EDC4_MOUSE	Edc4	Enhancer of mRNA-decapping protein 4 OS=Mus musculus GN=Edc4 PE=1 SV=2	GHSTCLSEGALSPDGTVLATASHDGFVK	1.094331364	NL
1316	Q8K1C0	sp|Q8K1C0|ANGE2_MOUSE	Angel2	Protein angel homolog 2 OS=Mus musculus GN=Angel2 PE=1 SV=1	FSLLSVNPVEFCR	1.096250822	NL
1317	Q9CR09	sp|Q9CR09|UFC1_MOUSE	Ufc1	Ubiquitin-fold modifier-conjugating enzyme 1 OS=Mus musculus GN=Ufc1 PE=1 SV=1	ICLTDHFKPLWAR	1.100985629	NL
1318	Q9D0N7	sp|Q9D0N7|CAF1B_MOUSE	Chaf1b	Chromatin assembly factor 1 subunit B OS=Mus musculus GN=Chaf1b PE=1 SV=1	TQDPSSPCTTPSPTTQSPAPSAIK	1.102049264	NL
1319	Q6ZPT1	sp|Q6ZPT1|KLHL9_MOUSE	Klhl9	Kelch-like protein 9 OS=Mus musculus GN=Klhl9 PE=2 SV=2	CMVEIVQK	1.103630946	NL
1320	P70336	sp|P70336|ROCK2_MOUSE	Rock2	Rho-associated protein kinase 2 OS=Mus musculus GN=Rock2 PE=1 SV=1	NLICAFLTDR	1.106477329	NL
1321	Q60597	sp|Q60597|ODO1_MOUSE	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial OS=Mus musculus GN=Ogdh PE=1 SV=3	ELEQIFCQFDSK	1.125763709	NL
1322	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha OS=Mus musculus GN=Tcp1 PE=1 SV=3	SQIESMLINGYALNCVVGSQGMPK	1.125791502	NL
1323	Q9CY52	sp|Q9CY52|THG1_MOUSE	Thg1l	Probable tRNA(His) guanylyltransferase OS=Mus musculus GN=Thg1l PE=1 SV=1	VVALNCDLIGDAFWK	1.125974951	NL
1324	Q6NVE9	sp|Q6NVE9|PPTC7_MOUSE	Pptc7	Protein phosphatase PTC7 homolog OS=Mus musculus GN=Pptc7 PE=1 SV=1	AGGGGGGGGGSSGDYGLVTAGCGFGK	1.136743955	NL
1325	Q8CIW5	sp|Q8CIW5|PEO1_MOUSE	Twnk	Twinkle protein, mitochondrial OS=Mus musculus GN=Twnk PE=2 SV=1	GTVCLPPALLPYLEQFR	1.137138958	NL
1326	Q8BKZ9	sp|Q8BKZ9|ODPX_MOUSE	Pdhx	Pyruvate dehydrogenase protein X component, mitochondrial OS=Mus musculus GN=Pdhx PE=1 SV=1	DVSAPPPVSKPPAPTQPSPQPQIPCPAR	1.138952164	NL
1327	Q91YM4	sp|Q91YM4|TBRG4_MOUSE	Tbrg4	Protein TBRG4 OS=Mus musculus GN=Tbrg4 PE=1 SV=1	LVDSQITCVWHGTLVK	1.139691281	NL
1328	P54729	sp|P54729|NUB1_MOUSE	Nub1	NEDD8 ultimate buster 1 OS=Mus musculus GN=Nub1 PE=1 SV=2	ACDGNVDHAATHISNR	1.143583284	NL
1329	Q9D1Z3	sp|Q9D1Z3|F173B_MOUSE	Fam173b	Protein FAM173B OS=Mus musculus GN=Fam173b PE=1 SV=1	VCLPFVPATSK	1.155535013	NL
1330	Q8K009	sp|Q8K009|AL1L2_MOUSE	Aldh1l2	Mitochondrial 10-formyltetrahydrofolate dehydrogenase OS=Mus musculus GN=Aldh1l2 PE=1 SV=2	SCDVKPNDTVDSLYNR	1.157675388	NL
1331	Q91VX2	sp|Q91VX2|UBAP2_MOUSE	Ubap2	Ubiquitin-associated protein 2 OS=Mus musculus GN=Ubap2 PE=1 SV=1	FSAQSMGTFNPADYSESMSTDGCGTK	1.161933406	NL
1332	P53026	sp|P53026|RL10A_MOUSE	Rpl10a	60S ribosomal protein L10a OS=Mus musculus GN=Rpl10a PE=1 SV=3	VLCLAVAVGHVK	1.164144354	NL
1333	Q61235	sp|Q61235|SNTB2_MOUSE	Sntb2	Beta-2-syntrophin OS=Mus musculus GN=Sntb2 PE=1 SV=2	DLLLYDCMPWTR	1.165858139	NL
1334	Q8K2X3	sp|Q8K2X3|STN1_MOUSE	Stn1	CST complex subunit STN1 OS=Mus musculus GN=Stn1 PE=1 SV=2	EICANIYYK	1.166303049	NL
1335	Q99PU8	sp|Q99PU8|DHX30_MOUSE	Dhx30	Putative ATP-dependent RNA helicase DHX30 OS=Mus musculus GN=Dhx30 PE=1 SV=1	RPCTIQVPEPILR	1.170686022	NL
1336	Q9CXT8	sp|Q9CXT8|MPPB_MOUSE	Pmpcb	Mitochondrial-processing peptidase subunit beta OS=Mus musculus GN=Pmpcb PE=1 SV=1	STQAAPQVVLNVPETQVTCLENGLR	1.179384361	NL
1337	P35486	sp|P35486|ODPA_MOUSE	Pdha1	Pyruvate dehydrogenase E1 component subunit alpha, somatic form, mitochondrial OS=Mus musculus GN=Pdha1 PE=1 SV=1	NFYGGNGIVGAQVPLGAGIALACK	1.18049817	NL
1338	P70303	sp|P70303|PYRG2_MOUSE	Ctps2	CTP synthase 2 OS=Mus musculus GN=Ctps2 PE=1 SV=1	LCLADGILVPGGFGIR	1.183431953	NL
1339	O08529	sp|O08529|CAN2_MOUSE	Capn2	Calpain-2 catalytic subunit OS=Mus musculus GN=Capn2 PE=1 SV=4	RPTEICADPQFIIGGATR	1.184413123	NL
1340	Q64737	sp|Q64737|PUR2_MOUSE	Gart	Trifunctional purine biosynthetic protein adenosine-3 OS=Mus musculus GN=Gart PE=1 SV=3	AFTNPEDACSFITSANFPALVVK	1.185817621	NL
1341	Q9JKB1	sp|Q9JKB1|UCHL3_MOUSE	Uchl3	Ubiquitin carboxyl-terminal hydrolase isozyme L3 OS=Mus musculus GN=Uchl3 PE=1 SV=2	QTISNACGTIGLIHAIANNK	1.190905313	NL
1342	Q6URW6	sp|Q6URW6|MYH14_MOUSE	Myh14	Myosin-14 OS=Mus musculus GN=Myh14 PE=1 SV=1	AEDMAELTCLNEASVLHNLR	1.203948953	NL
1343	P59764	sp|P59764|DOCK4_MOUSE	Dock4	Dedicator of cytokinesis protein 4 OS=Mus musculus GN=Dock4 PE=1 SV=1	ILSNVFCLIK	1.213297743	NL
1344	Q01320	sp|Q01320|TOP2A_MOUSE	Top2a	DNA topoisomerase 2-alpha OS=Mus musculus GN=Top2a PE=1 SV=2	AQMCADVLPSPR	1.213696667	NL
1345	Q99JY0	sp|Q99JY0|ECHB_MOUSE	Hadhb	Trifunctional enzyme subunit beta, mitochondrial OS=Mus musculus GN=Hadhb PE=1 SV=1	DGGQYALVAACAAGGQGHAMIVEAYPK	1.21610118	NL
1346	G5E870	sp|G5E870|TRIPC_MOUSE	Trip12	E3 ubiquitin-protein ligase TRIP12 OS=Mus musculus GN=Trip12 PE=1 SV=1	ADLCLWR	1.219375748	NL
1347	Q91Z67	sp|Q91Z67|SRGP2_MOUSE	Srgap2	SLIT-ROBO Rho GTPase-activating protein 2 OS=Mus musculus GN=Srgap2 PE=1 SV=2	FEFQPHMGDMASQLCAQQPVQSELVQR	1.221299463	NL
1348	Q80YV4	sp|Q80YV4|PANK4_MOUSE	Pank4	Pantothenate kinase 4 OS=Mus musculus GN=Pank4 PE=1 SV=2	IAAMDPIICTALR	1.223932534	NL
1349	O35295	sp|O35295|PURB_MOUSE	Purb	Transcriptional activator protein Pur-beta OS=Mus musculus GN=Purb PE=1 SV=3	FFFDVGCNK	1.22624157	NL
1350	P27612	sp|P27612|PLAP_MOUSE	Plaa	Phospholipase A-2-activating protein OS=Mus musculus GN=Plaa PE=1 SV=4	ILSLICNNSSEKPTAQQLQILWK	1.227448145	NL
1351	Q69ZR2	sp|Q69ZR2|HECD1_MOUSE	Hectd1	E3 ubiquitin-protein ligase HECTD1 OS=Mus musculus GN=Hectd1 PE=1 SV=2	DFCEHGTK	1.231113941	NL
1352	Q8K400	sp|Q8K400|STXB5_MOUSE	Stxbp5	Syntaxin-binding protein 5 OS=Mus musculus GN=Stxbp5 PE=1 SV=3	QNTDIVDEDPYAIQIISWCPESR	1.235991856	NL
1353	Q91W50	sp|Q91W50|CSDE1_MOUSE	Csde1	Cold shock domain-containing protein E1 OS=Mus musculus GN=Csde1 PE=1 SV=1	SPAAPGQSPTGSVCYER	1.236313604	NL
1354	Q8R2R6	sp|Q8R2R6|MTG1_MOUSE	Mtg1	Mitochondrial ribosome-associated GTPase 1 OS=Mus musculus GN=Mtg1 PE=1 SV=2	ECFPLQGHDVAR	1.241838309	NL
1355	O55126	sp|O55126|NIPS2_MOUSE	Nipsnap2	Protein NipSnap homolog 2 OS=Mus musculus GN=Nipsnap2 PE=1 SV=1	LQFHNVKPECLDAYNK	1.243626415	NL
1356	Q7TMF3	sp|Q7TMF3|NDUAC_MOUSE	Ndufa12	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 12 OS=Mus musculus GN=Ndufa12 PE=1 SV=2	WLHCMTDDPPTTNPPTAR	1.243626415	NL
1357	E9PVA8	sp|E9PVA8|GCN1_MOUSE	Gcn1	eIF-2-alpha kinase activator GCN1 OS=Mus musculus GN=Gcn1 PE=1 SV=1	SWCQEELPVAVR	1.258336479	NL
1358	Q61211	sp|Q61211|EIF2D_MOUSE	Eif2d	Eukaryotic translation initiation factor 2D OS=Mus musculus GN=Eif2d PE=1 SV=3	LCPIDITLALK	1.259287243	NL
1359	A2AUU0	sp|A2AUU0|METL8_MOUSE	Mettl8	Methyltransferase-like protein 8 OS=Mus musculus GN=Mettl8 PE=1 SV=2	TQGTETHCQESFVSPEPGSR	1.267334871	NL
1360	Q9CZ30	sp|Q9CZ30|OLA1_MOUSE	Ola1	Obg-like ATPase 1 OS=Mus musculus GN=Ola1 PE=1 SV=1	STFFNVLTNSQASAENFPFCTIDPNESR	1.267774034	NL
1361	Q80Y86	sp|Q80Y86|MK15_MOUSE	Mapk15	Mitogen-activated protein kinase 15 OS=Mus musculus GN=Mapk15 PE=1 SV=1	LCDFGLAR	1.270971022	NL
1362	P70404	sp|P70404|IDHG1_MOUSE	Idh3g	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial OS=Mus musculus GN=Idh3g PE=1 SV=1	HACVPVDFEEVHVSSNADEEDIR	1.273723093	NL
1363	P48722	sp|P48722|HS74L_MOUSE	Hspa4l	Heat shock 70 kDa protein 4L OS=Mus musculus GN=Hspa4l PE=1 SV=2	TSFEEGTGECEVFSK	1.274697259	NL
1364	O08848	sp|O08848|RO60_MOUSE	Trove2	60 kDa SS-A/Ro ribonucleoprotein OS=Mus musculus GN=Trove2 PE=1 SV=1	MEGSANQLQPLSETQVVNSEGGCVWQVTDMNR	1.281608521	NL
1365	Q9JIX9	sp|Q9JIX9|FASTK_MOUSE	Fastk	Fas-activated serine/threonine kinase OS=Mus musculus GN=Fastk PE=1 SV=1	SCQQDQANFNSTTQDPAQR	1.283948862	NL
1366	P31230	sp|P31230|AIMP1_MOUSE	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1 OS=Mus musculus GN=Aimp1 PE=1 SV=2	IGCIVTAK	1.295672454	NL
1367	P48024	sp|P48024|EIF1_MOUSE	Eif1	Eukaryotic translation initiation factor 1 OS=Mus musculus GN=Eif1 PE=1 SV=2	NICQFLIEIGLAK	1.300390117	NL
1368	O08663	sp|O08663|MAP2_MOUSE	Metap2	Methionine aminopeptidase 2 OS=Mus musculus GN=Metap2 PE=1 SV=1	LCDVGEAIQEVMESYEVEIDGK	1.303626202	NL
1369	P07742	sp|P07742|RIR1_MOUSE	Rrm1	Ribonucleoside-diphosphate reductase large subunit OS=Mus musculus GN=Rrm1 PE=1 SV=2	NQIIACNGSIQSIPEIPDDLK	1.304933109	NL
1370	Q923B0	sp|Q923B0|GGACT_MOUSE	Ggact	Gamma-glutamylaminecyclotransferase OS=Mus musculus GN=Ggact PE=1 SV=1	FLDDFEDCPSMYQR	1.313915926	NL
1371	Q99J25	sp|Q99J25|MRM1_MOUSE	Mrm1	rRNA methyltransferase 1, mitochondrial OS=Mus musculus GN=Mrm1 PE=2 SV=2	AQQGWLVVGTVGCPGPEISQSSK	1.316655695	NL
1372	Q9D338	sp|Q9D338|RM19_MOUSE	Mrpl19	39S ribosomal protein L19, mitochondrial OS=Mus musculus GN=Mrpl19 PE=1 SV=1	DALPEYSTFDVNMKPVPQEACQEVPVNK	1.321003963	NL
1373	P33174	sp|P33174|KIF4_MOUSE	Kif4	Chromosome-associated kinesin KIF4 OS=Mus musculus GN=Kif4 PE=1 SV=3	MQEVCEQNQQLLQENSAIK	1.325205407	NL
1374	Q9ERI6	sp|Q9ERI6|RDH14_MOUSE	Rdh14	Retinol dehydrogenase 14 OS=Mus musculus GN=Rdh14 PE=1 SV=1	QELCQAGGAGPDGTDGQLVVK	1.345170837	NL
1375	Q3TL26	sp|Q3TL26|TFB2M_MOUSE	Tfb2m	Dimethyladenosine transferase 2, mitochondrial OS=Mus musculus GN=Tfb2m PE=2 SV=1	WIYDYCPEDMEF	1.349771631	NL
1376	O88502	sp|O88502|PDE8A_MOUSE	Pde8a	High affinity cAMP-specific and IBMX-insensitive 3',5'-cyclic phosphodiesterase 8A OS=Mus musculus GN=Pde8a PE=1 SV=1	VETTTECVQTDSQTDNQAGK	1.371358327	NL
1377	E9Q7G0	sp|E9Q7G0|NUMA1_MOUSE	Numa1	Nuclear mitotic apparatus protein 1 OS=Mus musculus GN=Numa1 PE=1 SV=1	LDFVCSFLQK	1.372720761	NL
1378	Q99LC3	sp|Q99LC3|NDUAA_MOUSE	Ndufa10	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial OS=Mus musculus GN=Ndufa10 PE=1 SV=1	QCVDHYNEIK	1.447170646	NL
1379	Q922E6	sp|Q922E6|FAKD2_MOUSE	Fastkd2	FAST kinase domain-containing protein 2, mitochondrial OS=Mus musculus GN=Fastkd2 PE=2 SV=2	VAVLCVPK	1.452643812	NL
1380	Q91ZE0	sp|Q91ZE0|TMLH_MOUSE	Tmlhe	Trimethyllysine dioxygenase, mitochondrial OS=Mus musculus GN=Tmlhe PE=1 SV=2	LYQQAQVPSVDFQCFLETNEGLK	1.460213091	NL
1381	P47955	sp|P47955|RLA1_MOUSE	Rplp1	60S acidic ribosomal protein P1 OS=Mus musculus GN=Rplp1 PE=1 SV=1	ALANVNIGSLICNVGAGGPAPAAGAAPAGGAAPSTAAAPAEEK	1.460764445	NL
1382	Q9CYG7	sp|Q9CYG7|TOM34_MOUSE	Tomm34	Mitochondrial import receptor subunit TOM34 OS=Mus musculus GN=Tomm34 PE=1 SV=1	YSESLLCSSLESATYSNR	1.471940507	NL
1383	Q8BFR5	sp|Q8BFR5|EFTU_MOUSE	Tufm	Elongation factor Tu, mitochondrial OS=Mus musculus GN=Tufm PE=1 SV=1	HYAHTDCPGHADYVK	1.480028211	NL
1384	P20108	sp|P20108|PRDX3_MOUSE	Prdx3	Thioredoxin-dependent peroxide reductase, mitochondrial OS=Mus musculus GN=Prdx3 PE=1 SV=1	AFQFVETHGEVCPANWTPESPTIKPSPTASK	1.507823444	NL
1385	P97329	sp|P97329|KI20A_MOUSE	Kif20a	Kinesin-like protein KIF20A OS=Mus musculus GN=Kif20a PE=2 SV=1	LCEDQNGNPYVK	1.518602885	NL
1386	B2RXC1	sp|B2RXC1|TPC11_MOUSE	Trappc11	Trafficking protein particle complex subunit 11 OS=Mus musculus GN=Trappc11 PE=1 SV=1	MCLVPGK	1.523169412	NL
1387	O35345	sp|O35345|IMA7_MOUSE	Kpna6	Importin subunit alpha-7 OS=Mus musculus GN=Kpna6 PE=1 SV=2	NENCTLQFEAAWALTNIASGTSQQTK	1.58263865	NL
1388	Q9D404	sp|Q9D404|OXSM_MOUSE	Oxsm	3-oxoacyl-[acyl-carrier-protein] synthase, mitochondrial OS=Mus musculus GN=Oxsm PE=1 SV=1	LPPTLNLDCTEPEFDLNYVPLESQEWK	1.583531275	NL
1389	O35969	sp|O35969|GAMT_MOUSE	Gamt	Guanidinoacetate N-methyltransferase OS=Mus musculus GN=Gamt PE=1 SV=1	VQQAPIEEHWIIECNDGVFQR	1.655903295	NL
1390	Q99J23	sp|Q99J23|GHDC_MOUSE	Ghdc	GH3 domain-containing protein OS=Mus musculus GN=Ghdc PE=2 SV=2	EALAAFSSSSCRPPEMPR	1.754078232	NL
1391	Q9WTX8	sp|Q9WTX8|MD1L1_MOUSE	Mad1l1	Mitotic spindle assembly checkpoint protein MAD1 OS=Mus musculus GN=Mad1l1 PE=1 SV=1	QLQECEATAEEK	1.816103714	NL
1392	Q8BYN5	sp|Q8BYN5|FSD1L_MOUSE	Fsd1l	FSD1-like protein OS=Mus musculus GN=Fsd1l PE=1 SV=2	VEDSCVEWDPTGGK	1.821639314	NL
1393	P16546	sp|P16546|SPTN1_MOUSE	Sptan1	Spectrin alpha chain, non-erythrocytic 1 OS=Mus musculus GN=Sptan1 PE=1 SV=4	GACAGSEDAVK	1.899303981	NL
1394	Q571H0	sp|Q571H0|NPA1P_MOUSE	Urb1	Nucleolar pre-ribosomal-associated protein 1 OS=Mus musculus GN=Urb1 PE=1 SV=2	HGGLEETAEPQLEASCLEK	2.097755402	NL
1395	Q9WV80	sp|Q9WV80|SNX1_MOUSE	Snx1	Sorting nexin-1 OS=Mus musculus GN=Snx1 PE=1 SV=1	LQEVECEEQR	3.442340792	NL
1396	P97864	sp|P97864|CASP7_MOUSE	Casp7	Caspase-7 OS=Mus musculus GN=Casp7 PE=1 SV=2	LFFIQACR	5.291005291	NL
1397	Q922Q8	sp|Q922Q8|LRC59_MOUSE	Lrrc59	Leucine-rich repeat-containing protein 59 OS=Mus musculus GN=Lrrc59 PE=1 SV=1	ATVLDLSCNK	12.69035533	NL
\.


--
-- Data for Name: vals2021pandas; Type: TABLE DATA; Schema: public; Owner: rohand
--

COPY public.vals2021pandas (index, "Accession #", "Uniprot ID", "Gene ", "Protein Name", "Peptide", "E1 RH/L", "E2 RH/La") FROM stdin;
0	Q80W21	sp|Q80W21|GSTM7_MOUSE	Gstm7;Gstm3;Gstm2;Gstm6	Glutathione S-transferase Mu 7;Glutathione S-transferase Mu 3;Glutathione S-transferase Mu 2;Glutathione S-transferase Mu 6	HNLCGETEEER	0.704065206	0.066725616
1	P42859	sp|P42859|HD_MOUSE	Htt	Huntingtin	CDQGQADPVVAVAR	0.713780526	0.406964098
2	P11370	sp|P11370|ENV2_MOUSE	Fv4	Retrovirus-related Env polyprotein from Fv-4 locus	CNTAWNR	0.837310558	0.537345513
3	P05064	sp|P05064|ALDOA_MOUSE	Aldoa;Aldoc	Fructose-bisphosphate aldolase A;Fructose-bisphosphate aldolase C	CQYVTEK	0.848032564	0.557444674
4	Q8BZH0	sp|Q8BZH0|S39AD_MOUSE	Slc39a13	Zinc transporter ZIP13	SLGAAAACR	0.68140076	0.618161587
5	Q05920	sp|Q05920|PYC_MOUSE	Pc	Pyruvate carboxylase, mitochondrial	ACTELGIR	0.826748953	0.833263895
6	P54071	sp|P54071|IDHP_MOUSE	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	CATITPDEAR	0.72642743	0.844024308
7	O08709	sp|O08709|PRDX6_MOUSE	Prdx6	Peroxiredoxin-6	DFTPVCTTELGR	0.79723204	0.982221786
8	Q8QZT1	sp|Q8QZT1|THIL_MOUSE	Acat1	Acetyl-CoA acetyltransferase, mitochondrial	IHMGNCAENTAK	1.03626943	1.016156895
9	Q60932	sp|Q60932|VDAC1_MOUSE	Vdac1	Voltage-dependent anion-selective channel protein 1	YQVDPDACFSAK	0.565131393	1.020616452
10	Q02566	sp|Q61879|MYH10_MOUSE	Myh6;Myh7;Myh8;Myh4;Myh3;Myh1;Myh7b;Myh11;Myh10;Myh14;Myh9	Myosin-6;Myosin-7;Myosin-8;Myosin-4;Myosin-3;Myosin-1;Myosin-7B;Myosin-11;Myosin-10;Myosin-14;Myosin-9	CNGVLEGIR	0.6165844	1.25743798
11	P08228	sp|P08228|SODC_MOUSE	Sod1	Superoxide dismutase [Cu-Zn]	LACGVIGIAQ	0.701311452	1.366474546
12	Q9CQR2	sp|Q9CQR2|RS21_MOUSE	Rps21	40S ribosomal protein S21	TYGICGAIR	0.72559231	1.384537099
13	P26039	sp|P26039|TLN1_MOUSE	Tln1	Talin-1	CTQDLGNSTK	0.771426367	1.553990939
14	Q02566	sp|Q5SX39|MYH4_MOUSE	Myh6;Myh7;Myh8;Myh4;Myh3;Myh1	Myosin-6;Myosin-7;Myosin-8;Myosin-4;Myosin-3;Myosin-1	LEDECSELK	0.435182015	1.583517481
15	P97447	sp|P97447|FHL1_MOUSE	Fhl1	Four and a half LIM domains protein 1	CSVNLANK	1.332267519	1.588057805
16	Q9R0B9	sp|Q9R0B9|PLOD2_MOUSE	Plod2	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2	LDPDMALCR	2.051302627	1.613684041
17	Q8VCA8	sp|Q8VCA8|SCRN2_MOUSE	Scrn2	Secernin-2	AGCEMLQR	1.12265654	1.755001755
18	Q9CZS1	sp|Q9CZS1|AL1B1_MOUSE	Aldh1b1	Aldehyde dehydrogenase X, mitochondrial	LLCGGER	0.835212562	1.829853429
19	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A	CSGPGLSPGMVR	0.965815539	1.965861428
20	Q99KC8	sp|Q99KC8|VMA5A_MOUSE	Vwa5a	von Willebrand factor A domain-containing protein 5A	SACSAIQK	0.898311175	2.082152403
21	P97315	sp|P97315|CSRP1_MOUSE	Csrp1	Cysteine and glycine-rich protein 1	CSQAVYAAEK	1.091331691	2.095781839
22	P70349	sp|P70349|HINT1_MOUSE	Hint1	Histidine triad nucleotide-binding protein 1	CAADLGLK	0.689702738	2.177700348
23	P25444	sp|P25444|RS2_MOUSE	Rps2	40S ribosomal protein S2	GCTATLGNFAK	1.168307375	2.178488385
24	Q9R0P3	sp|Q9R0P3|ESTD_MOUSE	Esd	S-formylglutathione hydrolase	AYDATCLVK	0.996369211	2.235831995
25	P05064	sp|P05064|ALDOA_MOUSE	Aldoa	Fructose-bisphosphate aldolase A	ALANSLACQGK	0.87657784	2.250225023
26	Q02053	sp|P31254|UBA1Y_MOUSE	Uba1;Uba1y	Ubiquitin-like modifier-activating enzyme 1;Ubiquitin-like modifier-activating enzyme 1 Y	SIPICTLK	0.903972178	2.263980077
27	Q9WU78	sp|Q9WU78|PDC6I_MOUSE	Pdcd6ip	Programmed cell death 6-interacting protein	FIQQTYPSGGEEQAQYCR	0.986253419	2.301495972
28	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6	QEICQNYK	0.752300123	2.327746741
29	P38647	sp|P38647|GRP75_MOUSE	Hspa9	Stress-70 protein, mitochondrial	TIAPCQK	1.06045	2.4216
30	Q9R069	sp|Q9R069|BCAM_MOUSE	Bcam	Basal cell adhesion molecule	GGSGGFGDEC	1.065811813	2.481389578
31	P14869	sp|P14869|RLA0_MOUSE	Rplp0	60S acidic ribosomal protein P0	CFIVGADNVGSK	0.870901461	2.52652855
32	P51859	sp|P51859|HDGF_MOUSE	Hdgf	Hepatoma-derived growth factor	CGDLVFAK	0.623007307	2.532286655
33	O55143	sp|O55143|AT2A2_MOUSE	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2	ANACNSVIK	0.889152704	2.56344527
34	Q8VDN2	sp|Q8VDN2|AT1A1_MOUSE	Atp1a1	Sodium/potassium-transporting ATPase subunit alpha-1	IISANGCK	0.640204866	2.634076064
35	Q9Z110	sp|Q9Z110|P5CS_MOUSE	Aldh18a1	Delta-1-pyrroline-5-carboxylate synthase;Glutamate 5-kinase;Gamma-glutamyl phosphate reductase	GDECGLALGR	0.946070286	2.669514148
36	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha	SLHDALCVVK	1.011781468	2.674567853
37	B2RXS4	sp|B2RXS4|PLXB2_MOUSE	Plxnb2	Plexin-B2	MDGHCAPLR	0.824475365	2.709292875
38	P97372	sp|P97372|PSME2_MOUSE	Psme2	Proteasome activator complex subunit 2	CGYLPGNEK	0.799939406	2.709292875
39	P14152	sp|P14152|MDHC_MOUSE	Mdh1	Malate dehydrogenase, cytoplasmic	VIVVGNPANTNCLTASK	0.850304329	2.733685848
40	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	SCQFVAVR	0.938347128	2.792232451
41	Q8BFZ9	sp|Q8BFZ9|ERLN2_MOUSE	Erlin2	Erlin-2	ADAECYTALK	1.066325443	2.793296089
42	Q8CGC7	sp|Q8CGC7|SYEP_MOUSE	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	VACQGEVVR	0.840477391	2.867664078
43	Q9DCX2	sp|Q9DCX2|ATP5H_MOUSE	Atp5h	ATP synthase subunit d, mitochondrial	SCAEFVSGSQLR	0.629995922	2.884045121
44	Q99KR7	sp|Q9CR16|PPID_MOUSE	Ppif;Ppid;Ranbp2	Peptidyl-prolyl cis-trans isomerase F, mitochondrial;Peptidyl-prolyl cis-trans isomerase D;E3 SUMO-protein ligase RanBP2	ALCTGEK	0.882067566	2.972651605
45	P06151	sp|P06151|LDHA_MOUSE	Ldha;Ldhc;Ldhb	L-lactate dehydrogenase A chain;L-lactate dehydrogenase C chain;L-lactate dehydrogenase B chain	VIGSGCNLDSAR	0.801469777	3.000531646
46	P17742	sp|P17742|PPIA_MOUSE	Ppia	Peptidyl-prolyl cis-trans isomerase A;Peptidyl-prolyl cis-trans isomerase A, N-terminally processed	ITISDCGQL	0.952382204	3.033060358
47	O35381	sp|O35381|AN32A_MOUSE	Anp32a;Anp32b	Acidic leucine-rich nuclear phosphoprotein 32 family member A;Acidic leucine-rich nuclear phosphoprotein 32 family member B	ELVLDNCK	0.941718183	3.037503115
48	P53702	sp|P53702|CCHL_MOUSE	Hccs	Cytochrome c-type heme lyase	AYDYVECPVTGAR	0.568079477	3.099177784
49	Q8BTX9	sp|Q8BTX9|HSDL1_MOUSE	Hsdl1	Inactive hydroxysteroid dehydrogenase-like protein 1	EALSCQA	1.19535	3.13405
50	Q09143	sp|Q09143|CTR1_MOUSE	Slc7a1	High affinity cationic amino acid transporter 1	TPDSNLDQCK	0.97761267	3.201024328
51	P17751	sp|P17751|TPIS_MOUSE	Tpi1	Triosephosphate isomerase	IIYGGSVTGATCK	0.769230769	3.209242619
52	Q8C1A5	sp|Q8C1A5|THOP1_MOUSE	Thop1	Thimet oligopeptidase	GLQVEGSEAPAC	1.10992379	3.325643729
53	P17182	sp|P17182|ENOA_MOUSE	Eno1	Alpha-enolase	VNQIGSVTESLQACK	0.83842023	3.354579
54	Q9WVA3	sp|Q9WVA3|BUB3_MOUSE	Bub3	Mitotic checkpoint protein BUB3	TPCNAGTFSQPEK	0.742149296	3.425830764
55	Q9R0E1	sp|Q9R0E1|PLOD3_MOUSE	Plod3	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 3	GVDYEGGGCR	0.910580951	3.454231434
56	P30416	sp|P30416|FKBP4_MOUSE	Fkbp4	Peptidyl-prolyl cis-trans isomerase FKBP4;Peptidyl-prolyl cis-trans isomerase FKBP4, N-terminally processed	TQLAVCQQR	0.854600419	3.472222222
57	Q8JZZ7	sp|Q8JZZ7|AGRL2_MOUSE	Lphn2	Latrophilin-2	AIVDSPCIYEAEQK	0.847022184	3.472222222
58	P09405	sp|P09405|NUCL_MOUSE	Ncl	Nucleolin	EALNSCNK	0.682966808	3.562522266
59	Q9R0E2	sp|Q9R0E2|PLOD1_MOUSE	Plod1	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 1	VGEDYEGGGCR	0.729660708	3.563791875
60	Q6PHZ2	sp|Q6PHZ2|KCC2D_MOUSE	Camk2d	Calcium/calmodulin-dependent protein kinase type II subunit delta	ASTTTCTR	1.1238	3.5844
61	P10518	sp|P10518|HEM2_MOUSE	Alad	Delta-aminolevulinic acid dehydratase	CYQLPPGAR	1.162331256	3.608805485
62	P08249	sp|P08249|MDHM_MOUSE	Mdh2	Malate dehydrogenase, mitochondrial	EGVVECSFVQSK	1.199145213	3.623564398
63	O54988	sp|O54988|SLK_MOUSE	Slk	STE20-like serine/threonine-protein kinase	MTGESECLNPSAQSR	1.20495166	3.647090671
64	P14428	sp|P04223|HA1K_MOUSE	H2-K1	H-2 class I histocompatibility antigen, K-Q alpha chain;H-2 class I histocompatibility antigen, K-W28 alpha chain;H-2 class I histocompatibility antigen, K-K alpha chain;H-2 class I histocompatibility antigen, K-B alpha chain	GGDYALAPGSQTSDLSLPDCK	1.099626127	3.658982803
65	P09411	sp|P09411|PGK1_MOUSE	Pgk1	Phosphoglycerate kinase 1	FCLDNGAK	0.828090156	3.714070297
66	P63101	sp|P63101|1433Z_MOUSE	Ywhaz	14-3-3 protein zeta/delta	YDDMAACMK	0.830357884	3.821169278
67	Q9DC51	sp|P08752|GNAI2_MOUSE	Gnai3;Gnai1;Gnai2	Guanine nucleotide-binding protein G(k) subunit alpha;Guanine nucleotide-binding protein G(i) subunit alpha-1;Guanine nucleotide-binding protein G(i) subunit alpha-2	LFDSICNNK	0.797078105	3.823827256
68	Q61990	sp|Q61990|PCBP2_MOUSE	Pcbp2;Pcbp3;Pcbp1	Poly(rC)-binding protein 2;Poly(rC)-binding protein 3;Poly(rC)-binding protein 1	INISEGNCPER	0.712656784	3.898635478
69	Q6PDM2	sp|Q6PDM2|SRSF1_MOUSE	Srsf1	Serine/arginine-rich splicing factor 1	EAGDVCYADVYR	0.581327393	3.90373874
70	Q6ZWV3	sp|Q6ZWV3|RL10_MOUSE	Rpl10;Rpl10l	60S ribosomal protein L10;60S ribosomal protein L10-like	MLSCAGADR	0.982226387	3.923107101
71	P09541	sp|P09541|MYL4_MOUSE	Myl4;Myl3	Myosin light chain 4;Myosin light chain 3	ITYGQCGDVLR	0.739269008	3.963779354
72	Q3THK7	sp|Q3THK7|GUAA_MOUSE	Gmps	GMP synthase [glutamine-hydrolyzing]	TVGVQGDCR	1.114081996	3.98089172
73	P99024	sp|Q7TMM9|TBB2A_MOUSE	Tubb5	Tubulin beta-5 chain	TAVCDIPPR	0.748727164	4.041634047
74	P62908	sp|P62908|RS3_MOUSE	Rps3	40S ribosomal protein S3	GCEVVVSGK	1.172332943	4.087236995
75	Q62261	sp|P15508|SPTB1_MOUSE	Sptbn1;Sptb	Spectrin beta chain, non-erythrocytic 1;Spectrin beta chain, erythrocytic	IHCLENVDK	0.988933337	4.140786749
76	P97372	sp|P97372|PSME2_MOUSE	Psme2	Proteasome activator complex subunit 2	AKPCGVR	1.152	4.2068
77	Q60876	sp|Q60876|EIF4EBP1_MOUSE	Eif4ebp1	Eukaryotic translation initiation factor 4E-binding protein 1	SAGSSCSQTPSR	1.0856	4.2249
78	O70468	sp|O70468|MYPC3_MOUSE	Mybpc3	Myosin-binding protein C, cardiac-type	LLCETEGR	1.357773252	4.238480033
79	P70698	sp|P70698|PYRG1_MOUSE	Ctps1	CTP synthase 1	CLEEQGLK	0.669433659	4.253509145
80	Q9JHU4	sp|Q9JHU4|DYHC1_MOUSE	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	VQYPQSQACK	0.951448247	4.302497817
81	Q3UZ39	sp|Q3UZ39|LRRF1_MOUSE	Lrrfip1	Leucine-rich repeat flightless-interacting protein 1	CEQQVQSQDQENTSDLK	0.828401704	4.331640252
82	P83940	sp|P83940|ELOC_MOUSE	Tceb1	Transcription elongation factor B polypeptide 1	TYGGCEGPDAMYVK	0.802637604	4.462293619
83	P99024	sp|Q922F4|TBB6_MOUSE	Tubb5	Tubulin beta-5 chain	NMMAACDPR	0.714895065	4.484304933
84	Q9WVJ2	sp|Q9WVJ2|PSD13_MOUSE	Psmd13	26S proteasome non-ATPase regulatory subunit 13	CAWGQQPDLAANEAQLLR	0.923636077	4.540280647
85	P17751	sp|P17751|TPIS_MOUSE	Tpi1	Triosephosphate isomerase	IAVAAQNCYK	0.653295878	4.543541692
86	P14211	sp|P14211|CALR_MOUSE	Calr	Calreticulin	HEQNIDCGGGYVK	0.975800156	4.597701149
87	P48678	sp|P48678|LMNA_MOUSE	Lmna	Prelamin-A/C;Lamin-A/C	AQNTWGCGSSLR	0.877664272	4.712535344
88	P17742	sp|P17742|PPIA_MOUSE	Ppia	Peptidyl-prolyl cis-trans isomerase A;Peptidyl-prolyl cis-trans isomerase A, N-terminally processed	IIPGFMCQGGDFTR	0.978208312	4.717546339
89	P68040	sp|P68040|RACK1_MOUSE	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	VWNLANCK	0.959911849	4.786979416
90	P10639	sp|P10639|THIO_MOUSE	Txn	Thioredoxin	CMPTFQFYK	0.826676668	4.859086492
91	P16546	sp|P16546|SPTN1_MOUSE	Sptan1	Spectrin alpha chain, non-erythrocytic 1	ALCAEADR	1.009591116	4.926108374
92	Q91VD9	sp|Q91VD9|NDUS1_MOUSE	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial	AVTEGAQAVEEPSIC	1.126298627	4.943840934
93	Q9CR57	sp|Q9CR57|RL14_MOUSE	Rpl14	60S ribosomal protein L14	ALVDGPCTR	0.71133874	5.015045135
94	Q80UM3	sp|Q80UM3|NAA15_MOUSE	Naa15	N-alpha-acetyltransferase 15, NatA auxiliary subunit	LFHSVCESK	1.060300767	5.063291139
95	Q9QUI0	sp|Q62159|RHOC_MOUSE	Rhoa;Rhoc	Transforming protein RhoA;Rho-related GTP-binding protein RhoC	LVIVGDGACGK	0.861803399	5.137351427
96	P16546	sp|P16546|SPTN1_MOUSE	Sptan1	Spectrin alpha chain, non-erythrocytic 1	GACAGSEDAVK	0.615611918	5.141388175
97	P00493	sp|P00493|HPRT_MOUSE	Hprt1	Hypoxanthine-guanine phosphoribosyltransferase	SYCNDQSTGDIK	0.791201836	5.154639175
98	P18760	sp|P18760|COF1_MOUSE	Cfl1	Cofilin-1	AVLFCLSEDK	0.686541693	5.249451305
99	Q9R0P5	sp|Q9R0P5|DEST_MOUSE	Dstn	Destrin	CIVVEEGK	0.685307018	5.288207298
100	P29533	sp|P29533|VCAM1_MOUSE	Vcam1	Vascular cell adhesion protein 1	QAQLQDAGIYECESK	0.929666404	5.291552674
101	Q8BGD9	sp|Q8BGD9|IF4B_MOUSE	Eif4b	Eukaryotic translation initiation factor 4B	VDVVGATQGQAGSCSR	0.858756871	5.324813632
102	P63001	sp|P60764|RAC3_MOUSE	Rac1;Rac3	Ras-related C3 botulinum toxin substrate 1;Ras-related C3 botulinum toxin substrate 3	AVLCPPPVK	0.861623298	5.330490405
103	P26039	sp|P26039|TLN1_MOUSE	Tln1	Talin-1	AGALQCSPSDVYTK	1.116123471	5.364806867
104	P62874	sp|P62874|GBB1_MOUSE	Gnb1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1	LFVSGACDASAK	0.511261428	5.503577325
105	Q9QZ88	sp|Q9QZ88|VPS29_MOUSE	Vps29	Vacuolar protein sorting-associated protein 29	CNSLPAK	0.748390959	5.546311703
106	Q60930	sp|Q60930|VDAC2_MOUSE	Vdac2	Voltage-dependent anion-selective channel protein 2	SCSGVEFSTSGSSNTDTGK	0.826514588	5.549389567
107	Q80UU9	sp|O55022|PGRC1_MOUSE	Pgrmc2;Pgrmc1	Membrane-associated progesterone receptor component 2;Membrane-associated progesterone receptor component 1	GLATFCLDK	0.741044195	5.602847757
108	Q9WUD1	sp|Q9WUD1|CHIP_MOUSE	Stub1	STIP1 homology and U box-containing protein 1	AQQACIEAK	1.456239988	5.66859849
109	P61759	sp|P61759|PFD3_MOUSE	Vbp1	Prefoldin subunit 3	DGCGLETAAGNGR	0.860215054	5.698005698
110	P51881	sp|P51881|ADT2_MOUSE	Slc25a5	ADP/ATP translocase 2;ADP/ATP translocase 2, N-terminally processed	GLGDCLVK	0.51111679	5.730659026
111	Q9DBJ1	sp|Q9DBJ1|PGAM1_MOUSE	Pgam1	Phosphoglycerate mutase 1	YADLTEDQLPSCESLK	1.118193	5.746239724
112	P45377	sp|P45377|ALD2_MOUSE	Akr1b8	Aldose reductase-related protein 2	ACLLPETVNMEEYPYDAEY	0.672721157	5.833681641
113	Q9Z1Q9	sp|Q9Z1Q9|SYVC_MOUSE	Vars	Valine--tRNA ligase	ICLQPPPSSR	1.05284993	5.854665069
114	P60867	sp|P60867|RS20_MOUSE	Rps20	40S ribosomal protein S20	VCADLIR	0.654915071	5.923064542
115	Q61035	sp|Q61035|SYHC_MOUSE	Hars	Histidine--tRNA ligase, cytoplasmic	TNQPLSTC	0.855285665	5.978073544
116	Q8VBT0	sp|Q8VBT0|TMX1_MOUSE	Tmx1	Thioredoxin-related transmembrane protein 1	CVGLPSATDTS	0.948845605	5.999397229
117	Q60930	sp|Q60930|VDAC2_MOUSE	Vdac2	Voltage-dependent anion-selective channel protein 2	WCEYGLTFTEK	1.38031403	6.099183938
118	P16858	sp|P16858|G3P_MOUSE	Gapdh;Gapdhs	Glyceraldehyde-3-phosphate dehydrogenase;Glyceraldehyde-3-phosphate dehydrogenase, testis-specific	VPTPNVSVVDLTCR	0.744158357	6.145027645
119	P62908	sp|P62908|RS3_MOUSE	Rps3	40S ribosomal protein S3	GLCAIAQAESLR	0.605649629	6.156175245
120	Q8JZK9	sp|Q8JZK9|HMCS1_MOUSE	Hmgcs1	Hydroxymethylglutaryl-CoA synthase, cytoplasmic	HSLSYDCIGR	0.914127885	6.166261729
121	Q9D8E6	sp|Q9D8E6|RL4_MOUSE	Rpl4	60S ribosomal protein L4	SGQGAFGNMCR	1.236037327	6.167537857
122	P14869	sp|P14869|RLA0_MOUSE	Rplp0	60S acidic ribosomal protein P0	AGAIAPCEVTVPAQNTGLGPEK	0.808734352	6.188118812
123	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A	VQVQDNEGCSVEATVK	1.400655371	6.269592476
124	P45376	sp|P45376|ALDR_MOUSE	Akr1b1	Aldose reductase	HIDCAQVYQNEK	0.680107629	6.280224354
125	Q64737	sp|Q64737|PUR2_MOUSE	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	QVLVAPGNAGTACAGK	0.841105723	6.319315967
126	P20152	sp|P20152|VIME_MOUSE	Vim	Vimentin	QVQSLTCEVDALK	1.321702353	6.4808814
127	Q8BGQ7	sp|Q8BGQ7|SYAC_MOUSE	Aars	Alanine--tRNA ligase, cytoplasmic	IQSLGDCK	1.281722635	6.49518907
128	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C	VGVTEGCDPTR	0.517977532	6.523157208
129	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A	AHVAPCFDASK	1.662383276	6.565988181
130	Q60668	sp|Q60668|HNRPD_MOUSE	Hnrnpd	Heterogeneous nuclear ribonucleoprotein D0	FGEVVDCTLK	0.674665498	6.663671758
131	P48962	sp|P48962|ADT1_MOUSE	Slc25a4	ADP/ATP translocase 1	EFNGLGDCLTK	0.797386938	6.693778843
132	Q7TMK9	sp|Q7TMK9|HNRPQ_MOUSE	Syncrip	Heterogeneous nuclear ribonucleoprotein Q	SAFLCGVMK	0.678436287	6.76618166
133	P62858	sp|P62858|RS28_MOUSE	Rps28	40S ribosomal protein S28	TGSQGQCTQVR	0.701409834	6.776859983
134	Q9JHU4	sp|Q9JHU4|DYHC1_MOUSE	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	LSCLPAFK	0.705596421	6.794723821
135	Q922Q8	sp|Q922Q8|LRC59_MOUSE	Lrrc59	Leucine-rich repeat-containing protein 59	ATVLDLSCNK	0.83376862	6.837426541
136	Q68FD5	sp|Q68FD5|CLH1_MOUSE	Cltc	Clathrin heavy chain 1	IHEGCEEPATHNALAK	0.669225946	6.849985757
137	Q62426	sp|Q62426|CYTB_MOUSE	Cstb	Cystatin-B	MMCGAPSATMPATAETQEVADQVK	1.463176917	7.092198582
138	Q60931	sp|Q60931|VDAC3_MOUSE	Vdac3	Voltage-dependent anion-selective channel protein 3	VCNYGLTFTQK	0.650110519	7.137758744
139	P47757	sp|P47757|CAPZB_MOUSE	Capzb	F-actin-capping protein subunit beta	DETVSDCSPHIANIGR	0.923180782	7.173601148
140	Q8BTM8	sp|Q8BTM8|FLNA_MOUSE	Flna	Filamin-A	VANPSGNLTDTYVQDCGDGTYK	1.133484002	7.207530524
141	Q9DBG5	sp|Q9DBG5|PLIN3_MOUSE	Plin3	Perilipin-3	TVCDVAEK	0.81300813	7.250707305
142	P16858	sp|P16858|G3P_MOUSE	Gapdh	Glyceraldehyde-3-phosphate dehydrogenase	AAICSGK	0.762020879	7.451814115
143	Q01853	sp|Q01853|TERA_MOUSE	Vcp	Transitional endoplasmic reticulum ATPase	LGDVISIQPCPDVK	0.813704388	7.464376196
144	Q8CI94	sp|Q8CI94|PYGB_MOUSE	Pygb	Glycogen phosphorylase, brain form	MSVIEEGDCK	0.68429885	7.479107709
145	P09411	sp|P09411|PGK1_MOUSE	Pgk1	Phosphoglycerate kinase 1	TGQATVASGIPAGWMGLDCGTESSK	0.821135984	7.523472861
146	Q61029	sp|Q61029|LAP2B_MOUSE	Tmpo	Lamina-associated polypeptide 2, isoforms beta/delta/epsilon/gamma	EMFPYEASTPTGISASCR	1.322211681	7.776844167
147	P40124	sp|P40124|CAP1_MOUSE	Cap1	Adenylyl cyclase-associated protein 1	ALLATASQCQQPAGNK	1.390820584	7.917656374
148	Q76MZ3	sp|Q76MZ3|2AAA_MOUSE	Ppp2r1a;Ppp2r1b	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform;Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A beta isoform	DCEAEVR	1.009896991	7.961783439
149	Q60597	sp|Q60597|ODO1_MOUSE	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	AEQFYCGDTEGK	0.621697233	8.110300081
150	P60710	sp|P60710|ACTB_MOUSE	Actb	Actin, cytoplasmic 1;Actin, cytoplasmic 1, N-terminally processed	DDDIAALVVDNGSGMCK	1.23895	8.1288
151	P07356	sp|P07356|ANXA2_MOUSE	Anxa2	Annexin A2	SVCHLQK	0.94767303	8.143322476
152	Q3UKC1	sp|Q3UKC1|TAXB1_MOUSE	Tax1bp1	Tax1-binding protein 1 homolog	EQLECQLQTEK	1.008960774	8.14995925
153	Q8K2I4	sp|Q8K2I4|MANBA_MOUSE	Manba	Beta-mannosidase	SAVQYAECQSK	0.88051422	8.150793266
154	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2	STLTDSLVCK	1.06803375	8.445945946
155	Q8CHP8	sp|Q8CHP8|PGP_MOUSE	Pgp	Phosphoglycolate phosphatase	SNQESDCMFK	1.025641026	8.453085376
156	Q9CW03	sp|Q9CW03|SMC3_MOUSE	Smc3	Structural maintenance of chromosomes protein 3	LEQCNTELK	0.583737085	8.582287068
157	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-C	LYAQDADGCPIDIK	0.859526013	8.920027341
158	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6	GTVCAANDFNPDADAK	0.74682599	8.944543828
159	Q60605	sp|Q60605|MYL6_MOUSE	Myl6	Myosin light polypeptide 6	CDFTEDQTAEFK	1.5987	9.0504
160	P35282	sp|P35282|RAB21_MOUSE	Rab21	Ras-related protein Rab-21	VVLLGEGCVGK	1.058014355	9.090909091
161	Q7TPR4	sp|Q7TPR4|ACTN1_MOUSE	Actn1	Alpha-actinin-1	MVSDINNAWGCLEQAEK	0.950931913	9.173343189
162	P62880	sp|P62880|GBB2_MOUSE	Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2	TFVSGACDASIK	0.896319176	9.180835532
163	Q8C0I1	sp|Q8C0I1|ADAS_MOUSE	Agps	Alkyldihydroxyacetonephosphate synthase, peroxisomal	IVNLACK	0.935370332	9.61296159
164	Q8VDD5	sp|Q8VDD5|MYH9_MOUSE	Myh9	Myosin-9	LEEDQIIMEDQNCK	0.938314875	9.615384615
165	Q9Z1Z0	sp|Q9Z1Z0|USO1_MOUSE	Uso1	General vesicular transport factor p115	SQLCSQSLEITR	1.218163588	9.628847095
166	Q9JLV1	sp|Q9JLV1|BAG3_MOUSE	Bag3	BAG family molecular chaperone regulator 3	SQSPAASDCSSSSSSASLPSSGR	0.831360823	9.661835749
167	Q9Z1W9	sp|Q9Z1W9|STK39_MOUSE	Stk39	STE20/SPS1-related proline-alanine-rich protein kinase	LASGCDGSEIPDEVK	0.976623987	9.661835749
168	P06151	sp|P06151|LDHA_MOUSE	Ldha	L-lactate dehydrogenase A chain	DYCVTANSK	0.814863103	9.671179884
169	Q9R0P5	sp|Q9R0P5|DEST_MOUSE	Dstn	Destrin	CSTPEEIK	0.821220333	9.920634921
170	Q9WUM4	sp|Q9WUM4|COR1C_MOUSE	Coro1c	Coronin-1C	SELSCAPK	1.083351058	10
171	Q9Z1Z0	sp|Q9Z1Z0|USO1_MOUSE	Uso1	General vesicular transport factor p115	LQTENCELLQR	0.771881216	10.06036217
172	Q3TXS7	sp|Q3TXS7|PSMD1_MOUSE	Psmd1	26S proteasome non-ATPase regulatory subunit 1	VLSMTETCR	0.93095064	10.16055686
173	Q9Z1Z2	sp|Q9Z1Z2|STRAP_MOUSE	Strap	Serine-threonine kinase receptor-associated protein	CVLPEEDSGELAKPK	0.987129552	10.38287034
174	Q9Z1N2	sp|Q9Z1N2|ORC1_MOUSE	Orc1	Origin recognition complex subunit 1	QQLCLLDGDDR	1.064193713	10.42752868
175	Q9CQ65	sp|Q9CQ65|MTAP_MOUSE	Mtap	S-methyl-5-thioadenosine phosphorylase	ASGSACTAVK	1.2052	10.4869
176	Q9QUH0	sp|Q9QUH0|GLRX1_MOUSE	Glrx	Glutaredoxin-1	AQEFVNCK	0.929947763	10.59085
177	O08553	sp|O08553|DPYL2_MOUSE	Dpysl2	Dihydropyrimidinase-related protein 2	GLYDGPVCEVSVTPK	0.952498696	10.77904404
178	Q91YQ5	sp|Q91YQ5|RPN1_MOUSE	Rpn1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1	TEGSDLCDR	0.57663476	10.81081081
179	O88342	sp|O88342|WDR1_MOUSE	Wdr1	WD repeat-containing protein 1	VCALGESK	0.70008401	10.83423619
180	Q3U0J8	sp|Q3U0J8|TBD2B_MOUSE	Tbc1d2b	TBC1 domain family member 2B	LCQVESK	0.705467372	10.88139282
181	Q60598	sp|Q60598|SRC8_MOUSE	Cttn	Src substrate cortactin	HCSQVDSVR	0.75103267	11.0757374
182	Q62418	sp|Q62418|DBNL_MOUSE	Dbnl	Drebrin-like protein	AEEDVEPECIMEK	0.753536033	11.40250855
183	Q9ET30	sp|Q9ET30|TM9S3_MOUSE	Tm9sf3	Transmembrane 9 superfamily member 3	NLSGQPNFPCR	0.68197185	13.03156403
184	P11983	sp|P11983|TCPA_MOUSE	Tcp1	T-complex protein 1 subunit alpha	ICDDELILIK	1.180637544	13.31339107
185	Q9Z1D1	sp|Q9Z1D1|EIF3G_MOUSE	Eif3g	Eukaryotic translation initiation factor 3 subunit G	EDLNCQEEEDPMNK	1.215173062	13.6573329
186	P68254	sp|P68254|1433T_MOUSE	Ywhaq	14-3-3 protein theta	YLAEVACGDDR	1.023755783	14.36781609
187	Q9CZB0	sp|Q9CZB0|C560_MOUSE	Sdhc	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial	SLCLGPTLIYSAK	1.360867932	15.47152964
188	P28667	sp|P28667|MRP_MOUSE	Marcksl1	MARCKS-related protein	EGGGDSSASSPTEEEQEQGEMSACSDEGTAQEGK	1.174338941	15.52795031
189	Q9D8N0	sp|Q9D8N0|EF1G_MOUSE	Eef1g	Elongation factor 1-gamma	AAAPAPEEEMDECEQALAAEPK	1.039350839	16.02564103
190	Q9CR51	sp|Q9CR51|VATG1_MOUSE	Atp6v1g1	V-type proton ATPase subunit G 1	EAAALGSHGSCSSEVEK	1.2187	16.92047377
191	Q9WUM4	sp|Q9WUM4|COR1C_MOUSE	Coro1c	Coronin-1C	ETICSQDER	0.821422704	18.08318264
192	Q91ZA3	sp|Q91ZA3|PCCA_MOUSE	Pcca	Propionyl-CoA carboxylase alpha chain, mitochondrial	MADEAVCVGPAPTSK	0.829970013	18.87435461
193	Q60598	sp|Q60598|SRC8_MOUSE	Cttn	Src substrate cortactin	CALGWDHQEK	0.814748496	18.99509804
194	O54833	sp|O54833|CSK22_MOUSE	Csnk2a2	Casein kinase II subunit alpha	EQSQPCAENTVLSSGLTAAR	1.919378894	NL
195	O54931	sp|O54931|AKAP2_MOUSE	Akap2	A-kinase anchor protein 2	APCVSESQSAGAGPANAATQGK	1.089068586	NL
196	O70373	sp|O70373|XIRP1_MOUSE	Xirp1	Xin actin-binding repeat-containing protein 1	ISGSTPCPPPSR	0.884407889	NL
197	P11438	sp|P11438|LAMP1_MOUSE	Lamp1	Lysosome-associated membrane glycoprotein 1	CNTEEHIFVSK	0.735570914	NL
198	P14115	sp|P14115|RL27A_MOUSE	Rpl27a	60S ribosomal protein L27a	NQSFCPTVNLDK	0.909640807	NL
199	P14824	sp|P14824|ANXA6_MOUSE	Anxa6	Annexin A6	ALLALCGGED	0.928255697	NL
200	P16045	sp|P16045|LEG1_MOUSE	Lgals1	Galectin-1	FNAHGDANTIVCNTK	0.341653685	NL
201	P31001	sp|P31001|DESM_MOUSE	Des	Desmin	HQIQSYTCEIDALK	0.831446505	NL
202	P31230	sp|P31230|AIMP1_MOUSE	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1;Endothelial monocyte-activating polypeptide 2	IGCIVTAK	0.907467917	NL
203	P51410	sp|P51410|RL9_MOUSE	Rpl9	60S ribosomal protein L9	TGVACSVSQAQK	0.657246139	NL
204	P58252	sp|P58252|EF2_MOUSE	Eef2	Elongation factor 2	EGALCEENMR	0.838440323	NL
205	P63017	sp|P63017|HSP7C_MOUSE	Hspa8	Heat shock cognate 71 kDa protein	VCNPIITK	0.781372089	NL
206	P68510	sp|P68510|1433F_MOUSE	Ywhah	14-3-3 protein eta	NCNDFQYESK	0.806126562	NL
207	P70261	sp|P70261|PALD_MOUSE	Pald1	\N	GQECGSQQAVQQR	3.368277147	NL
208	P70336	sp|P70336|ROCK2_MOUSE	Rock2	Voltage-dependent anion-selective channel protein 1	NCLLETAK	0.556050235	NL
209	P70452	sp|P70452|STX4_MOUSE	Stx4	WD repeat-containing protein 1	CNSMQSEYR	0.698763189	NL
210	Q3UW53	sp|Q3UW53|NIBAN_MOUSE	Fam129a	Alpha-actinin-1	ALASTCKPELQK	0.949392217	NL
211	Q3UZA1	sp|Q3UZA1|CPZIP_MOUSE	Rcsd1	Vimentin	SQSDCGDFR	1.320898568	NL
212	Q60864	sp|Q60864|STIP1_MOUSE	Stip1	Serine-threonine kinase receptor-associated protein	ALDLDSSCK	0.986565671	NL
213	Q60902	sp|Q60902|EP15R_MOUSE	Eps15l1	T-complex protein 1 subunit alpha	CTQDDINQAR	1.178411501	NL
214	Q61656	sp|Q61656|DDX5_MOUSE	Ddx5	Superoxide dismutase [Cu-Zn]	LIDFLECGK	0.701124607	NL
215	Q62351	sp|Q62351|TFR1_MOUSE	Tfrc	Leucine-rich repeat-containing protein 40	WNIDSSCK	1.481981765	NL
216	Q68FD5	sp|Q68FD5|CLH1_MOUSE	Cltc	ATP synthase subunit d, mitochondrial	VIQCFAETGQVQK	0.624398141	NL
217	Q6PHZ2	sp|Q6PHZ2|KCC2D_MOUSE	Camk2d;Camk2a	Rho-associated protein kinase 2	QETVDCLK	0.524374184	NL
218	Q6ZWY3	sp|Q6ZWY3|RS27L_MOUSE	Rps27l;Rps27	2-oxoglutarate dehydrogenase, mitochondrial	LTEGCSFR	0.619931559	NL
219	Q76MZ3	sp|Q76MZ3|2AAA_MOUSE	Ppp2r1a	Probable ATP-dependent RNA helicase DDX5	NLCSDDTPMVR	0.700716974	NL
220	Q7TMY8	sp|Q7TMY8|HUWE1_MOUSE	Huwe1	S-formylglutathione hydrolase	DQSAQCTVTK	0.992161921	NL
221	Q80X90	sp|Q80X90|FLNB_MOUSE	Flnb	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2	VAVTEGCQPSR	2.020580559	NL
222	Q8BH58	sp|Q8BH58|TIPRL_MOUSE	Tiprl	Clathrin heavy chain 1	VACAEEWQESR	0.666440503	NL
223	Q8BJS4	sp|Q8BJS4|SUN2_MOUSE	Sun2;Sun1	Eukaryotic translation initiation factor 4E-binding protein 1	CSETYETK	1.085462072	NL
224	Q8C190	sp|Q8C190|VP9D1_MOUSE	Vps9d1	CapZ-interacting protein	LAEQCLER	1.285347044	NL
225	Q8JZK9	sp|Q8JZK9|HMCS1_MOUSE	Hmgcs1	Epidermal growth factor receptor substrate 15-like 1	ITASLCDLK	1.178267946	NL
226	Q8K2B3	sp|Q8K2B3|SDHA_MOUSE	Sdha	CTP synthase 1	TLNEADCATVPPAIR	0.669302498	NL
227	Q8K2H2	sp|Q8K2H2|OTU6B_MOUSE	Otud6b	40S ribosomal protein S3	LVNSATENCS	0.59584103	NL
228	Q8VHE0	sp|Q8VHE0|SEC63_MOUSE	Sec63	Tax1-binding protein 1 homolog	EQSICAAEEQPTEDGQSDANK	1.003755161	NL
229	Q8VHX6	sp|Q8VHX6|FLNC_MOUSE	Flnc	Filamin-A	VCAYGPGLK	0.963856293	NL
230	Q91VH1	sp|Q91VH1|ADR1_MOUSE	Adipor1	Origin recognition complex subunit 1	AEEDQACPVPQEEEEEVR	1.061806682	NL
231	Q99JY9	sp|Q99JY9|ARP3_MOUSE	Actr3	Glyceraldehyde-3-phosphate dehydrogenase	YSYVCPDLVK	0.761556732	NL
232	Q99KI0	sp|Q99KI0|ACON_MOUSE	Aco2	60S acidic ribosomal protein P0	VGLIGSCTNSSYEDMGR	0.807872266	NL
233	Q9CRC8	sp|Q9CRC8|LRC40_MOUSE	Lrrc40	Myosin light polypeptide 6	NQLCEIPQR	1.595951042	NL
234	Q9CZY3	sp|Q9CZY3|UB2V1_MOUSE	Ube2v1	60S ribosomal protein L14	LPQPPEGQCYSN	0.70942659	NL
235	Q9DCS3	sp|Q9DCS3|MECR_MOUSE	Mecr	Lysosome-associated membrane glycoprotein 1	LALNCVGGK	0.730406837	NL
236	Q9DCT8	sp|Q9DCT8|CRIP2_MOUSE	Crip2	Plexin-B2	ASSVTTFTGEPNMCPR	0.822697765	NL
237	Q9EQH3	sp|Q9EQH3|VPS35_MOUSE	Vps35	Thioredoxin-related transmembrane protein 1	TQCALAASK	0.948226816	NL
238	Q9ERZ4	sp|Q9ERZ4|ACM2_MOUSE	Chrm2	Galectin-1	GDACTPTSTTVELVGSSGQNGDEK	0.250099034	NL
239	Q9JI46	sp|Q9JI46|NUDT3_MOUSE	Nudt3	Calreticulin	EVCEEAGVK	0.975078078	NL
240	Q9JKF1	sp|Q9JKF1|IQGA1_MOUSE	Iqgap1	Thimet oligopeptidase	TCLDNLASK	1.101019193	NL
241	Q9QUR7	sp|Q9QUR7|PIN1_MOUSE	Pin1	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial	SGEEDFESLASQFSDCSSAK	1.358102	NL
242	Q9WV80	sp|Q9WV80|SNX1_MOUSE	Snx1	Voltage-dependent anion-selective channel protein 2	LQEVECEEQR	1.369057435	NL
243	Q9Z0N1	sp|Q9Z0N1|IF2G_MOUSE	Eif2s3x	Coronin-1C	SCGSSTPDEFPTDIPGTK	1.072682431	NL
244	Q9Z0P5	sp|Q9Z0P5|TWF2_MOUSE	Twf2	Triosephosphate isomerase	HLSSCAAPAPLTSAER	0.652718285	NL
245	Q9Z1Q5	sp|Q9Z1Q5|CLIC1_MOUSE	Clic1	Translocation protein SEC63 homolog	EEFASTCPDDEEIELAYEQVAR	1.003580052	NL
246	Q9Z2I9	sp|Q9Z2I9|SUCB1_MOUSE	Sucla2	Delta-1-pyrroline-5-carboxylate synthase;Glutamate 5-kinase;Gamma-glutamyl phosphate reductase	ILACDDLDEAAK	0.942168125	NL
247	Q9DBA9	sp|Q9DBA9|TF2H1_MOUSE	Gtf2h1	Eukaryotic translation initiation factor 4B	QEMEAYTPK	0.856221154	NL
248	Q8BG94	sp|Q8BG94|COMD7_MOUSE	Commd7	Elongation factor 1-gamma	ASMECLS	1.03777501	NL
\.


--
-- Data for Name: vals2023pandas; Type: TABLE DATA; Schema: public; Owner: rohand
--

COPY public.vals2023pandas (index, "Accession Number", "Gene Name", "Protein Name", "Peptide", "Start Position", "End Position", "Median", "CV") FROM stdin;
0	Q8VHX6	Flnc	Filamin-C	AGEAATFTVDCSEAGEAELTIEILSDAGVK	1171	1200	3.6739	0.057847225
1	F6ZGI7	Mocs2	Molybdopterin synthase sulfur carrier subunit	CQIDVLYFAK	5	14	2.7175	0.200105526
2	P30999	Ctnnd1	Catenin delta-1	TPAILEASAGAIQNLCAGR	677	695	2.5197	0.307771909
3	Q8BFR5	Tufm	Elongation factor Tu, mitochondrial	GEETPVIVGSALCALEQR	210	227	2.2456	0.079496021
4	E9Q6R7	Utrn	Utrophin	HPQLDCVFTLAQNLK	2278	2292	1.7226	0.036009678
5	Q3TQP6	Me1	Malic enzyme;NADP-dependent malic enzyme	ILGLGDLGCNGMGIPVGK	136	153	1.6343	0.103272691
6	Q8BTZ7	Gmppb	Mannose-1-phosphate guanyltransferase beta	YGVVVCEADTGR	144	155	1.463	0.407175353
7	A0A5K1VVQ1	Ttn	Titin	AENIIGLGLPDTTIPIECQEK	10946	10966	1.45915	0.164716167
8	A0A2I3BRD1	Tbc1d23	TBC1 domain family member 23	SDLYNCFYAVMNK	143	155	1.2811	0.156754606
9	A0A217FL53	Gtpbp4	Nucleolar GTP-binding protein 1	TLLLCGYPNVGK	113	124	1.2259	0.27355852
10	Q3TR20	Cog7	Conserved oligomeric Golgi complex subunit 7	VQLLATWQELCQSDLPLDR	230	248	1.1776	0.081422962
11	E9QAH1	Golgb1	E9QAH1;E9PVZ8	AGEADGTVCEVSTAGTTLLNR	484	504	1.0944	0.311043535
12	E9Q163	Xrcc6	X-ray repair cross-complementing protein 6	AMFESQGEDELTPFDMSIQCIQSVYTSK	45	72	0.9872	1.019116216
13	Q8R404	Qil1	Protein QIL1	AEEVVPPAMYQFSQYVCQQTGLEMPQLPTPPK	44	75	0.9848	0.875410832
14	Q6NSR8	Npepl1	Probable aminopeptidase NPEPL1	ASEDPLLNLVSPLDCEVDAQEGDNMGR	490	516	0.9244	0.74887426
15	P08121	Col3a1	Collagen alpha-1(III) chain	SGEYWVDPNQGCK	1272	1284	0.913	0.126567586
16	Q921F2	Tardbp	TAR DNA-binding protein 43	VTEDENDEPIEIPSEDDGTVLLSTVTAQFPGACGLR	7	42	0.8878	0.2809949
17	Q8R5H1	Usp15	Ubiquitin carboxyl-terminal hydrolase 15	LDTLVDFPISDLDMSEFLINPNAGPCR	848	874	0.84605	0.181112274
18	Q9JHW2	Nit2	Omega-amidase NIT2	QGANIVSLPECFNSPYGTTYFPDYAEK	34	60	0.80425	0.372522404
19	A0A1Y7VL95	Nqo2	Ribosyldihydronicotinamide dehydrogenase [quinone]	EEPIHCTPPWYFQE	174	187	0.787	0.108173302
20	Q8BGD9	Eif4b	Eukaryotic translation initiation factor 4B	YAALSVDGEDEDEGDDCTE	593	611	0.7805	0.411852329
21	Q8R138	Tmem119	Transmembrane protein 119	GGSEEEEEEVLSGQEEAQEAPVCGVTEEK	197	225	0.76715	0.046547471
22	P28667	Marcksl1	MARCKS-related protein	EGGGDSSASSPTEEEQEQGEMSACSDEGTAQEGK	111	144	0.76585	0.079865165
23	P50516	Atp6v1a	V-type proton ATPase catalytic subunit A	YSNSDVIIYVGCGER	266	280	0.7511	0.223543056
24	Q8BKC5	Ipo5	Importin-5	QVQTSGGLWTECIAQLSPEQQAAIQELLNSA	1067	1097	0.7506	0.058291287
25	F6Q750	Macf1	F6Q750	TDLTEIQCDMFDVNSK	1474	1489	0.7415	0.261125896
26	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	MEGNAEESTLFCFAVR	210	225	0.7222	0.628824777
27	Q9CZC8	Scrn1	Secernin-1	QGLEAMDEILSSPEPPDPAEVGDLFYDCVDTEMK	378	411	0.69915	0.350038843
28	P11499	Hsp90ab1	Heat shock protein HSP 90-beta	GFEVVYMTEPIDEYCVQQLK	507	526	0.6923	0.162693408
29	P51163	Uros	Uroporphyrinogen-III synthase	GLPVSCTAESPTPQALAAGIR	236	256	0.6794	1.051397219
30	A0A140LJF3	Zfand6	AN1-type zinc finger protein 6	AEGLVPLECDPPSSVSDTTQQPSEEQSK	125	152	0.663	0.913159617
31	O08529	Capn2	Calpain-2 catalytic subunit	INGCYEALSGGATTEGFEDFTGGIAEWYELR	188	218	0.64035	0.10744357
32	P84084	Arf5	ADP-ribosylation factor 5	TWYVQATCATQGTGLYDGLDWLSHELSK	152	179	0.6352	0.145123937
33	J3QN51	Gm21992;Rbm14	RNA-binding protein 14	IFVGNVDGADTTPEELAALFAPYGTVMSCAVMK	3	35	0.62795	0.713356391
34	O54984	Asna1	ATPase Asna1	NQISPFISQMCNMLGLGDMNADQLASK	195	221	0.626	0.703062277
35	A0A5K1VVQ1	Ttn	Titin	LDQAGEVLYQACNAITTAILTVK	4922	4944	0.61505	0.020349224
36	A0A1D5RM84	Tom1	Target of Myb protein 1	ATDGSLQSEDWALNMEICDIINETEEGPK	20	48	0.5942	0.690913454
37	D3YYV8	Rpl5	60S ribosomal protein L5	IYEGQVEVNGGEYNVESIDGQPGAFTCYLDAGLAR	68	102	0.5893	0.169919137
38	Q9D1T2	Mxra7	Matrix-remodeling-associated protein 7	VPAPESTASDEAPGAPAPPEPPESCAPEPAPEGPSQSER	34	72	0.5869	0.05985078
39	Q9CZC8	Scrn1	Secernin-1	ASGVCIDSESFLTTASIVSVLPQNR	262	286	0.57645	0.274403308
40	P47738	Aldh2	Aldehyde dehydrogenase, mitochondrial	ANYLSQALQAGTVWINCYDVFGAQSPFGGYK	458	488	0.5713	0.393674202
41	Q9D0J4	Arl2	ADP-ribosylation factor-like protein 2	IQGCSAVTGEDLLPGIDWLLDDISSR	154	179	0.56	0.306581297
42	A0A0G2JEA9	Rbm8a	RNA-binding protein 8A	EAQAAMEGLNGQDLMGQPISVDWCFVR	77	103	0.5536	0.223051982
43	Z4YLI8	Cluh	Clustered mitochondria protein homolog	NYFDFTLECDSVDQAVETYGLQK	893	915	0.54355	0.185639109
44	P68372	Tubb4b;Tubb4a;Tubb5;Tubb2b;Tubb2a	Tubulin beta-4B chain;Tubulin beta-4A chain;Tubulin beta-5 chain;Tubulin beta-2B chain;Tubulin beta-2A chain	LTTPTYGDLNHLVSATMSGVTTCLR	217	241	0.5405	0.076892876
45	A0A3B2W4A5	Ndufa11	A0A3B2W4A5;A0A3B2W441;G5E814	TYITTALGGICGIIGSAYSVSLNPADSTLEAVAR	24	57	0.5402	0.108121104
46	Q8BPW9	Dnpep	Aspartyl aminopeptidase	SPSPFHVVAECR	26	37	0.5305	0.389809616
47	F8WIA3	Gm20604;Gm28051;AK010878	Uncharacterized protein C14orf142 homolog	VSCEASGDADPLQSLSAGVVR	19	39	0.5299	0.060917012
48	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	GEAVDEGEIAENLPEQEILIQSVCETMVPK	2117	2146	0.52955	0.169182191
49	P26039	Tln1	Talin-1	ALCGFTEAAAQAAYLVGVSDPNSQAGQQGLVEPTQFAR	1432	1469	0.5202	0.140370952
50	A0A1B0GXC3	Rpl10;Rpl10l	60S ribosomal protein L10;60S ribosomal protein L10-like	VDEFPLCGHMVSDEYEQLSSEALEAAR	43	69	0.5159	0.193088784
51	D3YU08	Synpo2l	Synaptopodin 2-like protein	AGGAESGPEEDALSLGAEACNFMQPLGGR	436	464	0.50435	0.189973171
52	D3YY68	Eef1d	Elongation factor 1-delta	SSILLDVKPWDDETDMAQLETCVR	105	128	0.4975	0.104073276
53	P47857	Pfkm	ATP-dependent 6-phosphofructokinase, muscle type	MGVEAVMALLEGTPDTPACVVSLSGNQAVR	316	345	0.4951	0.033134472
54	B7FAU9	Flna	Filamin-A	VANPSGNLTDTYVQDCGDGTYK	1297	1318	0.494	0.472369566
55	Q3TS02	Acly	ATP-citrate synthase	YICTTSAIQNR	18	28	0.4886	1.261967076
56	Q6PDY2	Ado	2-aminoethanethiol dioxygenase	EVWLLETPQADDFWCEGEPYPGPK	230	253	0.48485	0.618508788
57	A0A494BBL4	Fech	Ferrochelatase;Ferrochelatase, mitochondrial	AIAFTQYPQYSCSTTGSSLNAIYR	181	204	0.4803	0.060949866
58	Q9Z0H4	Celf2	CUGBP Elav-like family member 2	CFGFVSYDNPVSAQAAIQAMNGFQIGMK	465	492	0.4757	0.187054161
59	Q61035	Hars	Histidine--tRNA ligase, cytoplasmic	ILDGMFAVCGVPDSK	216	230	0.47545	0.196761441
60	Q6P5H2	Nes	Nestin	WNPETVESPGGVEDSQQCLEVEEGPER	1181	1207	0.47295	0.149659348
61	E9Q3W4	Plec	Plectin	VLSGSSSEAAVPSVCFLVPPPNQEAQEAVAR	681	711	0.4707	0.372556791
62	Q3U4W8	Usp5	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 5	AQVPFSSCLEAYGAPEQVDDFWSTALQAK	525	553	0.4688	0.569083261
63	Q8BGT5	Gpt2	Alanine aminotransferase 2	LTEDLFNQVPGIQCNPLQGAMYAFPR	418	443	0.46465	0.240293039
64	E9Q2V3	Sp1	Transcription factor Sp1	SSSTGSSSSSGGGGGQESQPSPLALLAATCSR	34	65	0.4521	0.569949115
65	A0A494BAQ2	Nfkb2	Nuclear factor NF-kappa-B p100 subunit;Nuclear factor NF-kappa-B p52 subunit	MDNCYDPGLDGIPEYDDFEFSPSIVEPK	1	28	0.4487	0.038495581
66	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	LMSANASDLPLSIECFMNDIDVSGTMNR	276	303	0.448	0.214973088
67	P17426	Ap2a1;Ap2a2	AP-2 complex subunit alpha-1;AP-2 complex subunit alpha-2	YLALESMCTLASSEFSHEAVK	346	366	0.43795	0.044723959
68	P26039	Tln1	Talin-1	ELLENPVQPINDMSYFGCLDSVMENSK	1375	1401	0.4376	0.150599525
69	Q08093	Cnn2	Calponin-2;Calponin	CDNSSMSLQMGYTQGANQSGQVFGLGR	240	266	0.434	0.085273004
70	P26039	Tln1	Talin-1	ASVPTIQDQASAMQLSQCAK	1006	1025	0.4323	0.103581407
71	A0A0G2JE25	Nras	GTPase NRas	TGEGFLCVFAINNSK	74	88	0.4308	0.325978196
72	A0A1W2P6M3	Mrpl42	39S ribosomal protein L42, mitochondrial	STYSSLPDDYNCQVDLALTADGR	33	55	0.4303	1.119736372
73	Q8K4L2	Svil	Supervillin	TSLVASQDCTPLGSNMSDQEQLLNVENQR	170	198	0.4296	0.169100968
74	Q3UDF0	Slc2a6	Q3UDF0	MLTGFAGGLTAACIPVYVSEIAPPDVR	139	165	0.4283	0.045893272
75	Q99JY0	Hadhb	Trifunctional enzyme subunit beta, mitochondrial;3-ketoacyl-CoA thiolase	DGGQYALVAACAAGGQGHAMIVEAYPK	449	475	0.4277	0.177989088
76	A2BFF8	Dync1i2	Cytoplasmic dynein 1 intermediate chain 2	AVAVTSMSFPVGDVNNFVVGSEEGSVYTACR	405	435	0.42765	0.20883336
77	D3Z789	Snx3	Sorting nexin-3	CLHMFLQDEIIDK	108	120	0.4265	0.71961405
78	E9Q798	Arf4	ADP-ribosylation factor 4	TWYVQATCATQGTGLYEGLDWLSNELSK	125	152	0.4246	0.096103716
79	P47955	Rplp1	60S acidic ribosomal protein P1	ALANVNIGSLICNVGAGGPAPAAGAAPAGGAAPSTAAAPAEEK	50	92	0.4242	0.368290073
80	A0A0R4J1F6	Uap1	UDP-N-acetylhexosamine pyrophosphorylase;UDP-N-acetylgalactosamine pyrophosphorylase;UDP-N-acetylglucosamine pyrophosphorylase	DANDVPIQCEISPLISYAGEGLEGYVADK	456	484	0.4225	0.261085581
81	J3QMM7	Carkd	ATP-dependent (S)-NAD(P)H-hydrate dehydratase	IGIVGGCQEYTGAPYFAGISALK	56	78	0.41845	0.216128468
82	Q91YR9	Ptgr1	Prostaglandin reductase 1	TASPDGYDCYFDNVGGEFSNAVILQMK	205	231	0.4157	0.137958074
83	P09411	Pgk1	Phosphoglycerate kinase 1	TGQATVASGIPAGWMGLDCGTESSK	298	322	0.415	0.377135111
84	O88844	Idh1	Isocitrate dehydrogenase [NADP] cytoplasmic	NYDGDVQSDSVAQGYGSLGMMTSVLICPDGK	271	301	0.4148	0.336506458
85	A0A1W2P768	Hist1h3b	Histone H3.2	FQSSAVMALQEASEAYLVGLFEDTNLCAIHAK	130	161	0.4146	0.141898901
86	P83917	Cbx1	Chromobox protein homolog 1	GFSDEDNTWEPEENLDCPDLIAEFLQSQK	44	72	0.4126	0.128248632
87	Q61035	Hars	Histidine--tRNA ligase, cytoplasmic	LLNQLQYCEEAGIPLVAIIGEQELK	448	472	0.4046	0.028661768
88	P62331	Arf6	ADP-ribosylation factor 6	NWYVQPSCATSGDGLYEGLTWLTSNYK	148	174	0.404	0.079462
89	A0A0N4SV00	Cct7	T-complex protein 1 subunit eta	EGTDSSQGIPQLVSNISACQVIAEAVR	11	37	0.4028	0.063290117
90	P42669	Pura	Transcriptional activator protein Pur-alpha	AACEQLHQQQQQQQEETTAATLLLQGEEEGEED	289	321	0.4003	0.076752278
91	E9PZ16	Hspg2	E9PZ16;B1B0C7	LLQVTPTDSGEYVCR	2488	2502	0.39855	1.123245021
92	M0QWR3	Jsrp1	Junctional sarcoplasmic reticulum protein 1	GLEDLDGGLGSCLPSDDLPFLEEPASGR	5	32	0.3962	0.0761767
93	P52480	Pkm	Pyruvate kinase PKM	AEGSDVANAVLDGADCIMLSGETAK	343	367	0.3926	0.161377401
94	Q9DBH5	Lman2	Vesicular integral-membrane protein VIP36	WSELAGCTADFR	198	209	0.3923	0.030844501
95	P26039	Tln1	Talin-1	AQEACGPLEMDSALSVVQNLEK	1041	1062	0.3897	0.101588629
96	O08738	Casp6	Caspase-6;Caspase-6 subunit p18;Caspase-6 subunit p11	ETVNGSWYIQDLCEMLAR	203	220	0.38855	0.460970654
97	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	STEECLSYFGVSETTGLTPDQVK	8	30	0.3874	0.115989312
98	A0A087WNM1	Srgap2	SLIT-ROBO Rho GTPase-activating protein 2	DQNVLSPVNCWNLLLNQVK	89	107	0.3874	1.052446489
99	P63037	Dnaja1	DnaJ homolog subfamily A member 1	CVLNEGMPIYR	302	312	0.3863	0.263952363
100	Q9D7H3	RtcA;Rtca	RNA 3-terminal phosphate cyclase	FGFTFNCDIK	147	156	0.3861	0.444043469
101	A0A087WQY9	Hdlbp	Vigilin	AACLESAQEPAGAWSNK	51	67	0.3837	0.275876955
102	Q99PT1	Arhgdia	Rho GDP-dissociation inhibitor 1	LTLVCSTAPGPLELDLTGDLESFK	75	98	0.3818	0.140159021
103	K3W4S6	Gyg;Gyg1	Glycogenin-1	CVFMDADTLVLSNIDDLFER	142	161	0.3809	0.266951838
104	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	AFTNPEDACSFITSANFPALVVK	126	148	0.37815	0.019260082
105	D3Z6F5	Atp5a1	ATP synthase subunit alpha;ATP synthase subunit alpha, mitochondrial	YTIVVSATASDAAPLQYLAPYSGCSMGEYFR	221	251	0.3771	0.042736179
106	E0CZ56	Trmt10a	tRNA methyltransferase 10 homolog A	LVIDCSFDDLMVLK	104	117	0.3745	0.110644366
107	Q9WVK4	Ehd1	EH domain-containing protein 1	FMCAQLPNPVLDSISIIDTPGILSGEK	136	162	0.3738	0.354408427
108	Q9WTP6	Ak2	Adenylate kinase 2, mitochondrial;Adenylate kinase 2, mitochondrial, N-terminally processed	GIHCAIDASQTPDIVFASILAAFSK	205	229	0.3703	0.126996702
109	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	EEFASTCPDDEEIELAYEQVAR	217	238	0.3702	0.417029296
110	Q99JI6	Rap1b	Ras-related protein Rap-1b	QVEVDAQQCMLEILDTAGTEQFTAMR	43	68	0.3698	0.045508765
111	A2A6Q8	Myl4	Myosin light chain 4	MSEAEVEQLLSGQEDANGCINYEAFVK	162	188	0.36605	0.063553649
112	A0A1W2P6G5	Myl6	A0A1W2P6G5	MTEEEVEMLVAGHEDSNGCINYEELVR	108	134	0.3654	0.032123625
113	Q8K411	Pitrm1	Presequence protease, mitochondrial	LDIGLAAGDIPVQYCPQPTNGMVYFR	574	599	0.365	0.297178576
114	P54071	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	NYDGDVQSDILAQGFGSLGLMTSVLVCPDGK	310	340	0.3644	0.064662561
115	Q9DB25	Alg5	Dolichyl-phosphate beta-glucosyltransferase	GLSDLQPWPEQMAIACGSR	179	197	0.3608	0.366565755
116	A0A1L1SST0	Ppia	Peptidyl-prolyl cis-trans isomerase A;Peptidyl-prolyl cis-trans isomerase A, N-terminally processed	HTGPGILSMANAGPNTNGSQFFICTAK	84	110	0.3593	0.291136229
117	P48722	Hspa4l	Heat shock 70 kDa protein 4L	LMSANASDLPLNIECFMNDLDVSSK	276	300	0.3592	0.144262121
118	E9Q616	Ahnak	E9Q616	GDINIEGPSMNIEGPELNVECPEGSLK	3229	3255	0.3581	0.144541235
119	F8WIT2	Anxa6	Annexin;Annexin A6	LCGGDDDAAGQFFPEAAQVAYQMWELSAVSR	320	350	0.358	0.023701903
120	Q80VD1	Fam98b	Protein FAM98B	AAEGGLSSPEFSELCIWLGSQIK	38	60	0.3571	0.140589699
121	Q99LS3	Psph	Phosphoserine phosphatase	IIMIGDGATDMEACPPADAFIGFGGNVIR	174	202	0.3564	0.512672257
122	Q99JZ4	Sar1a	GTP-binding protein SAR1a	ELNARPMEVFMCSVLK	167	182	0.355	0.00478718
123	E0CZ27	H3f3a;H3f3c	Histone H3;Histone H3.3;Histone H3.3C	FQSAAIGALQEASEAYLVGLFEDTNLCAIHAK	85	116	0.3539	0.155847214
124	Q64261	Cdk6	Cyclin-dependent kinase 6	ADQQYECVAEIGEGAYGK	9	26	0.35355	0.497004766
125	B7FAU9	Flna	Filamin-A	YTPCGAGSYTIMVLFADQATPTSPIR	838	863	0.3531	0.06207961
126	G3UY93	Vars	Valine--tRNA ligase	CVVHPFLSR	562	570	0.3525	0.384826997
127	A0A0R4J0T5	Celf1	CUGBP Elav-like family member 1	CFGFVSYDNPVSAQAAIQSMNGFQIGMK	444	471	0.34955	0.168103486
128	P04223	H2-K1	H-2 class I histocompatibility antigen, K-K alpha chain	GYEQYAYDGCDYIALNEDLK	133	152	0.3482	0.101048148
129	O55234	Psmb5	Proteasome subunit beta type-5	VIEINPYLLGTMAGGAADCSFWER	93	116	0.34785	0.085173995
130	Q3TCN2	Plbd2	Putative phospholipase B-like 2;Putative phospholipase B-like 2 28 kDa form;Putative phospholipase B-like 2 40 kDa form;Putative phospholipase B-like 2 15 kDa form	YMSMLAASGPTWDQCPPFQWSK	548	569	0.3478	0.214309933
131	A0A498WGE8	Synpo2	Synaptopodin-2	GTGGDSGPEEDYLSLGAEACNFMQSSAK	329	356	0.34625	0.244449622
132	E9Q3I8	Itsn1	Intersectin-1	TAVQPAVCQVIGMYDYTAQNDDELAFSK	1073	1100	0.34355	0.050426768
133	P62267	Rps23	40S ribosomal protein S23	ITAFVPNDGCLNFIEENDEVLVAGFGR	81	107	0.34285	0.122302558
134	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	GSSAVTNELCSPPGSSNVAGTSLSPK	345	370	0.3405	0.273175652
135	B7FAU9	Flna	Filamin-A	LQVEPAVDTSGVQCYGPGIEGQGVFR	1247	1272	0.3371	0.651508624
136	A0A286YED2	Mmp14	Matrix metalloproteinase-14	NPAYGPNICDGNFDTVAMLR	311	330	0.3356	0.127683763
137	Q9QZF2	Gpc1	Glypican-1;Secreted glypican-1	DIQDFWISLPGTLCSEK	387	403	0.3354	0.400758368
138	P31230	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1;Endothelial monocyte-activating polypeptide 2	LSTPLQTNCTASESVVQSPSVATTASPATK	82	111	0.3326	0.058031886
139	A0A1L1SRW0	Rpsa	40S ribosomal protein SA	ADHQPLTEASYVNLPTIALCNTDSPLR	45	71	0.3317	0.314120064
140	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	VDGDVCSLNEFSITGSTYAPEGEVLK	372	397	0.3293	0.004724066
141	Q8BWT1	Acaa2	3-ketoacyl-CoA thiolase, mitochondrial	YAVGSACIGGGQGIALIIQNTA	376	397	0.3276	0.37077457
142	A0A2I3BQL9	Pck2	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial	QCPIMDPAWEAPEGVPIDAIIFGGR	421	445	0.327	0.18899429
143	F7C312	Hsp90b1	Endoplasmin	GYEVIYLTEPVDEYCIQALPEFDGK	238	262	0.3258	0.12674965
144	A0A2R8W6S4	Pacsin2	Protein kinase C and casein kinase substrate in neurons protein 2	ELDQTTPQYMENMEQVFEQCQQFEEK	41	66	0.3257	0.021032498
145	G5E839	Cct4	T-complex protein 1 subunit delta	AQDIEAGDGTTSVVIIAGSLLDSCTK	67	92	0.3248	0.155520632
146	Q91VI7	Rnh1	Ribonuclease inhibitor	SLLELQMSSNPLGDEGVQELCK	337	358	0.3248	0.36268251
147	Q99KC8	Vwa5a	von Willebrand factor A domain-containing protein 5A	SLPMGCYFNIYGFGSSYEK	319	337	0.3241	0.244272921
148	Q9WU78	Pdcd6ip	Programmed cell death 6-interacting protein	FIQQTYPSGGEEQAQYCR	24	41	0.3213	0.218756346
149	P28653	Bgn	Biglycan	NMNCIEMGGNPLENSGFEPGAFDGLK	185	210	0.3208	0.20861335
150	P67984	Rpl22	60S ribosomal protein L22	FTLDCTHPVEDGIMDAANFEQFLQER	21	46	0.3198	0.458838049
151	P62715	Ppp2cb;Ppp2ca	Serine/threonine-protein phosphatase 2A catalytic subunit beta isoform;Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform	LQEVPHEGPMCDLLWSDPDDR	186	206	0.31855	0.466817002
152	Q60864	Stip1	Stress-induced-phosphoprotein 1	ALDLDSSCK	454	462	0.3175	0.348319687
153	Q5SVG5	Ap1b1	AP-1 complex subunit beta-1	YESVIATLCENLDSLDEPEAR	398	418	0.31745	0.26350837
154	A0A494BAS3	Gstp2;Gstp1	Glutathione S-transferase P 2;Glutathione S-transferase P 1	EEVVTIDTWMQGLLKPTCLYGQLPK	14	38	0.31705	0.248228938
155	Q9DCC5	Cbx3	Q9DCC5;D3Z313	GFTDADNTWEPEENLDCPELIEAFLNSQK	53	81	0.3165	0.176634608
156	E9QQ97	Rpgrip1	X-linked retinitis pigmentosa GTPase regulator-interacting protein 1	QLPPQVCPLLDQMGTALEETK	370	390	0.3134	0.067496729
157	Q7TQI3	Otub1	Ubiquitin thioesterase OTUB1	QEPLGSDSEGVNCLAYDEAIMAQQDR	11	36	0.3125	0.095035151
158	P46061	Rangap1	Ran GTPase-activating protein 1	LDLNGNALGEEGCEQLQEVMDSFNMAK	326	352	0.312	0.188561808
159	Q9D2G2	Dlst	Dihydrolipoyllysine-residue succinyltransferase component of 2-oxoglutarate dehydrogenase complex, mitochondrial	EAQNTCAMLTTFNEVDMSNIQEMR	241	264	0.3113	0.138110239
160	A2A4J3	Psme3	Proteasome activator complex subunit 3	LDECEEAFQGTK	114	125	0.3079	0.416593602
161	P28474	Adh5	Alcohol dehydrogenase class-3	SIQEVLVEMTDGGVDYSFECIGNVK	249	273	0.3067	0.101581018
162	A0A0A6YX73	Prkar2a	cAMP-dependent protein kinase type II-alpha regulatory subunit	LLGPCMDIMK	346	355	0.3065	0.009228147
163	Q5EBP8	Hnrnpa1	Heterogeneous nuclear ribonucleoprotein A1;Heterogeneous nuclear ribonucleoprotein A1, N-terminally processed	SHFEQWGTLTDCVVMR	32	47	0.30555	0.64959867
164	Q8BGT5	Gpt2	Alanine aminotransferase 2	LFLLADEVYQDNVYSPDCR	293	311	0.3054	0.069035673
165	Q9Z2I8	Suclg2	Succinyl-CoA ligase [GDP-forming] subunit beta, mitochondrial	IDATQVEVNPFGETPEGQVVCFDAK	236	260	0.3049	0.321561046
166	P56183	Rrp1	Ribosomal RNA processing protein 1 homolog A	VGAAELTADQNLQFIDPFCQIAAR	180	203	0.30395	0.29708023
167	P70296	Pebp1	Phosphatidylethanolamine-binding protein 1;Hippocampal cholinergic neurostimulating peptide	YVWLVYEQEQPLSCDEPILSNK	120	141	0.3032	0.094869778
168	A0A087WQS2	Bzw1	Basic leucine zipper and W2 domain-containing protein 1	TDVCVFAAQEDLETMQAFAQVFNK	125	148	0.3027	0.400801555
169	Q62426	Cstb	Cystatin-B	MMCGAPSATMPATAETQEVADQVK	1	24	0.2996	0.024876472
170	Q9WUU7	Ctsz	Cathepsin Z	GGTGDSYNLAIESACTFGDPIV	285	306	0.299	0.30270792
171	A0A1Y7VNI1	Heatr1	A0A1Y7VNI1;G3X9B1	LLTFYNLADCIAEK	533	546	0.297	0.633301023
172	Q60605	Myl6	Myosin light polypeptide 6	MTEEEVEMLVAGHEDSNGCINYEAFVR	120	146	0.2969	0.026197961
173	Q8VEK3	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U	FDENDVITCFANFETDEVELSYAK	376	399	0.2967	0.297904778
174	Q8JZQ2	Afg3l2	AFG3-like protein 2	LASLTPGFSGADVANVCNEAALIAAR	508	533	0.2963	0.22766786
175	Q63850	Nup62	Nuclear pore glycoprotein p62	DIIEHLNMAGGPADTSDPLQQICK	457	480	0.2956	0.391348679
176	Q9D0K2	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial	STGCDFAVSPNLMPMQQIST	501	520	0.2954	0.391134895
177	P60122	Ruvbl1	RuvB-like 1	CDTYATEFDLEAEEYVPLPK	206	225	0.29535	1.152774387
178	P17879	Hspa1b	Heat shock 70 kDa protein 1B	VCSPIISGLYQGAGAPGAGGFGAQAPPK	602	629	0.29445	0.141925661
179	P10126	Eef1a1;Eef1a2	Elongation factor 1-alpha 1;Elongation factor 1-alpha 2	NMITGTSQADCAVLIVAAGVGEFEAGISK	101	129	0.294	0.228373364
180	Q6GQT9	Nomo1	Nodal modulator 1	YQTDCAPNNGYFMIPLYDK	59	77	0.29365	0.030099897
181	Q9QUR6	Prep	Prolyl endopeptidase	ICDPYSWLEDPDSEQTK	24	40	0.2928	0.892094416
182	D3Z158	Qars	D3Z158;Q8BML9;A0A140LHJ3;A0A140LJK5;A0A140LIS6;A0A140LHZ5	DFEQECGVGVVVTPEQIEEAVESTINK	106	132	0.2926	0.06527298
183	Q61171	Prdx2	Peroxiredoxin-2	LGCEVLGVSVDSQFTHLAWINTPR	68	91	0.2906	0.545306321
184	Q52KR3	Prune2	Protein prune homolog 2	ETGLPETQLSGTPDTCQSEFLNDVK	2565	2589	0.2902	0.087491849
185	Q9QZE7	Tsnax	Translin-associated protein X	MCINSVGNGDIDTPFEVSQFLR	201	222	0.2899	0.113871245
186	Q99P72	Rtn4	Reticulon-4	VTEAVVATMPEGLTPDLVQEACESELNEATGTK	516	548	0.2893	0.391405291
187	Q02053	Uba1	Ubiquitin-like modifier-activating enzyme 1	NFAMIGLGCGEGGEVVVTDMDTIEK	486	510	0.2865	0.247588196
188	A6ZI44	Aldoa;Aldoc	Fructose-bisphosphate aldolase;Fructose-bisphosphate aldolase A;Fructose-bisphosphate aldolase C	YASICQQNGIVPIVEPEILPDGDHDLK	228	254	0.2852	0.142357577
189	Q6GQT1	A2mp	Alpha-2-macroglobulin-P	NALFCLDTAWK	1123	1133	0.2851	0.352890871
190	Q8BGT5	Gpt2	Alanine aminotransferase 2	LCPPVSGQAAMDIVVNPPEPGEESFEQFSR	374	403	0.28505	0.429398996
191	Q9D0M3	Cyc1	Cytochrome c1, heme protein, mitochondrial	HGGEDYVFSLLTGYCEPPTGVSLR	205	228	0.2843	0.121457214
192	A0A2R8VI72	Gga1	ADP-ribosylation factor-binding protein GGA1	ELNWASINSFCEQLNEDFEGPPLATR	24	49	0.28365	0.176745534
193	Q8BMS1	Hadha	Trifunctional enzyme subunit alpha, mitochondrial;Long-chain enoyl-CoA hydratase;Long chain 3-hydroxyacyl-CoA dehydrogenase	EVESVTPEHCIFASNTSALPINQIAAVSK	461	489	0.2829	0.160467499
194	P22935	Crabp2	Cellular retinoic acid-binding protein 2	ELTNDGELILTMTADDVVCTR	113	133	0.2825	0.345439852
195	O70194	Eif3d	Eukaryotic translation initiation factor 3 subunit D	FMTPVIQDNPSGWGPCAVPEQFR	4	26	0.2818	0.097436782
196	P45376	Akr1b1	Aldose reductase	YKPAVNQIECHPYLTQEK	178	195	0.28165	0.128793104
197	E9Q3G5	Arfip1	E9Q3G5;G5E8V9	EGVTEAGAPQGSSAPPLPCVLSPSR	58	82	0.2813	0.106078586
198	Q80X95	Rraga	Ras-related GTP-binding protein A	DMHYYQSCLEAILQNSPDAK	102	121	0.2804	0.517762625
199	P62814	Atp6v1b2	V-type proton ATPase subunit B, brain isoform	SDFEENGSMDNVCLFLNLANDPTIER	246	271	0.2795	0.15887766
200	P63168	Dynll1	Dynein light chain 1, cytoplasmic	NADMSEEMQQDSVECATQALEK	10	31	0.2789	0.16626909
201	Q99KF1	Tmed9;Tmed4	Transmembrane emp24 domain-containing protein 9;Transmembrane emp24 domain-containing protein 4	CFIEEIPDETMVIGNYR	49	65	0.2788	0.104926793
202	P60335	Pcbp1	Poly(rC)-binding protein 1	VMTIPYQPMPASSPVICAGGQDR	178	200	0.2782	0.122801415
203	Q8K124	Plekho2	Pleckstrin homology domain-containing family O member 2	LLNQVLGSEPPPVCAESLLSQAVEQLR	431	457	0.2777	0.690488991
204	Q9CR16	Ppid	Peptidyl-prolyl cis-trans isomerase D	MSNWQGAIDSCLEALEMDPSNTK	286	308	0.2775	0.125243178
205	A0A668KL51	Idh3b	A0A668KL51	TSDMGGYATCHDFTEAVITALS	359	380	0.2774	0.04914058
206	Q8BG30	Nelfa	Negative elongation factor A	ENPCPEQGDVIQIK	470	483	0.27555	0.267651015
207	Q9D8N0	Eef1g	Elongation factor 1-gamma	VPAFEGDDGFCVFESNAIAYYVSNEELR	58	85	0.27545	0.133745737
208	A0A338P785	Cryzl1	Quinone oxidoreductase-like protein 1	VTFFQPDDEVVGILPLDSEDPGLCEVIR	51	78	0.2749	0.085046155
209	Q9CQQ8	Lsm7	U6 snRNA-associated Sm-like protein LSm7	GTSVVLICPQDGMEAIPNPFVQQQDT	78	103	0.2742	0.110792713
210	Q8CGC7	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	LGVENCYFPIFVSQAALEK	1071	1089	0.273	0.30501165
211	P10126	Eef1a1	Elongation factor 1-alpha 1	SGDAAIVDMVPGKPMCVESFSDYPPLGR	396	423	0.2717	0.220173845
212	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	AEPPQCTSLAWSADGQTLFAGYTDNLVR	281	308	0.2716	0.045961731
213	A2A7S7	Yars	Tyrosine--tRNA ligase;Tyrosine--tRNA ligase, cytoplasmic;Tyrosine--tRNA ligase, cytoplasmic, N-terminally processed	AFCEPGNVENNGVLSFIK	284	301	0.27145	0.386831302
214	P48962	Slc25a4;Slc25a5	ADP/ATP translocase 1;ADP/ATP translocase 2;ADP/ATP translocase 2, N-terminally processed	YFAGNLASGGAAGATSLCFVYPLDFAR	112	138	0.2711	0.041067254
215	H3BIY9	Ap2b1	AP complex subunit beta;AP-2 complex subunit beta	DVSSLFPDVVNCMQTDNLELK	46	66	0.27	0.127643746
216	A0A0U1RPJ5	Ndufc2	NADH dehydrogenase [ubiquinone] 1 subunit C2	LVYMGLLGYCTGLMDNMLR	31	49	0.2696	0.252313325
217	Q924M7	Mpi	Mannose-6-phosphate isomerase	FIDVPTLCEMLNYTPSPSNNR	302	322	0.26655	0.306399674
218	P10126	Eef1a1	Elongation factor 1-alpha 1	DGSASGTTLLEALDCILPPTRPTDKPLR	220	247	0.26605	0.094351779
219	Q8BFS6	Cpped1	Serine/threonine-protein phosphatase CPPED1	AWSTGNCDAGGDEWGQEIR	48	66	0.2656	0.25464527
220	Q9R1P0	Psma4	Proteasome subunit alpha type-4;Proteasome subunit alpha type	LNEDMACSVAGITSDANVLTNELR	68	91	0.2652	0.094264606
221	P08030	Aprt	Adenine phosphoribosyltransferase	AEVVECVSLVELTSLK	148	163	0.2646	0.565821817
222	Q9CZG3	Commd8	COMM domain-containing protein 8	NFSEEETLQQLNQLNSCHQEAVLK	69	92	0.2639	0.468367811
223	A0A087WQS2	Bzw1	Basic leucine zipper and W2 domain-containing protein 1	FDPTQFQDCIIQGLTETGTDLEAVAK	59	84	0.2629	0.069331851
224	H3BJU7	Arhgef2	Rho guanine nucleotide exchange factor 2	DLLLGPCVDLPMTSR	639	653	0.26285	0.629226845
225	P11983	Tcp1	T-complex protein 1 subunit alpha	SQIESMLINGYALNCVVGSQGMPK	204	227	0.2622	0.009454571
226	Q99KE1	Me2	NAD-dependent malic enzyme, mitochondrial	VFTPGQGNNAYIFPGVALAVILCEAR	459	484	0.262	0.453955674
227	Q9Z2P8	Vamp5	Vesicle-associated membrane protein 5	QCQQQADEVTEIMLNNFDK	8	26	0.2618	0.095895069
228	P08752	Gnai2	Guanine nucleotide-binding protein G(i) subunit alpha-2	QLFALSCAAEEQGMLPEDLSGVIR	106	129	0.2616	0.225339617
229	E9Q740	Srp72	Signal recognition particle subunit SRP72	IAASLQSQSPEYLLPVLIQAAQLCR	265	289	0.26105	0.124329444
230	A0A2U3TZ67	Dnm1l	Dynamin-1-like protein	IIQHCSNYSTQELLR	293	307	0.26015	0.543886477
231	E9Q561	Eif4a2	Eukaryotic initiation factor 4A-II;Eukaryotic initiation factor 4A-II, N-terminally processed	LDTLCDLYETLTITQAVIFLNTR	166	188	0.2593	0.195797404
232	A0A0G2JE25	Nras;Hras;Kras	GTPase NRas;GTPase HRas;GTPase HRas, N-terminally processed;GTPase KRas;GTPase KRas, N-terminally processed	QVVIDGETCLLDILDTAGQEEYSAMR	43	68	0.259	0.395634911
233	P11087	Col1a1	Collagen alpha-1(I) chain	LPIIDVAPLDIGAPDQEFGLDIGPACFV	1426	1453	0.25845	0.169355426
234	E9Q0U7	Hsph1	Heat shock protein 105 kDa	LMSSNSTDLPLNIECFMNDK	235	254	0.2579	0.056948746
235	Q5XJY5	Arcn1	Coatomer subunit delta	NYCNIQVTK	477	485	0.25775	0.077089042
236	P84078	Arf1	ADP-ribosylation factor 1	NWYIQATCATSGDGLYEGLDWLSNQLR	152	178	0.2575	0.659050981
237	G3UY38	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L	QPAIMPGQSYGLEDGSCSYK	323	342	0.2574	0.225920784
238	D3YYT1	Glyr1	Putative oxidoreductase GLYR1	CYVDMSTVDADTVTELAQVIVSR	355	377	0.2574	0.090105293
239	P26041	Msn	Moesin	EGILNDDIYCPPETAVLLASYAVQSK	108	133	0.25605	0.110740019
240	A0A1W2P7K5	Snrpd3	Small nuclear ribonucleoprotein Sm D3	LIEAEDNMNCQMSNITVTYR	32	51	0.2559	0.16006983
241	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	SSLQYSSPAPGGCGDQTLGDLLLTPTR	634	660	0.2539	0.224573835
242	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	FQDTSQYVCAELQALEQEQGQIDGR	1549	1573	0.2535	0.097617977
243	Q8BKC5	Ipo5	Importin-5	YAEYFISPMLQYVCDNSPEVR	902	922	0.25295	0.061779244
244	Q91WK2	Eif3h	Eukaryotic translation initiation factor 3 subunit H	MDSLLIAGQINTYCQNIK	314	331	0.25275	0.047280335
245	Q8BU14	Sec62	Translocation protein SEC62	AVECLLDSK	52	60	0.25215	0.245937992
246	Q3TCD4	Eci2	Enoyl-CoA delta isomerase 2, mitochondrial	WLSEECMNAIMSFVSR	359	374	0.2514	0.342774058
247	P07356	Anxa2	Annexin A2;Annexin	GDLENAFLNLVQCIQNKPLYFADR	250	273	0.2513	0.041122524
248	A0A0G2JEA5	Fdps	Farnesyl pyrophosphate synthase	SLIEQCSAPLPPSIFMELANK	349	369	0.2506	0.17567524
249	Q9ERG0	Lima1	LIM domain and actin-binding protein 1	VSTTENSLVALSVPAEDDTCNSQVK	323	347	0.2505	0.142536203
250	P35486	Pdha1	Pyruvate dehydrogenase E1 component subunit alpha, somatic form, mitochondrial	NFYGGNGIVGAQVPLGAGIALACK	159	182	0.2504	0.091150249
251	Q148W8	Dusp27	Inactive dual specificity phosphatase 27	TDTECPGMLESAEQLLVEDLYNR	77	99	0.2503	0.191704471
252	Q61599	Arhgdib	Rho GDP-dissociation inhibitor 2	LSLVCDSAPGPITMDLTGDLEALK	71	94	0.2501	0.120438291
253	Q02053	Uba1	Ubiquitin-like modifier-activating enzyme 1	VLGPYTFSICDTSNFSDYIR	269	288	0.25	0.604223431
254	Q91VI7	Rnh1	Ribonuclease inhibitor	ELDLSNNCMGGPGVLQLLESLK	397	418	0.2494	0.779458727
255	F6YTS6	Ephx1	Epoxide hydrolase 1	THGLSDEHVFEVICPSIPGYGFSEASSK	46	73	0.24875	0.119675158
256	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	DLSTVVSQELECVDR	3378	3392	0.24875	0.003126904
257	P58252	Eef2	Elongation factor 2	LMEPIYLVEIQCPEQVVGGIYGVLNR	740	765	0.2483	0.290640112
258	Q3TQI7	\N	Uncharacterized protein C9orf78 homolog	NAEDCLYELPENIR	141	154	0.24825	0.094850577
259	O55143	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2	VEGDTCSLNEFSITGSTYAPIGEVQK	372	397	0.2479	0.109601955
260	A0A2R8VKL1	Kctd17	A0A2R8VKL1;A0A2R8VHM0;F7B6A4;F7C1U0;E0CZ97;F6SYN4;E0CYD2;E0CYQ0	VLQCQEEELTQMVSTMSDGWR	44	64	0.2476	0.45921959
261	P97807	Fh	Fumarate hydratase, mitochondrial	FEALAAHDALVELSGAMNTAACSLMK	309	334	0.24695	0.189840776
262	Q99P72	Rtn4	Reticulon-4	EDLVCSAALHNPQESPATLTK	315	335	0.2469	0.350461244
263	B1AYJ9	Ola1	Obg-like ATPase 1	STFFNVLTNSQASAENFPFCTIDPNESR	36	63	0.24645	0.486324201
264	E9Q3W4	Plec	Plectin	LQMEAGLCEEQLNQADALLQSDIR	244	267	0.2464	0.109467747
265	A0A0R4J275	Ndufa12	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 12	WLHCMTDDPPTTNPPTAR	93	110	0.2462	0.049855986
266	Q91Z83	Myh7	Myosin-7	MDADLSQLQTEVEEAVQECR	1730	1749	0.2449	0.042421094
267	Q9Z1F9	Uba2	SUMO-activating enzyme subunit 2	MCLAADVPLIESGTAGYLGQVTTIK	128	152	0.2446	0.304697689
268	Q9JLV1	Bag3	BAG family molecular chaperone regulator 3	VSSAPIPCPSPSPAPSAVPSPPK	371	393	0.244	0.186292562
269	A0A2I3BPY7	Rai14	Ankycorbin	TALMLACETGSSNTVDALIK	187	206	0.24395	0.411887164
270	E9Q4F4	Snrpe	Small nuclear ribonucleoprotein E	IEGCIIGFDEYMNLVLDDAEEIHSK	43	67	0.2432	0.264811638
271	P51863	Atp6v0d1	V-type proton ATPase subunit d 1	AGVLSQADYLNLVQCETLEDLK	25	46	0.2429	0.231141533
272	O35226	Psmd4	26S proteasome non-ATPase regulatory subunit 4	SNPENNVGLITLANDCEVLTTLTPDTGR	43	70	0.2428	0.146620977
273	F7CUQ1	Bak1	Bcl-2 homologous antagonist/killer	VGCDESPSPSEQQVAQDTEEVFR	12	34	0.2422	0.030150059
274	Q3TS02	Acly	ATP-citrate synthase	VDATADYICK	221	230	0.2422	0.03094687
275	A0A0J9YUS5	Eif4g1	Eukaryotic translation initiation factor 4 gamma 1	EAVQCVQELASPSLLFIFVR	964	983	0.2422	0.42624934
276	A0A1W2P6R8	Hs1bp3	HCLS1-binding protein 3	LYSCYPAASLPPLPR	48	62	0.2417	0.144062053
277	O70475	Ugdh	UDP-glucose 6-dehydrogenase	DVLNLVYLCEALNLPEVAR	280	298	0.2402	0.325587052
278	E0CYD0	Prpf3	U4/U6 small nuclear ribonucleoprotein Prp3	VLGFSEPTVVTAALNCVGK	22	40	0.2396	0.498140391
279	Q9Z1G3	Atp6v1c1	V-type proton ATPase subunit C 1	SSNVLSEDQDSYLCNVTLFR	212	231	0.2389	0.08701942
280	O35969	Gamt	Guanidinoacetate N-methyltransferase	VQQAPIEEHWIIECNDGVFQR	78	98	0.2388	0.122969464
281	P07742	Rrm1	Ribonucleoside-diphosphate reductase large subunit	LCYGLNMDFVDPAQITMK	25	42	0.2386	0.302683793
282	P62874	Gnb1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1	LLLAGYDDFNCNVWDALK	284	301	0.2384	0.178493036
283	Q91VD9	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial	VDSDNLCTEEIFPTEGAGTDLR	361	382	0.238	0.133399937
284	Q3UI33	Metap2	Methionine aminopeptidase 2;Methionine aminopeptidase	LCDVGEAIQEVMESYEVEIDGK	307	328	0.23775	0.17696258
285	A0A5K1VVQ1	Ttn	Titin	FSCDTDGEPVPTVTWLR	26042	26058	0.2371	0.331992546
286	Q9CZD3	Gars	Glycine--tRNA ligase	CSVLPLSQNQEFMPFVK	606	622	0.2366	0.124963007
287	S4R192	Sec31a	Protein transport protein Sec31A	SAQLQHAVQSQGFIGYCQK	37	55	0.23575	0.084882808
288	P14211	Calr	Calreticulin	DMHGDSEYNIMFGPDICGPGTK	121	142	0.23565	0.034507651
289	D3Z0F5	Cops6	COP9 signalosome complex subunit 6	TDFYDQCNDVGLMAYLGTITK	247	267	0.2349	0.055388526
290	O70251	Eef1b;Eef1b2	Elongation factor 1-beta	SYIEGYVPSQADVAVFEAVSGPPPADLCHALR	23	54	0.23415	0.223169725
291	Q8BHC4	Dcakd	Dephospho-CoA kinase domain-containing protein	SSVIQVFQQLGCAVIDVDVIAR	15	36	0.234	0.29009509
292	Q8BRF7	Scfd1	Sec1 family domain-containing protein 1	ALTDAGCNLSPLQYIK	476	491	0.2331	0.371259353
293	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	DSHISPVSDACSTGTTTPQASEK	1753	1775	0.233	0.04886371
294	Q8BH64	Ehd2	EH domain-containing protein 2	FMCAQLPNQVLESISIIDTPGILSGAK	136	162	0.2325	0.084984765
295	P60122	Ruvbl1	RuvB-like 1	EVYEGEVTELTPCETENPMGGYGK	129	152	0.2295	0.694474372
296	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	MLSAVSQQVQCIQEALR	1965	1981	0.2295	0.078259313
297	O88342	Wdr1	WD repeat-containing protein 1	LATGSDDNCAAFFEGPPFK	162	180	0.2287	0.249203352
298	P26638	Sars	Serine--tRNA ligase, cytoplasmic	TICAILENYQAEK	436	448	0.2275	0.103299058
299	Q9JIF7	Copb1	Coatomer subunit beta	GALWILGEYCSTK	457	469	0.22675	0.101349373
300	Q9CQ19	Myl9	Myosin regulatory light polypeptide 9	NAFACFDEEASGFIHEDHLR	105	124	0.22655	0.112050909
301	B1AR28	Acadvl	Very long-chain specific acyl-CoA dehydrogenase, mitochondrial	VASGQALAAFCLTEPSSGSDVASIR	184	208	0.2264	0.268759632
302	Q9JIF7	Copb1	Coatomer subunit beta	VLSECSPLMNDIFNK	619	633	0.2264	0.364172485
303	Q9JIK5	Ddx21	Nucleolar RNA helicase 2	LSVACFYGGTPYGGQIER	359	376	0.22545	0.200417491
304	A2AUK7	Epb4.1l1;Epb41l1	Band 4.1-like protein 1	DFMTTPPCITTETISTTMENSLK	588	610	0.22505	0.482296783
305	D6RI87	Ssb	Lupus La protein homolog	ICHQIEYYFGDFNLPR	17	32	0.2246	0.211250823
306	D3Z1K5	Timm17a	Mitochondrial import inner membrane translocase subunit Tim17-A	IVDDCGGAFTMGTIGGGIFQAFK	20	42	0.22395	0.103879496
307	A0A3Q4EC76	Eci1	Enoyl-CoA delta isomerase 1, mitochondrial	GVILTSECPGIFSAGLDLLEMYGR	34	57	0.22375	0.169705627
308	Q9D892	Itpa	Inosine triphosphate pyrophosphatase	SAYALCTFALSTGDPSQPVLLFR	111	133	0.2236	0.370630209
309	Q7TPR4	Actn1	Alpha-actinin-1	ACLISLGYDIGNDPQGEAEFAR	773	794	0.2228	0.187212476
310	O70475	Ugdh	UDP-glucose 6-dehydrogenase	ISSINSISALCEATGADVEEVATAIGMDQR	231	260	0.2228	0.000634746
311	Q9D0R2	Tars	Threonine--tRNA ligase, cytoplasmic	TTPYQIACGISQGLADNTVVAK	99	120	0.2222	0.998085404
312	F7C312	Hsp90b1	Endoplasmin	LTESPCALVASQYGWSGNMER	316	336	0.2215	0.18508255
313	Q62419	Sh3gl1	Endophilin-A2	EPFELGELEQPNGGFPCAPAPK	261	282	0.22115	0.145482064
314	B7FAU9	Flna	Filamin-A	APSVANIGSHCDLSLK	2142	2157	0.2209	0.396287096
315	I7HJQ8	Cd99l2	CD99 antigen-like protein 2	GENLEAVVCEEPQVTYSK	157	174	0.22035	0.402089765
316	Q0GNC1	Inf2	Inverted formin-2	LGPQDSDPTEANLESAEPELCIR	18	40	0.22	0.371552472
317	Q61686	Cbx5	Chromobox protein homolog 5	IIGATDSCGDLMFLMK	126	141	0.2196	0.303115267
318	P45377	Akr1b8	Aldose reductase-related protein 2	ACLLPETVNMEEYPYDAEY	298	316	0.2195	0.14282483
319	Q99JB8	Pacsin3	Protein kinase C and casein kinase II substrate protein 3	YMEDMEQAFESCQAAER	220	236	0.2187	0.39162426
320	G3UZ33	Psmd11	26S proteasome non-ATPase regulatory subunit 11	TTANAIYCPPK	97	107	0.2184	0.713260041
321	Q8C8U0	Ppfibp1	Liprin-beta-1	EQVCSWLAEQGLGSYLSSGK	609	628	0.218	0.052546467
322	A0A1B0GSC4	Pgpep1	Pyroglutamyl-peptidase 1	YLCDFTYYTSLYQGR	70	84	0.2177	0.211419274
323	Q99K85	Psat1	Phosphoserine aminotransferase	SQMIYEIIDNSQGFYVCPVER	275	295	0.2168	0.311019964
324	Q9QUR6	Prep	Prolyl endopeptidase	LWYCDLQQEPNGITGILK	261	278	0.21655	0.238695478
325	Q9D892	Itpa	Inosine triphosphate pyrophosphatase	DFGWDPCFQPDGYEQTYAEMPK	148	169	0.2161	0.013742936
326	E9Q1S3	Sec23a	Protein transport protein Sec23A	AVLNPLCQVDYR	68	79	0.2161	0.445874705
327	P70168	Kpnb1	Importin subunit beta-1	IQFNDLQSLLCATLQNVLR	575	593	0.2159	0.657651884
328	P84075	Hpca;Hpcal1	Neuron-specific calcium-binding protein hippocalcin;Hippocalcin-like protein 1	LLQCDPSSASQF	182	193	0.2159	0.034061651
329	A0A1L1STN8	Tagln	Transgelin	LVEWIVVQCGPDVGRPDR	30	47	0.2154	0.260453811
330	A2AES1	Timm17b	Mitochondrial import inner membrane translocase subunit Tim17-B	IVDDCGGAFTMGVIGGGVFQAIK	36	58	0.2139	0.153917756
331	Q9CZ13	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial	YFYDQCPAVAGYGPIEQLPDYNR	448	470	0.2138	0.223781955
332	Q9CZW5	Tomm70a	Mitochondrial import receptor subunit TOM70	CAEGYALYAQALTDQQQFGK	478	497	0.21345	0.226260919
333	Q5SNY8	Cfap36	Cilia- and flagella-associated protein 36	EIGINEDQFQEACTSPLAK	60	78	0.2131	0.003981831
334	H3BIY9	Ap2b1	AP complex subunit beta;AP-2 complex subunit beta	YESIIATLCENLDSLDEPDAR	425	445	0.2126	0.096453888
335	O08529	Capn2	Calpain-2 catalytic subunit	GSLLGCSIDITSAADSEAVTYQK	235	257	0.2113	0.151229051
336	O08797	Serpinb9	O08797	NVCYSPASISSALAMVLLGAK	27	47	0.2111	0.156418532
337	F7CDT0	Ube2m	NEDD8-conjugating enzyme Ubc12	TCDISFSDPDDLLNFK	34	49	0.21015	0.036676012
338	Q32Q92	Acot6;Acot1;Acot4;Acot2	Acyl-coenzyme A thioesterase 6;Acyl-coenzyme A thioesterase 1;Acyl-coenzyme A thioesterase 4;Acyl-coenzyme A thioesterase 2, mitochondrial	SCWDEPLSIAVR	13	24	0.2101	0.241703292
339	A0A1C7CYV0	Pls3	Plastin-3	TISSSLAVVDLIDAIQPGCINYDLVK	548	573	0.20975	0.4149933
340	Q9WUB3	Pygm	Glycogen phosphorylase, muscle form;Alpha-1,4 glucan phosphorylase	ICGGWQMEEADDWLR	171	185	0.2089	0.29583417
341	Q922B1	Macrod1	O-acetyl-ADP-ribose deacetylase MACROD1	SVAFPCISTGVFGYPNEEAAEVVLASLR	259	286	0.2086	0.194405918
342	Q9D7H3	RtcA	RNA 3-terminal phosphate cyclase	DTYVIECEGIGMANPHL	350	366	0.2085	0.341458101
343	A0A0U1RQ14	Immt	MICOS complex subunit Mic60	LLSYASYCIEHGDLELAAK	187	205	0.2079	0.338946399
344	A0A3B2WBM3	Tceb2	Transcription elongation factor B polypeptide 2	TLGECGFTSQTARPQAPATVGLAFR	56	80	0.2078	0.031305979
345	P26231	Ctnna1	Catenin alpha-1	LIEVANLACSISNNEEGVK	430	448	0.2072	0.204777178
346	Q2Q5T5	Gm7325	Q2Q5T5	EALLSCLLFVLSQQQPPDSGEASR	47	70	0.2071	0.274511759
347	A0A0A0MQA5	Tuba4a;Tuba1a;Tuba3a	Tubulin alpha-4A chain;Tubulin alpha-1A chain;Tubulin alpha-3 chain	AYHEQLSVAEITNACFEPANQMVK	281	304	0.207	0.202871232
348	F8WGE7	Txnl4a	Thioredoxin-like protein 4A	MYELYDPCTVMFFFR	72	86	0.2069	0.134358219
349	A0A1B0GT92	Gys1	Glycogen [starch] synthase, muscle	YLCAGAVDFYNNLENFNVDK	148	167	0.2067	0.189519669
350	Q9D1M0	Sec13	Protein SEC13 homolog	DVAWAPSIGLPTSTIASCSQDGR	217	239	0.2066	0.136538373
351	Q8VDD5	Myh9;Myh10	Myosin-9;Myosin-10	VEDMAELTCLNEASVLHNLK	83	102	0.2064	0.045685543
352	A0A0N4SVP4	Zyx	Zyxin	VCSIDLEIDSLSSLLDDMTK	142	161	0.2057	0.154069722
353	Q62465	Vat1	Synaptic vesicle membrane protein VAT-1 homolog	AVCGFHLGYLDGEVELVNSVVTR	335	357	0.2056	0.513133909
354	A0A1W2P6H1	Obscn	Obscurin	AEAGASATLSCEVAQAQTEVTWFK	967	990	0.20505	0.179664781
355	Q3UDE2	Ttll12	Tubulin--tyrosine ligase-like protein 12	CMLLPWAPADMLDLSFSTPEPPAK	249	272	0.2038	0.178401835
356	A0A286YCR8	Vdac2	Voltage-dependent anion-selective channel protein 2	WNTDNTLGTEIAIEDQICQGLK	87	108	0.2036	0.022263363
357	P11499	Hsp90ab1	Heat shock protein HSP 90-beta	VFIMDSCDELIPEYLNFIR	360	378	0.2028	0.420265
358	P26039	Tln1	Talin-1	MVAAATNNLCEAANAAVQGHASQEK	2399	2423	0.20275	0.236806661
359	F6XXE6	Agl	F6XXE6;F8VPN4	TLDPDDMVYCGVYDNALDNDNYNLAR	752	777	0.2022	0.353203684
360	A0A0G2JFD8	Nexn	A0A0G2JFD8;A0A0G2JGI1;A0A0G2JG59	GSAASTCILTIESK	522	535	0.20215	0.438290773
361	B0QZY4	Acbd4	B0QZY4;A2AHR2;E9Q289	DLDLEVFCDSVEQLEPELVR	130	149	0.2019	0.709424777
362	E9PZT5	Tnfrsf12a	Tumor necrosis factor receptor superfamily member 12A	FTTPIEETGGEGCPGVALIQ	75	94	0.2015	0.009825801
363	O08997	Atox1	Copper transport protein ATOX1	VCIDSEHSSDTLLATLNK	40	57	0.2012	0.037379499
364	Q9Z1Z0	Uso1	General vesicular transport factor p115	CQNEQLQTAVTQQASQIQQHK	678	698	0.2011	0.71449079
365	B7FAU9	Flna	Filamin-A	YWPQEAGEYAVHVLCNSEDIR	635	655	0.201	0.323237683
366	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	GTVVCLADSSLDTSVSASK	691	709	0.2003	0.294165967
367	A0A0J9YU66	Ctbp1;Ctbp2	C-terminal-binding protein 1;C-terminal-binding protein 2	DCTVEMPILK	26	35	0.20025	0.135241896
368	Q99N96	Mrpl1	39S ribosomal protein L1, mitochondrial	IATLDMPSDQIAANLQAVINEVCK	262	285	0.19995	0.000353642
369	Q8BFR5	Tufm	Elongation factor Tu, mitochondrial	NMITGTAPLDGCILVVAANDGPMPQTR	136	162	0.19975	0.226911363
370	A0A140LIZ5	Psmc4	26S protease regulatory subunit 6B	ISGADINSICQESGMLAVR	339	357	0.1992	0.153817065
371	A0A338P6Q0	Crkl	Crk-like protein	DSSTCPGDYVLSVSENSR	40	57	0.1991	0.120728247
372	Q9CZN7	Shmt2	Serine hydroxymethyltransferase	YYGGAEVVDEIELLCQR	105	121	0.1991	0.245054585
373	Q8BT60	Cpne3	Copine-3	EALAQCVLAEIPQQVVGYFNTYK	501	523	0.1989	0.212115419
374	Q3TL72	Uba3	NEDD8-activating enzyme E1 catalytic subunit	IIPAVASTNAVIAAVCATEVFK	295	316	0.1985	0.301093542
375	P13541	Myh3	Myosin-3	CEESQAELEAALK	1461	1473	0.19695	0.497254578
376	Q3KQM4	U2af2	Splicing factor U2AF 65 kDa subunit	IFVEFTSVFDCQK	264	276	0.1965	0.223827185
377	A0A0G2JFH2	Map4	Microtubule-associated protein	VTALQGGCSPLLAQDIMNK	282	300	0.1964	0.694865625
378	Q3UDE2	Ttll12	Tubulin--tyrosine ligase-like protein 12	LSQESPQVLLNQFPCENLLTVK	342	363	0.19625	0.047921122
379	A0A0G2JGQ6	Dclk1	Serine/threonine-protein kinase DCLK1	ISSLDQLVEGESYVCGSIEPFK	117	138	0.19615	0.200794533
380	A0A571BEU1	Tpm4	Tropomyosin alpha-4 chain	EENVGLHQTLDQTLNELNCI	139	158	0.1961	0.211986674
381	B0QZM2	Ube2j2	Ubiquitin-conjugating enzyme E2 J2	VFCELFPEVVEEIK	103	116	0.1951	0.031894104
382	Q64133	Maoa	Amine oxidase [flavin-containing] A	ITGFSTSVALLCFVLYK	504	520	0.1948	0.313624363
383	Q99JZ4	Sar1a	GTP-binding protein SAR1a	NYLPAINGIVFLVDCADHSR	88	107	0.1948	0.018149558
384	Q8CI94	Pygb	Glycogen phosphorylase, brain form	VFADYEAYIQCQAQVDR	774	790	0.1946	0.372811695
385	P14869	Rplp0	60S acidic ribosomal protein P0	AGAIAPCEVTVPAQNTGLGPEK	113	134	0.19445	0.022909605
386	Q91VI7	Rnh1	Ribonuclease inhibitor	TNELGDGGVGLVLQGLQNPTCK	60	81	0.194	0.186541378
387	A0A494BAM2	Rcl1	RNA 3-terminal phosphate cyclase-like protein	GGCVDSTNQSLVLLLMTLGQQDVSK	290	314	0.1934	0.237652227
388	P26039	Tln1	Talin-1	VVAPTISSPVCQEQLVEAGR	722	741	0.1931	0.0939138
389	S4R2J9	Prrc2c	Protein PRRC2C	VDSDTSNPETLSDPPGTCPEK	2712	2732	0.1931	0.482117306
390	Q91Z53	Grhpr	Glyoxylate reductase/hydroxypyruvate reductase	VGYTPGVLTDATAELAVSLLLTTCR	100	124	0.193	0.282149063
391	Q8CI94	Pygb;Pygl;Pygm	Glycogen phosphorylase, brain form;Alpha-1,4 glucan phosphorylase;Glycogen phosphorylase, liver form;Glycogen phosphorylase, muscle form	LAACFLDSMATLGLAAYGYGIR	140	161	0.1923	0.194886424
392	Q0GNC1	Inf2	Inverted formin-2	LELADYLCEDPQQLSLEDTFSTMK	924	947	0.19215	0.289613863
393	A0A0J9YKD4	Ckm	Creatine kinase M-type	AGHPFMWNEHLGYVLTCPSNLGTGLR	198	223	0.1918	0.223905791
394	Q9EPL8	Ipo7	Importin-7	FDVFEDFISPTTAAQTLLFTACSK	380	403	0.19175	0.057896096
395	Q6P069	Sri	Sorcin	DSGQQGVVNFSYDDFIQCVMTV	177	198	0.1914	0.292590791
396	F8WIV2	Serpinb6a;Serpinb6	Serpin B6	CSGNGGGDVHQGFQSLLTEVNK	83	104	0.1906	0.216076514
397	A0A0R4J1C2	Capns1	Calpain small subunit 1	YADESGNMDFDNFISCLVR	149	167	0.1906	0.179806764
398	A3KGU5	Sptan1	Spectrin alpha chain, non-erythrocytic 1	TYLLDGSCMVEESGTLESQLEATK	2211	2234	0.19015	0.194486903
399	Q8BK80	Lonp2	Lon protease homolog 2, peroxisomal	DGPSAGVTIVTCLASLFSGR	320	339	0.1899	0.230861614
400	Q9D0M5	Dynll2	Dynein light chain 2, cytoplasmic	NADMSEDMQQDAVDCATQAMEK	10	31	0.1898	0.058505202
401	A0A2R8VHH1	Nup155	Nuclear pore complex protein Nup155	YVENPSLVLNCER	1334	1346	0.1897	0.457388583
402	Q9D0J4	Arl2	ADP-ribosylation factor-like protein 2	QDLPGALSCNAIQEALELDSIR	127	148	0.1893	0.232217569
403	P27641	Xrcc5	X-ray repair cross-complementing protein 5	CTPTEAQLSAIDDLIDSMSLVK	444	465	0.1885	0.131119826
404	G3UZJ4	Prdx5	Peroxiredoxin-5, mitochondrial	ALNVEPDGTGLTCSLAPNILSQL	144	166	0.1884	0.1662583
405	P63260	Actg1	Actin, cytoplasmic 2;Actin, cytoplasmic 2, N-terminally processed	MEEEIAALVIDNGSGMCK	1	18	0.188	0.205946828
406	A0A087WQF8	Ktn1	Kinectin	TMMFSEDEALCVVDLLK	296	312	0.188	0.301022807
407	O35344	Kpna3	Importin subunit alpha-4	DQVEYLVQQNVIPPFCNLLSVK	402	423	0.1878	0.29594565
408	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	VNTSSALANISLALEQGCAVTLLK	303	326	0.18735	0.203432375
409	Q5SXA5	Tom1l2	TOM1-like protein 2	MEFLLGNPFSTPVGQCLEK	1	19	0.1871	0.11361297
410	P63017	Hspa8	Heat shock cognate 71 kDa protein	GPAVGIDLGTTYSCVGVFQHGK	4	25	0.1869	0.018160046
411	G3UW70	Lamtor5	Ragulator complex protein LAMTOR5	LTSDPTDIPVVCLESDNGNIMIQK	109	132	0.18675	0.138202932
412	P35700	Prdx1	Peroxiredoxin-1	HGEVCPAGWKPGSDTIKPDVNK	169	190	0.1865	0.11347643
413	Q5SVG5	Ap1b1	AP-1 complex subunit beta-1	DVSALFPDVVNCMQTDNLELK	46	66	0.18635	0.209077454
414	Q6PF96	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial	FCPAGVYEFVPLEQGDGFR	499	517	0.1861	0.463530005
415	Q9R1P3	Psmb2	Proteasome subunit beta type-2	ILLLCVGEAGDTVQFAEYIQK	42	62	0.18565	0.128357116
416	Q9D6V8	Paip2	Polyadenylate-binding protein-interacting protein 2	CFQEMLEEEEEHEWFIPAR	60	78	0.1856	0.199273251
417	Q8VDW0	Ddx39a;Ddx39	ATP-dependent RNA helicase DDX39A	HFVLDECDK	191	199	0.18505	0.357279028
418	Q9QXY6	Ehd3	EH domain-containing protein 3	FVCAQLPNAVLESISVIDTPGILSGEK	136	162	0.18455	0.048660288
419	D6RDC7	Wdr61	WD repeat-containing protein 61;WD repeat-containing protein 61, N-terminally processed	IVSVGDDQEIHVYDCPI	191	207	0.1844	0.231837478
420	E9Q390	Myof	Myoferlin	IYDCELEDVADFEGLTDFSDTFK	1467	1489	0.184	0.172461519
421	O08529	Capn2	Calpain-2 catalytic subunit	NECLEAGALFQDPSFPALPSSLGYK	37	61	0.1839	0.213785411
422	Q99KR3	Lactb2	Beta-lactamase-like protein 2	ILIDTGEPSVPEYISCLK	43	60	0.1835	0.280530647
423	Q8BHN3	Ganab	Neutral alpha-glucosidase AB	DGSDYEGWCWPGSASYPDFTNPR	494	516	0.1834	0.18815055
424	P70296	Pebp1	Phosphatidylethanolamine-binding protein 1;Hippocampal cholinergic neurostimulating peptide	YNLGAPVAGTCYQAEWDDYVPK	158	179	0.18295	0.049858855
425	O09130	Nfatc2ip	NFATC2-interacting protein	LGVADIIDCVVLASSSEATETSQELR	317	342	0.1822	0.131951869
426	G3UVV4	Hk1	Hexokinase;Hexokinase-1	AILQQLGLNSTCDDSILVK	801	819	0.1819	0.264548411
427	A0A0J9YVB0	Slc30a9	Zinc transporter 9	AINEFCLK	84	91	0.18175	0.567630698
428	Q9CQ71	Rpa3	Replication protein A 14 kDa subunit	ATVLCASYTLFK	77	88	0.18145	0.330074094
429	Q9Z266	Snapin	SNARE-associated protein Snapin	EQIDNLATELCR	56	67	0.1813	0.716619434
430	Q9CZ13	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial	VASEQSSHATCTVGVWIDAGSR	59	80	0.18115	0.49144214
431	E9QKR0	Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2	LLLAGYDDFNCNIWDAMK	326	343	0.181	0.558653424
432	Q91VH2	Snx9	Sorting nexin-9	IAIIVGDYGPMWVYPTSTFDCVVADPR	232	258	0.181	0.14220269
433	Q8BMF4	Dlat	Dihydrolipoyllysine-residue acetyltransferase component of pyruvate dehydrogenase complex, mitochondrial	NFSAIINPPQACILAIGASEDK	570	591	0.1806	0.233727671
434	Q61598	Gdi2	Rab GDP dissociation inhibitor beta	SDIYVCMISFAHNVAAQGK	330	348	0.18	0.082495791
435	A2AEJ8	Cstf2;Cstf2t	Cleavage stimulation factor subunit 2;Cleavage stimulation factor subunit 2 tau variant	GYGFCEYQDQETALSAMR	42	59	0.17985	0.837834057
436	Q91Z53	Grhpr	Glyoxylate reductase/hydroxypyruvate reductase	AALAQAADCEVEQWNSDDPIPR	21	42	0.1795	0.408112883
437	Q9DB29	Iah1	Isoamyl acetate-hydrolyzing esterase 1 homolog	DCGTDVLDLWTLMQK	172	186	0.17935	0.234585188
438	Q3UMU9	Hdgfrp2	Hepatoma-derived growth factor-related protein 2	CLSALEELGTLQVTSQILQK	492	511	0.1792	0.292145226
439	Q8BMJ2	Lars	Leucine--tRNA ligase, cytoplasmic	NFEASLDWLQEHACSR	562	577	0.17875	0.313698281
440	E9Q6R7	Utrn	E9Q6R7	VPSGGQELTSEFNEVLESYQLLCNR	1196	1220	0.1783	0.565526792
441	Q9D8N0	Eef1g	Elongation factor 1-gamma	AAAPAPEEEMDECEQALAAEPK	254	275	0.178	0.17479044
442	Q8BWT1	Acaa2	3-ketoacyl-CoA thiolase, mitochondrial	VVGYFVSGCDPTIMGIGPVPAINGALK	279	305	0.17795	0.286498449
443	F6RJV6	Lancl2	LanC-like protein 2	TIVCQESELPDELLYGR	175	191	0.17745	0.072922255
444	Q9CWJ9	Atic	Bifunctional purine biosynthesis protein PURH;Phosphoribosylaminoimidazolecarboxamide formyltransferase;IMP cyclohydrolase	MSSFGDFVALSDICDVPTAK	312	331	0.1774	0.152451607
445	D3Z275	Pcyox1	Prenylcysteine oxidase	IVCSGLLQASSSNLISGSVMSIEEK	187	211	0.1773	0.060388029
446	E9Q705	Bola3	BolA-like protein 3	ATAIQVTDISGGCGAMYEIK	35	54	0.1772	0.339606411
447	M0QWJ2	Rpe	Ribulose-phosphate 3-epimerase	IGPSILNSDLANLGAECLR	7	25	0.1768	0.321630003
448	E9PZ67	Casq2	Calsequestrin;Calsequestrin-2	YDLLCLYYHEPVSSDK	49	64	0.1768	0.245239701
449	A0A1B0GT97	Kdelr1	ER lumen protein-retaining receptor 1	YLDLFTNYISLYNTCMK	48	64	0.1764	0.27690285
450	Q62383	Supt6h	Transcription elongation factor SPT6	EELLNALYCEFINR	952	965	0.1761	0.163024051
451	Q8BKC5	Ipo5	Importin-5	YAACNAVGQMATDFAPGFQK	417	436	0.176	0.256660024
452	P83917	Cbx1	Chromobox protein homolog 1	CPQVVISFYEER	156	167	0.17565	0.44483518
453	O70194	Eif3d	Eukaryotic translation initiation factor 3 subunit D	TQGNVFATDAILATLMSCTR	241	260	0.1754	0.17358942
454	A0A0N4SV00	Cct7	T-complex protein 1 subunit eta	INALTAASEAACLIVSVDETIK	458	479	0.1754	0.170536527
455	P60487	Pdxp	Pyridoxal phosphate phosphatase	DVLGQAQGVLFDCDGVLWNGER	14	35	0.17535	0.197997964
456	P47738	Aldh2	Aldehyde dehydrogenase, mitochondrial	TFPTVNPSTGEVICQVAEGNK	55	75	0.1749	0.292623229
457	Q8VHX6	Flnc	Filamin-C	DGSCGVSYVVQEPGDYEVSIK	2367	2387	0.1747	0.013761666
458	G3UZJ5	Csnk2b	Casein kinase II subunit beta	GNEFFCEVDEDYIQDK	39	54	0.17435	0.19264452
459	Q8VDM4	Psmd2	26S proteasome non-ATPase regulatory subunit 2	SFANTLVDVCAYAGSGNVLK	589	608	0.17425	0.143247457
460	F7DAY5	Rprd1b	Regulation of nuclear pre-mRNA domain-containing protein 1B	TVDEACLLLAEYNGR	77	91	0.174	0.017880861
461	A1BN54	Actn1	Alpha-actinin-1	IDQLECDHQLIQEALIFDNK	685	704	0.1737	0.254170837
462	Q61553	Fscn1	Fascin	ACAETIDPASLWEY	480	493	0.1734	0.186413471
463	P26231	Ctnna1;Ctnna2	Catenin alpha-1;Catenin alpha-2	LESIISGAALMADSSCTR	309	326	0.1728	0.090638028
464	D3Z2Y2	Nit1	Nitrilase homolog 1	LGACLAFLPEAFDFIAR	40	56	0.1726	0.59284698
465	Q9D6S7	Mrrf	Ribosome-recycling factor, mitochondrial	SPQVILVNMASFPECTAAAIK	140	160	0.1726	0.17288474
466	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	LALESICLLLGESTTDWK	3317	3334	0.1722	0.23570226
467	Q9CZW4	Acsl3	Long-chain-fatty-acid--CoA ligase 3	SINSVDGLASVLYPGCDTLDK	70	90	0.17215	0.03244928
468	A2A5N1	Ywhab	14-3-3 protein beta/alpha;14-3-3 protein beta/alpha, N-terminally processed	IEAELQDICNDVLELLDK	88	105	0.1721	0.090635647
469	Q8VDM4	Psmd2	26S proteasome non-ATPase regulatory subunit 2	LALMLNDMELVEDIFTSCK	268	286	0.1719	0.050184425
470	Q9D0L4	Adck1	Uncharacterized aarF domain-containing protein kinase 1	LGAADLYPLFACMLTAR	368	384	0.1716	0.566179905
471	Q8R5L1	C1qbp	Complement component 1 Q subcomponent-binding protein, mitochondrial	TLVLDCHYPEDEIGHEDEAESDIFSIK	178	204	0.17125	0.354688891
472	Q9D104	Srp19	Signal recognition particle 19 kDa protein	AVENPTATEIQDVCSAVGLNAFLEK	40	64	0.1711	0.16778805
473	F6XI62	Rpl7	60S ribosomal protein L7	FGIICMEDLIHEIYTVGK	230	247	0.17105	0.012815148
474	D3Z7S0	Get4	Golgi to ER traffic protein 4 homolog	SEVDMFVAQAVLQFLCLK	136	153	0.1709	0.370228924
475	Q9D2V5	Aar2	Protein AAR2 homolog	WDFTSEPEDCAPVVVELPEGIETA	361	384	0.1708	0.507560254
476	Q9QYB1	Clic4	Chloride intracellular channel protein 4	FLDGDEMTLADCNLLPK	178	194	0.1707	0.217239366
477	Q3U0V1	Khsrp	Far upstream element-binding protein 2	VQQACEMVMDILR	293	305	0.1705	0.091016363
478	A0A1Y7VJ55	Sdha	Succinate dehydrogenase [ubiquinone] flavoprotein subunit, mitochondrial	AAFGLSEAGFNTACLTK	74	90	0.1699	0.151094998
479	Q99LC3	Ndufa10	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial	MSEMCEVLVYDSWEAEDPTK	249	268	0.1699	0.456451309
480	P50396	Gdi1	Rab GDP dissociation inhibitor alpha	SDIYVCMISYAHNVAAQGK	330	348	0.1697	0.048334936
481	O09174	Amacr	Alpha-methylacyl-CoA racemase	VVELAGLAPGPFCGMVLADFGAEVVR	8	33	0.1695	0.226107301
482	P62814	Atp6v1b2	V-type proton ATPase subunit B, brain isoform	GPVVLAEDFLDIMGQPINPQCR	142	163	0.1692	0.308095888
483	Q9ERK4	Cse1l	Exportin-2	LLTECPPMMDTEYTK	849	863	0.1689	0.393534857
484	A2AMM0	Murc	Muscle-related coiled-coil protein	VVIFQEDIPCPASLSVVK	132	149	0.1688	0.042728016
485	G3UY38	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L	LCFSTAQHAS	447	456	0.16875	0.252672823
486	E9PYI8	Usp14	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 14	FPLMLDVYELCTPELQEK	314	331	0.1687	0.140834546
487	Q9CZ13	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial	VYEEDAVPGLTPCR	256	269	0.1684	0.453510506
488	Q00PI9	Hnrnpul2	Heterogeneous nuclear ribonucleoprotein U-like protein 2	LQEALDAEMLEDEAGVGGAGPGGACK	33	58	0.1677	0.371051859
489	P42932	Cct8	T-complex protein 1 subunit theta	IAVYSCPFDGMITETK	239	254	0.16755	0.278960061
490	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	LPVVIGGLLDVDCSEDVIK	816	834	0.1675	0.218154507
491	P07901	Hsp90aa1	Heat shock protein HSP 90-alpha	VFIMDNCEELIPEYLNFIR	369	387	0.1668	0.063644005
492	Q6P5H2	Nes	Nestin	SSETENIESLETVGECLGR	1106	1124	0.1666	0.11315185
493	P14152	Mdh1	Malate dehydrogenase, cytoplasmic	VIVVGNPANTNCLTASK	126	142	0.1665	0.04747701
494	Q8K4Z3	Apoa1bp	NAD(P)H-hydrate epimerase	YQLNLPSYPDTECVYR	265	280	0.1657	0.052915655
495	Q6ZWZ7	Rpl17	60S ribosomal protein L17	INPYMSSPCHIEMILTEK	136	153	0.1654	0.265058165
496	A0A571BEI2	\N	Uncharacterized protein FLJ45252 homolog	LGEAALFSESGVCTEPEER	236	254	0.16535	0.199709021
497	Q9CZR8	Tsfm	Elongation factor Ts, mitochondrial	YGALVICETPEQIANLEEVGR	233	253	0.16535	0.062008154
498	P57759	Erp29	Endoplasmic reticulum resident protein 29	GQGVYLGMPGCLPAYDALAGEFIK	149	172	0.1648	0.426206236
666	Q5SFM8	Rbm27	RNA-binding protein 27	LLEPICDADPSALANYVVALVK	16	37	0.12915	0.058583373
499	P14873	Map1b	Microtubule-associated protein 1B;MAP1B heavy chain;MAP1 light chain LC1	SWDTNLIECNLDQELK	65	80	0.164	0.222695963
500	Q9R0Y5	Ak1	Adenylate kinase isoenzyme 1	VNAEGTVDTVFSEVCTYLDSLK	173	194	0.1633	0.44272218
501	Q91X76	Nt5dc2	Q91X76;A0A2I3BQR1;A0A2I3BRL0;A0A2I3BR81	FSDLYMASLSCLLNYR	335	350	0.1632	0.181764196
502	Q8VHX6	Flnc	Filamin-C	CAPGVVGPVEADIDFDIIK	806	824	0.1632	0.159547885
503	Q8K0D5	Gfm1	Elongation factor G, mitochondrial	QELIECVANSDEQLGELFLEEK	252	273	0.1632	0.186308772
504	Q9WUN2	Tbk1	Serine/threonine-protein kinase TBK1	LQVLLNCITEIYYQFK	552	567	0.16255	0.434573777
505	D3Z3F8	Spg20	Spartin	DSSEEVNLSQIVPCEPSSEEK	396	416	0.1622	0.414728314
506	A0A1W2P7K5	Snrpd3	Small nuclear ribonucleoprotein Sm D3	VLHEAEGHIVTCETNTGEVYR	9	29	0.16205	0.327699594
507	Q9Z2U1	Psma5	Proteasome subunit alpha type-5	GPQLFHMDPSGTFVQCDAR	150	168	0.1616	0.201126152
508	Q99KK7	Dpp3	Dipeptidyl peptidase 3	ALYEGYAAVTDAPPECFLTLR	639	659	0.16155	0.181646125
509	Q62261	Sptbn1	Spectrin beta chain, non-erythrocytic 1	DALLSALSIQNYHLECNETK	949	968	0.1614	0.328083954
510	A0A1L1SRT4	Ubl7	Ubiquitin-like protein 7	LQESVPDPELIDLIYCGR	51	68	0.1614	0.272503357
511	A0A0U1RQ96	Actg2;Acta1;Actc1;Acta2	Actin, gamma-enteric smooth muscle;Actin, alpha skeletal muscle;Actin, alpha cardiac muscle 1;Actin, aortic smooth muscle	LCYVALDFENEMATAASSSSLEK	217	239	0.1613	0.069287496
512	B7FAU9	Flna	Filamin-A	CAPGVVGPTEADIDFDIIR	810	828	0.1609	0.287413198
513	A0A1Y7VN70	Glrx5	Glutaredoxin-related protein 5, mitochondrial	GTPEQPQCGFSNAVVQILR	56	74	0.1604	0.286714895
514	Q62433	Ndrg1	Protein NDRG1	MADCGGLPQISQPAK	286	300	0.1602	0.41897543
515	Q6ZWQ9	Myl12a	Q6ZWQ9	NAFACFDEEAIGTIQEDYLR	105	124	0.1602	0.05384958
516	Q14BI5	Myom2	Q14BI5	TLNLTCTVFGNPDPEVVWFK	1361	1380	0.16	0.247487373
517	Q8BFY9	Tnpo1	Transportin-1	SECLNNIGDSSPLIR	101	115	0.1595	0.070045687
518	Q9D0R2	Tars	Threonine--tRNA ligase, cytoplasmic	DQELYFFHELSPGSCFFLPK	328	347	0.1591	0.444132372
519	Q02053	Uba1	Ubiquitin-like modifier-activating enzyme 1	IIPAIATTTAAVVGLVCLELYK	890	911	0.1587	0.173769152
520	E9Q390	Myof	Myoferlin	AASPSEMTCPPGWEWEDDAWIYDINR	948	973	0.15855	0.127997254
521	P99028	Uqcrh	Cytochrome b-c1 complex subunit 6, mitochondrial	SQTEEDCTEELFDFLHAR	59	76	0.1579	0.171062105
522	P68254	Ywhaq	14-3-3 protein theta	DNLTLWTSDSAGEECDAAEGAEN	223	245	0.1578	0.089154581
523	D3YTP0	Steap3	Metalloreductase STEAP3	QSNAEYLASLFPACTVVK	127	144	0.1577	0.106716179
524	Q91YS7	Map2k2;Map2k1	Dual specificity mitogen-activated protein kinase kinase 2;Dual specificity mitogen-activated protein kinase kinase 1	LCDFGVSGQLIDSMANSFVGTR	210	231	0.1576	0.225621179
525	Q9QZE5	Copg1	Coatomer subunit gamma-1	ALCQITDSTMLQAVER	127	142	0.1576	0.095118425
526	A0A0B4J1E7	Kpna4	Importin subunit alpha-3	MAEDQAETIANLIEECGGLEK	543	563	0.1575	0.184970155
527	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	WMEACLGEDLPPTTELEEGLR	53	73	0.15705	0.339033051
528	Q9QYB1	Clic4	Chloride intracellular channel protein 4	AGSDGESIGNCPFSQR	25	40	0.1569	0.100322353
529	Q76MZ3	Ppp2r1a	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform	ENVIMTQILPCIK	319	331	0.1569	0.315531701
530	Q99JY9	Actr3	Actin-related protein 3	LGYAGNTEPQFIIPSCIAIK	19	38	0.1566	0.214653777
531	P38647	Hspa9	Stress-70 protein, mitochondrial	GAVVGIDLGTTNSCVAVMEGK	53	73	0.1561	0.214159689
532	Q3TBW2	Mrpl10	39S ribosomal protein L10, mitochondrial	SVPFLPLLGGCVDDTILSR	170	188	0.1561	0.322070027
533	A0A1B0GSR9	Ldha	L-lactate dehydrogenase A chain;L-lactate dehydrogenase	ITVVGVGAVGMACAISILMK	23	42	0.1559	0.090769186
534	A0A171KXD3	Prmt1	Protein arginine N-methyltransferase 1	VIGIECSSISDYAVK	61	75	0.1559	0.115191262
535	A0A571BEI3	Gnas	Guanine nucleotide-binding protein G(s) subunit alpha isoforms short;Guanine nucleotide-binding protein G(s) subunit alpha isoforms XLas	SNEYQLIDCAQYFLDK	107	122	0.1559	0.269417208
536	Q9EP89	Lactb	Serine beta-lactamase-like protein LACTB, mitochondrial	GIIVSIICNMQSVGLNSTALK	520	540	0.15585	0.495904852
537	P63085	Mapk1	Mitogen-activated protein kinase 1	YTNLSYIGEGAYGMVCSAYDNLNK	23	46	0.1558	0.152689312
538	A0A3B2WDA2	Wash1	WAS protein family homolog 1	TQCSLAGQLYAVPLIQPDLR	6	25	0.1557	0.119894791
539	K3W4M2	Ryr1	Ryanodine receptor 1	VESLAAFAECYVDK	1956	1969	0.1555	1.205946742
540	E9Q3W4	Plec	Plectin	LLEAQACTGGIIDPSTGER	4150	4168	0.1553	0.614677498
541	P70671	Irf3	Interferon regulatory factor 3	GLGNGLALWQAGQCLWAQR	260	278	0.15525	0.319279777
542	A2CEK3	Pgm2;Pgm1	Phosphoglucomutase-1	LVIGQNGILSTPAVSCIIR	104	122	0.1551	0.183993093
543	Q6PHN9	Rab35	Ras-related protein Rab-35	ENVNVEEMFNCITELVLR	153	170	0.1551	0.311762731
544	A0A0J9YUE9	Dnm1	Dynamin-1	ENCLILAVSPANSDLANSDALK	167	188	0.1548	0.166270587
545	P70402	Mybph	Myosin-binding protein H	VFSENLCGLSDLATTTK	346	362	0.15475	0.222527304
546	P97807	Fh;Fh1	Fumarate hydratase, mitochondrial	LLGDASVSFTDNCVVGIQANTER	419	441	0.1544	0.058484832
547	P42932	Cct8	T-complex protein 1 subunit theta	QITSYGETCPGLEQYAIK	422	439	0.15405	0.250161114
548	P07901	Hsp90aa1	Heat shock protein HSP 90-alpha	HGLEVIYMIEPIDEYCVQQLK	515	535	0.1535	0.226676124
549	P58252	Eef2	Elongation factor 2	IWCFGPDGTGPNILTDITK	649	667	0.15335	0.004149958
550	E9Q912	Rap1gds1	E9Q912;A0A0G2JGC8	IPCVDAGLISPLVQLLNSK	83	101	0.1533	0.144834657
551	P70697	Urod	Uroporphyrinogen decarboxylase	AVTLQGNLDPCALYASEEEIGR	298	319	0.15275	0.363390392
552	P17879	Hspa1b;Hspa1a	Heat shock 70 kDa protein 1B;Heat shock 70 kDa protein 1A	CQEVISWLDSNTLADK	574	589	0.15255	0.07555451
553	O35969	Gamt	Guanidinoacetate N-methyltransferase	TGGVLTYCNLTSWGELMK	162	179	0.1524	0.191653441
554	Q9CPU0	Glo1	Lactoylglutathione lyase	GFGHIGIAVPDVYSACK	124	140	0.15235	0.362487953
555	Q8BGQ7	Aars	Alanine--tRNA ligase, cytoplasmic	NVGCLQEALQLATSFAQLR	944	962	0.15225	0.057125868
556	Q8K2Q7	Brox	BRO1 domain-containing protein BROX	LLELFTDLSCNPETMK	43	58	0.1521	0.088618591
557	P32921	Wars	Tryptophan--tRNA ligase, cytoplasmic;T1-TrpRS;T2-TrpRS	DIIACGFDINK	225	235	0.1518	0.087573172
558	A0A494B8X4	Sdhaf2	Succinate dehydrogenase assembly factor 2, mitochondrial	GMLENCILLSLFAK	76	89	0.1511	0.429356046
559	Q8VCI5	Pex19	Peroxisomal biogenesis factor 19	VGSDASSQQEFTSCLK	115	130	0.151	0.080599618
560	P97315	Csrp1	Cysteine and glycine-rich protein 1	TVYFAEEVQCEGNSFHK	16	32	0.151	0.3587045
561	F8WIA3	Gm20604;Gm28051;AK010878	Uncharacterized protein C14orf142 homolog	MELSGEYVGCDGEPQR	1	16	0.15075	0.619627236
562	Q9WUA2	Farsb	Phenylalanine--tRNA ligase beta subunit	LDMAAAGFTEALTFALCSQEDIADK	402	426	0.15075	0.086775957
563	A0A0B4J1E7	Kpna4	Importin subunit alpha-3	DQVAYLIQQNVIPPFCNLLTVK	504	525	0.1507	0.00496618
564	Q8BH48	Ubap1	Ubiquitin-associated protein 1	ADFNPADFECEEDPFDNLELK	152	172	0.1506	0.217862469
565	Q9D385	Arl2bp	ADP-ribosylation factor-like protein 2-binding protein	GLDLSSGLVVTSLCK	136	150	0.1505	0.135199812
566	Q8BMF4	Dlat	Dihydrolipoyllysine-residue acetyltransferase component of pyruvate dehydrogenase complex, mitochondrial	DVPVGSIICITVEKPQDIEAFK	155	176	0.15035	0.39929076
567	Q3ULQ2	Pin1rt1;Pin1	Peptidyl-prolyl cis-trans isomerase NIMA-interacting 1	SGEEDFESLASQFSDCSSAK	94	113	0.1502	0.393259477
568	Q60932	Vdac1	Voltage-dependent anion-selective channel protein 1	EHINLGCDVDFDIAGPSIR	134	152	0.1502	0.442319209
569	P47857	Pfkm	ATP-dependent 6-phosphofructokinase, muscle type	CNENYTTDFIFNLYSEEGK	631	649	0.1502	0.152899157
570	Q8VCI5	Pex19	Peroxisomal biogenesis factor 19	ICEQFEAETPTDSEATQR	228	245	0.1499	0.207974038
571	Q62419	Sh3gl1	Endophilin-A2	QNFIDPLQNLCDK	137	149	0.1489	0.336220014
572	Q9JLI0	Akr1c12;Akr1c13	Aldo-keto reductase family 1 member C13	EWVDQNSPVLLNDPVLCDVAK	226	246	0.1487	0.527196869
573	B7FAU9	Flna	Filamin-A	DGSCGVAYVVQEPGDYEVSVK	2282	2302	0.1473	0.022509051
574	Q9CWJ9	Atic	Bifunctional purine biosynthesis protein PURH;Phosphoribosylaminoimidazolecarboxamide formyltransferase;IMP cyclohydrolase	VTVVCEPEDYAGVAAEMHGSDSK	142	164	0.1468	0.033717626
575	A0A0J9YTY0	Sept11;Sept8	Septin-11;Septin-8	QYPWGVVQVENENHCDFVK	255	273	0.1467	0.556374997
576	P46978	Stt3a	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit STT3A	EGSPVLLNCLMYK	629	641	0.14665	0.404543191
577	Q3TLZ6	Gatb	Glutamyl-tRNA(Gln) amidotransferase subunit B, mitochondrial	VTNWVLNTFLCYLK	422	435	0.1461	0.617062491
578	E0CZ90	Psme2	Proteasome activator complex subunit 2	CILVITWIQHLIPK	110	123	0.1461	0.092925737
579	J3QP71	Bsg	Basigin	SGEYSCIFLPEPVGR	65	79	0.14605	0.108934629
580	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	LCPGGQLPFLLYGTEVHTDTNK	58	79	0.146	0.162731424
581	Q9DB27	Mcts1;Mcts2	Malignant T-cell-amplified sequence 1;Malignant T-cell-amplified sequence 2	FVLSGANIMCPGLTSPGAK	104	122	0.1459	0.141317317
582	Q9D6Z1	Nop56	Nucleolar protein 56	IDCFSEVPTSVFGEK	382	396	0.1458	0.225738805
583	P07742	Rrm1	Ribonucleoside-diphosphate reductase large subunit	QIFETIYYGALEASCELAK	530	548	0.1458	0.05930597
584	P54728	Rad23b	UV excision repair protein RAD23 homolog B	ALGFPEGLVIQAYFACEK	382	399	0.1457	0.196034991
585	Q9DAR7	Dcps	m7GpppX diphosphatase	AHLLAQVIENLECDPK	294	309	0.14565	0.48499806
586	P68181	Prkacb;Prkaca	cAMP-dependent protein kinase catalytic subunit beta;cAMP-dependent protein kinase catalytic subunit alpha	TWTLCGTPEYLAPEIILSK	196	214	0.1455	0.037839235
587	H7BX14	Tsen34	tRNA-splicing endonuclease subunit Sen34	TLLLCSPQPDGK	289	300	0.14525	0.118297382
588	A0A0J9YUS5	Eif4g1	Eukaryotic translation initiation factor 4 gamma 1	ALMTTVCYSAIIFETPLR	1184	1201	0.1452	0.48991007
589	Q8VHX6	Flnc	Filamin-C	VPQTFTVDCSQAGR	1462	1475	0.1448	0.053112451
590	O35901	Lsm2	U6 snRNA-associated Sm-like protein LSm2	NDLSICGTLHSVDQYLNIK	57	75	0.14455	0.093432996
591	A2A7P9	Ccdc23	Coiled-coil domain-containing protein 23	VMTELEQQQFDEFCK	81	95	0.1445	0.074809225
592	Q9Z0J0	Npc2	Epididymal secretory protein E1	NNLFCWEIPVQITS	136	149	0.144	0.204117613
593	Q9WTP7	Ak3	GTP:AMP phosphotransferase AK3, mitochondrial	TLTQCSWLLDGFPR	81	94	0.1437	0.113499175
594	O35593	Psmd14	26S proteasome non-ATPase regulatory subunit 14	SWMEGLTLQDYSEHCK	224	239	0.14345	0.308080682
595	P60229	Eif3e	Eukaryotic translation initiation factor 3 subunit E	FQYECGNYSGAAEYLYFFR	137	155	0.14295	0.269586006
596	Q8BH57	Wdr48	WD repeat-containing protein 48	IELLCQDQVLDPNMDLR	638	654	0.1429	0.752615002
597	A6ZI44	Aldoa;Aldoart2	Fructose-bisphosphate aldolase;Fructose-bisphosphate aldolase A	VNPCIGGVILFHETLYQK	124	141	0.1428	0.06844534
598	P60710	Actb	Actin, cytoplasmic 1;Actin, cytoplasmic 1, N-terminally processed	MDDDIAALVVDNGSGMCK	1	18	0.1427	0.26087707
599	E9Q133	Cct3	T-complex protein 1 subunit gamma	HTQESCETWGVNGETGTLVDMK	432	453	0.1419	0.103649197
600	Q3THE2	Myl12b	Myosin regulatory light chain 12B	NAFACFDEEATGTIQEDYLR	105	124	0.1415	0.033689071
601	Q8VDM4	Psmd2	26S proteasome non-ATPase regulatory subunit 2	CFAADIISVLAMTMSGER	120	137	0.1412	0.152238287
602	D5MCW4	Cuta	Protein CutA	LAACVNLIPQITSIYEWK	68	85	0.141	0.035432005
603	P62874	Gnb1;Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1;Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2	VSCLGVTDDGMAVATGSWDSFLK	357	379	0.141	0.056825642
604	Q61029	Tmpo	Lamina-associated polypeptide 2, isoforms beta/delta/epsilon/gamma	EMFPYEASTPTGISASCR	346	363	0.1409	0.189615583
605	A0A0R4J091	Pole3	DNA polymerase epsilon subunit 3	AASVFVLYATSCANNFAMK	40	58	0.1404	0.470409962
606	Q8R3H7	Hs2st1	Heparan sulfate 2-O-sulfotransferase 1	TASTSFTNIAYDLCAK	84	99	0.1404	0.090075936
607	Q91YR9	Ptgr1	Prostaglandin reductase 1	TGPCPQGPAPEVVIYQQLR	248	266	0.1404	0.353762892
608	Q8VHL1	Setd7	Histone-lysine N-methyltransferase SETD7	STSSCISSDALLPDPYESER	196	215	0.14035	0.070030526
609	Q8VEK3	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U	GNFTLPEVAECFDEITYVELQK	614	635	0.1402	0.330759951
610	Q8BMS1	Hadha	Trifunctional enzyme subunit alpha, mitochondrial;Long-chain enoyl-CoA hydratase;Long chain 3-hydroxyacyl-CoA dehydrogenase	YESAYGTQFTPCQLLLDHANNSSK	736	759	0.1402	0.387345227
611	Q99LD8	Ddah2	N(G),N(G)-dimethylarginine dimethylaminohydrolase 2	LSDVTLVPVSCSELEK	252	267	0.1401	0.032301809
612	A2AQA9	Neb	A2AQA9;E9Q1W3;A0A571BF46;A0A571BF58;A2AQB2	NFSLLQYQCDLK	6351	6362	0.14005	0.017671358
613	P10605	Ctsb	Cathepsin B;Cathepsin B light chain;Cathepsin B heavy chain	EQWSNCPTIGQIR	88	100	0.14	0.527431742
614	P38647	Hspa9	Stress-70 protein, mitochondrial	CELSSSVQTDINLPYLTMDASGPK	317	340	0.1398	0.036095248
615	Q60823	Akt2;Akt3;Akt1	RAC-beta serine/threonine-protein kinase;RAC-gamma serine/threonine-protein kinase;RAC-alpha serine/threonine-protein kinase	TFCGTPEYLAPEVLEDNDYGR	309	329	0.1396	0.164113608
616	H3BJP2	Esd	S-formylglutathione hydrolase	DDEFLSNGQLLPDNFIAACTEK	225	246	0.13935	0.069518212
617	F6XC54	Diap1;Diaph1	Protein diaphanous homolog 1	VGCLQLINALITPAEELDFR	268	287	0.1391	0.188087354
618	Q8VHX6	Flnc	Filamin-C	VHTPSGAVEECYVSELDSDK	2445	2464	0.139	0.08911484
619	P62830	Rpl23	60S ribosomal protein L23	ISLGLPVGAVINCADNTGAK	16	35	0.1384	0.09586677
620	P63242	Eif5a	Eukaryotic translation initiation factor 5A-1	YDCGEEILITVLSAMTEEAAVAIK	127	150	0.1381	0.242328325
621	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	IEEFLEAMLCPPR	80	92	0.138	0.219828252
622	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	SPDVGLYGVIPECGETYQSDLAEAK	648	672	0.138	0.483624134
623	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	LLFCTGK	897	903	0.1378	1.039621436
624	P62874	Gnb1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1	ACADATLSQITNNIDPVGR	24	42	0.13755	0.137257369
625	Q80X90	Flnb	Filamin-B	AQITNPSGASTECFVK	1268	1283	0.13715	0.001546716
626	E9Q912	Rap1gds1	E9Q912;A0A0G2JGC8	LQLVEAGLVECLLEIVQQK	259	277	0.137	0.353037254
627	A0A494BBM6	Scyl1	N-terminal kinase-like protein	LGCLIWEVFNGSLPR	170	184	0.13695	0.6355958
628	C0H5X4	Hras;Kras	GTPase HRas;GTPase HRas, N-terminally processed;GTPase KRas;GTPase KRas, N-terminally processed	TGEGFLCVFAINNTK	74	88	0.1368	0.644966904
629	E9Q0U7	Hsph1	Heat shock protein 105 kDa	SQFEELCAELLQK	263	275	0.1367	0.342369491
630	P10107	Anxa1	Annexin A1	CQDLSVNQDLADTDAR	189	204	0.1363	0.299812766
631	E9QA74	Myo18a	Unconventional myosin-XVIIIa	AAYLLGCSLEELSSAIFK	305	322	0.1361	0.070145106
632	A1BN54	Actn1	Alpha-actinin-1	MVSDINNAWGCLEQAEK	360	376	0.1359	0.094568721
633	P26231	Ctnna1	Catenin alpha-1	SAAGEFADDPCSSVK	106	120	0.1358	0.004165578
634	Q8CAP3	Rad23a	UV excision repair protein RAD23 homolog A	ALGFPESLVIQAYFACEK	328	345	0.1357	0.256894146
635	O88844	Idh1	Isocitrate dehydrogenase [NADP] cytoplasmic	ALEDVCIETIEAGFMTK	358	374	0.13555	0.290563244
636	A0A494BA97	Ostf1	Osteoclast-stimulating factor 1	LALDMATNAACASLLK	175	190	0.1353	0.720438248
637	Q9CPS7	Pno1	RNA-binding protein PNO1	TAICNLILGNPPSK	219	232	0.1352	0.865055189
638	Q6ZQ73	Cand2	Cullin-associated NEDD8-dissociated protein 2	EYQVENIVDTLCANMR	81	96	0.1352	0.218152372
639	D3YYV8	Rpl5	60S ribosomal protein L5	IEGDMIVCAAYAHELPK	19	35	0.13475	0.564111161
640	Q7TQ48	Srl	Sarcalumenin	GYPFNDVCQWFIDR	203	216	0.1346	0.132700193
641	A0A1L1STC8	Twf2	Twinfilin-2	AVLPLLDAQEPCYLLFR	22	38	0.1346	0.275277826
642	Q3TDN2	Faf2	FAS-associated factor 2	LLQFQDLTGIESMEQCR	17	33	0.1338	0.239930104
643	Q61768	Kif5b	Kinesin-1 heavy chain;Kinesin-like protein	VFQSSTSQEQVYNDCAK	51	67	0.13335	0.827741796
644	Q8VDD5	Myh9	Myosin-9	LQLQEQLQAETELCAEAEELR	883	903	0.1332	0.389500841
645	Q9CRB6	Tppp3	Tubulin polymerization-promoting protein family member 3	EEAFDAICQLIAGK	93	106	0.133	0.146737949
646	Q99N15	Hsd17b10	3-hydroxyacyl-CoA dehydrogenase type-2	LGESCIFAPANVTSEK	54	69	0.13275	0.071909164
647	B0QZL1	Eno1	Enolase	YVNEFLAPALCTQK	68	81	0.1326	0.125867369
648	Q8R3U1	Pla2g16	HRAS-like suppressor 3	LTSENCEHFVNELR	108	121	0.1326	0.081144849
649	Q8K0Z7	Taco1	Translational activator of cytochrome c oxidase 1	EGGPNPENNSSLANILELCR	91	110	0.1319	0.344683371
650	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	SACDTVDTWLDDTAK	4212	4226	0.1318	0.153294992
651	D3Z4J1	Dazap1	DAZ-associated protein 1	SYFSQYGEVVDCVIMK	20	35	0.13165	0.126221112
652	O89051	Itm2b	Integral membrane protein 2B;BRI2, membrane form;BRI2 intracellular domain;BRI2C, soluble form;Bri23 peptide	YFALQPDDVYYCGLK	78	92	0.13105	0.195863992
653	Q9JIB6	Naip6	Baculoviral IAP repeat-containing protein 1f	ELPMVSAYCNDSVFTNEELR	262	281	0.13105	0.049100891
654	P10605	Ctsb	Cathepsin B;Cathepsin B light chain;Cathepsin B heavy chain	GENHCGIESEIVAGIPR	315	331	0.131	0.466610452
655	Q9D0E1	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M	MEEESGAPCVPSGNGAPGPK	18	37	0.131	0.371366004
656	Q99KC8	Vwa5a	von Willebrand factor A domain-containing protein 5A	ANLGGTEILTPLCNIYK	362	378	0.1308	0.350121519
657	P47857	Pfkm	ATP-dependent 6-phosphofructokinase, muscle type	GITNLCVIGGDGSLTGADTFR	109	129	0.13055	0.091536611
658	P63330	Ppp2ca	Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform	ELDQWIEQLNECK	9	21	0.1303	0.211201346
659	P26039	Tln1	Talin-1	TMQFEPSTMVYDACR	16	30	0.1303	0.177329062
660	A0A0R4J083	Acadl	Long-chain specific acyl-CoA dehydrogenase, mitochondrial	CIGAIAMTEPGAGSDLQGVR	166	185	0.1302	0.061912575
661	Q6P8J7	Ckmt2;Ckmt1	Creatine kinase S-type, mitochondrial;Creatine kinase U-type, mitochondrial	LGYILTCPSNLGTGLR	311	326	0.13015	0.742693023
662	Q9CPT3	Nanp	N-acylneuraminate-9-phosphatase	LAEECYFLWK	92	101	0.1301	0.072386458
663	O88851	Rbbp9	Putative hydrolase RBBP9	ESIWLPFMETELHCDEK	52	68	0.12985	0.132327261
664	P32020	Scp2	Non-specific lipid-transfer protein	ADCTITMADSDLLALMTGK	493	511	0.1298	0.078671076
665	A0A171KXD3	Prmt1	Protein arginine N-methyltransferase 1	IHWWENVYGFDMSCIK	160	175	0.12945	0.185175125
667	P12970	Rpl7a	60S ribosomal protein L7a	TCTTVAFTQVNSEDK	198	212	0.1291	0.318214245
668	P60710	Actb;Actg1	Actin, cytoplasmic 1;Actin, cytoplasmic 1, N-terminally processed;Actin, cytoplasmic 2;Actin, cytoplasmic 2, N-terminally processed	LCYVALDFEQEMATAASSSSLEK	216	238	0.1291	0.06607054
669	A0A338P7G3	Atp5o	ATP synthase subunit O, mitochondrial	GEVPCTVTTASPLDDAVLSELK	29	50	0.1289	0.088291829
670	D3YX76	Gstm2	Glutathione S-transferase Mu 2	IQLAMVCYSPDFEK	75	88	0.1289	0.141560449
671	Q8BGT5	Gpt2	Alanine aminotransferase 2	LLEETGICVVPGSGFGQR	469	486	0.1289	0.223941821
672	Q9WUK2	Eif4h	Eukaryotic translation initiation factor 4H	GFCYVEFDEVDSLK	83	96	0.12875	0.321287353
673	A0A1W2P7I5	Sgta	Small glutamine-rich tetratricopeptide repeat-containing protein alpha	AIELNPANAVYFCNR	118	132	0.128	0.116495591
674	Q6PB66	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial	LIAAYCNVGDIEGASK	202	217	0.12795	0.778674056
675	A0A0N4SV57	Anxa4	Annexin A4;Annexin	SLEEDICSDTSFMFQR	135	150	0.12795	0.091186103
676	E9Q912	Rap1gds1	E9Q912	YNSMVLICALMGSESLYK	553	570	0.12795	0.043658801
677	H3BLB1	Phospho1	Phosphoethanolamine/phosphocholine phosphatase	LFYVGDGANDFCPMGLLAGGDVAFPR	113	138	0.1279	0.367098438
678	A0A1L1ST22	Clasp1;Clasp2	CLIP-associating protein 2;CLIP-associating protein 1	VLCPIIQTADYPINLAAIK	488	506	0.12785	0.299213742
679	A2AL12	Hnrnpa3	Heterogeneous nuclear ribonucleoprotein A3	WGTLTDCVVMR	58	68	0.12785	0.60229901
680	O09131	Gsto1	Glutathione S-transferase omega-1	EYLNLYLQDSPEACDYGL	223	240	0.1278	0.051530903
681	Q8VHX6	Flnc	Filamin-C	EAGDGVFECEYYPVVPGK	528	545	0.1277	0.151720641
682	Q91VR8	Brk1	Protein BRICK1	ISDFLNSFDMSCR	32	44	0.1276	0.333162669
683	Q91XD6	Vps36	Vacuolar protein-sorting-associated protein 36	GGIMSLTEVYCLVNR	261	275	0.1276	0.091366771
684	E9Q616	Ahnak	E9Q616	GPSVDVEVPDVDLECPDAK	1998	2016	0.1275	0.138878559
685	B9EJ54	Nup205	B9EJ54;A0A0J9YUD5	CQDVSTGSLQELALLTGIISK	1662	1682	0.12745	0.306810553
686	A0A2R8VHP9	Pcbp2	Poly(rC)-binding protein 2	AITIAGIPQSIIECVK	145	160	0.1271	0.356868877
687	A0A2R8VKS6	Vps28	Vacuolar protein sorting-associated protein 28 homolog	CIADVVSLFITVMDK	90	104	0.12695	0.059598602
688	Q9D7S9	Chmp5	Charged multivesicular body protein 5	APPPSLTDCIGTVDSR	12	27	0.1269	0.279041652
689	Q6PHC1	Eno1;Eno3;Eno2	Alpha-enolase;Beta-enolase;Gamma-enolase;Enolase	SGETEDTFIADLVVGLCTGQIK	305	326	0.1269	0.120067994
690	Q9Z0Y1	Dctn3	Dynactin subunit 3	QFVQWDELLCQLEAAK	164	179	0.1268	0.004461242
691	Q76MZ3	Ppp2r1a	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform	NLCSDDTPMVR	172	182	0.1267	0.402584771
692	S4R1M2	Safb	Scaffold attachment factor B1	AIEDEGGNPDEIEVTSECNK	64	83	0.1264	0.432566693
693	A0A1D5RMM8	Pxn	Paxillin	NSSASNTQDGVGSLCSR	94	110	0.1262	0.005603065
694	A0A0J9YVC7	Mpv17	Protein Mpv17	TLTMVSLGCGFVGPVVGGWYK	12	32	0.1261	0.354394517
695	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	WNSPAEEGLSDCEVFPK	406	422	0.126	0.266373122
696	E0CXD9	Surf4	Surfeit locus protein 4	LCLISTFLEDGIR	31	43	0.12595	0.520435082
697	A0A1B0GS70	Psma1	Proteasome subunit alpha type-1	HMSEFMECNLDELVK	150	164	0.1259	0.339500956
698	P12382	Pfkl	ATP-dependent 6-phosphofructokinase, liver type	VFANAPDSACVIGLR	699	713	0.1259	0.069775445
699	Q3V2Y9	Dusp3	Dual specificity protein phosphatase 3	EIGPNDGFLAQLCQLNDR	91	108	0.1258	0.125936075
700	P08030	Aprt	Adenine phosphoribosyltransferase	GFLFGPSLAQELGVGCVLIR	68	87	0.1255	0.067611804
701	P48024	Eif1	Eukaryotic translation initiation factor 1	NICQFLIEIGLAK	92	104	0.1254	0.002255524
702	Q3U4F0	Sfxn3;Sfxn1	Sideroflexin-3;Sideroflexin-1	FVPFAAVAAANCINIPLMR	178	196	0.1253	0.190750196
703	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	QLSSSVTGLTNIEEENCQR	478	496	0.1252	0.222958118
704	Q61024	Asns	Asparagine synthetase [glutamine-hydrolyzing]	IGCLLSGGLDSSLVAASLLK	253	272	0.12495	0.345772103
705	Q9CY73	Mrpl44	39S ribosomal protein L44, mitochondrial	QSGSTTALPLYFVGLYCDR	260	278	0.1247	0.529621278
706	A0A0A6YVY7	Usp4	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 4	LLNWYGCVEGQQPIVR	104	119	0.1247	0.133822935
707	Q76MZ3	Ppp2r1a;Ppp2r1b	Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A alpha isoform;Serine/threonine-protein phosphatase 2A 65 kDa regulatory subunit A beta isoform	LNIISNLDCVNEVIGIR	382	398	0.1245	0.059939341
708	Q9DB77	Uqcrc2	Cytochrome b-c1 complex subunit 2, mitochondrial	NALANPLYCPDYR	184	196	0.1237	0.108229374
709	A0A0N4SVT3	Gng12	Guanine nucleotide-binding protein G(I)/G(S)/G(O) subunit gamma-12	ASADLMSYCEEHAR	35	48	0.1236	0.161577197
710	Q91WM3	Rrp9	U3 small nucleolar RNA-interacting protein 2	QLDPLCDIPLVGFINSLK	411	428	0.1236	0.022883715
711	E9Q5H2	Anp32e	Acidic leucine-rich nuclear phosphoprotein 32 family member E	SLDLFNCEITNLEDYR	69	84	0.1235	0.013741346
712	Q99JX4	Eif3m	Eukaryotic translation initiation factor 3 subunit M	VAASCGAIQYIPTELDQVR	130	148	0.1234	0.26150046
713	D3Z1U9	Ndufv1	NADH dehydrogenase [ubiquinone] flavoprotein 1, mitochondrial	NACGSDYDFDVFVVR	106	120	0.1231	0.145328302
714	B9EIZ7	Coro6	Coronin;Coronin-6	ITALENMLCELVDGTD	417	432	0.12295	0.22142018
715	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	HLYTLDGGDIINALCFSPNR	226	245	0.12295	0.200715955
716	P59999	Arpc4	Actin-related protein 2/3 complex subunit 4	ATLQAALCLENFSSQVVER	14	32	0.12285	0.427660023
717	D3YTL1	Dnal1	Dynein light chain 1, axonemal	LAELPCLEDLVFVGNPLEEK	15	34	0.12275	0.143437547
718	Q01853	Vcp	Transitional endoplasmic reticulum ATPase	QAAPCVLFFDELDSIAK	568	584	0.1227	0.080403554
719	Q3UEB3	Puf60	Poly(U)-binding-splicing factor PUF60	ALAIMCR	129	135	0.12265	0.582865842
720	P80314	Cct2	T-complex protein 1 subunit beta	TVYGGGCSEMLMAHAVTQLANR	406	427	0.1225	0.172014548
777	Q99KP6	Prpf19	Pre-mRNA-processing factor 19	IWSVPNTSCVQVVR	290	303	0.11355	0.421586342
721	B1AZ85	Sh3kbp1	SH3 domain-containing kinase-binding protein 1	CQVAFSYLPQNDDELELK	44	61	0.1224	0.19605535
722	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	CVLNWFGDWSTEALYQVGK	3087	3105	0.1223	0.090195141
723	Q8R3V2	Aimp2	Aminoacyl tRNA synthase complex-interacting multifunctional protein 2	FSVQTMCPIEGEGNIAR	159	175	0.1222	0.119201307
724	A0A1D5RMC1	Dync1li2	Cytoplasmic dynein 1 light intermediate chain 2	EFQDYIEPEEGCQGSPQR	108	125	0.12215	0.251814531
725	A0A171KXD3	Prmt1	Protein arginine N-methyltransferase 1	VEDLTFTSPFCLQVK	209	223	0.122	0.273569181
726	O08553	Dpysl2	Dihydropyrimidinase-related protein 2	THNSALEYNIFEGMECR	424	440	0.122	0.041730892
727	Q07417	Acads	Short-chain specific acyl-CoA dehydrogenase, mitochondrial	IGCFALSEPGNGSDAGAASTTAR	149	171	0.12195	0.296294846
728	P61982	Ywhag	14-3-3 protein gamma;14-3-3 protein gamma, N-terminally processed	ELEAVCQDVLSLLDNYLIK	92	110	0.1219	0.058460651
729	Q9D8S9	Bola1	BolA-like protein 1	ENPQLDISPPCLGGSK	116	131	0.1217	0.156784219
730	A0A338P702	Ube2l3	Ubiquitin-conjugating enzyme E2 L3	GQVCLPVISAENWKPATK	83	100	0.1215	0.152365874
731	Q9QXK3	Copg2	Coatomer subunit gamma-2	AIVDCIISIVEENPESK	416	432	0.1215	0.315020821
732	F6TW20	Eif4g2	Eukaryotic translation initiation factor 4 gamma 2	YSSLYAQLCLR	128	138	0.1214	0.281910776
733	E9Q6I5	Cope	Coatomer subunit epsilon	NAFYIGSYQQCINEAQR	24	40	0.12125	0.040239479
734	P62814	Atp6v1b2;Atp6v1b1	V-type proton ATPase subunit B, brain isoform	LALTTAEFLAYQCEK	277	291	0.121	0.271068315
735	Q8CBC4	Cnst	Consortin	ELCLPLQDAFEALPR	444	458	0.1209	0.56615332
736	P54823	Ddx6	Probable ATP-dependent RNA helicase DDX6	LQINQSIIFCNSSQR	332	346	0.12065	0.042783916
737	Q9ERK4	Cse1l	Exportin-2	NLFEDQNTLTSICEK	332	346	0.1204	0.250188944
738	Q8BH48	Ubap1	Ubiquitin-associated protein 1	VGLPIGFSLPDCLQVVR	34	50	0.11995	0.006484514
739	F6S5I0	Mprip	Myosin phosphatase Rho-interacting protein	ASAVGSSDSGDPGCLEAEPGELER	369	392	0.1199	0.383335619
740	B7FAU9	Flna	Filamin-A	CSGPGLSPGMVR	1453	1464	0.1188	0.225026205
741	Q64514	Tpp2	Tripeptidyl-peptidase 2	YEDLAPCITLK	781	791	0.11875	0.098250626
742	Q3TXS7	Psmd1	26S proteasome non-ATPase regulatory subunit 1	MEEADALIESLCR	560	572	0.11835	0.380588948
743	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	HQLEIFDALGSQACSNK	4994	5010	0.1183	0.168557999
744	Q64514	Tpp2	Tripeptidyl-peptidase 2	NCIQLMK	1230	1236	0.11815	0.149022081
745	E9QKR0	Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2	ACGDSTLTQITAGLDPVGR	66	84	0.1181	0.17962069
746	Q9Z2U1	Psma5	Proteasome subunit alpha type-5	IVEIDAHIGCAMSGLIADAK	67	86	0.1178	0.637287904
747	P70677	Casp3	Caspase-3;Caspase-3 subunit p17;Caspase-3 subunit p12	DGSWFIQSLCSMLK	211	224	0.1173	0.11721517
748	O88967	Yme1l1	ATP-dependent zinc metalloprotease YME1L1	ANAPCVIFIDELDSVGGK	371	388	0.117	0.169889222
749	Q9D8E6	Rpl4	60S ribosomal protein L4	YAICSALAASALPALVMSK	122	140	0.1167	0.035149221
750	Q7M739	Tpr	Nucleoprotein TPR	FLAEQQSEIDCLK	28	40	0.1167	0.584105345
751	Q99N94	Mrpl9	39S ribosomal protein L9, mitochondrial	WGEYWCDVTVNGLDTVR	213	229	0.1165	0.597247273
752	P11688	Itga5	Integrin alpha-5;Integrin alpha-5 heavy chain;Integrin alpha-5 light chain	EYQPFSLQCEAVYEALK	953	969	0.1164	0.195608577
753	Q9WVJ2	Psmd13	26S proteasome non-ATPase regulatory subunit 13	CAWGQQPDLAANEAQLLR	253	270	0.1163	0.313466123
754	O88952	Lin7c	Protein lin-7 homolog C	VLQSEFCNAVR	41	51	0.116	0.513097988
755	Q8VHM5	Hnrnpr;Syncrip	Heterogeneous nuclear ribonucleoprotein Q	GFCFLEYEDHK	290	300	0.116	0.359567636
756	Q6PHC1	Eno1;Eno3;Eno2	Alpha-enolase;Beta-enolase;Gamma-enolase;Enolase	FGANAILGVSLAVCK	38	52	0.1159	0.052702239
757	O88342	Wdr1	WD repeat-containing protein 1	MTVNESEQLVSCSMDDTVR	371	389	0.1158	0.455336993
758	A0A087WQS2	Bzw1	Basic leucine zipper and W2 domain-containing protein 1	IQEYCYDNIHFMK	377	389	0.11555	0.559933107
759	P17751	Tpi1	Triosephosphate isomerase	VSHALAEGLGVIACIGEK	114	131	0.1155	0.055609448
760	P30681	Hmgb2;Hmgb1	High mobility group protein B2;High mobility group protein B1	MSSYAFFVQTCR	13	24	0.1154	0.553920737
761	Q99KK7	Dpp3	Dipeptidyl peptidase 3	EGVTTYFSGDCTMEDAK	166	182	0.1153	0.147186147
762	A0A0G2JGX4	Atp1a3;Atp1a2;Atp1a4;Atp1a1	Sodium/potassium-transporting ATPase subunit alpha-3;Sodium/potassium-transporting ATPase subunit alpha-2;Sodium/potassium-transporting ATPase subunit alpha-4;Sodium/potassium-transporting ATPase subunit alpha-1	NLEAVETLGSTSTICSDK	360	377	0.1153	0.01962482
763	P70671	Irf3	Interferon regulatory factor 3	QVFQQTLFCPGGLR	208	221	0.11515	0.155360847
764	A0A087WQE6	Tceb1	Transcription elongation factor B polypeptide 1	TYGGCEGPDAMYVK	7	20	0.1148	0.215670512
765	Q9EQK5	Mvp	Major vault protein	LFSVPDFVGDACK	561	573	0.1148	0.103061251
766	Q8VDD5	Myh9	Myosin-9	LEEDQIIMEDQNCK	976	989	0.1148	0.092820644
767	P63038	Hspd1	60 kDa heat shock protein, mitochondrial	CEFQDAYVLLSEK	237	249	0.1144	0.086777606
768	Q8BQM4	Heatr3	HEAT repeat-containing protein 3	VLESALLCPVASMEYILLK	231	249	0.1143	0.255889542
769	G5E839	Cct4	T-complex protein 1 subunit delta	LGGTIDDCELVEGLVLTQK	184	202	0.11425	0.093455688
770	G3UZW9	Ubtf	Nucleolar transcription factor 1	WSQEDMLTLLECMK	22	35	0.1142	0.48171287
771	P35979	Rpl12	60S ribosomal protein L12	HPHDIIDDINSGAVECPAS	147	165	0.1142	0.153563631
772	O08528	Hk2	Hexokinase-2;Hexokinase	FLSQIESDCLALLQVR	786	801	0.1139	0.095951281
773	B1AT95	Grb2	Growth factor receptor-bound protein 2	VLNEECDQNWYK	27	38	0.1139	0.969710968
774	P31230	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1;Endothelial monocyte-activating polypeptide 2	GVLSQAMVMCASSPEK	218	233	0.1139	0.515275354
775	P26443	Glud1	Glutamate dehydrogenase 1, mitochondrial	CAVVDVPFGGAK	172	183	0.1139	0.139062264
776	D3YUD8	Gm9774;Adrm1	Proteasomal ubiquitin receptor ADRM1	TSGTVEDDLIIFPDDCEFK	65	83	0.1137	0.277948005
778	Q8BVQ9	Psmc2	26S protease regulatory subunit 7	ACLIFFDEIDAIGGAR	311	326	0.11355	0.135131811
779	E9QAS4	Chd4;Chd5;Chd3	Chromodomain-helicase-DNA-binding protein 4;Chromodomain-helicase-DNA-binding protein 5	FNAPGAQQFCFLLSTR	1092	1107	0.1135	0.192951591
780	Q8QZY1	Eif3l	Eukaryotic translation initiation factor 3 subunit L	GDPQVYEELFSYACPK	404	419	0.11345	0.102840563
781	Q9Z1P6	Ndufa7	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 7	LSNNYYCTR	49	57	0.1133	0.142193747
782	P21981	Tgm2	Protein-glutamine gamma-glutamyltransferase 2	NPLSDPLYDCIFTVEGAGLTK	610	630	0.1133	0.253301199
783	Q9JIF7	Copb1	Coatomer subunit beta	CIYNLLQSSSPAVK	248	261	0.1126	0.49375747
784	P80317	Cct6a	T-complex protein 1 subunit zeta	NAIDDGCVVPGAGAVEVALAEALIK	400	424	0.1121	0.277544142
785	A0A0G2JGN6	Psmd9	26S proteasome non-ATPase regulatory subunit 9	GIGMNEPLVDCEGYPR	3	18	0.11185	0.33695835
786	Q07797	Lgals3bp	Galectin-3-binding protein	LASAYGATELQDYCGR	230	245	0.1118	0.340952759
787	Q8VCW8	Acsf2	Acyl-CoA synthetase family member 2, mitochondrial	FLSCYDPINIQFTSGTTGNPK	251	271	0.11155	0.383504798
788	P61161	Actr2	Actin-related protein 2	LCYVGYNIEQEQK	220	232	0.11155	0.155303596
789	Q99JY0	Hadhb	Trifunctional enzyme subunit beta, mitochondrial;3-ketoacyl-CoA thiolase	FNIWGGSLSLGHPFGATGCR	418	437	0.1115	0.153896729
790	O08553	Dpysl2	Dihydropyrimidinase-related protein 2	GLYDGPVCEVSVTPK	497	511	0.11145	0.067887327
791	A0A3Q4EIA3	Mtch1	Mitochondrial carrier homolog 1	VSSGSCFALE	190	199	0.11075	0.250919156
792	F6V9F1	Pcmt1	Protein-L-isoaspartate O-methyltransferase;Protein-L-isoaspartate(D-aspartate) O-methyltransferase	ALDVGSGSGILTACFAR	64	80	0.1104	0.188346669
793	G5E884	Pak1;Pak2;Pak3	Non-specific serine/threonine protein kinase;Serine/threonine-protein kinase PAK 2;PAK-2p27;PAK-2p34;Serine/threonine-protein kinase PAK 1;Serine/threonine-protein kinase PAK 3	LTDFGFCAQITPEQSK	404	419	0.11015	0.29080288
794	O55013	Trappc3	Trafficking protein particle complex subunit 3	MSSELFTLTYGALVTQLCK	14	32	0.10995	0.228306419
795	B1AXW3	Akr1a1	Alcohol dehydrogenase [NADP(+)]	HIDCASVYGNETEIGEALK	43	61	0.1099	0.157922009
796	P05201	Got1	Aspartate aminotransferase, cytoplasmic	YFVSEGFELFCAQSFSK	243	259	0.1096	0.365879938
797	Q9CPP6	Ndufa5	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 5	TTGLVGLAVCDTPHER	8	23	0.1086	0.095062278
798	Q8BG48	Stk17b	Serine/threonine-protein kinase 17B	FDDSLPSPHELVPDLFC	356	372	0.10855	0.241673529
799	P62702	Rps4x;Gm15013	40S ribosomal protein S4, X isoform;40S ribosomal protein S4	FDTGNLCMVTGGANLGR	175	191	0.1084	0.071754378
800	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	FLDGNELTLADCNLLPK	167	183	0.1082	0.055368802
801	E9Q3W4	Plec	Plectin	TLLQGSGCLAGIYLEDSK	3188	3205	0.1082	0.348962067
802	Q8BFW7	Lpp	Lipoma-preferred partner homolog	TYITDPVSAPCAPPLQPK	355	372	0.10815	0.06211294
803	P17427	Ap2a2	AP-2 complex subunit alpha-2	LCELLSEQF	930	938	0.1079	0.281794176
804	Q01853	Vcp	Transitional endoplasmic reticulum ATPase	MTNGFSGADLTEICQR	678	693	0.1077	0.182934589
805	P10639	Txn	Thioredoxin	MIKPFFHSLCDK	37	48	0.1076	0.052877633
806	A2AUC9	Klhl41	Kelch-like protein 41	DLQTEASLDSVLCYDPVAAK	407	426	0.10755	0.141355609
807	P97351	Rps3a	40S ribosomal protein S3a	ACQSIYPLHDVFVR	200	213	0.1075	0.170111041
808	E9Q5D9	Igfbp7	Insulin-like growth factor-binding protein 7	VFLSCEVIGIPTPVLIWNK	208	226	0.10725	0.479316205
809	Q99LP6	Grpel1	GrpE protein homolog 1, mitochondrial	NNGQNLDEDLGHCEPK	35	50	0.1069	0.177618225
810	Q9QZE5	Copg1	Coatomer subunit gamma-1	EMSCIAEDVIIVTSSLTK	94	111	0.1069	0.049506859
811	Q9D0B6	Pbdc1	Protein PBDC1	LDCSQGYTEENTIFAPR	123	139	0.1069	0.095000756
812	Q8BH58	Tiprl	TIP41-like protein	CVNNYQGMLK	75	84	0.1069	0.476255269
813	D3YYV8	Rpl5	60S ribosomal protein L5	VGLTNYAAAYCTGLLLAR	40	57	0.10645	0.146801878
814	Q8R480	Nup85	Nuclear pore complex protein Nup85	MEELDCEPAVTWIPGVNSK	1	19	0.1064	0.545318743
815	P61222	Abce1	ATP-binding cassette sub-family E member 1	TQAIVCQQLDLTHLK	196	210	0.1063	0.512203407
816	O08529	Capn2	Calpain-2 catalytic subunit	RPTEICADPQFIIGGATR	77	94	0.1057	0.044648727
817	A0A5K1VVQ1	Ttn	Titin	VNPNCGSTTFVVPDLISEQQYFFR	9423	9446	0.10545	0.067726681
818	A0A1D5RM55	Csnk2a2	Casein kinase II subunit alpha	EQSQPCAENTVLSSGLTAAR	102	121	0.1053	0.231946788
819	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	IVFVPGCSVPLTIVK	363	377	0.1053	0.266442885
820	F8WHM4	Ubl4;Ubl4a	Ubiquitin-like protein 4A	ECSLQVAEDELVSTLK	12	27	0.105	0.396774929
821	P26039	Tln1	Talin-1	AVEGCVSASQAATEDGQLLR	746	765	0.10485	0.022255149
822	Q61686	Cbx5	Chromobox protein homolog 5	NLDCPELISEFMK	56	68	0.1046	0.158186412
823	P10107	Anxa1	Annexin A1	YGISLCQAILDETK	319	332	0.10445	0.276885279
824	E9Q3W4	Plec	Plectin	FLEGTSCIAGVFVDATK	3767	3783	0.1044	0.134928284
825	Q62419	Sh3gl1	Endophilin-A2	NPGYPQSEGLLGECMVR	83	99	0.1043	0.253186122
826	F7BTZ2	Pml	Protein PML	DYQEIAGQLSCLEAVLQR	304	321	0.10425	0.156682654
827	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	FSPNSSNPIIVSCGWDK	156	172	0.1042	0.169708511
828	Q9Z0N1	Eif2s3x;Eif2s3y	Eukaryotic translation initiation factor 2 subunit 3, X-linked;Eukaryotic translation initiation factor 2 subunit 3, Y-linked	IVLTNPVCTEVGEK	427	440	0.1042	0.240794228
829	Q64442	Sord	Sorbitol dehydrogenase	YCNTWPMAISMLASK	300	314	0.1041	0.286646553
830	Q8VE88	Fam114a2	Protein FAM114A2	SLAELTACSIELFHK	377	391	0.10395	0.535346837
831	B7ZC46	Septin8	Septin-8	SVTQGFSFNILCVGETGIGK	38	57	0.1039	0.47367307
832	Q0GNC1	Inf2	Inverted formin-2	AVLLASDAQACTLEEVVER	322	340	0.10385	0.251249304
833	F6QA74	Apex1	DNA-(apurinic or apyrimidinic site) lyase;DNA-(apurinic or apyrimidinic site) lyase, mitochondrial	ICSWNVDGLR	58	67	0.1038	0.261588636
834	Q6ZWX6	Eif2s1	Eukaryotic translation initiation factor 2 subunit 1	AGLNCSTETMPIK	214	226	0.1037	0
835	P62281	Rps11	40S ribosomal protein S11	DVQIGDIVTVGECRPLSK	119	136	0.1034	0.101729117
836	E9Q0U7	Hsph1	Heat shock protein 105 kDa	CTPSVISFGSK	34	44	0.1032	0.195961763
837	Q8C407	Yipf4	Protein YIPF4	CVLMPMPSLGFNR	96	108	0.1031	0.108397803
838	Q9EQK5	Mvp	Major vault protein	HYCVILDPMGPDGK	280	293	0.1029	0.08722134
839	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	CVVPALPSR	322	330	0.1027	0.642011713
840	E0CZE0	Nae1	NEDD8-activating enzyme E1 regulatory subunit	LADVLWNSQIPLLICR	115	130	0.1026	0
841	E9Q7G1	Tmed7	E9Q7G1;D3YZZ5	VSALTQMESACVSIHEALK	141	159	0.10235	0.230060145
842	F8WGB3	Sdhc	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial	WSLPMALSVCHR	27	38	0.1023	0.18120096
843	D3YVI6	Cops7a	COP9 signalosome complex subunit 7a	CIPYAVLLEALALR	110	123	0.1023	0.232198796
844	D3Z7U0	Anxa11	Annexin;Annexin A11	GFGTDEQAIIDCLGSR	213	228	0.1023	0.230416171
845	P63005	Pafah1b1	Platelet-activating factor acetylhydrolase IB subunit alpha	LWDFQGFECIR	176	186	0.1022	0.55192824
846	A0A087WPL1	Pdlim2	PDZ and LIM domain protein 2	GHFWVGNELYCEK	100	112	0.10215	0.730296284
847	P97351	Rps3a	40S ribosomal protein S3a	NCLTNFHGMDLTR	95	107	0.1019	0.281412913
848	Q08093	Cnn2	Calponin-2	AGQCVIGLQMGTNK	161	174	0.1019	0.136360277
849	F6ZFT1	Ndufab1	Acyl carrier protein;Acyl carrier protein, mitochondrial	LMCPQEIVDYIADK	109	122	0.1018	0.006701863
850	Q921L5	Cog2	Conserved oligomeric Golgi complex subunit 2	IVQDLSESCFSYLK	563	576	0.1016	0.032014677
851	Q07417	Acads	Short-chain specific acyl-CoA dehydrogenase, mitochondrial	IGIASQALGIAQASLDCAVK	273	292	0.1014	0.098117811
852	P07356	Anxa2	Annexin A2;Annexin	GLGTDEDSLIEIICSR	120	135	0.1013	0.156365502
853	Q99JI6	Rap1b	Ras-related protein Rap-1b	QWNNCAFLESSAK	137	149	0.1013	0.396809419
854	Q62261	Sptbn1	Spectrin beta chain, non-erythrocytic 1	SWHNVYCVINNQEMGFYK	2220	2237	0.1013	0.092140272
855	A0A3B2W812	Cd2ap	CD2-associated protein	AQIIELLCIVDALK	481	494	0.1011	0.055953059
856	Q6P5H2	Nes	Nestin	MEGCVGEESFQMWELNR	1	17	0.1007	0.76516096
857	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	LECSEELGDLVK	461	472	0.1007	0.252788919
858	Q8R3V2	Aimp2	Aminoacyl tRNA synthase complex-interacting multifunctional protein 2	SCENLAPFSTALQLLK	265	280	0.1006	0.179338396
859	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	SVMDATQIAGLNCLR	155	169	0.1	0.407512389
860	P60335	Pcbp1	Poly(rC)-binding protein 1	QICLVMLETLSQSPQGR	161	177	0.0998	0.448350395
861	Q61990	Pcbp2;Pcbp3	Poly(rC)-binding protein 2;Poly(rC)-binding protein 3	QICVVMLESPPK	161	172	0.0998	0.046762573
862	Q8VHX6	Flnc	Filamin-C	DGTCTVSYLPTAPGDYSIIVR	1912	1932	0.09975	0.030481796
863	Q91VD9	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial	MLFLLGADGGCITR	544	557	0.09965	0.068830264
864	Q80UG5	Septin9	Septin-9	NQEDSEVTPSCVGDMADNPR	236	255	0.0995	0.318013962
865	F6UFG6	Anp32a	Acidic leucine-rich nuclear phosphoprotein 32 family member A	SLDLFNCEVTNLNAYR	113	128	0.0993	0.043185228
866	D6RG92	Zfp326;Znf326	DBIRD complex subunit ZNF326	MDFEDDYVHSTCR	1	13	0.0993	0.722060701
867	Q61081	Cdc37	Hsp90 co-chaperone Cdc37;Hsp90 co-chaperone Cdc37, N-terminally processed	CIDSGLWVPNSK	337	348	0.0993	0.12532809
868	P20029	Hspa5	78 kDa glucose-regulated protein	EDVGTVVGIDLGTTYSCVGVFK	26	47	0.0992	0.074132163
869	Q8BPW9	Dnpep	Aspartyl aminopeptidase	NDSPCGTTIGPILASR	407	422	0.0991	0.215421428
870	A0A0U1RNR3	Etfb	Electron transfer flavoprotein subunit beta	HSMNPFCEIAVEEAVR	36	51	0.099	0.019033525
871	Q9D8N0	Eef1g	Elongation factor 1-gamma	WFLTCINQPQFR	190	201	0.0988	0.130707314
872	D3Z7C6	Ptges3	Prostaglandin E synthase 3	HLNEIDLFHCIDPNDSK	49	65	0.0985	0.281406963
873	P26443	Glud1	Glutamate dehydrogenase 1, mitochondrial	VYEGSILEADCDILIPAASEK	366	386	0.0984	0.128159201
874	P08249	Mdh2	Malate dehydrogenase, mitochondrial	ETECTYFSTPLLLGK	282	296	0.0983	0.188819317
875	Q8R5H1	Usp15	Ubiquitin carboxyl-terminal hydrolase 15	IGNILDLCTALSALSGVPADK	499	519	0.0982	0.728708821
876	Q9WUB3	Pygm	Glycogen phosphorylase, muscle form;Alpha-1,4 glucan phosphorylase	WLVLCNPGLAEVIAER	492	507	0.098	0.327202741
877	P62281	Rps11	40S ribosomal protein S11	CPFTGNVSIR	60	69	0.0978	0.187983398
878	P84091	Ap2m1	AP-2 complex subunit mu	MCDVMAAYFGK	85	95	0.0975	0.362618862
879	Q9WVA4	Tagln2	Transgelin-2	QYDADLEQILIQWITTQCR	21	39	0.0972	0.037516461
880	Q91X96	Rabif	Guanine nucleotide exchange factor MSS4	MEPCELQNELVSAEGR	1	16	0.09715	0.104082625
881	O88653	Lamtor3	Ragulator complex protein LAMTOR3	SIICYYNTYQVVQFNR	70	85	0.0969	0.120971544
882	A0A0A6YXF6	Rhoa	Transforming protein RhoA	IGAFGYMECSAK	151	162	0.0969	0.252967899
883	P70402	Mybph	Myosin-binding protein H	LGLQGYVLEFCR	106	117	0.09675	0.148364524
884	P37040	Por	NADPH--cytochrome P450 reductase	EVGETLLYYGCR	556	567	0.0965	0.439772411
885	B7ZCU2	Abi1	Abl interactor 1	VADYCENNYIQATDK	29	43	0.0963	0.077833145
886	E9PYI8	Usp14	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 14	ENQLQLSCFINQEVK	235	249	0.0962	0.122016347
887	P31001	Des	Desmin	HQIQSYTCEIDALK	325	338	0.0962	0.145528197
888	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	FFQVACDVPELQDK	1265	1278	0.09605	0.153862902
889	A2AQN7	Gss	Glutathione synthetase	SDYMFQCGADGSK	84	96	0.09595	0.622725618
890	Q9Z1Z0	Uso1	General vesicular transport factor p115	SQLCSQSLEITR	799	810	0.0959	0.548380022
891	O08529	Capn2	Calpain-2 catalytic subunit	WNDNCPSWNTVDPEVR	297	312	0.09555	0.197590278
892	S4R1M2	Safb;Safb2	Scaffold attachment factor B1;Scaffold attachment factor B2	FAFDACNDVPAPPK	379	392	0.09535	0.162408374
893	P40124	Cap1	Adenylyl cyclase-associated protein 1;Adenylyl cyclase-associated protein	ALLATASQCQQPAGNK	84	99	0.09535	0.027438858
894	Q9QZE5	Copg1	Coatomer subunit gamma-1	AIVDCIISIIEENSESK	416	432	0.0953	0.220333931
895	Q9D964	Gatm	Glycine amidinotransferase, mitochondrial	FVTTEFEPCFDAADFIR	244	260	0.09525	0.792108069
896	Q8BKC5	Ipo5	Importin-5	VAAAESMPLLLECAR	721	735	0.0951	0.055021979
897	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	ACVDTALENLSTLK	1221	1234	0.09505	0.51554445
898	Q8VDD5	Myh9;Myh10;Myh14;Myh11	Myosin-9;Myosin-10;Myosin-14;Myosin-11	EDQSILCTGESGAGK	166	180	0.0949	0.241275768
899	Q9WUM3	Coro1b	Coronin-1B;Coronin	VTWDSTFCAVNPK	34	46	0.09485	0.67915053
900	Q9JIF7	Copb1	Coatomer subunit beta	ALSGYCGFMAANLYAR	883	898	0.09485	0.295963513
901	P26883	Fkbp1a	Peptidyl-prolyl cis-trans isomerase FKBP1A	GQTCVVHYTGMLEDGK	20	35	0.09485	0.131953506
902	Q91YZ8	Pabpc4;Pabpc2;Pabpc1	Polyadenylate-binding protein;Polyadenylate-binding protein 1	ALYDTFSAFGNILSCK	114	129	0.0947	0.598749227
903	Q07113	Igf2r	Cation-independent mannose-6-phosphate receptor	YMNYTSLITFHCK	1748	1760	0.0947	0.094124027
904	A0A0A0MQA5	Tuba4a;Tuba1a;Tuba3a;Tuba8;Tuba1c	Tubulin alpha-4A chain;Tubulin alpha-1A chain;Tubulin alpha-3 chain;Tubulin alpha-8 chain;Tubulin alpha-1C chain	AVCMLSNTTAIAEAWAR	374	390	0.0946	0.126023453
905	G3UZW7	Magohb;Magoh	Protein mago nashi homolog 2;Protein mago nashi homolog	CLVFSLIGLHFK	87	98	0.0945	0.347666252
906	Q9DAW9	Cnn3	Calponin-3	CASQAGMTAYGTR	173	185	0.0942	0.303902355
907	P13542	Myh8;Myh1	Myosin-8;Myosin-1	ESIFCIQYNVR	812	822	0.0942	0.219193678
908	Q8BTI8	Srrm2	Serine/arginine repetitive matrix protein 2	LGLIQEDVASSCIPR	1133	1147	0.0942	0.119074953
909	Q60864	Stip1	Stress-induced-phosphoprotein 1	ALSAGNIDDALQCYSEAIK	14	32	0.0937	0.813719697
910	A0A2I3BQ39	Uchl3	Ubiquitin carboxyl-terminal hydrolase isozyme L3	TSDETLLEDAIEVCK	231	245	0.0936	0.251427725
911	E9Q586	Dctn1	Dynactin subunit 1	FTQSALDCMGVEVGR	715	729	0.0936	0.279518706
912	Q91VD9	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial	AVTEGAQAVEEPSIC	713	727	0.0936	0.063458301
913	P03903	Mtnd4l	NADH-ubiquinone oxidoreductase chain 4L	VSNTYGTDYVQNLNLLQC	81	98	0.0935	0.072182092
914	A2ALV7	AI314180;Ecm29	Proteasome-associated protein ECM29 homolog	DIALVQQLFEALCK	432	445	0.0935	0.111927063
915	Q9DB73	Cyb5r1	NADH-cytochrome b5 reductase 1	VPEDPTQCFLLFANQTER	201	218	0.0933	0.159155867
916	Q6NZM8	Papss1	Bifunctional 3-phosphoadenosine 5-phosphosulfate synthase 1;Sulfate adenylyltransferase;Adenylyl-sulfate kinase	LFADAGLVCITSFISPYTQDR	98	118	0.0928	0.16915701
917	A2A6E0	Cdk5rap3	CDK5 regulatory subunit-associated protein 3	DNTYLVELCSLLVR	60	73	0.09275	0.345357813
918	D6RHA2	Renbp	N-acylglucosamine 2-epimerase	TIFSECFYTMAMNELWK	120	136	0.0925	0.340940134
919	G5E8R3	Pcx;Pc	Pyruvate carboxylase;Pyruvate carboxylase, mitochondrial	GQPLCVLSAMK	1134	1144	0.09235	0.45098635
920	E9QPI5	Pds5a	Sister chromatid cohesion protein PDS5 homolog A	MDFTQPKPATALCGVVSADGK	1	21	0.09215	0.039134504
921	P47757	Capzb	F-actin-capping protein subunit beta	DETVSDCSPHIANIGR	200	215	0.0921	0.119295362
922	J3QN31	Adssl1	Adenylosuccinate synthetase isozyme 1	ICDLLSDFDEFSAR	205	218	0.092	0.207051196
923	F6TCF9	Bag1	BAG family molecular chaperone regulator 1	EMETPLSALGMQNGCR	209	224	0.0919	0.272342024
924	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	QNVAYEYLCHLEEAK	37	51	0.0918	0.59002592
925	Q8VHX6	Flnc;Flnb	Filamin-C;Filamin-B	GAGTGGLGLTVEGPCEAK	1090	1107	0.0917	0.046201382
926	F7C265	Ccdc47	Coiled-coil domain-containing protein 47	EMQDLSEFCSDKPK	22	35	0.0916	0.166741337
927	E9QKR0	Gnb2	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-2	TFVSGACDASIK	240	251	0.0909	0.707884676
928	A0A1W2P701	Snx6	Sorting nexin-6;Sorting nexin-6, N-terminally processed	IGSSLYALGTQDSTDICK	132	149	0.0907	0.210494852
929	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	IQFVGACNPPTDPGR	2704	2718	0.0906	0.972466942
930	Q9DBJ1	Pgam1	Phosphoglycerate mutase 1	YADLTEDQLPSCESLK	142	157	0.0906	0.201255602
931	Q8CGC7	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	HEELMLGDPCLK	651	662	0.0906	0.344969881
932	P61971	Nutf2	Nuclear transport factor 2	NINDAWVCTNDMFR	107	120	0.0905	0.113724412
933	Q99LC5	Etfa	Electron transfer flavoprotein subunit alpha, mitochondrial	QFSYTHICAGASAFGK	102	117	0.0905	0.662570774
934	A0A2C9F2D2	Anxa7	Annexin A7	LGTDESCFNMILATR	354	368	0.0904	0.183494792
935	Q6PF96	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial	LTFPGGLLIGCSPGFMNVPK	316	335	0.09035	0.064958343
936	A0A494B9R1	Ppp1r14b	Protein phosphatase 1 regulatory subunit 14B	ELLVDCYKPTEAFISGLLDK	149	168	0.0903	0.420608786
937	Q60692	Psmb6	Proteasome subunit beta type-6	DECLQFTANALALAMER	183	199	0.0902	0.054087958
938	Q80UU9	Pgrmc2	Membrane-associated progesterone receptor component 2	GLCSGPGAGEESPAATLPR	73	91	0.0901	0.418339453
939	B7FAU9	Flna	Filamin-A	VHSPSGALEECYVTEIDQDK	2360	2379	0.08995	0.324663814
940	P26638	Sars	Serine--tRNA ligase, cytoplasmic	YAGLSTCFR	294	302	0.08995	0.10140831
941	A0A0N4SV57	Anxa4	Annexin A4;Annexin	GAGTDEGCLIEILASR	101	116	0.0899	0.132158667
942	O08915	Aip	AH receptor-interacting protein	EGEIAQFLCDIK	82	93	0.0898	0.441944327
943	E9PWY9	Farsa	Phenylalanine--tRNA ligase alpha subunit	VNLQMVYDSPVCR	481	493	0.0898	0.14938918
944	E9Q616	Ahnak	E9Q616	VPDVDLECPDAK	1938	1949	0.0898	0.128973958
945	Q61166	Mapre1	Microtubule-associated protein RP/EB family member 1	NIELICQENEGENDPVLQR	223	241	0.0895	0.052144187
946	Q9D7P6	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial	NVGTGLVGAPACGDVMK	59	75	0.0894	0.132879127
947	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	CNVFLQQSPSGSSATTLR	1115	1132	0.08935	0.0387781
948	B1AU25	Aifm1	Apoptosis-inducing factor 1, mitochondrial	SITVIGGGFLGSELACALGR	297	316	0.0889	0.065795098
949	Q9DB05	Napa	Alpha-soluble NSF attachment protein	ADPQEAINCLMR	95	106	0.0888	0.661607616
950	P40124	Cap1	Adenylyl cyclase-associated protein 1	NSLDCEIVSAK	422	432	0.0886	0.153687482
951	E0CX19	Hibch	3-hydroxyisobutyryl-CoA hydrolase, mitochondrial	INSCFSANTVEQIIENLR	267	284	0.0886	0.162810139
952	P62715	Ppp2cb	Serine/threonine-protein phosphatase 2A catalytic subunit beta isoform	ELDQWVEQLNECK	9	21	0.08805	0.066655154
953	P70460	Vasp	Vasodilator-stimulated phosphoprotein	MQPDQQVVINCAIIR	54	68	0.088	0.093614146
954	Q99JX4	Eif3m	Eukaryotic translation initiation factor 3 subunit M	QEALIESLCEK	79	89	0.088	0.196061426
955	P70698	Ctps1	CTP synthase 1	LLETCSIALVGK	295	306	0.08795	0.098890431
956	Q8C605	Pfkp	ATP-dependent 6-phosphofructokinase;ATP-dependent 6-phosphofructokinase, platelet type	NESCSVNYTTDFIYQLYSEEGK	637	658	0.08795	0.005627911
957	F7AAP4	Atp2b4	Calcium-transporting ATPase	TECGLLGFVTDLK	536	548	0.0879	0.086880014
958	P32921	Wars	Tryptophan--tRNA ligase, cytoplasmic;T1-TrpRS;T2-TrpRS	GIFGFTDSDCIGK	269	281	0.0878	0.533148849
959	Q6ZQI3	Mlec	Malectin	VCALYILAGTVDDVPK	204	219	0.0877	0.023755473
960	A0A087WNM1	Srgap2	SLIT-ROBO Rho GTPase-activating protein 2	DIFHDLIACVTMDNLQER	580	597	0.08765	0.302527145
961	Q61553	Fscn1	Fascin	LSCFAQSVSPAEK	119	131	0.08755	0.012114908
962	Q9Z1D1	Eif3g	Eukaryotic translation initiation factor 3 subunit G	EDLNCQEEEDPMNK	135	148	0.0874	0.215206412
963	P52480	Pkm	Pyruvate kinase PKM	NTGIICTIGPASR	44	56	0.0873	0.055171867
964	Q9Z0N1	Eif2s3x;Eif2s3y	Eukaryotic translation initiation factor 2 subunit 3, X-linked;Eukaryotic translation initiation factor 2 subunit 3, Y-linked	YNIEVVCEYIVK	230	241	0.0868	0.387768235
965	Q9QZE5	Copg1	Coatomer subunit gamma-1	DSPLFDFIESCLR	248	260	0.0865	0.035396383
966	Q9EPL8	Ipo7	Importin-7	GIDQCIPLFVEAALER	753	768	0.0865	0.336795369
967	Q8BIJ6	Iars2	Isoleucine--tRNA ligase, mitochondrial	SCQTALAEILDVLVR	818	832	0.0863	0.414595633
968	E9Q133	Cct3	T-complex protein 1 subunit gamma	WSSLACNIALDAVK	130	143	0.086	0.127055665
969	Q9CQM9	Glrx3	Glutaredoxin-3	LTHAAPCMLFMK	142	153	0.08575	0.289439627
970	A0A2I3BQV5	Xpo7	Exportin-7	DSSLFDIFTLSCNLLK	184	199	0.08575	0.09153219
971	Q7TSV4	Pgm2	Phosphoglucomutase-2	MNDLTIIQTTQGFCR	81	95	0.08575	0.045353788
972	Q9D0T1	Nhp2l1	NHP2-like protein 1;NHP2-like protein 1, N-terminally processed	LLDLVQQSCNYK	22	33	0.0857	0.03072323
973	P15532	Nme1	Nucleoside diphosphate kinase A	SCAQNWIYE	144	152	0.0857	0.192485114
974	O55143	Atp2a2;Atp2a3	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2;Calcium-transporting ATPase;Sarcoplasmic/endoplasmic reticulum calcium ATPase 3	VGEATETALTCLVEK	437	451	0.0854	0.130012349
975	Q9JJ28	Flii	Protein flightless-1 homolog	TGLCYLPEELAALQK	43	57	0.08505	0.075657516
976	F6XC54	Diap1;Diaph1	Protein diaphanous homolog 1	LLSALCILPQPEDMNER	218	234	0.08495	0.062428497
977	P08249	Mdh2	Malate dehydrogenase, mitochondrial	TIIPLISQCTPK	204	215	0.0848	0.215832796
978	O54734	Ddost	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase 48 kDa subunit	ELGSECGIEFDEEK	125	138	0.08465	0.071003044
979	S4R1M2	Safb;Safb2	Scaffold attachment factor B1;Scaffold attachment factor B2	CQWSEADAPLAVVK	303	316	0.0846	0.06328478
980	A1BN54	Actn1;Actn3;Actn2;Actn4	Alpha-actinin-3;Alpha-actinin-2;Alpha-actinin-4;Alpha-actinin-1	CQLEINFNTLQTK	332	344	0.0845	0.019165027
981	Q91XD6	Vps36	Vacuolar protein-sorting-associated protein 36	GMELLSPEDLVNACK	278	292	0.08435	0.60944473
982	Q9JHS3	Lamtor2	Ragulator complex protein LAMTOR2	FILMDCMEGR	71	80	0.0842	0.162425089
983	P05202	Got2	Aspartate aminotransferase, mitochondrial	TCGFDFSGALEDISK	186	200	0.0841	0.311289953
984	Q9DCC4	Pycrl	Pyrroline-5-carboxylate reductase 3	AATMSAVEAATCR	255	267	0.08405	0.377740565
985	Q8VEM8	Slc25a3	Phosphate carrier protein, mitochondrial	GWAPTLIGYSMQGLCK	117	132	0.0838	0.060208136
986	Q9R1P0	Psma4	Proteasome subunit alpha type-4;Proteasome subunit alpha type	ATCIGNNSAAAVSMLK	161	176	0.0838	0.261501842
987	A0A0R4J1X1	Adck4	AarF domain-containing protein kinase 4	IVQTLCTVR	143	151	0.0836	0.279305491
988	S4R2J9	Prrc2c	Protein PRRC2C	HVDTNTQSACFDVIDQK	859	875	0.08315	0.312096439
989	E9PWE8	Dpysl3	Dihydropyrimidinase-related protein 3	AITVASQTNCPLYVTK	352	367	0.08315	0.176032596
990	A1BN54	Actn1;Actn3;Actn2;Actn4	Alpha-actinin-3;Alpha-actinin-2;Alpha-actinin-4;Alpha-actinin-1	TFTAWCNSHLR	36	46	0.083	0.063499928
991	A0A2I3BQF4	Rpl30	60S ribosomal protein L30	VCTLAIIDPGDSDIIR	70	85	0.0829	0.033105368
992	Q8CGY6	Unc45b	Protein unc-45 homolog B	AGVISALACMVK	628	639	0.0829	0.388951378
993	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	MLLCEAVAAVMAK	635	647	0.08285	0.031578698
994	E0CYJ0	Mob4	MOB-like protein phocein	HTLDGAACLLNSNK	95	108	0.0828	0.378081182
995	Q921M3	Sf3b3	Splicing factor 3B subunit 3	YFDTVPVAAAMCVLK	329	343	0.08275	0.884417545
996	D3Z0F5	Cops6	COP9 signalosome complex subunit 6	QVCEIIESPLFLK	111	123	0.08275	0.084596461
997	D3Z3R3	Dtymk	Thymidylate kinase	QVLLCFQQLMEEK	101	113	0.0822	0.378248229
998	O35114	Scarb2	Lysosome membrane protein 2	DEVLYLFPSDLCR	263	275	0.0822	0.330116583
999	E0CXB1	Psma6	Proteasome subunit alpha type-6	ITESIGCVMTGMTADSR	53	69	0.082	0.406108265
1000	P57780	Actn4	Alpha-actinin-4	ACLISLGYDVENDR	793	806	0.08185	0.063065113
1001	P10649	Gstm1	Glutathione S-transferase Mu 1	MQLIMLCYNPDFEK	109	122	0.0817	0.31380489
1002	P62281	Rps11	40S ribosomal protein S11	NMSVHLSPCFR	108	118	0.0817	0
1003	A0A3B2WAL8	Acat2	Acetyl-CoA acetyltransferase, cytosolic	VNIDGGAIALGHPLGASGCR	294	313	0.08155	0.007803754
1004	Q91WK5	Gcsh	Glycine cleavage system H protein, mitochondrial	SCYEDGWLIK	134	143	0.0813	0.320443325
1005	P62908	Rps3	40S ribosomal protein S3	GLCAIAQAESLR	95	106	0.0812	0.065744759
1006	Q99KI0	Aco2	Aconitate hydratase, mitochondrial	CTTDHISAAGPWLK	592	605	0.0809	0.425904407
1007	F8WGL3	Cfl1	Cofilin-1	AVLFCLSEDK	35	44	0.0807	0.172841323
1008	O88990	Actn3	Alpha-actinin-3	ACLISMGYDLGEVEFAR	786	802	0.08065	0.409446828
1009	Q8CHP8	Pgp	Phosphoglycolate phosphatase	FIFDCVSQEYGINPER	239	254	0.08065	0.339306044
1010	A0A0D2X7Z2	N6amt2	Protein-lysine N-methyltransferase N6amt2	ILLCTGAIMEEQAAQLLGVK	175	194	0.08065	0.298975093
1011	P62192	Psmc1	26S protease regulatory subunit 4	AICTEAGLMALR	397	408	0.0802	0.303102888
1012	E9Q8F4	Nnt	NAD(P) transhydrogenase, mitochondrial	EANSIVITPGYGLCAAK	672	688	0.0802	0.435549563
1013	Q9WVJ2	Psmd13	26S proteasome non-ATPase regulatory subunit 13	LELWCTDVK	353	361	0.0801	0.604716951
1014	G3X928	Sec23ip	SEC23-interacting protein	IDMESLLMCTVDDLK	666	680	0.0801	0.414805132
1015	Q8QZZ7	Tprkb	EKC/KEOPS complex subunit Tprkb	MQLSQQLDLFPECR	1	14	0.0799	0.091639688
1016	P26039	Tln1	Talin-1	QELAVFCSPEPPAK	2155	2168	0.0799	0.109797656
1017	Q8VHX6	Flnc	Filamin-C	QAPSIATIGSTCDLNLK	2144	2160	0.0798	0.139141631
1018	Q9D023	Mpc2	Mitochondrial pyruvate carrier 2	WGLVCAGLADMARPAEK	50	66	0.0797	0.42940989
1019	E9PZ16	Hspg2	E9PZ16;B1B0C7	LYILQASPADAGEYVCR	2296	2312	0.07915	0.074150174
1020	P52480	Pkm	Pyruvate kinase PKM	CDENILWLDYK	152	162	0.0791	0.126155029
1021	A0A494BAB5	Atad1	ATPase family AAA domain-containing protein 1	DAAFQNVLTHVCLD	263	276	0.079	0.553542018
1022	O55234	Psmb5	Proteasome subunit beta type-5	GMGLSMGTMICGWDK	151	165	0.0788	0.430978606
1023	P62754	Rps6	40S ribosomal protein S6	LNISFPATGCQK	3	14	0.0787	0.136955328
1024	Q9DCC5	Cbx3;Cbx5	Chromobox protein homolog 3;Chromobox protein homolog 5	CPQIVIAFYEER	160	171	0.0786	0.118046245
1025	Q9CQN1	Trap1	Heat shock protein 75 kDa, mitochondrial	NIYYLCAPNR	498	507	0.0786	0.190922346
1026	P26039	Tln1	Talin-1	AGALQCSPSDVYTK	1934	1947	0.07835	0.278871724
1027	A0A0J9YUS5	Eif4g1;Eif4g3	Eukaryotic translation initiation factor 4 gamma 1;Eukaryotic translation initiation factor 4 gamma 3	MLTEAIMHDCVVK	617	629	0.07835	0.109202196
1028	Q9DCT8	Crip2	Cysteine-rich protein 2	ASSVTTFTGEPNMCPR	113	128	0.0783	0.08963454
1029	F8WIT2	Anxa6	Annexin;Annexin A6	LIVNLMRPLAYCDAK	85	99	0.0783	0.308851238
1030	Q8R164	Bphl	Valacyclovir hydrolase	TCEDWVDGISQFK	205	217	0.0782	0.585940146
1031	G3X8R0	Reep5	Receptor expression-enhancing protein;Receptor expression-enhancing protein 5	NCMTDLLAK	17	25	0.07805	0.067947481
1032	E9Q616	Ahnak	E9Q616	ISMQDVDLSLGSCK	506	519	0.078	0.079218896
1033	E0CYJ0	Mob4	MOB-like protein phocein	QFCLELNGLAVK	44	55	0.0779	0.188803865
1034	P16045	Lgals1	Galectin-1	FNAHGDANTIVCNTK	50	64	0.0777	0.074532968
1035	Q9CZ13	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial	NALVSHLDGTTPVCEDIGR	397	415	0.0776	0.232808538
1036	P58252	Eef2	Elongation factor 2	ETVSEESNVLCLSK	581	594	0.0775	0.185059011
1037	P35293	Rab18	Ras-related protein Rab-18	LDNWLNELETYCTR	99	112	0.0772	0.065965177
1038	A0A0R4J0Q5	Lmnb2	Lamin-B2	CQSLQEELAFSK	209	220	0.0772	0.527732051
1039	P24547	Impdh2	Inosine-5-monophosphate dehydrogenase 2	HGFCGIPITDTGR	137	149	0.07715	0.274043976
1040	A0A0N4SV00	Cct7	T-complex protein 1 subunit eta	QLCDNAGFDATNILNK	406	421	0.0771	0.106993456
1041	Q61753	Phgdh	D-3-phosphoglycerate dehydrogenase	NAGTCLSPAVIVGLLR	365	380	0.0768	0.135412388
1042	A0A1W2P7I5	Sgta	Small glutamine-rich tetratricopeptide repeat-containing protein alpha	LGNYVGAVQDCER	139	151	0.0768	0.939126194
1043	Q8VDD5	Myh9	Myosin-9	MEDGVGCLETAEEAK	1373	1387	0.0767	0.137318736
1044	P35550	Fbl	rRNA 2-O-methyltransferase fibrillarin	ANCIDSTASAEAVFASEVK	272	290	0.07665	0.15036974
1045	O08797	Serpinb9;Serpinb9b	O08797;Q9DAV6	TCEVLQTFK	97	105	0.0766	0.346368911
1046	Q8BMS1	Hadha	Trifunctional enzyme subunit alpha, mitochondrial;Long-chain enoyl-CoA hydratase;Long chain 3-hydroxyacyl-CoA dehydrogenase	ALMGLYNGQVLCK	338	350	0.0766	0.153411237
1047	P47757	Capzb	F-actin-capping protein subunit beta	GCWDSIHVVEVQEK	146	159	0.0766	0.125543763
1048	A0A0G2JDF8	Srrt	Serrate RNA effector molecule homolog	EICWNLQNIR	118	127	0.07655	0.122854607
1049	F8WHL2	Copa	Coatomer subunit alpha;Coatomer subunit alpha;Xenin;Proxenin	LQLCYQLTTVGK	1019	1030	0.0765	0.066551226
1050	Q9ERE7	Mesdc2	LDLR chaperone MESD	CAEVTLEGQMYPGK	171	184	0.0764	0.553468397
1051	P35979	Rpl12	60S ribosomal protein L12	EILGTAQSVGCNVDGR	131	146	0.0763	0.25413194
1052	Q6ZWX6	Eif2s1	Eukaryotic translation initiation factor 2 subunit 1	ADIEVACYGYEGIDAVK	193	209	0.0763	0.226125891
1053	E9Q798	Arf4;Arf5	ADP-ribosylation factor 4;ADP-ribosylation factor 5	NICFTVWDVGGQDK	33	46	0.076	0.087789658
1054	Q8C129	Lnpep	Leucyl-cystinyl aminopeptidase	SAFPCFDEPAFK	301	312	0.07595	0.188996283
1055	A0A0G2JFD8	Nexn	A0A0G2JFD8;A0A0G2JGI1;A0A0G2JDY6;A0A0G2JEX1	AEILLSSCKPVPK	8	20	0.0759	0.200866636
1056	P70404	Idh3g	Isocitrate dehydrogenase [NAD] subunit gamma 1, mitochondrial	TSLDLYANVIHCK	137	149	0.0759	0.319372135
1057	Q9CRA2	Pdlim5	PDZ and LIM domain protein 5	ACTGSLNMTLQR	72	83	0.07575	0.945609464
1058	B7FAU9	Flna	Filamin-A	SNFTVDCSK	2568	2576	0.07565	0.802914375
1059	D3Z629	Rpl9	60S ribosomal protein L9	TICSHVQNMIK	72	82	0.07555	0.352851432
1060	G3UYU4	Flot1	Flotillin-1	VSAQCLSEIEMAK	151	163	0.0754	0.551430752
1061	O35465	Fkbp8	Peptidyl-prolyl cis-trans isomerase FKBP8	VDMTCEEEEELLQLK	247	261	0.0753	0.435720513
1062	Q6PFB2	Rcc1	Regulator of chromosome condensation	LPVVSSVACGASVGYAVSK	357	375	0.07525	0.399362634
1063	Q8CGA0	Ppm1f	Protein phosphatase 1F	IEALGGFVSLMDCWR	300	314	0.07505	0.345780398
1064	P28474	Adh5	Alcohol dehydrogenase class-3	EFGASECISPQDFSK	234	248	0.07495	0.41039553
1065	Q8R1B4	Eif3c	Eukaryotic translation initiation factor 3 subunit C	GTTEEICQIYLR	492	503	0.0749	0.360633899
1066	Q99JI4	Psmd6	26S proteasome non-ATPase regulatory subunit 6	ENNMAPYYEALCK	47	59	0.0748	0.192549451
1067	E9Q7G1	Tmed7	E9Q7G1;D3YZZ5	QCFYEDITQGTK	47	58	0.0746	0.592531366
1068	E9PWE8	Dpysl3	Dihydropyrimidinase-related protein 3	FIPCSPFSDYVYK	581	593	0.0745	0.39294256
1069	D3YUN3	Tnni1	Troponin I, slow skeletal muscle	GLSLSALQDLCR	40	51	0.0745	0.173792054
1070	D3YVC1	Rps2	40S ribosomal protein S2	LLMMAGIDDCYTSAR	213	227	0.0745	0.128649124
1071	P68510	Ywhah	14-3-3 protein eta	ELETVCNDVLALLDK	92	106	0.0743	0.226654237
1072	G3X9U9	Fis1	Mitochondrial fission 1 protein	STQFEYAWCLVR	26	37	0.0741	0.143231015
1073	Q8BZF8	Pgm5	Phosphoglucomutase-like protein 5	LIIGQNGILSTPAVSCIIR	91	109	0.0741	0.275392351
1074	P51863	Atp6v0d1	V-type proton ATPase subunit d 1	NIVWIAECIAQR	328	339	0.0741	0.062620115
1075	F8WGB3	Sdhc	Succinate dehydrogenase cytochrome b560 subunit, mitochondrial	SLCLGPTLIYSAK	71	83	0.074	0.03310958
1076	D3Z7P4	Gls	Glutaminase kidney isoform, mitochondrial	CVQSNIVLLTQAFR	25	38	0.0737	0.345398156
1077	P26039	Tln1;Tln2	Talin-1;Talin-2	QVAASTAQLLVACK	2430	2443	0.0737	0.078674025
1078	A0A1W2P6G5	Myl6	Myosin light polypeptide 6	ILYSQCGDVMR	27	37	0.0734	0.143763779
1079	Q9CRA5	Golph3	Golgi phosphoprotein 3	QLLDLDPEVECLK	270	282	0.0734	0.552969063
1080	Q60932	Vdac1	Voltage-dependent anion-selective channel protein 1	YQVDPDACFSAK	238	249	0.0732	0.126803599
1081	A0A0A6YWC8	Vim	Vimentin	QVQSLTCEVDALK	322	334	0.0732	0.057667427
1082	Q63829	Commd3	COMM domain-containing protein 3	STLSTYLEDCK	81	91	0.07295	0.417769736
1083	P62242	Rps8	40S ribosomal protein S8	NCIVLIDSTPYR	99	110	0.0729	0.200108875
1084	Q6ZWZ6	Rps12	40S ribosomal protein S12	LVEALCAEHQINLIK	64	78	0.0727	0.160282374
1085	P48962	Slc25a4	ADP/ATP translocase 1	GADIMYTGTLDCWR	246	259	0.0727	0.330875367
1086	A0A5F8MQ70	Col5a1;Col11a1	Collagen alpha-1(XI) chain;Collagen alpha-1(V) chain	FGFEVGPACFLG	278	289	0.0725	0.418478126
1087	A0A5K1VVQ1	Ttn	Titin	FTCEIQGAPNVR	4317	4328	0.07245	0.209838451
1088	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	GTAPCPPDVVR	194	204	0.07235	0.798488238
1089	E9PXT5	Cul4a	Cullin-4A	FLEETNCLYAAEGQR	235	249	0.0723	0.301448233
1090	Q8BFY6	Pef1	Peflin	VCTQLQVLTEAFR	237	249	0.07225	0.449220779
1091	Q9D0S9	Hint2	Histidine triad nucleotide-binding protein 2, mitochondrial	SLPADILYEDQQCLVFR	63	79	0.0722	0.415253844
1092	P63028	Tpt1	Translationally-controlled tumor protein	EIADGLCLEVEGK	22	34	0.0721	0.084545914
1093	Q99PV0	Prpf8	Pre-mRNA-processing-splicing factor 8	GSELQLPFQACLK	1886	1898	0.07155	0.655222636
1094	Q6PHC1	Eno1	Alpha-enolase	VNQIGSVTESLQACK	276	290	0.0715	0.141324322
1095	P68372	Tubb4b;Tubb4a	Tubulin beta-4B chain;Tubulin beta-4A chain	EIVHLQAGQCGNQIGAK	3	19	0.0713	0.076844187
1096	P17426	Ap2a1;Ap2a2	AP-2 complex subunit alpha-1;AP-2 complex subunit alpha-2	ACNQLGQFLQHR	329	340	0.07125	0.157796461
1097	B1ASE2	Atp5h	ATP synthase subunit d, mitochondrial	SCAEFVSGSQLR	100	111	0.0712	0.222709414
1098	Q5SX75	P4ha2	Prolyl 4-hydroxylase subunit alpha-2	GQEFLRPCGTTEVD	524	537	0.0711	0.745893229
1099	D3Z7U0	Anxa11	Annexin;Annexin A11	GAGTDEACLIEIFASR	285	300	0.071	0.196762624
1100	Q924M7	Mpi	Mannose-6-phosphate isomerase	TLGQWIAENPDCLGSK	70	85	0.07085	0.504006951
1101	Q9QYJ0	Dnaja2	DnaJ homolog subfamily A member 2	IGLVEALCGFQFTFK	273	287	0.0705	0.377092602
1102	A1BN54	Actn1	Alpha-actinin-1	ICDQWDNLGALTQK	479	492	0.07045	0.235869544
1103	E9PWE8	Dpysl3	E9PWE8	YGGMFCNVEGAFESK	34	48	0.07015	0.511052228
1104	E9Q3W4	Plec	Plectin	QEQIQAVPIANCQAAR	1070	1085	0.0699	0.36364569
1105	P62754	Rps6	40S ribosomal protein S6	GCIVDANLSVLNLVIVK	99	115	0.0698	0.247366035
1106	P60335	Pcbp1	Poly(rC)-binding protein 1	AITIAGVPQSVTECVK	145	160	0.0697	0.36191728
1107	Q922B2	Dars	Aspartate--tRNA ligase, cytoplasmic	LEYCEALAMLR	346	356	0.06965	0.51878186
1108	O70274	Ptp4a2	Protein tyrosine phosphatase type IVA 2	APVLVALALIECGMK	108	122	0.0693	0.423625931
1109	Q7TSG6	Rdx;Msn	Radixin;Moesin	ILALCMGNHELYMR	280	293	0.0692	0.218329978
1110	G3X8T3	Ctsa	Carboxypeptidase;Lysosomal protective protein;Lysosomal protective protein 32 kDa chain;Lysosomal protective protein 20 kDa chain	WDMCNFLVNLQYR	371	383	0.0691	0.186247157
1111	Q8CG76	Akr7a2	Aflatoxin B1 aldehyde reductase member 2	QVEAELLPCLR	214	224	0.0688	0.194749889
1112	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	ELEQIFCQFDSK	321	332	0.0688	0.230042703
1113	O08553	Dpysl2	Dihydropyrimidinase-related protein 2	SITIANQTNCPLYVTK	239	254	0.0687	0.640204393
1114	Q9WUA2	Farsb	Phenylalanine--tRNA ligase beta subunit	YDLLCLEGLAR	72	82	0.06835	0.228632917
1115	Q9ER00	Stx12	Syntaxin-12	DFNSIIQTCSGNIQR	21	35	0.0682	0.534285586
1116	E9PV63	Gstm5	Glutathione S-transferase Mu 5	CLDEFPNLK	111	119	0.0681	0.049840126
1117	Q8BPW9	Dnpep	Aspartyl aminopeptidase	ETACTTGVLQTLTLFK	442	457	0.06805	0.10079259
1118	J3QPY0	1600014C10Rik	Protein C19orf12 homolog	LLCSISQER	11	19	0.06795	0.115509717
1119	Q06138	Cab39	Calcium-binding protein 39	GYESPEIALNCGIMLR	133	148	0.0678	0.326496982
1120	P68369	Tuba1a;Tuba3a;Tuba8;Tuba1c	Tubulin alpha-1A chain;Tubulin alpha-3 chain;Tubulin alpha-8 chain;Tubulin alpha-1C chain	TIQFVDWCPTGFK	340	352	0.0676	0.08349262
1121	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	HSSLAGCQIINYR	149	161	0.0676	0.527192038
1122	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	VGNAQPSLPDCLDAGDLAQR	1336	1355	0.06735	0.280322956
1123	P63017	Hspa8	Heat shock cognate 71 kDa protein	CNEIISWLDK	574	583	0.0672	0.210908667
1124	A0A1W2P7X0	Abracl	Costars family protein ABRACL	CANLFEALVGTLK	39	51	0.0671	0.073678599
1125	P70333	Hnrnph2;Hnrnph1	Heterogeneous nuclear ribonucleoprotein H2;Heterogeneous nuclear ribonucleoprotein H;Heterogeneous nuclear ribonucleoprotein H, N-terminally processed	DLNYCFSGMSDHR	263	275	0.0671	0.501613752
1126	O54774	Ap3d1	AP-3 complex subunit delta-1	CSDATLLSSLLEEMK	1179	1193	0.0669	0.28749334
1127	P47857	Pfkm	ATP-dependent 6-phosphofructokinase, muscle type	IFANTPDSGCVLGMR	700	714	0.0668	0.072361677
1128	A0A2R8VHP9	Pcbp2;Pcbp1;Pcbp3	Poly(rC)-binding protein 1;Poly(rC)-binding protein 2;Poly(rC)-binding protein 3	INISEGNCPER	47	57	0.0667	0.039909929
1129	P60335	Pcbp1	Poly(rC)-binding protein 1	LVVPATQCGSLIGK	102	115	0.06665	0.096544212
1130	P26039	Tln1	Talin-1	ASAGPQPLLVQSCK	944	957	0.0664	0.407522865
1131	A0A3Q4EBK4	Bin1	Myc box-dependent-interacting protein 1	DEQFEQCVQNFNK	41	53	0.0663	0.131459034
1132	Q3TXS7	Psmd1;Gm21972	26S proteasome non-ATPase regulatory subunit 1	VLSMTETCR	891	899	0.0662	0.061951954
1133	A0A1D5RME4	Rpl18a	60S ribosomal protein L18a	DLTTAGAVTQCYR	55	67	0.0661	0.161183824
1134	P63038	Hspd1	60 kDa heat shock protein, mitochondrial	AAVEEGIVLGGGCALLR	430	446	0.066	0.083698581
1135	Q9D0K2	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial;Succinyl-CoA:3-ketoacid-coenzyme A transferase	NFNLPMCK	229	236	0.0659	0.422761869
1136	Q8R016	Blmh	Bleomycin hydrolase	CYFFLNAFVDTAQK	111	124	0.0658	0.236418681
1137	Q62159	Rhoc	Rho-related GTP-binding protein RhoC	ISAFGYLECSAK	151	162	0.0656	0.08629662
1138	A0A0G2JGN4	Snrpb;Snrpn	Small nuclear ribonucleoprotein-associated protein B;Small nuclear ribonucleoprotein-associated protein N	CILQDGR	19	25	0.06555	0.070117377
1139	A2A848	Acox1	Peroxisomal acyl-coenzyme A oxidase 1	NLCLLYSLYGISQK	521	534	0.0652	0.43597688
1140	Q9CZ13	Uqcrc1	Cytochrome b-c1 complex subunit 1, mitochondrial	LCTSATESEVTR	379	390	0.0651	0.128169893
1141	P08752	Gnai2	Guanine nucleotide-binding protein G(i) subunit alpha-2	LWADHGVQACFGR	131	143	0.06505	0.194576655
1142	Q8CGC7	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	VTEAVECLLSLK	850	861	0.0649	0.28437201
1143	A0A0U1RP93	Mylpf	Myosin regulatory light chain 2, skeletal muscle isoform	QFLEELLTTQCDR	98	110	0.0648	0.113334724
1144	Q60715	P4ha1	Prolyl 4-hydroxylase subunit alpha-1	SFLTAEDCFELGK	160	172	0.0647	0.163833076
1145	Q3TLP8	Rac1;Rac3;Rac2	Ras-related C3 botulinum toxin substrate 1;Ras-related C3 botulinum toxin substrate 3;Ras-related C3 botulinum toxin substrate 2	YLECSALTQR	173	182	0.0647	0.02174455
1146	P68254	Ywhaq	14-3-3 protein theta	YDDMATCMK	19	27	0.0645	0.466979895
1147	P11983	Tcp1	T-complex protein 1 subunit alpha	SLHDALCVVK	391	400	0.0645	0.338262338
1148	Q01853	Vcp	Transitional endoplasmic reticulum ATPase	AIANECQANFISIK	530	543	0.0645	0.061369964
1149	D3YU60	Mgst1	Microsomal glutathione S-transferase 1	VFANPEDCAGFGK	43	55	0.0644	0.161393134
1150	A0A1D5RME4	Rpl18a	60S ribosomal protein L18a	SSGEIVYCGQVFEK	13	26	0.0643	0.242630534
1151	O88441	Mtx2	Metaxin-2	NYSNLLAFCR	238	247	0.0642	0.253693713
1152	Q8BVF2	Pdcl3	Phosducin-like protein 3	AISTTCIPNYPDR	150	162	0.0642	0.055070622
1153	G3UZJ4	Prdx5	Peroxiredoxin-5, mitochondrial	GVLFGVPGAFTPGCSK	83	98	0.0641	0.472139941
1154	A2A817	Park7	Protein deglycase DJ-1	DVMICPDTSLEDAK	49	62	0.064	0.315126056
1155	P16045	Lgals1	Galectin-1	DSNNLCLHFNPR	38	49	0.0639	0.19189531
1156	Q9D8U8	Snx5	Sorting nexin-5	NNVSLLQSCIDLFK	389	402	0.0639	0.317621925
1157	P17751	Tpi1	Triosephosphate isomerase	IIYGGSVTGATCK	207	219	0.0637	0.062874419
1158	A0A2R8VK58	Mb	Myoglobin	HGCTVLTALGTILK	65	78	0.0635	0.309633762
1159	Q9Z2I9	Sucla2	Succinyl-CoA ligase [ADP-forming] subunit beta, mitochondrial	ILACDDLDEAAK	427	438	0.0634	0.076289389
1160	A0A2I3BQ03	Ywhaz	14-3-3 protein zeta/delta	DICNDVLSLLEK	92	103	0.0633	0.126112842
1161	F7CDT0	Ube2m	NEDD8-conjugating enzyme Ubc12	LVICPDEGFYK	50	60	0.06325	0.251539962
1162	D3YYM6	Rps5	40S ribosomal protein S5;40S ribosomal protein S5, N-terminally processed	VNQAIWLLCTGAR	147	159	0.063	0.202445164
1163	Q9WV55	Vapa	Vesicle-associated membrane protein-associated protein A	CVFEMPNENDK	128	138	0.063	0.480383655
1164	E9Q109	Nip7	60S ribosome subunit biogenesis protein NIP7 homolog	LVSLGTCFGK	63	72	0.0626	0.458602801
1165	P62702	Rps4x	40S ribosomal protein S4, X isoform	ECLPLIIFLR	40	49	0.0624	0.015358056
1166	Q9CQJ8	Ndufb9	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 9	HLESWCIHR	26	34	0.0624	0.156379384
1167	P62334	Psmc6	26S protease regulatory subunit 10B	AVASQLDCNFLK	186	197	0.0624	0.040794622
1168	Q5UE59	Klc1;Klc4;Klc2	Kinesin light chain 4;Kinesin light chain 2	YEVAVPLCK	229	237	0.0624	0.040794622
1169	J3QMG3	Vdac3	Voltage-dependent anion-selective channel protein 3	VCNYGLTFTQK	65	75	0.062	0.094671701
1170	Q9CR57	Rpl14	60S ribosomal protein L14	CMQLTDFILK	54	63	0.0619	0.154831188
1171	D3YYM6	Rps5	D3YYM6;D3Z1S8;Q91V55	TIAECLADELINAAK	168	182	0.0619	0.176267369
1172	A2AH25	Arhgap1	Rho GTPase-activating protein 1	IIVFSACR	125	132	0.0619	0.301577044
1173	P21981	Tgm2	Protein-glutamine gamma-glutamyltransferase 2	VVSAMVNCNDDQGVLLGR	223	240	0.06145	0.205975775
1174	Q8BGH2	Samm50	Sorting and assembly machinery component 50 homolog	DDIIICEIGEVFK	60	72	0.0614	0.075705293
1175	P68254	Ywhaq	14-3-3 protein theta	SICTTVLELLDK	92	103	0.0614	0.288011665
1176	S4R257	Gapdh;Gm3839;Gapdhs	Glyceraldehyde-3-phosphate dehydrogenase;Glyceraldehyde-3-phosphate dehydrogenase, testis-specific	VPTPNVSVVDLTCR	190	203	0.0611	0.175330888
1177	A0A1W2P701	Snx6	Sorting nexin-6;Sorting nexin-6, N-terminally processed	TVAMHEVFLCR	24	34	0.0611	0.469861462
1178	P80314	Cct2	T-complex protein 1 subunit beta	SLHDALCVLAQTVK	389	402	0.061	0.315649566
1179	Q8BJY1	Psmd5	26S proteasome non-ATPase regulatory subunit 5	GISNQPFPELHCAALK	401	416	0.0609	0.613058096
1180	A0A1L1SSF8	4931406C07Rik	Ester hydrolase C11orf54 homolog	APLVCLPVFVSK	212	223	0.0609	0.220608027
1181	Q922W5	Pycr1;Pycr2	Pyrroline-5-carboxylate reductase 1, mitochondrial;Pyrroline-5-carboxylate reductase 2	CMTNTPVVVR	120	129	0.06055	0.648132557
1182	P14115	Rpl27a	60S ribosomal protein L27a	NQSFCPTVNLDK	66	77	0.0604	0.036205644
1183	P50543	S100a11	Protein S100-A11	CIESLIAVFQK	8	18	0.0603	0.171548796
1184	P35979	Rpl12	60S ribosomal protein L12	CTGGEVGATSALAPK	17	31	0.0601	0.217601642
1185	P58252	Eef2	Elongation factor 2	STLTDSLVCK	33	42	0.0597	0.188423749
1186	Q6P4T2	Snrnp200	U5 small nuclear ribonucleoprotein 200 kDa helicase	DILCGAADEVLAVLK	130	144	0.0597	0.098868298
1187	Q9QUR6	Prep	Prolyl endopeptidase	CLNIEWIQ	703	710	0.0595	0.465210088
1188	P51881	Slc25a5	ADP/ATP translocase 2;ADP/ATP translocase 2, N-terminally processed	GTDIMYTGTLDCWR	246	259	0.0593	0.349986246
1189	A0A1L1SST0	Ppia	Peptidyl-prolyl cis-trans isomerase A;Peptidyl-prolyl cis-trans isomerase A, N-terminally processed	IIPGFMCQGGDFTR	48	61	0.0592	0.068795895
1190	E9Q133	Cct3	T-complex protein 1 subunit gamma	IPGGIIEDSCVLR	166	178	0.0589	0.093876169
1191	A2AGN7	Psmc3	26S protease regulatory subunit 6A	AVCVEAGMIALR	359	370	0.0588	0.377604642
1192	A0A0J9YUR9	Ube2k	Ubiquitin-conjugating enzyme E2 K	IENLCAMGFDR	63	73	0.0587	0.078052161
1193	Q91VI7	Rnh1	Ribonuclease inhibitor	LDDCGLTEVR	30	39	0.05855	0.192023874
1194	J3QN51	Gm21992;Rbm14	RNA-binding protein 14	IFVGNVSAACTSQELR	81	96	0.0585	0.457876656
1195	P10107	Anxa1	Annexin A1	CATSTPAFFAEK	270	281	0.0585	0.071507527
1196	Q91YZ8	Pabpc4;Pabpc2;Pabpc1;Pabpc1l;Pabpc6	Polyadenylate-binding protein;Polyadenylate-binding protein 1	GFGFVCFSSPEEATK	334	348	0.0585	0.048829596
1197	A0A494B9H5	Mrpl11	39S ribosomal protein L11, mitochondrial	HVYEIACVK	97	105	0.0584	0.157403907
1198	Q3TCN2	Plbd2	Putative phospholipase B-like 2;Putative phospholipase B-like 2 28 kDa form;Putative phospholipase B-like 2 40 kDa form;Putative phospholipase B-like 2 15 kDa form	YVQPQGCVLEWIR	341	353	0.0583	0.12114316
1199	P70333	Hnrnph2	Heterogeneous nuclear ribonucleoprotein H2	GLPWSCSAEEVMR	17	29	0.0582	0.583025288
1200	F8WIT2	Anxa6	Annexin;Annexin A6	ALLALCGGED	658	667	0.0582	0.042686053
1201	P48036	Anxa5	Annexin A5	ALLLLCGGEDD	309	319	0.058	0.156729985
1202	F8WIT2	Anxa6	Annexin;Annexin A6	GTVCAANDFNPDADAK	355	370	0.058	0.336373087
1203	Q3TLP8	Rac1	Ras-related C3 botulinum toxin substrate 1	HHCPNTPIILVGTK	122	135	0.0578	0.125089953
1204	Q8K297	Colgalt1	Procollagen galactosyltransferase 1	ALHEQEIDCQLVEAVDGK	356	373	0.0578	0.041594517
1205	A0A0G2JGN6	Psmd9	26S proteasome non-ATPase regulatory subunit 9	GLLGCNIIPLQR	164	175	0.05775	0.351410643
1206	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	VIQCFAETGQVQK	492	504	0.0577	0.241975149
1207	B7FAU9	Flna	Filamin-A	VTYCPTEPGNYIINIK	2096	2111	0.05765	0.236724386
1208	Q8VHX6	Flnc	Filamin-C	APSGNEEPCLLK	1984	1995	0.0576	0.145843056
1209	Q62261	Sptbn1;Sptb;Sptbn2;Sptbn4	Spectrin beta chain, non-erythrocytic 1;Spectrin beta chain, erythrocytic	DALLLWCQMK	177	186	0.0574	0.184163584
1210	A0A1B0GR11	Taldo1	Transaldolase	ALAGCDFLTISPK	291	303	0.0574	0.113914706
1211	P05202	Got2	Aspartate aminotransferase, mitochondrial	EYLPIGGLAEFCK	95	107	0.0571	0.045059861
1212	Q8K2Y7	Mrpl47	39S ribosomal protein L47, mitochondrial	SGASWTCQQLR	83	93	0.05705	0.74986784
1213	Q9JJU8	Sh3bgrl	SH3 domain-binding glutamic acid-rich-like protein	QQDVLCFLEANK	20	31	0.057	0.1094676
1214	Q60936	Adck3	Atypical kinase ADCK3, mitochondrial	AMFEEAYSNYCR	628	639	0.0569	0.173980579
1215	Q8BVQ9	Psmc2	26S protease regulatory subunit 7	LCPNSTGAEIR	418	428	0.05675	0.447315127
1216	Q3TG45	Psmd8	26S proteasome non-ATPase regulatory subunit 8	CYYFDYK	112	118	0.0566	0.587515506
1217	P16460	Ass1	Argininosuccinate synthase	FELTCYSLAPQIK	128	140	0.0566	0.422061388
1218	D3Z4X1	Pgls	6-phosphogluconolactonase	TGALCWFLDEAAAR	149	162	0.0566	0.101781108
1219	P62715	Ppp2cb;Ppp2ca	Serine/threonine-protein phosphatase 2A catalytic subunit beta isoform;Serine/threonine-protein phosphatase 2A catalytic subunit alpha isoform	NVVTIFSAPNYCYR	255	268	0.0564	0.210039542
1220	P03899	Mtnd3	NADH-ubiquinone oxidoreductase chain 3	ANPYECGFDPTSSAR	34	48	0.05635	0.038900284
1221	D3Z0Y2	Prdx6;Prdx6b	Peroxiredoxin-6	DFTPVCTTELGR	18	29	0.0563	0.382870574
1222	P34884	Mif	Macrophage migration inhibitory factor	LLCGLLSDR	79	87	0.0563	0.223611121
1223	O35127	Grcc10	Protein C10	AYGFSCDGEGVLK	68	80	0.0562	0.474597241
1224	O55143	Atp2a2	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2	CLALATHDNPLK	560	571	0.0562	0.07282822
1225	Q922W5	Pycr1;Pycr2	Pyrroline-5-carboxylate reductase 1, mitochondrial;Pyrroline-5-carboxylate reductase 2	SLLINAVEASCIR	252	264	0.05605	0.124894864
1226	Q9EQP2	Ehd4	EH domain-containing protein 4	GYDFCQVLQWFAER	171	184	0.056	0.416687925
1227	Q8BHL8	Psmf1	Proteasome inhibitor PI31 subunit	DPLSPFAVGGDDLDPFGCQR	186	205	0.0558	0.704795939
1228	Q8VCF0	Mavs	Mitochondrial antiviral-signaling protein	ALQICELPGLADQVTR	75	90	0.0558	0.567712971
1229	P20801	Tnnc2	Troponin C, skeletal muscle	SEEELAECFR	92	101	0.0558	0.169807005
1230	P26039	Tln1	Talin-1	TVTDMLMTICAR	107	118	0.0557	0.29442922
1231	Q9Z1N5	Ddx39b	Spliceosome RNA helicase Ddx39b	HFILDECDK	192	200	0.0554	0.281929642
1232	P62911	Rpl32	60S ribosomal protein L32	SYCAEIAHNVSSK	94	106	0.0553	0.314533909
1233	A0A1B0GSR9	Ldha;Ldhc;Ldhb	L-lactate dehydrogenase A chain;L-lactate dehydrogenase;L-lactate dehydrogenase C chain;L-lactate dehydrogenase B chain	VIGSGCNLDSAR	141	152	0.0553	0.321910607
1234	Q78PY7	Snd1	Staphylococcal nuclease domain-containing protein 1	MVLSGCAIIVR	26	36	0.0552	0.23288967
1235	Q62465	Vat1	Synaptic vesicle membrane protein VAT-1 homolog	CLVLTGFGGYDK	63	74	0.0551	0.118017402
1236	A0A571BDS0	Xirp1	Xin actin-binding repeat-containing protein 1	HLFETCSLDTLK	347	358	0.05505	0.466266597
1237	A2AUC9	Klhl41	Kelch-like protein 41	LAPGNCLAILR	130	140	0.05495	0.055333197
1238	A0A0U1RP93	Mylpf	Myosin regulatory light chain 2, skeletal muscle isoform	NICYVITHGDAK	135	146	0.0549	0.029795353
1239	P54071	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	DLAGCIHGLSNVK	414	426	0.0548	0.341101792
1240	A1BN54	Actn1;Actn4;Actn3;Actn2	Alpha-actinin-3;Alpha-actinin-2;Alpha-actinin-4;Alpha-actinin-1	EGLLLWCQR	148	156	0.0546	0.085686339
1241	Q9CQC9	Sar1b	GTP-binding protein SAR1b	ELNARPLEVFMCSVLK	167	182	0.05455	0.123144169
1242	Q8VCQ8	Cald1	Q8VCQ8;S4R1T7;D3Z6I7	CLATLSQIAYQR	12	23	0.0542	0.446737825
1243	Q04447	Ckb	Creatine kinase B-type	FCTGLTQIETLFK	253	265	0.0541	0.367957075
1244	D3Z269	Lypla1	Acyl-protein thioesterase 1	LAGVTALSCWLPLR	120	133	0.054	0.366594602
1245	E9PZF0	Gm20390;Nme2	Nucleoside diphosphate kinase;Nucleoside diphosphate kinase B	SCAHDWVYE	259	267	0.0538	0.180923027
1246	A0A2I3BQL6	Mzt1	Mitotic-spindle organizing protein 1	LCEQGINPEALSSVIK	10	25	0.05365	0.175293946
1247	Q99JY9	Actr3	Actin-related protein 3	YSYVCPDLVK	231	240	0.0535	0.342832547
1248	G3UVV4	Hk1	Hexokinase;Hexokinase-1	CTVSFLLSEDGSGK	885	898	0.0535	0.856458307
1249	A2CEK3	Pgm2;Pgm1	Phosphoglucomutase-1	TIEEYAICPDLK	171	182	0.0534	0.18803214
1250	P08228	Sod1	Superoxide dismutase [Cu-Zn]	LACGVIGIAQ	145	154	0.05335	0.046389386
1251	A0A0R3P9C8	Ndufa9	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 9, mitochondrial	CDVYDIMHLR	82	91	0.05325	0.798067935
1252	P58252	Eef2	Elongation factor 2	TFCQLILDPIFK	288	299	0.0532	0.213651003
1253	Q9D1M0	Sec13	Protein SEC13 homolog	FASGGCDNLIK	182	192	0.0532	0.005316592
1254	Q922Q1	Mtrac2	Mitochondrial amidoxime reducing component 2	CVLTTVDPDTGIIDR	274	288	0.05315	0.331269216
1255	P63213	Gng2	Guanine nucleotide-binding protein G(I)/G(S)/G(O) subunit gamma-2	AAADLMAYCEAHAK	33	46	0.053	0.309525987
1256	P62196	Psmc5	26S protease regulatory subunit 8	GVCTEAGMYALR	361	372	0.05295	0.757185165
1257	Q6ZWZ4	Rpl36	60S ribosomal protein L36	EVCGFAPYER	46	55	0.0522	0.062958742
1258	Q9ER72	Cars	Cysteine--tRNA ligase, cytoplasmic	ALVSQCNLYMAAR	603	615	0.0521	0.352874785
1259	Q99K48	Nono	Non-POU domain-containing octamer-binding protein	FACHSASLTVR	145	155	0.0521	0.198071739
1260	Q02053	Uba1	Ubiquitin-like modifier-activating enzyme 1	DNPGVVTCLDEAR	227	239	0.0519	0.417033967
1261	A2A6Q8	Myl4;Myl3	Myosin light chain 4;Myosin light chain 3	ITYGQCGDVLR	69	79	0.0518	0.198558956
1262	G5E839	Cct4	T-complex protein 1 subunit delta	TGCNVLLIQK	263	272	0.0517	0.207892129
1263	P10639	Txn	Thioredoxin	CMPTFQFYK	73	81	0.0515	0.363218391
1264	Q9WUA2	Farsb	Phenylalanine--tRNA ligase beta subunit	NIFIECTGTDFTK	250	262	0.05145	0.262502226
1265	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	FLEMCDDLLAR	306	316	0.0513	0.152539188
1266	A0A1B0GQZ1	Mrpl23	39S ribosomal protein L23, mitochondrial	CPGIPSWFGL	92	101	0.0512	0.467050777
1267	F6UFG6	Anp32a;Anp32b	Acidic leucine-rich nuclear phosphoprotein 32 family member A;Acidic leucine-rich nuclear phosphoprotein 32 family member B	ELVLDNCK	17	24	0.0511	0.056945022
1268	P56380	Nudt2	Bis(5-nucleosyl)-tetraphosphatase [asymmetrical]	ATLQEGHQFLCSTPA	133	147	0.0511	0.372005952
1269	P80314	Cct2	T-complex protein 1 subunit beta	HGINCFINR	285	293	0.0511	0.295886184
1270	A0A0G2JG69	Mapk8;Mapk10;Mapk9	Mitogen-activated protein kinase;Mitogen-activated protein kinase 8;Mitogen-activated protein kinase 9;Mitogen-activated protein kinase 10	MSYLLYQMLCGIK	92	104	0.05095	0.648123389
1271	A0A0A0MQA5	Tuba4a	Tubulin alpha-4A chain	SIQFVDWCPTGFK	369	381	0.0509	0.137675719
1272	Q921F4	Hnrnpll	Heterogeneous nuclear ribonucleoprotein L-like	VFNLFCLYGNIEK	401	413	0.0509	0.441768087
1273	P58252	Eef2	Elongation factor 2	CLYASVLTAQPR	728	739	0.0508	0.199845025
1274	E9Q616	Ahnak	E9Q616	ADCDVSVPK	1588	1596	0.0507	0.111332274
1275	B1AWE0	Clta	Clathrin light chain A	LCDFNPK	185	191	0.0505	0.099641616
1276	Q99JI4	Psmd6	26S proteasome non-ATPase regulatory subunit 6	QYLFSLYECR	258	267	0.0504	0.431054146
1277	P49962	Srp9	Signal recognition particle 9 kDa protein	VTDDLVCLVYR	42	52	0.0502	0.058731552
1278	A0A0J9YUK7	Ociad1	OCIA domain-containing protein 1	LLFACIVGYFAGK	79	91	0.0502	0.26536834
1279	A0A3B2WB82	Psmg1	Proteasome assembly chaperone 1	LSPTDVFCVFYQLK	115	128	0.05015	0.432864969
1280	Q8VHM5	Hnrnpr;Syncrip	Heterogeneous nuclear ribonucleoprotein Q	SAFLCGVMK	95	103	0.0498	0.11611821
1281	Q08093	Cnn2	Calponin-2;Calponin	DGVILCTLMNK	56	66	0.0497	0.091731323
1282	Q99LC3	Ndufa10	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 10, mitochondrial	VITVDGNICSGK	59	70	0.04965	0.277715654
1283	P62334	Psmc6	26S protease regulatory subunit 10B	NVCTEAGMFAIR	345	356	0.04945	0.230220812
1284	O08528	Hk2	Hexokinase-2;Hexokinase	ASGCEGEDVVTLLK	625	638	0.0493	0.022948699
1285	P48678	Lmna	Prelamin-A/C;Lamin-A/C	AQNTWGCGSSLR	516	527	0.0491	0.192363611
1286	G5E839	Cct4	T-complex protein 1 subunit delta	TLSGMESYCVR	412	422	0.0488	0.034903833
1287	Q8VHX6	Flnc	Filamin-C	LYAQDADGCPIDIK	705	718	0.0485	0.273159791
1288	G3UXQ7	Rab2b;Rab2a	Ras-related protein Rab-2A;Ras-related protein Rab-2B	SCLLLQFTDK	20	29	0.0484	0.283456146
1289	F8WIV2	Serpinb6a;Serpinb6	Serpin B6	TCDLLASFK	122	130	0.0484	0.203337975
1290	G3UY38	Hnrnpl	Heterogeneous nuclear ribonucleoprotein L	VFNVFCLYGNVEK	266	278	0.0481	0.061743212
1291	Q8BKC5	Ipo5	Importin-5	TIECISLIGLAVGK	557	570	0.04805	0.098597616
1292	F8WJK8	St13	Hsc70-interacting protein	LLGHWEEAAHDLALACK	184	200	0.048	0.218024591
1293	Q9CQA3	Sdhb	Succinate dehydrogenase [ubiquinone] iron-sulfur subunit, mitochondrial	CGPMVLDALIK	70	80	0.04795	0.470421404
1294	Q9CQY6	Uqcc2	Ubiquinol-cytochrome-c reductase complex assembly factor 2	LCEEWPVDETK	12	22	0.0477	0.603853917
1295	A0A1L1SRW0	Rpsa	40S ribosomal protein SA	YVDIAIPCNNK	72	82	0.0477	0.045174878
1296	Q91YQ5	Rpn1	Dolichyl-diphosphooligosaccharide--protein glycosyltransferase subunit 1	VACITEQVLTLVNK	476	489	0.0477	0.051636856
1297	D3YVC1	Rps2	40S ribosomal protein S2	GCTATLGNFAK	228	238	0.04755	0.022306208
1298	Q9DAW9	Cnn3	Calponin-3	DGIILCELINK	54	64	0.0473	0.205581645
1299	Q8CI43	Myl6b	Myosin light chain 6B	ILYSQCGDLMR	83	93	0.0473	0.188852195
1300	Q9CWJ9	Atic	Bifunctional purine biosynthesis protein PURH;Phosphoribosylaminoimidazolecarboxamide formyltransferase;IMP cyclohydrolase	VVVCNLYPFVK	98	108	0.0472	0.177381287
1301	P62192	Psmc1	26S protease regulatory subunit 4	DLLEPGCSVLLNHK	142	155	0.0471	0.082607061
1302	A2AKV0	Atp5c1	ATP synthase subunit gamma;ATP synthase subunit gamma, mitochondrial	GLCGAIHSSVAK	77	88	0.0469	0.143663809
1303	G3UZ01	Ptbp3	Polypyrimidine tract-binding protein 3	NLFTEAGCSVK	398	408	0.0467	0.152733599
1304	P54071	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	SSGGFVWACK	300	309	0.0467	0.520866665
1305	Q01853	Vcp	Transitional endoplasmic reticulum ATPase	GVLFYGPPGCGK	513	524	0.04655	0.448112783
1306	A0A1Y7VNP4	Eif5	Eukaryotic translation initiation factor 5	YFGCELGAQTQFDVK	56	70	0.0464	0.49471323
1307	P62141	Ppp1cb;Ppp1cc;Ppp1ca	Serine/threonine-protein phosphatase PP1-beta catalytic subunit;Serine/threonine-protein phosphatase PP1-gamma catalytic subunit;Serine/threonine-protein phosphatase PP1-alpha catalytic subunit	IYGFYDECK	132	140	0.0463	0.034530007
1308	Q6PE15	Abhd10	Mycophenolic acid acyl-glucuronide esterase, mitochondrial	ADIHLLICTIDDLIDK	276	291	0.04625	0.640600522
1309	D3YY68	Eef1d;Eef1b2;Eef1b	Elongation factor 1-delta;Elongation factor 1-beta	LQIQCVVEDDK	152	162	0.0461	0.328431004
1310	P48962	Slc25a4	ADP/ATP translocase 1	EFNGLGDCLTK	153	163	0.046	0.071335827
1311	O08528	Hk2	Hexokinase-2;Hexokinase	HLGLESTCDDSIIVK	806	820	0.0459	0.227039591
1312	Q9R1T2	Sae1	SUMO-activating enzyme subunit 1;SUMO-activating enzyme subunit 1, N-terminally processed	GSGIVECLGPQ	340	350	0.04585	0.356252271
1313	P41105	Rpl28	60S ribosomal protein L28	NCSSFLIK	12	19	0.0458	0.14233195
1314	P70280	Vamp7	Vesicle-associated membrane protein 7	IVYLCITDDDFER	60	72	0.0458	0.910520433
1315	B1AZ41	Chmp6	Charged multivesicular body protein 6	VMEGLQVGNECLNK	14	27	0.0457	0.071643701
1316	Q78XF5	Ostc	Oligosaccharyltransferase complex subunit OSTC	VPFLVLECPNLK	7	18	0.04565	0.348519224
1317	A0A0G2JGQ6	Dclk1	Serine/threonine-protein kinase DCLK1	YQDDFLLDESECR	265	277	0.04555	0.150580368
1318	E9Q4T8	Cul3	Cullin-3	NACQMLMILGLEGR	119	132	0.04535	0.222968621
1319	P52760	Hrsp12	Ribonuclease UK114	AAGCDFNNVVK	68	78	0.0453	0.129890106
1320	Q9WV35	Apobec2	Probable C->U-editing enzyme APOBEC-2	TFLCYVVEVQSK	68	79	0.0451	0.065647544
1321	Q9EQI8	Mrpl46	39S ribosomal protein L46, mitochondrial	FLLDSDGLSCL	273	283	0.0451	0.404508979
1322	B7FAU9	Flna	Filamin-A	VDINTEDLEDGTCR	2082	2095	0.045	0.579903232
1323	P27659	Rpl3;Rpl3l	60S ribosomal protein L3	VACIGAWHPAR	251	261	0.0447	0.518473281
1324	Q3T9X3	Dnm2	Dynamin-2	TEYAEFLHCK	78	87	0.04455	0.411090138
1325	P62830	Rpl23	60S ribosomal protein L23	ECADLWPR	124	131	0.0444	0.093109097
1326	Q8VHX6	Flnc	Filamin-C	VCAYGPGLK	1066	1074	0.0443	0.33549632
1327	E0CXB1	Psma6	Proteasome subunit alpha type-6	DCAVIVTQK	27	35	0.04425	0.113456681
1328	A0A1W2P6V9	Kiaa1033	WASH complex subunit 7	FVSFLQELSCFVTR	138	151	0.04425	0.020773759
1329	Q8BH95	Echs1	Enoyl-CoA hydratase, mitochondrial	LVEEAIQCAEK	218	228	0.0442	0.121092801
1330	Q8R1F1	Fam129b	Niban-like protein 1	VHFEDVLCK	285	293	0.0442	0.358352758
1331	Q9QUR6	Prep	Prolyl endopeptidase	DVLEWVACVR	336	345	0.0439	0.444559161
1332	P63276	Rps17	40S ribosomal protein S17	VCEEIAIIPSK	34	44	0.0438	0.259827267
1333	A0A3B2W824	Rpl10a	Ribosomal protein;60S ribosomal protein L10a	VLCLAVAVGHVK	139	150	0.0437	0.293686205
1334	Q9Z1Z0	Uso1	General vesicular transport factor p115	LQTENCELLQR	811	821	0.04355	0.40429297
1335	A0A1L1SST0	Ppia	Peptidyl-prolyl cis-trans isomerase A;Peptidyl-prolyl cis-trans isomerase A, N-terminally processed	ITISDCGQL	148	156	0.0432	0.058711812
1336	A0A0J9YUQ8	Gsn	Gelsolin	SEDCFILDHGR	288	298	0.0429	0.335904089
1337	P08249	Mdh2	Malate dehydrogenase, mitochondrial	EGVVECSFVQSK	270	281	0.0428	0.175168845
1338	P52480	Pkm	Pyruvate kinase PKM	GIFPVLCK	468	475	0.0427	0.114650613
1339	Q9CQM9	Glrx3	Glutaredoxin-3	ELEASEELDTICPK	220	233	0.0426	0.205824509
1340	A0A0R4J1C2	Capns1	Calpain small subunit 1	TDGFGIDTCR	68	77	0.0422	0.056203462
1341	Q80UU9	Pgrmc2;Pgrmc1	Membrane-associated progesterone receptor component 2;Membrane-associated progesterone receptor component 1	GLATFCLDK	148	156	0.04215	0.347262405
1342	G5E8R0	Tpm1	Tropomyosin alpha-1 chain	CAELEEELK	154	162	0.0419	0.057212029
1343	Q02257	Jup;Ctnnb1	Junction plakoglobin;Catenin beta-1	VAAGVLCELAQDK	603	615	0.04175	0.245581996
1344	Q8VDD5	Myh9;Myh10	Myosin-9;Myosin-10	ADFCIIHYAGK	566	576	0.0417	0.203815047
1345	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	YWLCAATGPSIK	246	257	0.0415	0.562277681
1346	A6ZI44	Aldoa;Aldoart1	Fructose-bisphosphate aldolase;Fructose-bisphosphate aldolase A	ALANSLACQGK	386	396	0.0414	0.23570226
1347	P54823	Ddx6	Probable ATP-dependent RNA helicase DDX6	NLVCTDLFTR	387	396	0.04115	0.201048587
1348	P54071	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	CATITPDEAR	113	122	0.0411	0.133947925
1349	Q9WTN0	Ggps1	Geranylgeranyl pyrophosphate synthase	QIEACGGNPSLVALVK	274	289	0.0411	0.292477257
1350	H3BJP2	Esd	S-formylglutathione hydrolase	AYDATCLVK	201	209	0.041	0.077451888
1351	Q9Z0N1	Eif2s3x;Eif2s3y	Eukaryotic translation initiation factor 2 subunit 3, X-linked;Eukaryotic translation initiation factor 2 subunit 3, Y-linked	SFDVNKPGCEVDDLK	261	275	0.04095	0.271100768
1352	Q5U458	Dnajc11	DnaJ homolog subfamily C member 11	AGLPGFYDPCVGEEK	509	523	0.0409	0.186233576
1353	A0A0A6YXS8	Serpinc1	Antithrombin-III	LGACNDTLK	4	12	0.0408	0.157522737
1354	Q6ZWZ6	Rps12	40S ribosomal protein S12	LGEWVGLCK	85	93	0.0408	0.306317259
1355	P17751	Tpi1	Triosephosphate isomerase	IAVAAQNCYK	60	69	0.0407	0.129142776
1356	CON__P02584	Pfn1	Profilin-1	CYEMASHLR	128	136	0.0407	0.268416401
1357	Q64727	Vcl	Vinculin	TNLLQVCER	979	987	0.0407	0.624691243
1358	Q8BP67	Rpl24	60S ribosomal protein L24	VELCSFSGYK	3	12	0.0405	0.024773255
1359	P14115	Rpl27a	60S ribosomal protein L27a	GVGGACVLVA	139	148	0.0405	0.672890159
1360	A2AUC9	Klhl41	Kelch-like protein 41	NLSEVFDCIR	214	223	0.0404	0.094060441
1361	E9Q3W4	Plec	Plectin	AFCGFEDPR	4194	4202	0.04025	0.050946824
1362	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	IGNCPFSQR	21	29	0.04025	0.040406102
1363	A0A1B0GSL5	Rpl13a	60S ribosomal protein L13a	CEGINISGNFYR	38	49	0.0402	0.121627533
1364	A2AUC9	Klhl41	Kelch-like protein 41	YASGASCLATR	587	597	0.04015	0.378649958
1365	Q921F2	Tardbp	TAR DNA-binding protein 43	VAQSLCGEDLIIK	239	251	0.0399	0.087553535
1366	P13541	Myh3;Myh15;Myh6;Myh8;Myh2;Myh1;Myh7	Myosin-3;Myosin-6;Myosin-8;Myosin-1;Myosin-7	LEDECSELK	944	952	0.0397	0.145550738
1367	Q8BP67	Rpl24	60S ribosomal protein L24	CESAFLSK	36	43	0.0395	0.151995793
1368	P45591	Cfl2	Cofilin-2	AVLFCLSDDK	35	44	0.0393	0.209732547
1369	Q8R1B4	Eif3c	Eukaryotic translation initiation factor 3 subunit C	DEAQVCAIIER	473	483	0.0391	0.889760963
1370	P11983	Tcp1	T-complex protein 1 subunit alpha	ICDDELILIK	356	365	0.039	0.113112466
1371	S4R257	Gapdh;Gm15294	Glyceraldehyde-3-phosphate dehydrogenase	IVSNASCTTNCLAPLAK	101	117	0.0388	0.335328989
1372	E9Q3W4	Plec	Plectin	CDNFTTSWR	23	31	0.0386	0.227633199
1373	Q9DB05	Napa	Alpha-soluble NSF attachment protein	IEEACEIYAR	38	47	0.03815	0.594970581
1374	Q921L6	Cttn	Src substrate cortactin	CALGWDHQEK	246	255	0.0378	0.365966158
1375	P47753	Capza1	F-actin-capping protein subunit alpha-1	DHYSNGFCTVYAK	134	146	0.0378	0.07856742
1376	G5E839	Cct4	T-complex protein 1 subunit delta	IGLIQFCLSAPK	216	227	0.03755	0.005649322
1377	A2AUC9	Klhl41	Kelch-like protein 41	LGLLLDCPR	141	149	0.0375	0.111194235
1378	P60867	Rps20	40S ribosomal protein S20	VCADLIR	35	41	0.0374	0.075659991
1379	Q8BMF4	Dlat	Dihydrolipoyllysine-residue acetyltransferase component of pyruvate dehydrogenase complex, mitochondrial	DVPLGAPLCIIVEK	282	295	0.0374	0.589885871
1380	Q9Z2I9	Sucla2	Succinyl-CoA ligase [ADP-forming] subunit beta, mitochondrial	VLCMDAK	268	274	0.03735	0.501695574
1381	O88844	Idh1	Isocitrate dehydrogenase [NADP] cytoplasmic	DLAACIK	375	381	0.03715	0.348319087
1382	D3Z3J6	Paip1	Polyadenylate-binding protein-interacting protein 1	IENVVLDANCSR	237	248	0.0371	0.415496707
1383	A0A1B0GQY5	Prosc	Proline synthase co-transcribed bacterial homolog protein	ILSSCPEIK	82	90	0.0368	0.106031282
1384	Q62465	Vat1	Synaptic vesicle membrane protein VAT-1 homolog	ACGLNFADLMGR	98	109	0.0368	0.143505997
1385	Q99LP6	Grpel1	GrpE protein homolog 1, mitochondrial	LYGIQGFCK	101	109	0.0368	0.181119072
1386	P11983	Tcp1	T-complex protein 1 subunit alpha	GANDFMCDEMER	379	390	0.0368	0.125039956
1387	Q62472	Lcn4	Vomeronasal secretory protein 2	GECINVGIR	78	86	0.0365	0.402954001
1388	E9Q133	Cct3	T-complex protein 1 subunit gamma	TLIQNCGASTIR	412	423	0.0363	0.064604264
1389	P63017	Hspa8	Heat shock cognate 71 kDa protein	VCNPIITK	602	609	0.0363	0.101512113
1390	Q60823	Akt2;Akt3;Akt1	RAC-beta serine/threonine-protein kinase;RAC-gamma serine/threonine-protein kinase;RAC-alpha serine/threonine-protein kinase	CLQWTTVIER	77	86	0.0362	0.621160101
1391	A2AVJ7	Rrbp1	Ribosome-binding protein 1	ELESQVSCLEK	1050	1060	0.03615	0.181911288
1392	E9Q616	Ahnak	E9Q616	GPQVCGELK	5206	5214	0.0361	0.940123704
1393	A0A140LIZ5	Psmc4	26S protease regulatory subunit 6B	GVLMYGPPGCGK	170	181	0.0357	0.31557623
1394	Q9WVJ2	Psmd13	26S proteasome non-ATPase regulatory subunit 13	SSDEAVILCK	106	115	0.0357	0.166378066
1395	A0A0G2JDK2	Gba	Glucosylceramidase	VPMASCDFSIR	140	150	0.0356	0.21054303
1396	P80316	Cct5	T-complex protein 1 subunit epsilon	ESNPALGIDCLHK	484	496	0.0355	0.300744168
1397	P62334	Psmc6	26S protease regulatory subunit 10B	GCLLYGPPGTGK	169	180	0.03535	0.606091527
1398	Q3UGS4	Fam195b	Protein FAM195B	CLVEEYVEK	61	69	0.03535	0.538081256
1399	P31230	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1;Endothelial monocyte-activating polypeptide 2	MVVLLCNLKPAK	204	215	0.03535	0.278041988
1400	D3YYM6	Rps5	40S ribosomal protein S5;40S ribosomal protein S5, N-terminally processed	AQCPIVER	64	71	0.03515	0.090525761
1401	P62307	Snrpf	Small nuclear ribonucleoprotein F	CNNVLYIR	66	73	0.0348	0.105553018
1402	P61089	Ube2n;Ube2t	Ubiquitin-conjugating enzyme E2 N;Ubiquitin-conjugating enzyme E2 T	ICLDILK	86	92	0.0348	0.156247569
1403	A0A087WQE6	Tceb1	Transcription elongation factor B polypeptide 1	VCMYFTYK	73	80	0.03465	0.087750625
1404	A0A494BAF6	Ddb1	DNA damage-binding protein 1	YNACILEYK	84	92	0.0344	0.375706805
1405	Q9D051	Pdhb	Pyruvate dehydrogenase E1 component subunit beta, mitochondrial	EGIECEVINLR	259	269	0.0343	0.487347868
1406	E0CZE0	Nae1	NEDD8-activating enzyme E1 regulatory subunit	LLCSNSAFLR	358	367	0.03425	0.216777261
1407	A0A2C9F2D2	Anxa7	Annexin A7	VLIEILCTR	276	284	0.0342	0.169540222
1408	Q8BX20	Gm5662;Gm8300;Gm2016;Gm2035;Gm5039;Gm21319;Eif1a	Eukaryotic translation initiation factor 1A	LEAMCFDGVR	47	56	0.0341	0.008294508
1409	D3YZB2	Synj2	Synaptojanin-2	QHQVNCHNWLLK	87	98	0.03405	0.04361011
1410	P51859	Hdgf	Hepatoma-derived growth factor	CGDLVFAK	12	19	0.034	0.195307422
1411	A0A0N4SV57	Anxa4	Annexin A4;Annexin	FLSILCSR	193	200	0.034	0.540728715
1412	P47857	Pfkm;Pfkl	ATP-dependent 6-phosphofructokinase, muscle type;ATP-dependent 6-phosphofructokinase, liver type	LPLMECVQVTK	346	356	0.0339	0.325394271
1413	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	ICEEAFTR	561	568	0.0338	0.803340248
1414	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	TYIQCIAAISR	233	243	0.0338	0.092049403
1415	Q5UE59	Klc1;Klc4;Klc2	Kinesin light chain 1;Kinesin light chain 4;Kinesin light chain 2	NNLASCYLK	385	393	0.03375	0.458833734
1416	O55029	Copb2	Coatomer subunit beta	TFEVCDLPVR	52	61	0.0337	0.656776979
1417	Q8C281	Cast	Calpastatin	CGEDEDTVPAEYR	306	318	0.0337	0.516166968
1418	A0A2C9F2D2	Anxa7	Annexin A7	CYQLEFGR	295	302	0.0336	0.258466476
1419	A0A286YEC4	Hnrnpk	Heterogeneous nuclear ribonucleoprotein K	GSDFDCELR	140	148	0.0335	0.12957358
1420	Q9R0P5	Dstn	Destrin	AVIFCLSADK	35	44	0.0332	0.71562614
1421	A0A494BB86	Actr1b;Actr1a	Beta-centractin;Alpha-centractin	ACYLSINPQK	221	230	0.03305	0.186137035
1422	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	EVTGSIQLCR	606	615	0.0329	0.199690754
1423	A0A0A6YXF6	Rhoa;Rhoc	Transforming protein RhoA;Rho-related GTP-binding protein RhoC	HFCPNVPIILVGNK	105	118	0.0329	0.090268951
1424	Q78PY7	Snd1	Staphylococcal nuclease domain-containing protein 1	EVCFTIENK	94	102	0.03285	0.406828559
1425	D3YXG6	Arpc2	Actin-related protein 2/3 complex subunit 2	NCFASVFEK	103	111	0.03275	0.010795523
1426	Q9CQW0	Emc6	ER membrane protein complex subunit 6	GNAAVLDYCR	21	30	0.03265	0.357343396
1427	P63168	Dynll1;BC048507;Dynll2	Dynein light chain 1, cytoplasmic;Dynein light chain 2, cytoplasmic	YNPTWHCIVGR	50	60	0.0326	0.206192957
1428	A0A494BB86	Actr1b;Actr1a	Beta-centractin;Alpha-centractin	YCFPNYVGRPK	33	43	0.0322	0.529196369
1429	Q63829	Commd3	COMM domain-containing protein 3	IELFCTEYQNNK	97	108	0.032	0.631976686
1430	A0A1Y7VJ48	Tbca	Tubulin-specific chaperone A	MMIPDCQR	38	45	0.0319	0.173901996
1431	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	VWNLANCK	176	183	0.0314	0.182595065
1432	E9PZF0	Gm20390;Nme2;Nme1	Nucleoside diphosphate kinase;Nucleoside diphosphate kinase B;Nucleoside diphosphate kinase A	GDFCIQVGR	106	114	0.0313	0.039896772
1433	P14152	Mdh1	Malate dehydrogenase, cytoplasmic	ENFSCLTR	150	157	0.0313	0.457140983
1434	Q9Z2I9	Sucla2	Succinyl-CoA ligase [ADP-forming] subunit beta, mitochondrial	CDVIAQGIVMAVK	384	396	0.0311	0.086398899
1435	Q9Z1F9	Uba2	SUMO-activating enzyme subunit 2	VLVVGAGGIGCELLK	20	34	0.031	0.812533338
1436	P68372	Tubb4b;Tubb4a;Tubb5;Tubb2b;Tubb2a;Tubb6;Tubb3	Tubulin beta-4B chain;Tubulin beta-4A chain;Tubulin beta-5 chain;Tubulin beta-2B chain;Tubulin beta-2A chain;Tubulin beta-6 chain;Tubulin beta-3 chain	NMMAACDPR	298	306	0.031	0.120197341
1437	P07356	Anxa2	Annexin A2;Annexin	ALLYLCGGDD	330	339	0.031	0.03867129
1438	D3YYV8	Rpl5	60S ribosomal protein L5	DIICQIAYAR	9	18	0.0309	0.459069106
1439	Q5XJY5	Arcn1	Coatomer subunit delta	NTLEWCLPVIDAK	436	448	0.03055	0.067123066
1440	F8WIT2	Anxa6	Annexin;Annexin A6	FMTVLCTR	541	548	0.0305	0.229604979
1441	P62911	Rpl32	60S ribosomal protein L32	ELEVLLMCNK	84	93	0.0304	0.546130316
1442	P11983	Tcp1	T-complex protein 1 subunit alpha	IACLDFSLQK	234	243	0.0302	0.141029146
1443	A0A494B9A6	Msln	Mesothelin;Megakaryocyte-potentiating factor;Mesothelin, cleaved form	MNAQAIALVACYLR	413	426	0.02995	0.427333314
1444	F8WIT2	Anxa6	Annexin;Annexin A6	CLIEILASR	114	122	0.0299	0.271977709
1445	A2A7S7	Yars	Tyrosine--tRNA ligase;Tyrosine--tRNA ligase, cytoplasmic;Tyrosine--tRNA ligase, cytoplasmic, N-terminally processed	ISEECIAQWK	533	542	0.0299	0.356610574
1446	O35295	Purb	Transcriptional activator protein Pur-beta	FGGAFCR	280	286	0.02925	0.161969758
1447	Q9DBL1	Acadsb	Short/branched chain specific acyl-CoA dehydrogenase, mitochondrial	CIEWMGGVGYTK	385	396	0.02925	0.108785659
1448	H3BIY9	Ap2b1;Ap1b1	AP complex subunit beta;AP-2 complex subunit beta;AP-1 complex subunit beta-1	DCEDPNPLIR	94	103	0.02915	0.429358148
1449	A0A2I3BQ03	Ywhaz	14-3-3 protein zeta/delta	YDDMAACMK	19	27	0.029	0.137751341
1450	P05202	Got2	Aspartate aminotransferase, mitochondrial	VGAFTVVCK	288	296	0.0288	0.675519452
1451	J3QMM7	Carkd	ATP-dependent (S)-NAD(P)H-hydrate dehydratase	VGADLTHVFCAR	79	90	0.0287	0.32029227
1452	P70333	Hnrnph2;Hnrnph1;Hnrnph3	Heterogeneous nuclear ribonucleoprotein H2;Heterogeneous nuclear ribonucleoprotein H;Heterogeneous nuclear ribonucleoprotein H, N-terminally processed	GLPFGCSK	117	124	0.02865	0.175234141
1453	F8WIV2	Serpinb6a;Serpinb6	Serpin B6	TNGILFCGR	387	395	0.0283	0.087890971
1454	P62196	Psmc5	26S protease regulatory subunit 8	NIDINDVTPNCR	102	113	0.02815	0.344133673
1455	A1BN54	Actn1	Alpha-actinin-1	DGLGFCALIHR	175	185	0.0281	0.18861051
1456	Q00612	G6pdx	Glucose-6-phosphate 1-dehydrogenase X	NIQETCMSQTGWNR	153	166	0.0281	0.52844279
1457	Q9Z1Q5	Clic1	Chloride intracellular channel protein 1	LHIVQVVCK	184	192	0.028	0.637745635
1458	Q9EQK5	Mvp	Major vault protein	HYCIVANPVSR	57	67	0.0275	0.358306828
1459	Q9CS42	Prps2;Prps1l1;Prps1l3;Prps1	Ribose-phosphate pyrophosphokinase 2;Ribose-phosphate pyrophosphokinase 1	VTAVIPCFPYAR	85	96	0.02745	0.198350536
1460	E9PUV4	Skp1a;Skp1	S-phase kinase-associated protein 1	GLLDVTCK	66	73	0.0274	0.029201965
1461	E9Q133	Cct3	T-complex protein 1 subunit gamma	NLQDAMQVCR	352	361	0.0274	0.650331784
1462	H3BIY9	Ap2b1;Ap1b1	AP complex subunit beta;AP-2 complex subunit beta;AP-1 complex subunit beta-1	CVSTLLDLIQTK	391	402	0.0273	0.29009509
1463	Q9QZD8	Slc25a10	Mitochondrial dicarboxylate carrier	GALVTVGQLSCYDQAK	170	185	0.0273	0.227931856
1464	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	LWNTLGVCK	131	139	0.0269	0.287824452
1465	P10107	Anxa1	Annexin A1	CLTTIVK	263	269	0.0268	0.114113943
1466	P10649	Gstm1;Gstm3	Glutathione S-transferase Mu 1;Glutathione S-transferase Mu 3	CLDAFPNLR	174	182	0.0265	0.157390352
1645	H3BJP2	Esd	S-formylglutathione hydrolase	CFGGLQK	11	17	NH	\N
1467	O88569	Hnrnpa2b1	Heterogeneous nuclear ribonucleoproteins A2/B1	LTDCVVMR	47	54	0.0263	0.090926149
1468	A0A1B0GRG1	Rras	Ras-related protein R-Ras	ICTVDGIPAR	47	56	0.0263	0.489581834
1469	Q9R0N0	Galk1	Galactokinase	GYALLIDCR	196	204	0.0262	0.070170902
1470	Q60936	Adck3	Atypical kinase ADCK3, mitochondrial	IVSTLCK	260	266	0.0261	0.043347542
1471	Q3TW96	Uap1l1	UDP-N-acetylhexosamine pyrophosphorylase-like protein 1	LLRPQDC	501	507	0.0259	0.94366879
1472	P13541	Myh3;Myh15;Myh6;Myh7b;Myh8;Myh2;Myh1;Myh7;Myh9;Myh10;Myh14;Myh11	Myosin-3;Myosin-6;Myosin-7B;Myosin-8;Myosin-1;Myosin-7;Myosin-9;Myosin-10;Myosin-14;Myosin-11	CNGVLEGIR	694	702	0.0259	0.23709574
1473	Q9JHS3	Lamtor2	Ragulator complex protein LAMTOR2	VANLLLCMYAK	86	96	0.0258	0.18387499
1474	Q9D967	Mdp1	Magnesium-dependent phosphatase 1	LGVTCIHIR	134	142	0.0252	0.202340757
1475	E9Q3W4	Plec	Plectin	CVEDPETGLR	2710	2719	0.0251	0.039440219
1476	P58774	Tpm2;Tpm4	Tropomyosin beta chain;Tropomyosin alpha-4 chain	CGDLEEELK	64	72	0.0247	0.16194332
1477	O35226	Psmd4	26S proteasome non-ATPase regulatory subunit 4	ITFCTGIR	84	91	0.02465	0.05450316
1478	P70349	Hint1	Histidine triad nucleotide-binding protein 1	CAADLGLK	84	91	0.0245	0.414901904
1479	P35486	Pdha1	Pyruvate dehydrogenase E1 component subunit alpha, somatic form, mitochondrial	VDGMDILCVR	254	263	0.0243	0.175286177
1480	Q9CQM5	Txndc17	Thioredoxin domain-containing protein 17	LVESECCQSSLVEMIFSED	105	123	0.0242	0.559847611
1481	Q8BMJ3	Eif1ax	Eukaryotic translation initiation factor 1A, X-chromosomal	LEAMCFDGVK	47	56	0.024	0.092450033
1482	P97351	Rps3a	40S ribosomal protein S3a	LFCVGFTK	137	144	0.0238	0.371895775
1483	F6ZV59	Hnrnpd	Heterogeneous nuclear ribonucleoprotein D0	FGEVVDCTLK	30	39	0.0237	0.443616935
1484	P09411	Pgk1	Phosphoglycerate kinase 1;Phosphoglycerate kinase	FCLDNGAK	49	56	0.0237	0.161979842
1485	Q8VDD5	Myh9	Myosin-9	QACVLMIK	738	745	0.0233	0.24936564
1486	P51881	Slc25a5	ADP/ATP translocase 2;ADP/ATP translocase 2, N-terminally processed	GLGDCLVK	156	163	0.0232	0.243128038
1487	P12970	Rpl7a;Gm14214	60S ribosomal protein L7a	MGVPYCIIK	177	185	0.0229	0.065742074
1488	Q64727	Vcl	Vinculin	ALIQCAK	946	952	0.0226	0.292425203
1489	Q8VEK3	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U	MCLFAGFQR	569	577	0.0225	0.257701138
1490	P45376	Akr1b1;Akr1b3	Aldose reductase	LWCTFHDK	79	86	0.0223	0.285153398
1491	O09131	Gsto1	Glutathione S-transferase omega-1	FCPFAQR	31	37	0.0222	0.38167508
1492	P62141	Ppp1cb;Ppp1cc;Ppp1ca	Serine/threonine-protein phosphatase PP1-beta catalytic subunit;Serine/threonine-protein phosphatase PP1-gamma catalytic subunit;Serine/threonine-protein phosphatase PP1-alpha catalytic subunit	HDLDLICR	238	245	0.0219	0.436554464
1493	P45591	Cfl2	Cofilin-2	LLPLNDCR	74	81	0.0218	0.094596101
1494	Q9WVA4	Tagln2	Transgelin-2	DGTVLCK	58	64	0.02155	0.167343136
1495	A2A7S7	Yars	Tyrosine--tRNA ligase;Tyrosine--tRNA ligase, cytoplasmic;Tyrosine--tRNA ligase, cytoplasmic, N-terminally processed	LVVVLCNLKPQK	455	466	0.0214	0.511054144
1496	D3Z712	Rps15a	40S ribosomal protein S15a	CGVISPR	72	78	0.0211	0.491224813
1497	A0A1B0GS70	Psma1	Proteasome subunit alpha type-1	LLCNFMR	58	64	0.0209	0.067665721
1498	Q9D7E3	Ovca2	Ovarian cancer-associated gene 2 protein homolog	VLCLAGFR	9	16	0.02085	0.708802481
1499	D3Z7U0	Anxa11	Annexin;Annexin A11	FNAILCSR	377	384	0.0208	0.924678098
1500	A0A0J9YKD4	Ckm	Creatine kinase M-type	FCVGLQK	184	190	0.0206	0.296483705
1501	O55029	Copb2	Coatomer subunit beta	VWCVASLR	274	281	0.0197	0.706349657
1502	A0A1C7CYV0	Pls3	Plastin-3	AVGDGIVLCK	159	168	0.0194	0.007289761
1503	B1AR28	Acadvl	Very long-chain specific acyl-CoA dehydrogenase, mitochondrial	IFCSEAAWK	399	407	0.0193	0.183230331
1504	P80316	Cct5	T-complex protein 1 subunit epsilon	SLHDALCVIR	401	410	0.0187	0.113439591
1505	O55126	Gbas	Protein NipSnap homolog 2	ICQEVLPK	87	94	0.01865	0.170615577
1506	Q8BZF8	Pgm5	Phosphoglucomutase-like protein 5	TIEEYAICPDLR	158	169	0.0182	0.854744461
1507	Q9CXW3	Cacybp	Calcyclin-binding protein	TDTVIILCR	148	156	0.018	0.197200029
1508	H7BWX1	Pfdn5	Prefoldin subunit 5	DCLNVLNK	48	55	0.0172	0.173446956
1509	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	LSCLPAFK	3936	3943	0.01715	0.597845384
1510	P62908	Rps3	40S ribosomal protein S3	ACYGVLR	118	124	0.0165	0.5687623
1511	Q9WVJ2	Psmd13	26S proteasome non-ATPase regulatory subunit 13	FLGCVDIK	179	186	0.01425	0.292767018
1512	Q3TLP8	Rac1;Rac3	Ras-related C3 botulinum toxin substrate 1;Ras-related C3 botulinum toxin substrate 3	AVLCPPPVK	194	202	0.0142	0.389979126
1513	P60843	Eif4a1	Eukaryotic initiation factor 4A-I	AILPCIK	62	68	0.0135	0.484259104
1514	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	CLGPLVSK	71	78	0.01345	0.20503468
1515	Q9CQ10	Chmp3	Charged multivesicular body protein 3	EVCVVLAK	58	65	0.0122	0.297170043
1516	E9PYY9	Olfr65	Olfactory receptor	LFSLPCSK	304	311	0.0115	0.328863581
1517	P45376	Akr1b1	Aldose reductase	VCALMSCAK	298	306	0.00915	0.564139836
1518	Q9JIF7	Copb1	Coatomer subunit beta	AAAQCYIDLIIK	280	291	NH	\N
1519	D6RDC2	Slc15a4	Solute carrier family 15 member 4	AACGAVLLAELLER	28	41	NH	\N
1520	P17426	Ap2a1	AP-2 complex subunit alpha-1	AADLLYAMCDR	389	399	NH	\N
1521	A0A087WPL5	Dhx9	ATP-dependent RNA helicase A	AAECNIVVTQPR	437	448	NH	\N
1522	P50580	Pa2g4	Proliferation-associated protein 2G4	AAHLCAEAALR	145	155	NH	\N
1523	P35290	Rab24	Ras-related protein Rab-24	AAIVCYDLTDSSSFER	83	98	NH	\N
1524	Q8CBB7	Ap1g1	AP-1 complex subunit gamma-1	AALCAVHVIR	157	166	NH	\N
1525	A0A1D5RLG3	Rab3gap1	Rab3 GTPase-activating protein catalytic subunit	AANPGCFLEDFVR	688	700	NH	\N
1526	Q6PF96	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial	AAQIGAHTLSGACLDPAAFK	45	64	NH	\N
1527	O08528	Hk2	Hexokinase-2;Hexokinase	AAQLCGAGMAAVVDK	830	844	NH	\N
1528	G3UVV4	Hk1	Hexokinase;Hexokinase-1	AAQLCGAGMAAVVEK	829	843	NH	\N
1529	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	AAQTSVAYGCIK	493	504	NH	\N
1530	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	AASAGPQVSCVQTVPSDGQGVK	521	542	NH	\N
1531	P53395	Dbt	Lipoamide acyltransferase component of branched-chain alpha-keto acid dehydrogenase complex, mitochondrial	AASLGLLQFPILNASVDENCQNITYK	314	339	NH	\N
1532	P55264	Adk	Adenosine kinase	AATFFGCIGIDK	99	110	NH	\N
1533	Q9D2R0	Aacs	Acetoacetyl-CoA synthetase	AAVGTACGLALGNYNDLYHWSVR	34	56	NH	\N
1534	P13542	Myh8	Myosin-8	AAYLQCLNSADLLK	387	400	NH	\N
1535	P56380	Nudt2	Bis(5-nucleosyl)-tetraphosphatase [asymmetrical]	ACGLIIFR	5	12	NH	\N
1536	Q8VEH6	Cbwd1	COBW domain-containing protein 1	ACQLVFIGR	351	359	NH	\N
1537	G5E8R3	Pcx;Pc	Pyruvate carboxylase;Pyruvate carboxylase, mitochondrial	ACTELGIR	55	62	NH	\N
1538	Q5U4C5	Ipo4	Importin-4	ACYALENFVENLGPK	458	472	NH	\N
1539	A0A1B0GT70	Erlin2	Erlin-2	ADAECYTALK	176	185	NH	\N
1540	E9Q390	Myof	Myoferlin	ADCLMGEFK	273	281	NH	\N
1541	G5E8R3	Pcx;Pc	Pyruvate carboxylase;Pyruvate carboxylase, mitochondrial	ADFAQACQDAGVR	125	137	NH	\N
1542	A0A1D5RLG3	Rab3gap1	Rab3 GTPase-activating protein catalytic subunit	ADNPQCLLGDFVTEFLK	317	333	NH	\N
1543	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	ADSCVSPNTVSQPLK	572	586	NH	\N
1544	F6XN97	0610010K14Rik	F6XN97	ADSLTLDSGLLTTSADAPLLSC	134	155	NH	\N
1545	E9Q1G8	44446	Septin-7	ADTLTPEECQQFK	196	208	NH	\N
1546	A2AW05	Ssrp1	FACT complex subunit SSRP1	ADVIQATGDAICIFR	189	203	NH	\N
1547	A0A1W2P727	Ilvbl	Acetolactate synthase-like protein	ADVVVLAGAVCDFR	344	357	NH	\N
1548	Q8VDM6	Hnrnpul1	Heterogeneous nuclear ribonucleoprotein U-like protein 1	AECEILMMVGLPAAGK	420	435	NH	\N
1549	Q62418	Dbnl	Drebrin-like protein	AEEDVEPECIMEK	119	131	NH	\N
1550	Q3V3R1	Mthfd1l	Monofunctional C1-tetrahydrofolate synthase, mitochondrial	AEIDLVCELAK	807	817	NH	\N
1551	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	AEQFYCGDTEGK	386	397	NH	\N
1552	P60487	Pdxp	Pyridoxal phosphate phosphatase	AEQLFSSALCAAR	82	94	NH	\N
1553	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	AFCTGQELQLVQLEGGGGSGTYR	1313	1335	NH	\N
1554	Q8VHX6	Flnc	Filamin-C	AFGPGLEPTGCIVDRPAEFTIDAR	673	696	NH	\N
1555	Q9CY97	Ssu72	RNA polymerase II subunit A C-terminal domain phosphatase SSU72	AFLHTVCFY	186	194	NH	\N
1556	O70503	Hsd17b12	Very-long-chain 3-oxoacyl-CoA reductase	AFQVWCVGNEALVGPR	33	48	NH	\N
1557	E9PYH1	Naa20	N-alpha-acetyltransferase 20	AFTCDDLFR	6	14	NH	\N
1558	A0A0R4J083	Acadl	Long-chain specific acyl-CoA dehydrogenase, mitochondrial	AFVDSCLQLHETK	346	358	NH	\N
1559	F6XC54	Diap1;Diaph1	Protein diaphanous homolog 1	AGCAVTSLLASELTK	1173	1187	NH	\N
1560	G5E8R3	Pcx;Pc	Pyruvate carboxylase;Pyruvate carboxylase, mitochondrial	AGTHILCIK	733	741	NH	\N
1561	Q8CGK3	Lonp1	Lon protease homolog, mitochondrial	AGVTCIILPAENR	894	906	NH	\N
1562	A0A1L1SSF8	0	Ester hydrolase C11orf54 homolog	AHIMPAEFSSCPLNSDEAVNK	183	203	NH	\N
1563	Q64514	Tpp2	Tripeptidyl-peptidase 2	AIEFCIAR	729	736	NH	\N
1564	F8WIR1	Ctsd	Cathepsin D	AIGAVPLIQGEYMIPCEK	306	323	NH	\N
1565	K3W4M2	Ryr1	Ryanodine receptor 1	AILGLPNSVEEMCPDIPVLER	3229	3249	NH	\N
1566	A2AN98	Sec23b	Protein transport protein Sec23B	AILNPLCQVDYR	68	79	NH	\N
1567	A0A0G2JEQ8	Lphn2	Latrophilin-2	AIVDSPCIYEAEQK	142	155	NH	\N
1568	E9PUF4	Rbm26	RNA-binding protein 26	ALCIDQLDVFLQK	51	63	NH	\N
1569	E9Q6R7	Utrn	E9Q6R7;A0A1W2P7C0;Q61636	ALCLDLLELNTTNEVFK	2873	2889	NH	\N
1570	Q9D7N3	Mrps9	28S ribosomal protein S9, mitochondrial	ALCSFVTEDEVEWMR	345	359	NH	\N
1571	Q8C052	Map1s	Microtubule-associated protein 1S;MAP1S heavy chain;MAP1S light chain	ALCYVISGQGQR	887	898	NH	\N
1572	Q61239	Fnta	Protein farnesyltransferase/geranylgeranyltransferase type-1 subunit alpha	ALELCEILAK	337	346	NH	\N
1573	A2A5V1	Sh3bp1	SH3 domain-binding protein 1	ALEMTCAIQNQLAR	33	46	NH	\N
1574	F6UK66	Ccdc50	Coiled-coil domain-containing protein 50	ALEQHDCEIAQEIQEK	81	96	NH	\N
1575	Q99P31	Hspbp1	Hsp70-binding protein 1	ALFAISCLVR	206	215	NH	\N
1576	O08848	Trove2	60 kDa SS-A/Ro ribonucleoprotein	ALGSVLNASTVAAAMCMVVTR	385	405	NH	\N
1577	Q8VIK2	Mpv17l2	Mpv17-like protein 2	ALLLTNTLGCGVLMAAGDGAR	24	44	NH	\N
1578	P17426	Ap2a1	AP-2 complex subunit alpha-1	ALQVGCLLR	936	944	NH	\N
1579	A0A286YCI0	Ngly1	Peptide-N(4)-(N-acetyl-beta-glucosaminyl)asparagine amidase	ALTCIPVSELK	191	201	NH	\N
1580	Q9D0L7	Armc10	Armadillo repeat-containing protein 10	ALTLFQNINNCLK	243	255	NH	\N
1581	Q9CR57	Rpl14	60S ribosomal protein L14	ALVDGPCTR	36	44	NH	\N
1582	Q9JLI8	Sart3	Squamous cell carcinoma antigen recognized by T-cells 3	ALVENCLVPDLWIR	337	350	NH	\N
1583	Q02053	Uba1	Ubiquitin-like modifier-activating enzyme 1	ALVLELCCNDESGEDVEVPYVR	1033	1054	NH	\N
1584	Q9CQ62	Decr1	2,4-dienoyl-CoA reductase, mitochondrial	AMTTFLSTLGAQCVIASR	74	91	NH	\N
1585	A0A0G2JGL6	Fxr1	Fragile X mental retardation syndrome-related protein 1	ANDQEPCGWWLAK	52	64	NH	\N
1586	Q9CZW4	Acsl3	Long-chain-fatty-acid--CoA ligase 3	ANIAIFCETR	160	169	NH	\N
1587	Q9CQV5	Mrps24	28S ribosomal protein S24, mitochondrial	ANQVDICALVLR	114	125	NH	\N
1588	O08797	Serpinb9	O08797	ANSILFCGR	362	370	NH	\N
1589	Q80X90	Flnb	Filamin-B	APAVATVGSICDLNLK	2105	2120	NH	\N
1590	A0A3B2WBC6	Polr2m	A0A3B2WBC6	APESPPAAEPAPAVGPAGDPCPPR	7	30	NH	\N
1591	P54923	Adprh	[Protein ADP-ribosylarginine] hydrolase	APGGACMQNAMLLQPNR	103	119	NH	\N
1592	Q5NCU4	Sparc	SPARC	APLIPMEHCTTR	255	266	NH	\N
1593	Q08024	Cbfb	Core-binding factor subunit beta	APMILNGVCVIWK	99	111	NH	\N
1594	P51150	Rab7a	Ras-related protein Rab-7a	AQAWCYSK	139	146	NH	\N
1595	Q9CQ48	Nudcd2	NudC domain-containing protein 2	AQDIQCGLQSR	40	50	NH	\N
1596	Q9CZC8	Scrn1	Secernin-1	AQSPCFGDDDPAK	320	332	NH	\N
1597	Q6PF96	Etfdh	Electron transfer flavoprotein-ubiquinone oxidoreductase, mitochondrial	ASCDAQTYGIGLK	203	215	NH	\N
1598	O54774	Ap3d1	AP-3 complex subunit delta-1	ASCILQLVK	572	580	NH	\N
1599	Q8VD65	Pik3r4	Phosphoinositide 3-kinase regulatory subunit 4	ASGLVVLVSVITSCLQTLK	372	390	NH	\N
1600	Q9Z1T1	Ap3b1	AP-3 complex subunit beta-1	ASILWLIGENCER	498	510	NH	\N
1601	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	ASLACGPMVK	3383	3392	NH	\N
1602	P14873	Map1b	Microtubule-associated protein 1B;MAP1B heavy chain;MAP1 light chain LC1	ASLTLFCPEEGDWK	184	197	NH	\N
1603	P31324	Prkar2b	cAMP-dependent protein kinase type II-beta regulatory subunit	ASVCAEAYNPDEEEDDAESR	111	130	NH	\N
1604	O70475	Ugdh	UDP-glucose 6-dehydrogenase	ASVGFGGSCFQK	268	279	NH	\N
1605	A0A3B2WCL5	Ranbp3	Ran-binding protein 3	ATAWTCLLEK	370	379	NH	\N
1606	A0A1W2P866	44449	Septin-10	ATCELFPNQSFLASGSSIR	171	189	NH	\N
1607	G3UVV4	Hk1	Hexokinase;Hexokinase-1	ATDCVGHDVATLLR	624	637	NH	\N
1608	D3Z0U4	Chrac1	Chromatin accessibility complex protein 1	ATELFVQYLATCSYR	48	62	NH	\N
1609	Q80X95	Rraga;Rragb	Ras-related GTP-binding protein A;Ras-related GTP-binding protein B	ATFLVISHYQCK	209	220	NH	\N
1610	Q9ERK4	Cse1l	Exportin-2	ATIELCSTHANDASALR	190	206	NH	\N
1611	A0A0J9YUS5	Eif4g1	Eukaryotic translation initiation factor 4 gamma 1	ATSLLLEILGLLCK	1075	1088	NH	\N
1612	D3YZZ6	Eif2a	Eukaryotic translation initiation factor 2A;Eukaryotic translation initiation factor 2A, N-terminally processed	AVCLEFSPNNTVLATWQPYTTSK	61	83	NH	\N
1613	P17427	Ap2a2	AP-2 complex subunit alpha-2	AVDLLYAMCDR	388	398	NH	\N
1614	Q9D7B6	Acad8	Isobutyryl-CoA dehydrogenase, mitochondrial	AVIFEDCAVPVANR	243	256	NH	\N
1615	Q5NCE8	Mrs2	Magnesium transporter MRS2 homolog, mitochondrial	AVITPECLLILDYR	133	146	NH	\N
1616	P70402	Mybph	Myosin-binding protein H	AVSEQGVCTLEIR	436	448	NH	\N
1617	P26039	Tln1	Talin-1	AVTDSINQLITMCTQQAPGQK	1341	1361	NH	\N
1618	Q8K211	Slc31a1	High affinity copper uptake protein 1	AVVVDITEHCH	186	196	NH	\N
1619	O08911	Mapk12	Mitogen-activated protein kinase 12	AVYQDLQPVGSGAYGAVCSAVDSR	25	48	NH	\N
1620	J3QQ30	Pitpna;Pitpnb	Phosphatidylinositol transfer protein alpha isoform;Phosphatidylinositol transfer protein beta isoform	AWNAYPYCR	88	96	NH	\N
1621	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	AWNLICDVSR	307	316	NH	\N
1622	G3UXK7	Hccs	Cytochrome c-type heme lyase	AYDYVECPVTGAR	64	76	NH	\N
1623	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	AYQCVVLLQSK	290	300	NH	\N
1624	A0A140LJB7	Gps1	COP9 signalosome complex subunit 1	CAAGLAELAAR	246	256	NH	\N
1625	Q9WUA2	Farsb	Phenylalanine--tRNA ligase beta subunit	CAEIFVGGQSIGK	548	560	NH	\N
1626	F7D439	Asl	Argininosuccinate lyase	CAGLLMTLK	110	118	NH	\N
1627	Q8VDM4	Psmd2	26S proteasome non-ATPase regulatory subunit 2	CALGVFR	251	257	NH	\N
1628	Q924C1	Xpo5	Exportin-5	CALMEALVLVSNQFK	646	660	NH	\N
1629	Q91VH6	Memo1	Protein MEMO1	CALSSVDIYR	88	97	NH	\N
1630	D3Z390	Bicd2	Protein bicaudal D homolog 2	CDEYITQLDEMQR	676	688	NH	\N
1631	Q04750	Top1	DNA topoisomerase 1	CDFTQMSQYFK	302	312	NH	\N
1632	A2ARZ7	Rab22a	Ras-related protein Rab-22A	CDLTDVR	113	119	NH	\N
1633	E9QM77	Atxn2	Ataxin-2	CDLVLDAAHEK	271	281	NH	\N
1634	Q99KJ8	Dctn2	Dynactin subunit 2	CDQDAQNPLSAGLQGACLMETVELLQAK	241	268	NH	\N
1635	O08528	Hk2	Hexokinase-2;Hexokinase	CDVSFLESEDGSGK	886	899	NH	\N
1636	P51660	Hsd17b4	Peroxisomal multifunctional enzyme type 2;(3R)-hydroxyacyl-CoA dehydrogenase;Enoyl-CoA hydratase 2	CEAVIADILDK	424	434	NH	\N
1637	A2AVJ7	Rrbp1	Ribosome-binding protein 1	CEELSSLHGQLK	995	1006	NH	\N
1638	Q8BMJ2	Lars	Leucine--tRNA ligase, cytoplasmic	CEFAVGYQR	72	80	NH	\N
1639	Q8K1J5	Sde2	Protein SDE2 homolog	CELMVLGLK	403	411	NH	\N
1640	G3UW82	Myh2	G3UW82	CELQAALEEAEASLEHEEGK	1545	1564	NH	\N
1641	B9EIZ7	Coro6;Coro1c	Coronin;Coronin-6;Coronin-1C	CEPIIMTVPR	304	313	NH	\N
1642	P70227	Itpr3	Inositol 1,4,5-trisphosphate receptor type 3	CESGGFLSK	1638	1646	NH	\N
1643	Q99KC8	Vwa5a	von Willebrand factor A domain-containing protein 5A	CEWELLER	750	757	NH	\N
1644	Q99P72	Rtn4	Reticulon-4	CFEDSLEQK	404	412	NH	\N
1646	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	CFGPTAQAAQLESSK	93	107	NH	\N
1647	Q99KC8	Vwa5a	von Willebrand factor A domain-containing protein 5A	CFSFGIGQGASTSLIK	416	431	NH	\N
1648	O88342	Wdr1	WD repeat-containing protein 1	CFSIDNPGYEPEVVAVHPGGDTVAVGGTDGNVR	438	470	NH	\N
1649	E9Q0Y6	Ufd1l	Ubiquitin fusion degradation protein 1 homolog	CFSVSMLAGPNDR	25	37	NH	\N
1650	Q61753	Phgdh	D-3-phosphoglycerate dehydrogenase	CGEEIAVQFVDMVK	295	308	NH	\N
1651	Q8BYA0	Tbcd	Tubulin-specific chaperone D	CGFSSALGALPGFLLR	775	790	NH	\N
1652	A0A0A6YVV5	Fubp3	A0A0A6YVV5;F7AM43;A2AJ72;Q3TIX6	CGLVIGK	124	130	NH	\N
1653	Q3U0V1	Khsrp	Far upstream element-binding protein 2	CGLVIGR	437	443	NH	\N
1654	A0A1W2P820	0	UPF0554 protein C2orf43 homolog	CGPWTNLFEK	28	37	NH	\N
1655	B7FAU9	Flna	Filamin-A	CGQSAAVASPGGSIDSR	8	24	NH	\N
1656	Q8CD10	Micu2	Calcium uptake protein 2, mitochondrial	CGSTFFR	141	147	NH	\N
1657	J3QN31	Adssl1	Adenylosuccinate synthetase isozyme 1	CGWLDLMILR	362	371	NH	\N
1658	P46664	Adss	Adenylosuccinate synthetase isozyme 2	CGWLDLVSLK	338	347	NH	\N
1659	P98192	Gnpat	Dihydroxyacetone phosphate acyltransferase	CGYAPVEFFLEGTR	232	245	NH	\N
1660	Q9Z1N5	Ddx39b	Spliceosome RNA helicase Ddx39b	CIALAQLLVEQNFPAIAIHR	300	319	NH	\N
1661	O55029	Copb2	Coatomer subunit beta	CIAVHPTQPFILTSSDDMLIK	104	124	NH	\N
1662	Q9WTX6	Cul1	Cullin-1	CIDILIEK	752	759	NH	\N
1663	E9PWY6	Gcat	2-amino-3-ketobutyrate coenzyme A ligase, mitochondrial	CILDSELEGIR	26	36	NH	\N
1664	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	CILLSNLSNTSHAPK	1462	1476	NH	\N
1665	A2AH28	Nudt9	ADP-ribose pyrophosphatase, mitochondrial	CILQFVAIK	145	153	NH	\N
1666	P63038	Hspd1	60 kDa heat shock protein, mitochondrial	CIPALDSLKPANEDQK	447	462	NH	\N
1667	A0A140LIQ8	Tmem147	Transmembrane protein 147	CIPLWVGAR	67	75	NH	\N
1668	Q8BV13	Cops7b	COP9 signalosome complex subunit 7b	CIPYSVLLK	110	118	NH	\N
1669	A2A5R2	Arfgef2;Arfgef1	Brefeldin A-inhibited guanine nucleotide-exchange protein 2;Brefeldin A-inhibited guanine nucleotide-exchange protein 1	CISQLELAQLIGTGVK	1002	1017	NH	\N
1670	Q8BVY0	Rsl1d1	Ribosomal L1 domain-containing protein 1	CITGTVLNISK	196	206	NH	\N
1671	D3Z3F8	Spg20	Spartin	CIVNNVSAETVQTVR	566	580	NH	\N
1672	Q9R0P5	Dstn	Destrin	CIVVEEGK	46	53	NH	\N
1673	Q45VK5	Ilf3	Interleukin enhancer-binding factor 3	CLAALASLR	203	211	NH	\N
1674	P31324	Prkar2b	cAMP-dependent protein kinase type II-beta regulatory subunit	CLAMDVQAFER	371	381	NH	\N
1675	Q80X90	Flnb	Filamin-B	CLATGPGIAPTVK	1617	1629	NH	\N
1676	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	CLDAVVSTR	356	364	NH	\N
1677	P52825	Cpt2	Carnitine O-palmitoyltransferase 2, mitochondrial	CLEDMFDALEGK	643	654	NH	\N
1678	Q8R1B4	Eif3c;G730046D07Rik	Eukaryotic translation initiation factor 3 subunit C	CLEEFELLGK	79	88	NH	\N
1679	Q9CRB2	Nhp2	H/ACA ribonucleoprotein complex subunit 2	CLEEVQALPTPL	142	153	NH	\N
1680	P11499	Hsp90ab1	Heat shock protein HSP 90-beta	CLELFSELAEDK	412	423	NH	\N
1681	G5E884	Pak1;Pak2	Non-specific serine/threonine protein kinase;Serine/threonine-protein kinase PAK 2;PAK-2p27;PAK-2p34	CLEMDVEK	500	507	NH	\N
1682	A0A0R4J166	Klhl40	Kelch-like protein 40	CLFGLGEALNAIYVVGGR	403	420	NH	\N
1683	D3YUP1	Carm1	Histone-arginine methyltransferase CARM1	CLFQSPLFAK	421	430	NH	\N
1684	F8WHL2	Copa	Coatomer subunit alpha;Coatomer subunit alpha;Xenin;Proxenin	CLFTLLGHLDYIR	85	97	NH	\N
1685	Q6ZQ73	Cand2	Cullin-associated NEDD8-dissociated protein 2	CLGPLVGK	71	78	NH	\N
1686	Q6ZWQ5	Snx12	Sorting nexin-12	CLHMFLQEEAIDR	141	153	NH	\N
1687	B1AU25	Aifm1	Apoptosis-inducing factor 1, mitochondrial	CLIATGGTPR	251	260	NH	\N
1688	E9PYF1	Rnpep	Aminopeptidase B	CLLPEGASELR	69	79	NH	\N
1689	Q9Z2Z6	Slc25a20	Mitochondrial carnitine/acylcarnitine carrier protein	CLLQIQASSGENK	136	148	NH	\N
1690	O35465	Fkbp8	Peptidyl-prolyl cis-trans isomerase FKBP8	CLNNLAASQLK	264	274	NH	\N
1691	Q9D8L5	Ccdc91	Coiled-coil domain-containing protein 91	CLQEEMQR	292	299	NH	\N
1692	E9QA62	Lmod3	E9QA62	CLQFNETLTELR	344	355	NH	\N
1693	Q8VE99	Ccdc115	Coiled-coil domain-containing protein 115	CLQLLSDLEELEAK	14	27	NH	\N
1694	Q9JJA2	Cog8	Conserved oligomeric Golgi complex subunit 8	CLQVLFPPAQIAQTLGISPTQLSK	519	542	NH	\N
1695	Q921T2	Tor1aip1	Torsin-1A-interacting protein 1	CLSEQIADAYSSFR	436	449	NH	\N
1696	Z4YL78	Ckap5	Cytoskeleton-associated protein 5	CLTGLAVGLR	343	352	NH	\N
1697	Z4YLI8	Cluh	Clustered mitochondria protein homolog	CLTQQAVALQR	1185	1195	NH	\N
1698	E9PZC4	Blvrb	Flavin reductase (NADPH)	CLTTNEYDGHTTYPSHQYD	102	120	NH	\N
1699	Q80X90	Flnb	Filamin-B	CLTVLSLQESGLK	2289	2301	NH	\N
1700	Q8BGA9	Oxa1l	Mitochondrial inner membrane protein OXA1L	CLVFPLIVK	148	156	NH	\N
1701	Q60520	Sin3a	Paired amphipathic helix protein Sin3a	CLVIFNQEVISR	487	498	NH	\N
1702	A0A0A6YX73	Prkar2a	cAMP-dependent protein kinase type II-alpha regulatory subunit	CLVMDVQAFER	335	345	NH	\N
1703	P42227	Stat3	Signal transducer and activator of transcription 3	CLWEESR	108	114	NH	\N
1704	Q8VDW0	Ddx39a	ATP-dependent RNA helicase DDX39A	CMALAQLLVEQNFPAIAIHR	299	318	NH	\N
1705	Q8CGY6	Unc45b	Protein unc-45 homolog B	CMDYGFIKPVS	921	931	NH	\N
1706	Q60864	Stip1	Stress-induced-phosphoprotein 1	CMMAQYNR	471	478	NH	\N
1707	A0A3Q4EIA3	Mtch1	Mitochondrial carrier homolog 1	CMVQFVGR	49	56	NH	\N
1708	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	CNEPAVWSQLAK	1106	1117	NH	\N
1709	P17047	Lamp2	Lysosome-associated membrane glycoprotein 2	CNSVLTYNLTPVVQK	149	163	NH	\N
1710	P11438	Lamp1	Lysosome-associated membrane glycoprotein 1	CNTEEHIFVSK	327	337	NH	\N
1711	A2AFQ7	Cnot8;Cnot7	CCR4-NOT transcription complex subunit 7;CCR4-NOT transcription complex subunit 8	CNVDLLK	67	73	NH	\N
1712	A0A1D5RMC1	Dync1li2;Dync1li1	Cytoplasmic dynein 1 light intermediate chain 2;Cytoplasmic dynein 1 light intermediate chain 1	CNVWILDGDLYHK	32	44	NH	\N
1713	F7AZP7	Wdr45b	WD repeat domain phosphoinositide-interacting protein 3	CNYLALVGGGK	63	73	NH	\N
1714	A0A0U1RQ96	Actg2	A0A0U1RQ96	CPETLFQPSFI	185	195	NH	\N
1715	E9Q616	Ahnak	E9Q616	CPTVDIDTPDVNIEVPEGK	4201	4219	NH	\N
1716	A0A1D5RLS1	Eps15l1	Epidermal growth factor receptor substrate 15-like 1	CQDETQTISSLK	468	479	NH	\N
1717	A0A0G2JG00	Fubp1	Far upstream element-binding protein 1	CQHAAEIITDLLR	327	339	NH	\N
1718	Q3ULW8	Parp3	Q3ULW8	CQLQLLDSGESEYK	324	337	NH	\N
1719	P14733	Lmnb1	Lamin-B1	CQSLTEDLEFR	199	209	NH	\N
1720	A0A494BAG1	Shoc2	Leucine-rich repeat protein SHOC-2	CSALEELNLENNNISTLPESLLSSLVK	96	122	NH	\N
1721	Q9WU78	Pdcd6ip	Programmed cell death 6-interacting protein	CSDIVFAR	691	698	NH	\N
1722	D3Z6I8	Tpm3	Tropomyosin alpha-3 chain	CSELEEELK	154	162	NH	\N
1723	Q8VHX6	Flnc	Filamin-C	CSGPGLGTGVR	1449	1459	NH	\N
1724	P97494	Gclc	Glutamate--cysteine ligase catalytic subunit	CSILNYLK	553	560	NH	\N
1725	E9Q390	Myof	Myoferlin	CSLDMIPDLK	1906	1915	NH	\N
1726	Q8VDN2	Atp1a1	Sodium/potassium-transporting ATPase subunit alpha-1	CSSILLHGK	518	526	NH	\N
1727	Q9WV91	Ptgfrn	Prostaglandin F2 receptor negative regulator	CSTPSTDATVQGNYEDTVQVK	119	139	NH	\N
1728	Q8VHX6	Flnc	Filamin-C	CSYVPTKPIK	729	738	NH	\N
1729	A0A1B0GR18	Mob2	MOB kinase activator 2	CTAPQYVDFVMSSVQK	136	151	NH	\N
1730	Q9D0K2	Oxct1	Succinyl-CoA:3-ketoacid coenzyme A transferase 1, mitochondrial;Succinyl-CoA:3-ketoacid-coenzyme A transferase	CTLPLTGK	456	463	NH	\N
1731	Q501J6	Ddx17	Probable ATP-dependent RNA helicase DDX17	CTYLVLDEADR	240	250	NH	\N
1732	A0A2U3TZ67	Dnm1l	Dynamin-1-like protein	CVELVHEEMQR	282	292	NH	\N
1733	Q8VBT0	Tmx1	Thioredoxin-related transmembrane protein 1	CVGLPSATDTS	268	278	NH	\N
1734	P26443	Glud1	Glutamate dehydrogenase 1, mitochondrial	CVGVGESDGSIWNPDGIDPK	327	346	NH	\N
1735	A0A1B0GRV0	Bpnt1	3(2),5-bisphosphate nucleotidase 1	CVIAEGDLGIVQK	28	40	NH	\N
1736	P26231	Ctnna1	Catenin alpha-1	CVIALQEK	526	533	NH	\N
1737	O70194	Eif3d	Eukaryotic translation initiation factor 3 subunit D	CVIDICMK	493	500	NH	\N
1738	P10518	Alad	Delta-aminolevulinic acid dehydratase	CVLIFGVPSR	75	84	NH	\N
1739	Q9Z1Z2	Strap	Serine-threonine kinase receptor-associated protein	CVLPEEDSGELAKPK	305	319	NH	\N
1740	P40124	Cap1	Adenylyl cyclase-associated protein 1	CVNTTLQIK	355	363	NH	\N
1741	Q9JLN9	Mtor	Serine/threonine-protein kinase mTOR	CVQFLPQVMPTFLNVIR	986	1002	NH	\N
1742	A0A1D5RLQ0	Nup93	Nuclear pore complex protein Nup93	CVSELVIESR	446	455	NH	\N
1743	Q91V89	Ppp2r5d;Ppp2r5e;Ppp2r5b;Ppp2r5c	Serine/threonine-protein phosphatase 2A 56 kDa regulatory subunit epsilon isoform;Serine/threonine-protein phosphatase 2A 56 kDa regulatory subunit gamma isoform	CVSSPHFQVAER	402	413	NH	\N
1744	Q3TLP8	Rac1;Rac3;Rac2;Rhoj;Rhoq;Rhog;Cdc42	Ras-related C3 botulinum toxin substrate 1;Ras-related C3 botulinum toxin substrate 3;Ras-related C3 botulinum toxin substrate 2;Rho-related GTP-binding protein RhoG;Rho-related GTP-binding protein RhoQ;Rho-related GTP-binding protein RhoJ;Cell division control protein 42 homolog	CVVVGDGAVGK	6	16	NH	\N
1745	D3YVS1	Smtn	D3YVS1	CVYTYIQEFYR	413	423	NH	\N
1746	Q9CR09	Ufc1	Ubiquitin-fold modifier-conjugating enzyme 1	CWYIHDFLK	69	77	NH	\N
1747	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	CYLTMTQALEAR	1886	1897	NH	\N
1748	Q9CQ48	Nudcd2	NudC domain-containing protein 2	DAANCWTSLLESEYAADPWVQDQMQR	95	120	NH	\N
1749	F6Z4G7	Vps53	Vacuolar protein sorting-associated protein 53 homolog	DACLVANILDPR	171	182	NH	\N
1750	Q8BX70	Vps13c	Vacuolar protein sorting-associated protein 13C	DALCLINSIPLPQK	823	836	NH	\N
1751	Q8VEK3	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U	DCEVVMMIGLPGAGK	472	486	NH	\N
1752	A0A0U1RQ27	Mcee	Methylmalonyl-CoA epimerase, mitochondrial	DCGGVLVELEQA	113	124	NH	\N
1753	E9Q6J5	Bod1l;Bod1	Biorientation of chromosomes in cell division protein 1	DCLADVDTKPAYQNLR	71	86	NH	\N
1754	P09411	Pgk1	Phosphoglycerate kinase 1;Phosphoglycerate kinase	DCVGPEVENACANPAAGTVILLENLR	98	123	NH	\N
1755	F7AAP4	Atp2b4	Calcium-transporting ATPase	DDFLCLEGK	718	726	NH	\N
1756	A0A0A6YX05	Atp1b1	Sodium/potassium-transporting ATPase subunit beta-1	DDMIFEDCGNVPSEPK	63	78	NH	\N
1757	E0CZE0	Nae1	NEDD8-activating enzyme E1 regulatory subunit	DDYVHEFCR	452	460	NH	\N
1758	Q9QYB1	Clic4	Chloride intracellular channel protein 4	DEFTNTCPSDK	228	238	NH	\N
1759	Q9EPU0	Upf1	Regulator of nonsense transcripts 1	DFIILSCVR	841	849	NH	\N
1760	Q8BTZ7	Gmppb	Mannose-1-phosphate guanyltransferase beta	DFLTGMCLFLQSLR	224	237	NH	\N
1761	Q8R016	Blmh	Bleomycin hydrolase	DGEAVWFGCDVGK	318	330	NH	\N
1762	P26040	Ezr	Ezrin	DGILSDEIYCPPETAVLLGSYAVQAK	108	133	NH	\N
1763	O88990	Actn3	Alpha-actinin-3	DGLALCALIHR	188	198	NH	\N
1764	Q8BH59	Slc25a12	Calcium-binding mitochondrial carrier protein Aralar1	DGSIPLPAEILAGGCAGGSQVIFTNPLEIVK	421	451	NH	\N
1765	Q6UY53	AY358078;Hn1l	Hematological and neurological expressed 1-like protein	DHVLLCEGEDSK	388	399	NH	\N
1766	Q3UEB3	Puf60	Poly(U)-binding-splicing factor PUF60	DIDDDLEGEVTEECGK	479	494	NH	\N
1767	Q8BL66	Eea1	Early endosome antigen 1	DLDCQQLQAR	343	352	NH	\N
1768	B2RXT3	Ogdhl	B2RXT3;E9Q7L0	DLEQIFCQFDPK	312	323	NH	\N
1769	Q99MR3	Slc12a9	Solute carrier family 12 member 9	DLGPTLLIHGVTPVTCTDL	896	914	NH	\N
1770	B2KF34	Mapk14	Mitogen-activated protein kinase 14	DLKPSNLAVNEDCELK	150	165	NH	\N
1771	Q6P5F9	Xpo1	Exportin-1	DLLGLCEQK	523	531	NH	\N
1772	Q62167	Ddx3x;D1Pas1;Ddx4;Ddx3y	ATP-dependent RNA helicase DDX3X;Putative ATP-dependent RNA helicase Pl10;ATP-dependent RNA helicase DDX3Y;Probable ATP-dependent RNA helicase DDX4	DLMACAQTGSGK	219	230	NH	\N
1773	A0A2I3BRG2	Prmt5	Protein arginine N-methyltransferase 5	DLNCVPEIADTLGAVAK	19	35	NH	\N
1774	P17918	Pcna	Proliferating cell nuclear antigen	DLSHIGDAVVISCAK	150	164	NH	\N
1775	Q9EQH3	Vps35	Vacuolar protein sorting-associated protein 35	DLVEMCR	132	138	NH	\N
1776	Q99KK7	Dpp3	Dipeptidyl peptidase 3	DLWQTCGDLMFSLEPR	142	157	NH	\N
1777	O55029	Copb2	Coatomer subunit beta	DMGSCEIYPQTIQHNPNGR	347	365	NH	\N
1778	Q9DCN2	Cyb5r3	NADH-cytochrome b5 reductase 3;NADH-cytochrome b5 reductase 3 membrane-bound form;NADH-cytochrome b5 reductase 3 soluble form;NADH-cytochrome b5 reductase	DPNDHTVCYLLFANQSEK	197	214	NH	\N
1779	A0A0J9YV86	Specc1	Cytospin-B	DQLQLSCTELR	512	522	NH	\N
1780	Q9ESX5	Dkc1	H/ACA ribonucleoprotein complex subunit 4	DSAVNAICYGAK	303	314	NH	\N
1781	A0A0R4J166	Klhl40	Kelch-like protein 40	DSEDSLDSVLCYDR	424	437	NH	\N
1782	E9QM77	Atxn2	Ataxin-2	DSFIDSSSSSSNCTSGSSK	811	829	NH	\N
1783	V9GXH2	Ei24	Etoposide-induced protein 2.4	DSIWGICTISK	18	28	NH	\N
1784	Q923D4	Sf3b5	Splicing factor 3B subunit 5	DSYCSYMGHFDLLNYFAIAENESK	38	61	NH	\N
1785	G3UXX3	Spr	G3UXX3;Q91XH5	DTFQSGAHVDFYDC	206	219	NH	\N
1786	Q9WU78	Pdcd6ip	Programmed cell death 6-interacting protein	DTIALLCKPEPELNAAIPSANPAK	518	541	NH	\N
1787	O88574	Sap30	Histone deacetylase complex subunit SAP30	DTLTCFIYSVR	195	205	NH	\N
1788	A0A0J9YU66	Ctbp1	C-terminal-binding protein 1	DVATVAFCDAQSTQEIHEK	36	54	NH	\N
1789	A0A498WGK2	Nars	Asparagine--tRNA ligase, cytoplasmic	DVCLYPR	545	551	NH	\N
1790	Q9D1A2	Cndp2	Cytosolic non-specific dipeptidase	DVGAETLLHSCK	290	301	NH	\N
1791	P97355	Sms	Spermine synthase	DVLILGGGDGGILCEIVK	193	210	NH	\N
1792	E9PYX7	Mllt4	Afadin	DVQLEEDPDLQLPFLLPEDGYSCDVVR	920	946	NH	\N
1793	Z4YJV4	Ogdh;Ogdhl	2-oxoglutarate dehydrogenase, mitochondrial	DVVVDLVCYR	496	505	NH	\N
1794	Q99JY9	Actr3	Actin-related protein 3	DYEEIGPSICR	399	409	NH	\N
1795	P47757	Capzb	F-actin-capping protein subunit beta	DYLLCDYNR	58	66	NH	\N
1796	Q60960	Kpna1	Importin subunit alpha-5;Importin subunit alpha-5, N-terminally processed	DYVLNCNILPPLLQLFSK	205	222	NH	\N
1797	Q4FJZ2	Kpna6	Importin subunit alpha;Importin subunit alpha-7	DYVLNCSILNPLLTLLTK	200	217	NH	\N
1798	P60122	Ruvbl1	RuvB-like 1	EACGVIVELIK	47	57	NH	\N
1799	A2AVJ7	Rrbp1	Ribosome-binding protein 1	EAEETQNSLQAECDQYR	1174	1190	NH	\N
1800	F7AI47	Srsf1	Serine/arginine-rich splicing factor 1	EAGDVCYADVYR	53	64	NH	\N
1801	Q62261	Sptbn1	Spectrin beta chain, non-erythrocytic 1	EAICEVALDYK	2258	2268	NH	\N
1802	G3UYJ5	Mtx1	Metaxin-1	ECLTLLSQR	31	39	NH	\N
1803	P08074	Cbr2	Carbonyl reductase [NADPH] 2	ECPGIEPVCVDLGDWDATEK	50	69	NH	\N
1804	A0A0N4SVS6	Cnbp	Cellular nucleic acid-binding protein	ECTIEATA	164	171	NH	\N
1805	Q8K310	Matr3	Matrin-3	EDAMAMVDHCLK	543	554	NH	\N
1806	Q3THK7	Gmps	GMP synthase [glutamine-hydrolyzing]	EDGVFNISMDNTCSLFR	125	141	NH	\N
1807	Q8BN57	0	Protein C3orf33 homolog	EDSALFCYLLVNK	149	161	NH	\N
1808	Q3TJI8	Hsd11b1	Corticosteroid 11-beta-dehydrogenase isozyme 1	EECALEIIK	209	217	NH	\N
1809	A0A0R4J0M1	Tbcc	Tubulin-specific chaperone C	EEEGAPGASWACGFSNLESQDLEK	168	191	NH	\N
1810	Q3TQP6	Me1	Malic enzyme;NADP-dependent malic enzyme	EEFVSSQMYSTNYDQILPDCYPWPAEVQK	517	545	NH	\N
1811	Q9Z2I0	Letm1	LETM1 and EF-hand domain-containing protein 1, mitochondrial	EEIDILSDACSK	542	553	NH	\N
1812	B7FAU9	Flna	Filamin-A	EEPCLLK	1986	1992	NH	\N
1813	O08715	Akap1	A-kinase anchor protein 1, mitochondrial	EESCVPASQETSLGQDTSDPASTR	349	372	NH	\N
1814	A0A0A6YWH2	Aif1l	Allograft inflammatory factor 1-like	EFLCDQK	32	38	NH	\N
1815	Q3TYK3	Nfix	Nuclear factor 1	EFVQFVCSDGSGQATGQHSQR	352	372	NH	\N
1816	P58252	Eef2	Elongation factor 2	EGALCEENMR	689	698	NH	\N
1817	Q9CQY6	Uqcc2	Ubiquinol-cytochrome-c reductase complex assembly factor 2	EGENTQIAEPEACDQMYESLAR	41	62	NH	\N
1818	Q9CZR8	Tsfm	Elongation factor Ts, mitochondrial	EGLIGLLQEGNTAVLVEVNCETDFVSR	103	129	NH	\N
1819	G3UZ34	Eftud2	116 kDa U5 small nuclear ribonucleoprotein component	EGPLCDELIR	766	775	NH	\N
1820	Q9QXS6	Dbn1	Drebrin	EGTQASEGYFSQSQEEEFAQSEEPCAK	646	672	NH	\N
1821	Q8VE47	Uba5	Ubiquitin-like modifier-activating enzyme 5	EGVCAASLPTTMGVVAGILVQNVLK	245	269	NH	\N
1822	D6RCW7	Capza2	F-actin-capping protein subunit alpha-2	EHYPNGVCTVYGK	134	146	NH	\N
1823	Q6P5B0	Rrp12	RRP12-like protein	EICAVLAAVTEVIR	123	136	NH	\N
1824	Q8R2P8	Kars	Lysine--tRNA ligase	EICNAYTELNDPVR	521	534	NH	\N
1825	P70398	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X;Ubiquitin carboxyl-terminal hydrolase	EICSLFGEAPQNLSQSQR	575	592	NH	\N
1826	A0A087WPT0	Lrrfip1	Leucine-rich repeat flightless-interacting protein 1	EIDCLSPEAQR	11	21	NH	\N
1827	Q64727	Vcl	Vinculin	EILGTCK	320	326	NH	\N
1828	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	EITAGCGVLLIEAK	792	805	NH	\N
1829	S4R192	Sec31a	Protein transport protein Sec31A	EIVESCDLK	208	216	NH	\N
1830	Q922F4	Tubb6	Tubulin beta-6 chain	EIVHIQAGQCGNQIGTK	3	19	NH	\N
1831	P08752	Gnai2;Gnai1	Guanine nucleotide-binding protein G(i) subunit alpha-2;Guanine nucleotide-binding protein G(i) subunit alpha-1	EIYTHFTCATDTK	319	331	NH	\N
1832	Q8VEK3	Hnrnpu	Heterogeneous nuclear ribonucleoprotein U	EKPYFPIPEDCTFIQNVPLEDR	439	460	NH	\N
1833	D3Z069	Phldb2	Pleckstrin homology-like domain family B member 2	ELDMECALLDGEQK	662	675	NH	\N
1834	Q5SS83	Flot2	Flotillin-2	ELLAVACEQFLGK	82	94	NH	\N
1835	Q64339	Isg15	Ubiquitin-like protein ISG15	ELLGEYGLKPQCTVIK	133	148	NH	\N
1836	Q99MZ7	Pecr	Peroxisomal trans-2-enoyl-CoA reductase	ELLHLGCNVVIASR	37	50	NH	\N
1837	D3Z3J6	Paip1	Polyadenylate-binding protein-interacting protein 1	ELLNALFSNPMDDNLICAVK	190	209	NH	\N
1838	P13439	Umps	Uridine 5-monophosphate synthase;Orotate phosphoribosyltransferase;Orotidine 5-phosphate decarboxylase	ELLQLADALGPSICMLK	265	281	NH	\N
1839	Q8CBB7	Ap1g1	AP-1 complex subunit gamma-1	ELLYFLDSCEPEFK	387	400	NH	\N
1840	Q8BMJ2	Lars	Leucine--tRNA ligase, cytoplasmic	ELMGEEILGASLSAPLTCYK	353	372	NH	\N
1841	E9Q0U7	Hsph1	Heat shock protein 105 kDa	ELNNVCEPVVTQPKPK	751	766	NH	\N
1842	O88990	Actn3	Alpha-actinin-3	ELPAEQAEYCIR	859	870	NH	\N
1843	F6TCF9	Bag1	BAG family molecular chaperone regulator 1	ELQAEALCK	275	283	NH	\N
1844	A0A5K1VVQ1	Ttn	Titin	ELQDIEVPESYSGELECIISPENIEGK	2232	2258	NH	\N
1845	Q8BL66	Eea1	Early endosome antigen 1	ELQEQEEVVSCTK	773	785	NH	\N
1846	Q60936	Adck3	Atypical kinase ADCK3, mitochondrial	ELTLECDYQR	398	407	NH	\N
1847	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	ELTSICSPIISKPKPK	776	791	NH	\N
1848	A0A0G2JFI8	Adsl	Adenylosuccinate lyase	EMCFLFSDR	25	33	NH	\N
1849	Q8BMJ2	Lars	Leucine--tRNA ligase, cytoplasmic	EMLASCSSLR	778	787	NH	\N
1850	Q8BKC5	Ipo5	Importin-5	ENVNATENCISAVGK	964	978	NH	\N
1851	Q9DBD5	Pelp1	Proline-, glutamic acid- and leucine-rich protein 1	EQDDTAAMLADFIDCPPDDEKPPPATEPDS	1094	1123	NH	\N
1852	Q9CQW1	Ykt6	Synaptobrevin homolog YKT6	EQEYLCHVYVR	61	71	NH	\N
1853	P37040	Por	NADPH--cytochrome P450 reductase	EQFWPAVCEFFGVEATGEESSIR	221	243	NH	\N
1854	Q8CGC7	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	ERPAPAVSSTCATAEDSSVLYSR	734	756	NH	\N
1855	P70168	Kpnb1	Importin subunit beta-1	ESCLEAYTGIVQGLK	763	777	NH	\N
1856	P13541	Myh3;Myh2	Myosin-3	ESIFCIQYNIR	810	820	NH	\N
1857	O89017	Lgmn	Legumain	ESSYACYYDEER	216	227	NH	\N
1858	Q99MR8	Mccc1	Methylcrotonoyl-CoA carboxylase subunit alpha, mitochondrial	ESVCQAALGLILK	502	514	NH	\N
1859	Q9D1M0	Sec13	Protein SEC13 homolog	ESVDGQWVCISDVNK	291	305	NH	\N
1860	E9Q6Z0	Cul5	Cullin-5	ESYVNLCSNPEDK	53	65	NH	\N
1861	Q78PY7	Snd1	Staphylococcal nuclease domain-containing protein 1	ETCLITFLLAGIECPR	547	562	NH	\N
1862	A0A2R8VHD0	Tsta3	GDP-L-fucose synthase	ETCTWFTDNYEQAR	278	291	NH	\N
1863	E9Q6Z0	Cul5	Cullin-5	ETILAECQGMIK	146	157	NH	\N
1864	Q8BH99	Nck1	Cytoplasmic protein NCK1	ETVYCIGQR	272	280	NH	\N
1865	Q9D6Z1	Nop56	Nucleolar protein 56	EVEEISLLLPQVEECVLNLGK	21	41	NH	\N
1866	Q7TMY8	Huwe1	E3 ubiquitin-protein ligase HUWE1	EVLGSLPNVFSALCLNAR	599	616	NH	\N
1867	A2AQR0	Gpd2	Glycerol-3-phosphate dehydrogenase;Glycerol-3-phosphate dehydrogenase, mitochondrial	EYACTAVDMISR	543	554	NH	\N
1868	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	EYQVETIVDTLCTNMLSDK	81	99	NH	\N
1869	Q9WUA2	Farsb	Phenylalanine--tRNA ligase beta subunit	EYTACELMNIYK	191	202	NH	\N
1870	P48024	Eif1;Eif1b	Eukaryotic translation initiation factor 1;Eukaryotic translation initiation factor 1b	FACNGTVIEHPEYGEVIQLQGDQR	67	90	NH	\N
1871	E9QAS4	Chd4	Chromodomain-helicase-DNA-binding protein 4	FAEVECLAESHQHLSK	1812	1827	NH	\N
1872	Q9D7B6	Acad8	Isobutyryl-CoA dehydrogenase, mitochondrial	FASYCLTEPGSGSDAASLLTSAK	153	175	NH	\N
1873	A0A2U3TZ67	Dnm1l	Dynamin-1-like protein	FATEYCNTIEGTAK	191	204	NH	\N
1874	A0A1W2P820	0	UPF0554 protein C2orf43 homolog	FATPFLCQFR	131	140	NH	\N
1875	D3Z7S8	Gtf2a2	Transcription initiation factor IIA subunit 2	FCDNVWTFVLNDVEFR	67	82	NH	\N
1876	E9Q7G1	Tmed7	E9Q7G1;D3YZZ5	FCFSNEFSTFTHK	108	120	NH	\N
1877	Q99LS3	Psph	Phosphoserine phosphatase	FCGVEAAVSEMTR	37	49	NH	\N
1878	Q9D8E6	Rpl4	60S ribosomal protein L4	FCIWTESAFR	249	258	NH	\N
1879	Q7TPV4	Mybbp1a	Myb-binding protein 1A	FCLFHAFFK	476	484	NH	\N
1880	P23116	Eif3a	Eukaryotic translation initiation factor 3 subunit A	FCLQYTR	184	190	NH	\N
1881	D6RH67	Tmem62	Transmembrane protein 62	FCSETIDIIQPALVLATGDLTDAK	81	104	NH	\N
1882	E9Q390	Myof	Myoferlin	FDATCKPLASTTQYSR	593	608	NH	\N
1883	Q9DBR7	Ppp1r12a	Protein phosphatase 1 regulatory subunit 12A	FDDGAVFLAACSSGDTDEVLK	38	58	NH	\N
1884	A2ASW6	Zak	Mitogen-activated protein kinase kinase kinase MLT	FDDLQFFENCGGGSFGSVYR	13	32	NH	\N
1885	P50247	Ahcy	Adenosylhomocysteinase	FDNLYGCR	189	196	NH	\N
1886	P97310	Mcm2	DNA replication licensing factor MCM2	FDVLCVVR	657	664	NH	\N
1887	Q6PE15	Abhd10	Mycophenolic acid acyl-glucuronide esterase, mitochondrial	FDYSGIGSSDGNLAECTVGK	101	120	NH	\N
1888	P17879	Hspa1b;Hspa1a	Heat shock 70 kDa protein 1B;Heat shock 70 kDa protein 1A	FEELCSDLFR	302	311	NH	\N
1889	Q8VD75	Hip1	Huntingtin-interacting protein 1	FEELMVCSR	892	900	NH	\N
1890	E9QAT9	Trim54	Tripartite motif-containing protein 54	FETLCAVLEER	217	227	NH	\N
1891	Q8CGY8	Ogt	UDP-N-acetylglucosamine--peptide N-acetylglucosaminyltransferase 110 kDa subunit	FEVFCYALSPDDGTNFR	586	602	NH	\N
1892	Q7TSQ8	Pdpr	Pyruvate dehydrogenase phosphatase regulatory subunit, mitochondrial	FFAFWGQDLNTLTTPLECGGESR	717	739	NH	\N
1893	Q5NCU4	Sparc	SPARC	FFETCDLDNDK	267	277	NH	\N
1894	O35295	Purb	Transcriptional activator protein Pur-beta	FFFDVGCNK	244	252	NH	\N
1895	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	FGDPECQVILPLLK	293	306	NH	\N
1896	F8WGE7	Txnl4a	Thioredoxin-like protein 4A	FGHDWDPTCMK	30	40	NH	\N
1897	G3UY93	Vars	Valine--tRNA ligase	FGLCAYTSQGR	923	933	NH	\N
1898	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	FGLEGCEVLIPALK	274	287	NH	\N
1899	Q921M3	Sf3b3	Splicing factor 3B subunit 3	FGNICVVR	1050	1057	NH	\N
1900	A2AIW9	Pmpca	Mitochondrial-processing peptidase subunit alpha	FGQFCTVGILINSGSR	83	98	NH	\N
1901	Q9D8M4	Rpl7l1	60S ribosomal protein L7-like 1	FGVICLEDLIHEIAFPGK	180	197	NH	\N
1902	P17426	Ap2a1	AP-2 complex subunit alpha-1	FHLCSVATR	530	538	NH	\N
1903	Q8CHP8	Pgp	Phosphoglycolate phosphatase	FIAGTGCLVR	211	220	NH	\N
1904	Q99PV0	Prpf8	Pre-mRNA-processing-splicing factor 8	FICISDLR	2114	2121	NH	\N
1905	G3V010	Slc2a1	Solute carrier family 2, facilitated glucose transporter member 1	FIIGVYCGLTTGFVPMYVGEVSPTALR	127	153	NH	\N
1906	Q9D7E3	Ovca2	Ovarian cancer-associated gene 2 protein homolog	FIILVSGFCPR	144	154	NH	\N
1907	Q8VBT0	Tmx1	Thioredoxin-related transmembrane protein 1	FIITALPSIYHCK	95	107	NH	\N
1908	P63005	Pafah1b1	Platelet-activating factor acetylhydrolase IB subunit alpha	FILSCADDK	352	360	NH	\N
1909	P27773	Pdia3	Protein disulfide-isomerase A3	FIQDSIFGLCPHMTEDNK	235	252	NH	\N
1910	Q99K70	Rragc	Ras-related GTP-binding protein C	FLALVCILR	333	341	NH	\N
1911	Q9QYA2	Tomm40	Mitochondrial import receptor subunit TOM40 homolog	FLCGFGLTIG	352	361	NH	\N
1912	Q9CXI0	Coq5	2-methoxy-6-polyprenyl-1,4-benzoquinol methylase, mitochondrial	FLCLEFGQVNDPLISR	242	257	NH	\N
1913	Q9QZE5	Copg1	Coatomer subunit gamma-1	FLGMHPCER	807	815	NH	\N
1914	A0A0N4SW31	BC029722	A0A0N4SW31	FLIACTSWY	43	51	NH	\N
1915	Q91VR5	Ddx1	ATP-dependent RNA helicase DDX1	FLICTDVAAR	568	577	NH	\N
1916	Q9WVQ5	Apip	Methylthioribulose-1-phosphate dehydratase	FLIPELCK	25	32	NH	\N
1917	Q3TIR6	Vbp1	Prefoldin subunit 3	FLLADNLYCK	104	113	NH	\N
1918	E9PVA8	Gcn1l1	E9PVA8	FLLLASEDALCTVLR	530	544	NH	\N
1919	Q9D0E1	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M	FNECGHVLYADIK	672	684	NH	\N
1920	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	FQNLSCSLDER	4053	4063	NH	\N
1921	P68433	Hist1h3a	Histone H3.1	FQSSAVMALQEACEAYLVGLFEDTNLCAIHAK	85	116	NH	\N
1922	O08759	Ube3a	Ubiquitin-protein ligase E3A	FSFMTCPFILNAVTK	470	484	NH	\N
1923	O35639	Anxa3	Annexin A3	FTEVLCLR	197	204	NH	\N
1924	E9PVA8	Gcn1l1	E9PVA8	FTPYVGPIIPCILK	1771	1784	NH	\N
1925	Q9QZM4	Tnfrsf10b	Tumor necrosis factor receptor superfamily member 10B	FTYQNAAAQPETGPGGSQCV	362	381	NH	\N
1926	P08121	Col3a1	Collagen alpha-1(III) chain	FTYTVLEDGCTK	1406	1417	NH	\N
1927	Q61768	Kif5b	Kinesin-1 heavy chain;Kinesin-like protein	FVCSPDEVMDTIDEGK	172	187	NH	\N
1928	Q3UA72	Arpc5	Actin-related protein 2/3 complex subunit 5	FVDEEDGGDGQAGPDEGEVDSCLR	24	47	NH	\N
1929	A0A1W2P727	Ilvbl	Acetolactate synthase-like protein	FVFTLVGGHISPLLVACEK	69	87	NH	\N
1930	Q9WTM5	Ruvbl2	RuvB-like 2	FVQCPDGELQK	224	234	NH	\N
1931	F6YTS6	Ephx1	Epoxide hydrolase 1	FYIQGGDWGSLICTNIAQMVPNHVK	97	121	NH	\N
1932	O08528	Hk2	Hexokinase-2;Hexokinase	GAALITAVACR	900	910	NH	\N
1933	A0A571BDS0	Xirp1	A0A571BDS0	GAEPGLLQVSPPCTGSSSPTFISVQSATK	1633	1661	NH	\N
1934	E9PWE8	Dpysl3	Dihydropyrimidinase-related protein 3	GAPLVVICQGK	554	564	NH	\N
1935	Q99K85	Psat1	Phosphoserine aminotransferase	GAVLVCDMSSNFLSRPVDVSK	170	190	NH	\N
1936	E9Q0U7	Hsph1;Hspa4;Hspa4l	Heat shock protein 105 kDa;Heat shock 70 kDa protein 4;Heat shock 70 kDa protein 4L	GCALQCAILSPAFK	375	388	NH	\N
1937	Q9D0E1	Hnrnpm	Heterogeneous nuclear ribonucleoprotein M	GCAVVEFK	112	119	NH	\N
1938	P08249	Mdh2	Malate dehydrogenase, mitochondrial	GCDVVVIPAGVPR	92	104	NH	\N
1939	Q8CIB5	Fermt2	Fermitin family homolog 2	GCEVTPDVNISGQK	425	438	NH	\N
1940	Q8R1B4	Eif3c	Eukaryotic translation initiation factor 3 subunit C	GCILTLVER	440	448	NH	\N
1941	E9PYH2	Acot7	Cytosolic acyl coenzyme A thioester hydrolase	GCVITISGR	291	299	NH	\N
1942	D3Z0B4	Aldh18a1	Delta-1-pyrroline-5-carboxylate synthase;Glutamate 5-kinase;Gamma-glutamyl phosphate reductase	GDECGLALGR	85	94	NH	\N
1943	Q501J6	Ddx17;Ddx5	Probable ATP-dependent RNA helicase DDX17;Probable ATP-dependent RNA helicase DDX5	GDGPICLVLAPTR	163	175	NH	\N
1944	Q45VK5	Ilf3	Interleukin enhancer-binding factor 3	GDLDLELVLLCK	106	117	NH	\N
1945	A0A494BB38	Zadh2	Zinc-binding alcohol dehydrogenase domain-containing protein 2	GDLVCEVDLGHLAPDGR	203	219	NH	\N
1946	E9Q3W4	Plec	Plectin	GDQCQLVGPAQPSHWK	665	680	NH	\N
1947	Q9D1X0	Nol3	Nucleolar protein 3	GEAACQELLR	69	78	NH	\N
1948	A0A087WSK5	Ubxn4	UBX domain-containing protein 4	GEASVTNDNQSESSVSTPSASFEPDVCENPESK	6	38	NH	\N
1949	A0A0A6YX86	Naa15	N-alpha-acetyltransferase 15, NatA auxiliary subunit	GELLLQLCR	150	158	NH	\N
1950	Q9WTX6	Cul1	Cullin-1	GELVTNCFK	588	596	NH	\N
1951	J3QMM7	Carkd	ATP-dependent (S)-NAD(P)H-hydrate dehydratase	GEQDLISNGQQVLVCNQEGSSR	227	248	NH	\N
1952	E9PYI8	Usp14	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 14	GEQGQYLQQDANECWIQMMR	155	174	NH	\N
1953	P50247	Ahcy	Adenosylhomocysteinase	GETDEEYLWCIEQTLHFK	104	121	NH	\N
1954	E9Q1H3	Aldh7a1	Alpha-aminoadipic semialdehyde dehydrogenase	GEVITTYCPANNEPIAR	64	80	NH	\N
1955	F6ZV59	Hnrnpd	Heterogeneous nuclear ribonucleoprotein D0	GFCFITFK	134	141	NH	\N
1956	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	GFFDSQTCESLTTEEVIDEGLMDEK	2324	2348	NH	\N
1957	Q9D853	Mettl10	Protein-lysine N-methyltransferase Mettl10	GFFLITSCNWTK	185	196	NH	\N
1958	Q8K0D5	Gfm1	Elongation factor G, mitochondrial	GFLDACEK	589	596	NH	\N
1959	F8WIR1	Ctsd	Cathepsin D	GGCEAIVDTGTSLLVGPVEEVK	280	301	NH	\N
1960	P32233	Drg1	Developmentally-regulated GTP-binding protein 1	GGINLTATCPQSELDAETVK	187	206	NH	\N
1961	E9QN12	Pdgfrb	Platelet-derived growth factor receptor beta	GGPIYIITEYCR	678	689	NH	\N
1962	O70400	Pdlim1	PDZ and LIM domain protein 1	GHFFVEDQIYCEK	295	307	NH	\N
1963	E9Q3W4	Plec	Plectin	GHVPLIAVCDYK	645	656	NH	\N
1964	Q99L04	Dhrs1	Dehydrogenase/reductase SDR family member 1	GHYLCSVYGAR	126	136	NH	\N
1965	Q6PB66	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial	GICNLLNTYHVPELIK	624	639	NH	\N
1966	P35282	Rab21	Ras-related protein Rab-21	GIEELFLDLCK	166	176	NH	\N
1967	Q9WTI7	Myo1c	Unconventional myosin-Ic	GIISILDEECLRPGEATDLTFLEK	489	512	NH	\N
1968	P46460	Nsf	Vesicle-fusing ATPase	GILLYGPPGCGK	255	266	NH	\N
1969	Q9DBL1	Acadsb	Short/branched chain specific acyl-CoA dehydrogenase, mitochondrial	GITCFLVDR	231	239	NH	\N
1970	H3BJI5	Fkbp7	Peptidyl-prolyl cis-trans isomerase;Peptidyl-prolyl cis-trans isomerase FKBP7	GLDIAMMDMCPGEK	91	104	NH	\N
1971	O88851	Rbbp9	Putative hydrolase RBBP9	GLEQIPGFQCLAK	30	42	NH	\N
1972	P70303	Ctps2	CTP synthase 2	GLGLSPDLIVCR	206	217	NH	\N
1973	Z4YJL4	Tnks1bp1	182 kDa tankyrase-1-binding protein	GLLPSCPSEDFSFIEDTEILDSAMYR	876	901	NH	\N
1974	Q9Z2X1	Hnrnpf	Heterogeneous nuclear ribonucleoprotein F;Heterogeneous nuclear ribonucleoprotein F, N-terminally processed	GLPFGCTK	117	124	NH	\N
1975	A0A0R4IZY0	Thop1	Thimet oligopeptidase	GLQVEGSEAPAC	676	687	NH	\N
1976	Q9D6Z1	Nop56	Nucleolar protein 56	GLTDLSACK	135	143	NH	\N
1977	A0A1B0GSR9	Ldha	L-lactate dehydrogenase A chain	GLYGINEDVFLSVPCILGQNGISDVVK	262	288	NH	\N
1978	P54823	Ddx6	Probable ATP-dependent RNA helicase DDX6	GNEFEDYCLK	95	104	NH	\N
1979	A0A1W2P701	Snx6	Sorting nexin-6;Sorting nexin-6, N-terminally processed	GNLQLLQNCLAVLNGDT	274	290	NH	\N
1980	Q9D8E6	Rpl4	60S ribosomal protein L4	GPCIIYNEDNGIIK	206	219	NH	\N
1981	P54116	Stom	Erythrocyte band 7 integral membrane protein	GPGLFFILPCTDSLIK	78	93	NH	\N
1982	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	GPSIALDTACSSSLLALQNAYQAIR	152	176	NH	\N
1983	O88342	Wdr1	WD repeat-containing protein 1	GPVTDVAYSHDGAFLAVCDASK	490	511	NH	\N
1984	Q9CYL5	Glipr2	Golgi-associated plant pathogenesis-related protein 1	GQCGENLAWASYDQTGK	61	77	NH	\N
1985	Q9CQD1	Rab5a	Ras-related protein Rab-5A	GQFHEFQESTIGAAFLTQTVCLDDTTVK	43	70	NH	\N
1986	A2A5F5	Rab5c	Ras-related protein Rab-5C	GQFHEYQESTIGAAFLTQTVCLDDTTVK	44	71	NH	\N
1987	E9Q3W4	Plec	Plectin	GQLCFEGLR	2809	2817	NH	\N
1988	Q3ULW8	Parp3	Q3ULW8	GQTEPDPAQDIELELDGQPVVVPQGPPVQCPSFK	473	506	NH	\N
1989	Q8K1R3	Pnpt1	Polyribonucleotide nucleotidyltransferase 1, mitochondrial	GQTQVLCTVTFDSLESSIK	389	407	NH	\N
1990	E9PZ16	Hspg2	Basement membrane-specific heparan sulfate proteoglycan core protein;Endorepellin;LG3 peptide	GQTVTFTCVATGVPTPIINWR	421	441	NH	\N
1991	P70398	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X;Ubiquitin carboxyl-terminal hydrolase	GSASDWYDALCILLR	2065	2079	NH	\N
1992	Q8BL03	Slc25a29	Mitochondrial basic amino acids transporter	GSLDCLVQIYR	133	143	NH	\N
1993	A0A0U1RNK7	Dock7	Dedicator of cytokinesis protein 7	GSWACSIFDLK	189	199	NH	\N
1994	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	GTAIAICR	630	637	NH	\N
1995	Q9CZW4	Acsl3	Long-chain-fatty-acid--CoA ligase 3	GTWEELCNSSEMENEVLK	643	660	NH	\N
1996	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	GVAVLCTE	4637	4644	NH	\N
1997	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	GVCITNFTTSWR	1230	1241	NH	\N
1998	Q9QUJ7	Acsl4	Long-chain-fatty-acid--CoA ligase 4	GVEGSWVDICNNPAMEAEILK	631	651	NH	\N
1999	Q501J6	Ddx17;Ddx5	Probable ATP-dependent RNA helicase DDX17;Probable ATP-dependent RNA helicase DDX5	GVEICIATPGR	215	225	NH	\N
2000	A0A668KL51	Idh3b	Isocitrate dehydrogenase [NAD] subunit, mitochondrial	GVIECLK	180	186	NH	\N
2001	Q8K2X8	Gtf2h5	General transcription factor IIH subunit 5	GVLIECDPAMK	7	17	NH	\N
2002	A0A494BAB5	Atad1	ATPase family AAA domain-containing protein 1	GVLLYGPPGCGK	43	54	NH	\N
2003	O08528	Hk2	Hexokinase-2;Hexokinase	GVSLPLGFTFSFPCQQNSLDQSILLK	593	618	NH	\N
2004	Q8VHM5	Hnrnpr	Q8VHM5;A2AW41;F7B5B5	GYAFITFCGK	207	216	NH	\N
2005	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	GYDYGPQFQGICEATLEGEQGK	999	1020	NH	\N
2006	Q80X68	Csl;Cs	Citrate synthase;Citrate synthase, mitochondrial	GYSIPECQK	95	103	NH	\N
2007	A0A0J9YKD4	Ckm	Creatine kinase M-type	GYTLPPHCSR	70	79	NH	\N
2008	Q9CXW2	Mrps22	28S ribosomal protein S22, mitochondrial	HADVLNLCVAQFEPDSAEYIK	223	243	NH	\N
2009	P28658	Atxn10	Ataxin-10	HAELIANSFMDQCR	271	284	NH	\N
2010	Z4YKT6	Dhrs7b	Dehydrogenase/reductase SDR family member 7B	HATQAFFDCLR	195	205	NH	\N
2011	E9PVA8	Gcn1l1	E9PVA8	HAYLQCMLASFR	444	455	NH	\N
2012	Q6A0A9	FAM120A	Constitutive coactivator of PPAR-gamma-like protein 1	HCPSAVVPVELQK	13	25	NH	\N
2013	Q9DB05	Napa	Alpha-soluble NSF attachment protein	HDAATCFVDAGNAFK	79	93	NH	\N
2014	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	HEAVLQAGSLCAPEK	2791	2805	NH	\N
2015	B0R021	Cdk9	Cyclin-dependent kinase 9	HENVVNLIEICR	24	35	NH	\N
2016	P47738	Aldh2	Aldehyde dehydrogenase, mitochondrial	HEPVGVCGQIIPWNFPLLMQAWK	175	197	NH	\N
2017	O08807	Prdx4	Peroxiredoxin-4	HGEVCPAGWKPGSETIIPDPAGK	244	266	NH	\N
2018	P45376	Akr1b1;Akr1b3	Aldose reductase	HIDCAQVYQNEK	42	53	NH	\N
2019	Q9JK42	Pdk2	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial	HIGSIDPNCSVSDVVK	187	202	NH	\N
2020	Q922W5	Pycr1	Pyrroline-5-carboxylate reductase 1, mitochondrial	HIVVSCAAGVTINSIEK	90	106	NH	\N
2021	Q922Q4	Pycr2	Pyrroline-5-carboxylate reductase 2	HIVVSCAAGVTISSVEK	90	106	NH	\N
2022	P17426	Ap2a1	AP-2 complex subunit alpha-1	HLCELLAQQF	968	977	NH	\N
2023	E9QAS4	Chd4;Chd5	Chromodomain-helicase-DNA-binding protein 4;Chromodomain-helicase-DNA-binding protein 5	HLCEPGADGAETFADGVPR	1446	1464	NH	\N
2024	Q8VHM5	Hnrnpr	Q8VHM5;A2AW41;F7B5B5	HLGVCISVANNR	236	247	NH	\N
2025	E9QA74	Myo18a	Unconventional myosin-XVIIIa	HLTLFQAACR	794	803	NH	\N
2026	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	HNLIDQDMACAILIR	1797	1811	NH	\N
2027	Q8K411	Pitrm1	Presequence protease, mitochondrial	HQDASCLPALK	551	561	NH	\N
2028	Q810B6	Ankfy1	Rabankyrin-5	HQLPLVVDAICTR	665	677	NH	\N
2029	Q6P3B2	Ubald1	UBA-like domain-containing protein 1	HQVMINQFVLTAGCAADQAK	10	29	NH	\N
2030	A0A140LJB7	Gps1	COP9 signalosome complex subunit 1	HVINMCLNVIK	193	203	NH	\N
2031	Q8R1F1	Fam129b	Niban-like protein 1	HYYFCMMTEAEQDK	169	182	NH	\N
2032	Q91YR9	Ptgr1	Prostaglandin reductase 1	IAICGAISQYNR	236	247	NH	\N
2033	P80316	Cct5	T-complex protein 1 subunit epsilon	IAILTCPFEPPKPK	248	261	NH	\N
2034	Q8C4Q6	Aida	Axin interactor, dorsalization-associated protein	IATCLELR	66	73	NH	\N
2035	B1AV14	Apool	MICOS complex subunit Mic27	IAYPLGLATLGATVCYPAQSVIIAK	103	127	NH	\N
2036	H7BX22	Ranbp1	Ran-specific GTPase-activating protein	ICANHYITPMMELKPNAGSDR	48	68	NH	\N
2037	Q8BKC5	Ipo5	Importin-5	ICDIAAELAR	109	118	NH	\N
2038	G5E866	Sf3b1	Splicing factor 3B subunit 1	ICFELLELLK	1058	1067	NH	\N
2039	Q6P542	Abcf1	ATP-binding cassette sub-family F member 1	ICIVGPNGVGK	646	656	NH	\N
2040	Q99L13	Hibadh	3-hydroxyisobutyrate dehydrogenase, mitochondrial	ICNNMLLAISMIGTAEAMNLGIR	209	231	NH	\N
2041	F6WZQ6	Bnip1	Vesicle transport protein SEC20	ICNQEIVK	11	18	NH	\N
2042	O08664	Bcl7c	B-cell CLL/lymphoma 7 protein family member C	ICPNAPDP	210	217	NH	\N
2043	E9Q7K1	Guk1	Guanylate kinase	ICVLDVDLQGVR	106	117	NH	\N
2044	Q9Z1G3	Atp6v1c1	V-type proton ATPase subunit C 1	IDCNLLEFK	374	382	NH	\N
2045	Q9CXF4	Tbc1d15	TBC1 domain family member 15	IDVEDILCK	581	589	NH	\N
2046	A0A1L1STE6	Idh3a	Isocitrate dehydrogenase [NAD] subunit alpha, mitochondrial	IEAACFATIK	345	354	NH	\N
2047	G5E8A0	Osbpl11	Oxysterol-binding protein;Oxysterol-binding protein-related protein 11	IECLPASGLLSSLDQDLLMLK	249	269	NH	\N
2048	Q9QYB1	Clic4	Chloride intracellular channel protein 4	IEEFLEEVLCPPK	91	103	NH	\N
2049	D3YX59	Nnmt	Nicotinamide N-methyltransferase	IFCLGAVK	48	55	NH	\N
2050	Q80X95	Rraga;Rragb	Ras-related GTP-binding protein A;Ras-related GTP-binding protein B	IFCLVHK	122	128	NH	\N
2051	Q80UI5	Pik3r1	Phosphatidylinositol 3-kinase regulatory subunit alpha	IFEEQCQTQER	223	233	NH	\N
2052	Q5PPR2	Exoc1	Exocyst complex component 1	IFEQVLSELEPLCLAEQDFISK	499	520	NH	\N
2053	E9Q718	Plod2	Procollagen-lysine,2-oxoglutarate 5-dioxygenase 2	IFTENIVEQPCPDVFWFPIFSER	573	595	NH	\N
2054	Q9D6Z1	Nop56	Nucleolar protein 56	IGAAIQEELGYNCQTGGVIAEILR	100	123	NH	\N
2055	P31230	Aimp1	Aminoacyl tRNA synthase complex-interacting multifunctional protein 1;Endothelial monocyte-activating polypeptide 2	IGCIVTAK	157	164	NH	\N
2056	P22935	Crabp2	Cellular retinoic acid-binding protein 2	IGEEFEEQTVDGRPCK	68	83	NH	\N
2057	Q99JB8	Pacsin3	Protein kinase C and casein kinase II substrate protein 3	IGLYPANYVECVGA	411	424	NH	\N
2058	Q3TXU5	Dhps	Deoxyhypusine synthase	IGNLLVPNDNYCK	166	178	NH	\N
2059	Q922B2	Dars	Aspartate--tRNA ligase, cytoplasmic	IGSCTQQDVELHVQK	127	141	NH	\N
2060	Q8QZZ7	Tprkb	EKC/KEOPS complex subunit Tprkb	IGTLLDAIICR	158	168	NH	\N
2061	Q8VDM6	Hnrnpul1	Heterogeneous nuclear ribonucleoprotein U-like protein 1	IGWSLDSCSTQLGEEPFSYGYGGTGK	285	310	NH	\N
2062	A0A0J9YTY0	44450	Septin-11	IHACLYFIAPTGHSLK	147	162	NH	\N
2063	P70271	Pdlim4	PDZ and LIM domain protein 4	IHIDPESQDCSPATSR	101	116	NH	\N
2064	Q9WTI7	Myo1c	Unconventional myosin-Ic	IICDLVEEK	478	486	NH	\N
2065	P50396	Gdi1	Rab GDP dissociation inhibitor alpha	IICILSHPIK	300	309	NH	\N
2066	A0A0N4SVU4	Suclg1	Succinyl-CoA ligase [ADP/GDP-forming] subunit alpha, mitochondrial	IICQGFTGK	57	65	NH	\N
2067	Q9CZG3	Commd8	COMM domain-containing protein 8	IIDGFCGR	27	34	NH	\N
2068	D3YXT0	Ndufs2	NADH dehydrogenase [ubiquinone] iron-sulfur protein 2, mitochondrial	IIEQCLNK	317	324	NH	\N
2069	A0JNY3	Gphn	Gephyrin;Molybdopterin adenylyltransferase;Molybdopterin molybdenumtransferase	IIFALPGNPVSAVVTCNLFVVPALR	656	680	NH	\N
2070	P21278	Gna11;Gnaq	Guanine nucleotide-binding protein subunit alpha-11;Guanine nucleotide-binding protein G(q) subunit alpha	IIYSHFTCATDTENIR	323	338	NH	\N
2071	S4R1M2	Safb;Safb2	Scaffold attachment factor B1;Scaffold attachment factor B2	ILDILGETCK	217	226	NH	\N
2072	E9PVA8	Gcn1l1	E9PVA8	ILDVASLEALNECSR	2635	2649	NH	\N
2073	Q8BMS4	Coq3	Ubiquinone biosynthesis O-methyltransferase, mitochondrial	ILDVGCGGGLLTEPLGR	151	167	NH	\N
2074	D3YWJ0	Nuggc	D3YWJ0;D3YY21	ILGSCLVR	531	538	NH	\N
2075	Q8VD75	Hip1	Huntingtin-interacting protein 1	ILGSCTSLMQAIK	815	827	NH	\N
2076	A0A286YDB3	Tbc1d5	TBC1 domain family member 5	ILTDVLFCYAR	185	195	NH	\N
2077	P10107	Anxa1	Annexin A1	ILVALCGGN	338	346	NH	\N
2078	O35640	Anxa8	Annexin A8;Annexin	ILVCLLQGSR	158	167	NH	\N
2079	Q9DBR7	Ppp1r12a	Protein phosphatase 1 regulatory subunit 12A	ILVDNLCDMETVNK	250	263	NH	\N
2080	G3X956	Supt16;Supt16h	FACT complex subunit SPT16	INFYCPGSALGR	570	581	NH	\N
2081	Q8C8U0	Ppfibp1	Liprin-beta-1	INNFEPNCLR	740	749	NH	\N
2082	Q8CI32	Bag5	BAG family molecular chaperone regulator 5	INSVMCEVNK	186	195	NH	\N
2083	Q64010	Crk	Adapter molecule crk	INVSGQWEGECNGK	269	282	NH	\N
2084	A0A3B2WB82	Psmg1	Proteasome assembly chaperone 1	IPAVLYLCYTDVMK	208	221	NH	\N
2085	P84091	Ap2m1	AP-2 complex subunit mu	IPTPLNTSGVQVICMK	324	339	NH	\N
2086	Q4FJZ2	Kpna6	Importin subunit alpha;Importin subunit alpha-7	IQAVIDSGVCR	284	294	NH	\N
2087	Q9D273	Mmab	Cob(I)yrinic acid a,c-diamide adenosyltransferase, mitochondrial	IQCMLQDVGSALATPR	111	126	NH	\N
2088	E9QKR1	Enah	Protein enabled homolog	IQDHQVVINCAIPK	53	66	NH	\N
2089	Q9WVQ5	Apip	Methylthioribulose-1-phosphate dehydratase	IQPEDMFVCDINEQDISGPPASK	67	89	NH	\N
2090	A0A2R8VI72	Gga1	ADP-ribosylation factor-binding protein GGA1	IQSPQEWEAIQALTVLETCMK	55	75	NH	\N
2091	Q8VE47	Uba5	Ubiquitin-like modifier-activating enzyme 5	ISNGGLEEGQPVDLVLSCVDNFEAR	162	186	NH	\N
2092	Q8BX70	Vps13c	Vacuolar protein sorting-associated protein 13C	ITAELNAFNIFICDQK	1598	1613	NH	\N
2093	A0A2I3BQE3	Gnpnat1	Glucosamine 6-phosphate N-acetyltransferase	ITLECLPQNVGFYK	104	117	NH	\N
2094	Q8BH40	Stx7	Syntaxin-7	ITQCSVEIQR	25	34	NH	\N
2095	P08752	Gnai2	Guanine nucleotide-binding protein G(i) subunit alpha-2	ITQSSLTICFPEYTGANK	279	296	NH	\N
2096	Q9QUR6	Prep	Prolyl endopeptidase	ITVPFLEQCPIR	49	60	NH	\N
2097	D3Z7F0	Ldhb	L-lactate dehydrogenase;L-lactate dehydrogenase B chain	ITVVGVGQVGMACAISILGK	24	43	NH	\N
2098	Q9JIM1	Slc29a1	Equilibrative nucleoside transporter 1	IVFIPLLMLCNVK	369	381	NH	\N
2099	Q8CI32	Bag5	BAG family molecular chaperone regulator 5	IVPFYSGGNCVTDEFEEGIQDIILR	109	133	NH	\N
2100	Q9DC70	Ndufs7	NADH dehydrogenase [ubiquinone] iron-sulfur protein 7, mitochondrial	IVPVDIYVPGCPPTAEALLYGILQLQR	184	210	NH	\N
2101	B7FAU9	Flna	Filamin-A	IVSPSGAAVPCK	1008	1019	NH	\N
2102	O88342	Wdr1	WD repeat-containing protein 1	IWDVNVNSVVSTFPMGSNVLDQQLGCLWQK	260	289	NH	\N
2103	E9PYX6	Sorbs1	E9PYX6;D3Z5J3;A0A5F8MPJ2	IWDYTPGDCSILPR	364	377	NH	\N
2104	F7BF80	Crat	Carnitine O-acetyltransferase	IYGQACATYESASLR	43	57	NH	\N
2105	E9Q390	Myof	Myoferlin	IYIVQGLQLQPQDNNGLCDPYIK	1544	1566	NH	\N
2106	Q8K0C9	Gmds	GDP-mannose 4,6 dehydratase	IYLGQLECFSLGNLDAK	230	246	NH	\N
2107	Q9D0L7	Armc10	Armadillo repeat-containing protein 10	IYVPQVCEDVFADPLNSAVQLAGLR	140	164	NH	\N
2108	B1ARU4	Macf1	B1ARU4;E9PVY8;A0A571BGC6;A0A571BF93;A0A0A0MQA6;F6Q750;F6XCT0;F6SHS0	KPQASLPGMEQFSGACLEK	3728	3746	NH	\N
2109	Q3U2G2	Hspa4	Heat shock 70 kDa protein 4	KPVVDCVVSVPSFYTDAER	135	153	NH	\N
2110	G3UX44	H2-Ke6;Hsd17b8	Estradiol 17-beta-dehydrogenase 8	LAAEGAAVAACDLDGAAAQDTVR	36	58	NH	\N
2111	F7BIK4	Git2;Git1	ARF GTPase-activating protein GIT2;ARF GTPase-activating protein GIT1	LAFYLCGR	230	237	NH	\N
2112	Q8C0E3	Trim47	Tripartite motif-containing protein 47	LALEEGCGPGPGPPR	345	359	NH	\N
2113	G5E8I8	Cherp	Calcium homeostasis endoplasmic reticulum protein	LALEQQQLICK	60	70	NH	\N
2114	F7D926	Wfs1	Wolframin	LANDADEELNSCSAVAWLILAAK	33	55	NH	\N
2115	Q9Z0Y1	Dctn3	Dynactin subunit 3	LAQIHIQQQDQCVAITEESK	129	148	NH	\N
2116	B1PSD9	Pde4d	cAMP-specific 3,5-cyclic phosphodiesterase 4D	LASETLEELDWCLDQLETLQTR	166	187	NH	\N
2117	Q6ZQ73	Cand2	Cullin-associated NEDD8-dissociated protein 2	LATLCPAPVLQR	1134	1145	NH	\N
2118	Q8BW75	Maob	Amine oxidase [flavin-containing] B	LCELYAK	364	370	NH	\N
2119	Q8BKC5	Ipo5	Importin-5	LCGDTNLNNMQR	265	276	NH	\N
2120	P61222	Abce1	ATP-binding cassette sub-family E member 1	LCIEVTPQSK	37	46	NH	\N
2121	P70303	Ctps2	CTP synthase 2	LCLADGILVPGGFGIR	361	376	NH	\N
2122	F6TW20	Eif4g2	Eukaryotic translation initiation factor 4 gamma 2	LCLELLNVGVESK	96	108	NH	\N
2123	A2AFW6	Mtch2	Mitochondrial carrier homolog 2	LCSGVLGTVVHGK	78	90	NH	\N
2124	Q80ZJ2	Impa1	Inositol monophosphatase 1	LCSIPIHGIR	182	191	NH	\N
2125	F8WHL2	Copa	Coatomer subunit alpha;Coatomer subunit alpha;Xenin;Proxenin	LDALCNIHENIR	527	538	NH	\N
2126	Q5F2E8	Taok1	Serine/threonine-protein kinase TAO1	LDEAQEAECQVLK	790	802	NH	\N
2127	Q8C167	Prepl	Prolyl endopeptidase-like	LDQPFIDCIR	151	160	NH	\N
2128	F6QA74	Apex1	DNA-(apurinic or apyrimidinic site) lyase;DNA-(apurinic or apyrimidinic site) lyase, mitochondrial	LDYFLLSHSLLPALCDSK	253	270	NH	\N
2129	A0A1B0GSE9	Ankrd10	Ankyrin repeat domain-containing protein 10	LECLMQLVR	70	78	NH	\N
2130	A0A498WGK2	Nars	Asparagine--tRNA ligase, cytoplasmic	LEDLVCDVVDR	364	374	NH	\N
2131	Q9D892	Itpa	Inosine triphosphate pyrophosphatase	LEEVIQILGDNFPCTLEAQK	20	39	NH	\N
2132	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	LEGIGQFHCR	5081	5090	NH	\N
2133	A0A494BBB0	Capn1	Calpain-1 catalytic subunit	LEICNLTPDALK	348	359	NH	\N
2134	E9QN70	Lamb1	Laminin subunit beta-1	LELPQYTASGSDVESPYTFIDSLVLMPYCK	730	759	NH	\N
2135	Q3UQN2	Fcho2	F-BAR domain only protein 2	LEQILPNSQLVFSDPSQCDSNTK	603	625	NH	\N
2136	P13541	Myh3	Myosin-3	LETDLTQLQSEVEDACR	1731	1747	NH	\N
2137	D3YYU8	Obsl1	Obscurin-like protein 1	LEVEALPLQMCR	1709	1720	NH	\N
2138	E9PVA8	Gcn1l1	E9PVA8	LFCLTLHR	53	60	NH	\N
2139	Q91V89	Ppp2r5d	Q91V89;Q7TNL5	LFDDCTQQYK	472	481	NH	\N
2140	P08752	Gnai2;Gnai1;Gnai3	Guanine nucleotide-binding protein G(i) subunit alpha-2;Guanine nucleotide-binding protein G(i) subunit alpha-1;Guanine nucleotide-binding protein G(k) subunit alpha	LFDSICNNK	250	258	NH	\N
2141	Q9Z2I0	Letm1	LETM1 and EF-hand domain-containing protein 1, mitochondrial	LFEDELTLDNLTRPQLVALCK	310	330	NH	\N
2142	Q8JZN2	Csde1	Cold shock domain-containing protein E1	LFFHCSQYNGNLQDLK	49	64	NH	\N
2143	P60229	Eif3e	Eukaryotic translation initiation factor 3 subunit E	LFIFETFCR	338	346	NH	\N
2144	P70677	Casp3	Caspase-3;Caspase-3 subunit p17;Caspase-3 subunit p12	LFIIQACR	157	164	NH	\N
2145	A0A286YDB3	Tbc1d5	TBC1 domain family member 5	LFLCVLPQDK	93	102	NH	\N
2146	Q61733	Mrps31	28S ribosomal protein S31, mitochondrial	LFMELVTCGLSK	338	349	NH	\N
2147	P62874	Gnb1	Guanine nucleotide-binding protein G(I)/G(S)/G(T) subunit beta-1	LFVSGACDASAK	198	209	NH	\N
2148	P70271	Pdlim4	PDZ and LIM domain protein 4	LGAPLSGLQGLPECTR	242	257	NH	\N
2149	Q8K411	Pitrm1	Presequence protease, mitochondrial	LGCGILNYR	625	633	NH	\N
2150	Q8CHP8	Pgp	Phosphoglycolate phosphatase	LGFGGPVGPEAGLEVFGTAYCSALYLR	84	110	NH	\N
2151	Q99LC5	Etfa	Electron transfer flavoprotein subunit alpha, mitochondrial	LGGEVSCLVAGTK	47	59	NH	\N
2152	Q8BH69	Sephs1	Selenide, water dikinase 1	LGIGMDTCVIPLR	64	76	NH	\N
2153	P51660	Hsd17b4	Peroxisomal multifunctional enzyme type 2;(3R)-hydroxyacyl-CoA dehydrogenase;Enoyl-CoA hydratase 2	LGILGLCNTLAIEGR	169	183	NH	\N
2154	Q8C605	Pfkp	ATP-dependent 6-phosphofructokinase;ATP-dependent 6-phosphofructokinase, platelet type	LGITNLCVIGGDGSLTGANLFR	116	137	NH	\N
2155	P61982	Ywhag	14-3-3 protein gamma;14-3-3 protein gamma, N-terminally processed	LGLALNYSVFYYEIQNAPEQACHLAK	173	198	NH	\N
2156	O35218	Cpsf2	Cleavage and polyadenylation specificity factor subunit 2	LGLNCAIYATIPVYK	78	92	NH	\N
2157	B7ZNP3	Commd6	COMM domain-containing protein 6	LGMAVSSDSCR	24	34	NH	\N
2158	Q9JIK5	Ddx21	Nucleolar RNA helicase 2	LGVCFDVR	751	758	NH	\N
2159	Q9D7P6	Iscu	Iron-sulfur cluster assembly enzyme ISCU, mitochondrial	LHCSMLAEDAIK	137	148	NH	\N
2160	K3W4S6	Gyg;Gyg1	Glycogenin-1	LHCWSLTQYSK	131	141	NH	\N
2161	E9PVA8	Gcn1l1	E9PVA8	LIAALSTPSQQVQESVASCLPPLVPAVK	1344	1371	NH	\N
2162	D6REF3	Ywhae	14-3-3 protein epsilon	LICCDILDVLDK	95	106	NH	\N
2163	A0A286YDU0	Rasa1	A0A286YDU0;E9PYG6	LICPAILNPR	354	363	NH	\N
2164	Q8K2Q7	Brox	BRO1 domain-containing protein BROX	LIDAYIIQCQAEAQEVTIAR	179	198	NH	\N
2165	S4R1I6	Ddx5	Probable ATP-dependent RNA helicase DDX5	LIDFLECGK	228	236	NH	\N
2166	Q9CU62	Smc1a	Structural maintenance of chromosomes protein 1A	LIDLCQPTQK	519	528	NH	\N
2167	A0A0G2JF12	Anapc5	Anaphase-promoting complex subunit 5	LIEESCPQLANSVQIR	69	84	NH	\N
2168	P80314	Cct2	T-complex protein 1 subunit beta	LIHFSGVALGEACTIVLR	359	376	NH	\N
2169	Q922B1	Macrod1	O-acetyl-ADP-ribose deacetylase MACROD1	LIICVFLEK	299	307	NH	\N
2170	A0A0G2JGX4	Atp1a3;Atp1a2;Atp1a4;Atp12a;Atp1a1	Sodium/potassium-transporting ATPase subunit alpha-3;Sodium/potassium-transporting ATPase subunit alpha-2;Sodium/potassium-transporting ATPase subunit alpha-4;Potassium-transporting ATPase alpha chain 2;Sodium/potassium-transporting ATPase subunit alpha-1	LIIVEGCQR	699	707	NH	\N
2171	Q9CPY7	Lap3	Cytosol aminopeptidase	LILADALCYAHTFNPK	369	384	NH	\N
2172	G3UX09	Slc25a22	Mitochondrial glutamate carrier 1	LINGGIAGLIGVTCVFPIDLAK	12	33	NH	\N
2173	O70503	Hsd17b12	Very-long-chain 3-oxoacyl-CoA reductase	LININVLSVCK	157	167	NH	\N
2174	Q99LE6	Abcf2	ATP-binding cassette sub-family F member 2	LIQQVAQEIWVCEK	580	593	NH	\N
2175	Q3U7R1	Esyt1	Extended synaptotagmin-1	LISIIHSCR	976	984	NH	\N
2176	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	LIVMTYLCQIR	1302	1312	NH	\N
2177	Q8C8I0	Plcb3	1-phosphatidylinositol 4,5-bisphosphate phosphodiesterase beta-3	LLAQLTQECQEQR	312	324	NH	\N
2178	D6RIL0	Pbrm1	Protein polybromo-1	LLCELFIR	67	74	NH	\N
2179	Q91VI7	Rnh1	Ribonuclease inhibitor	LLCESLLEPGCQLESLWIK	298	316	NH	\N
2180	P47738	Aldh2	Aldehyde dehydrogenase, mitochondrial	LLCGGGAAADR	386	396	NH	\N
2181	A0A1L1ST08	Commd4	COMM domain-containing protein 4	LLCSQVLK	27	34	NH	\N
2182	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	LLDGDEGPNTGGMGAYCPAPQVSK	221	244	NH	\N
2183	P70402	Mybph	Myosin-binding protein H	LLDVWGCNAALEWTPPQDTGNTELLGYTVQK	281	311	NH	\N
2184	Q7TMY8	Huwe1	E3 ubiquitin-protein ligase HUWE1	LLECYFTR	4126	4133	NH	\N
2185	Q9D7J4	Cox20	Cytochrome c oxidase protein 20 homolog	LLGILDVENTPCAR	17	30	NH	\N
2186	Q8CHP8	Pgp	Phosphoglycolate phosphatase	LLLAEVDTLLFDCDGVLWR	23	41	NH	\N
2187	A0A0N4SVU8	Tmem176a	Transmembrane protein 176A	LLLAGCSLLR	36	45	NH	\N
2188	Q9CZW4	Acsl3	Long-chain-fatty-acid--CoA ligase 3	LLLCGGAPLSATTQR	447	461	NH	\N
2189	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	LLLEECEQR	1058	1066	NH	\N
2190	E9PUI4	Mical1	Protein-methionine sulfoxide oxidase MICAL1	LLLGLVGDCLVEPFWPLGTGVAR	386	408	NH	\N
2191	Q9ERU9	Ranbp2	E3 SUMO-protein ligase RanBP2	LLLPSTFFCYK	2488	2498	NH	\N
2192	P17427	Ap2a2	AP-2 complex subunit alpha-2	LLQCYPPPDPAVR	264	276	NH	\N
2193	P17426	Ap2a1	AP-2 complex subunit alpha-1	LLQCYPPPEDAAVK	264	277	NH	\N
2194	B1PSD9	Pde4d	cAMP-specific 3,5-cyclic phosphodiesterase 4D	LLQEENCDIFQNLTK	432	446	NH	\N
2195	D3Z6B9	Aldh1l2	Mitochondrial 10-formyltetrahydrofolate dehydrogenase	LLQYCETGVQEGATLVYGGR	666	685	NH	\N
2196	Q9D7K2	Ten1	CST complex subunit TEN1	LLTCVEGMDLSLLEK	92	106	NH	\N
2197	Q8JZN2	Csde1	Cold shock domain-containing protein E1	LLTSYGFIQCSER	33	45	NH	\N
2198	A0A087WSS1	2310035C23Rik;Kiaa1468	LisH domain and HEAT repeat-containing protein KIAA1468	LLVAESCGALAPYLPK	594	609	NH	\N
2199	Q80U95	Ube3c	Ubiquitin-protein ligase E3C	LLYAIECAAGFELS	1070	1083	NH	\N
2200	Q5U4C5	Ipo4	Importin-4	LLYPLLQIVCK	391	401	NH	\N
2201	S4R1L5	Birc6	Baculoviral IAP repeat-containing protein 6	LMAQVLCELFQTAPQR	3774	3789	NH	\N
2202	Q9EPU0	Upf1	Regulator of nonsense transcripts 1	LMQGDEICLR	362	371	NH	\N
2203	Q8C167	Prepl	Prolyl endopeptidase-like	LNGLADLVACIK	527	538	NH	\N
2204	Q9CPY7	Lap3	Cytosol aminopeptidase	LNLPINIIGLAPLCENMPSGK	322	342	NH	\N
2205	A0A1D5RLQ0	Nup93	Nuclear pore complex protein Nup93	LNQVCFDDDGTSSPQDR	295	311	NH	\N
2206	Q8CGC7	Eprs	Bifunctional glutamate/proline--tRNA ligase;Glutamate--tRNA ligase;Proline--tRNA ligase	LNQWCNVVR	1144	1152	NH	\N
2207	E9PZ16	Hspg2	Basement membrane-specific heparan sulfate proteoglycan core protein;Endorepellin;LG3 peptide	LPAIEPSDQGQYLCR	1919	1933	NH	\N
2208	Q80X68	Csl;Cs	Citrate synthase;Citrate synthase, mitochondrial	LPCVAAK	209	215	NH	\N
2209	A0A087WR78	D2hgdh	D-2-hydroxyglutarate dehydrogenase, mitochondrial	LPFSTVSEEDLAAFECIIPGR	71	91	NH	\N
2210	P51175	Ppox	Protoporphyrinogen oxidase	LPLTLAGASYEGVAVNDCIESGR	442	464	NH	\N
2211	P62192	Psmc1	26S protease regulatory subunit 4	LPLVTPHTQCR	49	59	NH	\N
2212	Q0GNC1	Inf2	Inverted formin-2	LPVFCQLILK	787	796	NH	\N
2213	O08915	Aip	AH receptor-interacting protein	LPVWETIVCTMR	70	81	NH	\N
2214	P30416	Fkbp4	Peptidyl-prolyl cis-trans isomerase FKBP4;Peptidyl-prolyl cis-trans isomerase FKBP4, N-terminally processed	LQAFSAAIESCNK	332	344	NH	\N
2215	O35226	Psmd4	26S proteasome non-ATPase regulatory subunit 4	LQAQQDAVNIVCHSK	26	40	NH	\N
2216	B1ARU4	Macf1	Microtubule-actin cross-linking factor 1	LQCQLQENEEFQK	4792	4804	NH	\N
2217	Q8R4S0	Ppp1r14c	Protein phosphatase 1 regulatory subunit 14C	LQEALVDCYKPTEEFIR	128	144	NH	\N
2218	Q9D0I9	Rars	Arginine--tRNA ligase, cytoplasmic	LQEVFGCAIR	80	89	NH	\N
2219	O55126	Gbas	Protein NipSnap homolog 2	LQFHNVKPECLDAYNK	71	86	NH	\N
2220	Q3TVI8	Pbxip1	Pre-B-cell leukemia transcription factor-interacting protein 1	LQGLEANCVR	338	347	NH	\N
2221	E9Q616	Ahnak	E9Q616	LQGNIGMDACASK	397	409	NH	\N
2222	A0A0R4J1H0	44260	E3 ubiquitin-protein ligase MARCH5	LQILNSIFPGIGCPVPR	176	192	NH	\N
2223	A0A087WPL5	Dhx9	A0A087WPL5;E9QNN1	LQISHEAAACITALR	1092	1106	NH	\N
2224	E9Q3W4	Plec	Plectin	LQLEACETR	834	842	NH	\N
2225	Q9CRA5	Golph3	Golgi phosphoprotein 3	LQLEACGMR	103	111	NH	\N
2226	Q6P5F9	Xpo1	Exportin-1	LQMSVPGILNPHEIPEEMCD	1052	1071	NH	\N
2227	A0A494BAJ6	Arl3	ADP-ribosylation factor-like protein 3	LSCVPVLIFANK	116	127	NH	\N
2228	Q6NXL1	Sec24d	Q6NXL1	LSEDVGALIQCAVLYTTISGQR	737	758	NH	\N
2229	Q5U4C5	Ipo4	Importin-4	LSELCNVLK	795	803	NH	\N
2230	Q8JZK9	Hmgcs1	Hydroxymethylglutaryl-CoA synthase, cytoplasmic	LSIQCYLSALDR	220	231	NH	\N
2231	A0A0R4IZY0	Thop1	Thimet oligopeptidase	LSLLCIDFNK	171	180	NH	\N
2232	D3Z6G3	Mapre3	Microtubule-associated protein RP/EB family member 3	LSNVAPPCILR	160	170	NH	\N
2233	A0A140LIQ1	Tacc2	Transforming acidic coiled-coil-containing protein 2	LSQQSYNFDPDACEESLDPFK	66	86	NH	\N
2234	B7ZNS2	Dlgap4	Disks large-associated protein 4	LSSIGIQVDCIQPVPK	647	662	NH	\N
2235	Q9CQE8	0	UPF0568 protein C14orf166 homolog	LTALDYHNPSGFNCK	6	20	NH	\N
2236	E9QAD4	Ccdc93	Coiled-coil domain-containing protein 93	LTASSVGQIVGLCSEEIK	269	286	NH	\N
2237	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	LTDQLPLIIVCDR	772	784	NH	\N
2238	A0A0G2JEX7	Rps27l;Rps27	40S ribosomal protein S27-like;40S ribosomal protein S27	LTEGCSFR	41	48	NH	\N
2239	D3Z7C6	Ptges3	Prostaglandin E synthase 3	LTFSCLGGSDNFK	36	48	NH	\N
2240	A0A0A6YVY7	Usp4	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 4	LTLESLYQAVCDR	614	626	NH	\N
2241	Q9DCM0	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial	LTLSCEEFIK	215	224	NH	\N
2242	O35218	Cpsf2	Cleavage and polyadenylation specificity factor subunit 2	LTTLSGVQEESALCYLLQVDEFR	7	29	NH	\N
2243	Q9DCC5	Cbx3	Chromobox protein homolog 3	LTWHSCPEDEAQ	172	183	NH	\N
2244	Q8BIP0	Dars2	Aspartate--tRNA ligase, mitochondrial	LVCLVTGAPSIR	587	598	NH	\N
2245	P63011	Rab3a	Ras-related protein Rab-3A	LVDVICEK	179	186	NH	\N
2246	P17426	Ap2a1	AP-2 complex subunit alpha-1	LVECLETVLNK	280	290	NH	\N
2247	D3Z1U9	Ndufv1	NADH dehydrogenase [ubiquinone] flavoprotein 1, mitochondrial	LVEGCLVGGR	59	68	NH	\N
2248	Q9D0B5	Tstd3	Thiosulfate sulfurtransferase/rhodanese-like domain-containing protein 3	LVFSCLAGVR	110	119	NH	\N
2249	A0A2I3BQF4	Rpl30	60S ribosomal protein L30	LVILANNCPALR	24	35	NH	\N
2250	A0A0A6YXF6	Rhoa;Rhoc;4930544G11Rik	Transforming protein RhoA;Rho-related GTP-binding protein RhoC	LVIVGDGACGK	8	18	NH	\N
2251	A0A0R4J166	Klhl40	Kelch-like protein 40	LVLAACSPYFR	49	59	NH	\N
2252	J3QNN5	Sccpdh	Saccharopine dehydrogenase-like oxidoreductase	LVLNCVGPYR	94	103	NH	\N
2253	Q9DCJ5	Ndufa8	NADH dehydrogenase [ubiquinone] 1 alpha subcomplex subunit 8	LVNGCALNFFR	62	72	NH	\N
2254	A0A1B0GRV0	Bpnt1	3(2),5-bisphosphate nucleotidase 1	LVQMSICSSLAR	53	64	NH	\N
2255	Q02257	Jup;Ctnnb1	Junction plakoglobin;Catenin beta-1	LVQNCLWTLR	368	377	NH	\N
2256	P11499	Hsp90ab1	Heat shock protein HSP 90-beta	LVSSPCCIVTSTYGWTANMER	584	604	NH	\N
2257	Q3TDD9	Ppp1r21	Protein phosphatase 1 regulatory subunit 21	LVTTNDCILSSAVTLTNGAGK	462	482	NH	\N
2258	P21981	Tgm2	Protein-glutamine gamma-glutamyltransferase 2	LVVNFQCDK	663	671	NH	\N
2259	F7BLT7	Gnao1	Guanine nucleotide-binding protein G(o) subunit alpha	LWGDSGIQECFNR	78	90	NH	\N
2260	D3Z061	Uba6	Ubiquitin-like modifier-activating enzyme 6	LYATVYCIPFSEK	733	745	NH	\N
2261	D3Z6F5	Atp5a1	ATP synthase subunit alpha;ATP synthase subunit alpha, mitochondrial	LYCIYVAIGQK	192	202	NH	\N
2262	P97355	Sms	Spermine synthase	LYCPVEFSK	335	343	NH	\N
2263	Q6PGB6	Naa50	N-alpha-acetyltransferase 50	LYIMTLGCLAPYR	72	84	NH	\N
2264	Q9JHW2	Nit2	Omega-amidase NIT2	LYNTCSVFGPDGSLLVK	93	109	NH	\N
2265	Q8BGT5	Gpt2	Alanine aminotransferase 2	MAPDMFYCMK	459	468	NH	\N
2266	Z4YL78	Ckap5	Cytoskeleton-associated protein 5	MCLVYPASK	1316	1324	NH	\N
2267	D3Z268	Ap1s1;Ap1s2	AP-1 complex subunit sigma-1A;AP-1 complex subunit sigma-2	MCSFLEWR	64	71	NH	\N
2268	Q80X90	Flnb	Filamin-B	MDCQEIPEGYK	2429	2439	NH	\N
2269	G3UXX3	Spr	G3UXX3;Q91XH5;G3UZ79	MEAGGLGCAVCVLTGASR	1	18	NH	\N
2270	A0A3Q4EBV4	Fam98a	Protein FAM98A	MECDLMETDILESLEDLGYK	1	20	NH	\N
2271	Q9DAY9	Npm1	Nucleophosmin	MEDSMDMDMSPLRPQNYLFGCELK	1	24	NH	\N
2272	Q8BIW1	Prune	Protein prune homolog	MEDYLQDCR	1	9	NH	\N
2273	A0A0R4J0M1	Tbcc	Tubulin-specific chaperone C	MEGVDCSMALADAAAGSPR	1	19	NH	\N
2274	Q3U182	Crtc2	CREB-regulated transcription coactivator 2	MEPLGLEGLTMLSDPCALLPDPAVEDSFR	659	687	NH	\N
2275	D3Z3M7	Clip1	CAP-Gly domain-containing linker protein 1	METSYNQCQDLK	888	899	NH	\N
2276	G5E8I4	l7Rn6;L7rn6	Protein Hikeshi	MFGCLVAGR	1	9	NH	\N
2277	O08528	Hk2	Hexokinase-2	MIASHMIACLFTELNQNQVQK	1	21	NH	\N
2278	E9Q5Q0	Atxn2l	Ataxin-2-like protein	MLHFLTAVVGSTCDVK	1	16	NH	\N
2279	Q6PGB6	Naa50	N-alpha-acetyltransferase 50	MLNHVLNICEK	92	102	NH	\N
2280	Q8BKC5	Ipo5	Importin-5	MLVQCMQDQEHPSIR	176	190	NH	\N
2281	O35857	Timm44	Mitochondrial import inner membrane translocase subunit TIM44	MLYVWALCR	419	427	NH	\N
2282	B7ZC20	Pkig	cAMP-dependent protein kinase inhibitor gamma	MMEVESSYSDFISCDR	1	16	NH	\N
2283	G3UZW9	Ubtf	Nucleolar transcription factor 1	MNGEADCPTDLEMAAPK	1	17	NH	\N
2284	Q9JHU4	Dync1h1	Cytoplasmic dynein 1 heavy chain 1	MNTLLANGEVPGLFEGDEYATLMTQCK	3006	3032	NH	\N
2285	O70578	Cacng1	Voltage-dependent calcium channel gamma-1 subunit	MPQNPWESCMDAEPEH	208	223	NH	\N
2286	Q99JB8	Pacsin3	Protein kinase C and casein kinase II substrate protein 3	MSEEDEQGWCQGQLQSGR	393	410	NH	\N
2287	A0A286YD77	Nln	Neurolysin, mitochondrial	MSELCIDFNK	46	55	NH	\N
2288	Q8CI43	Myl6b	Myosin light chain 6B	MTEEEVETVLAGHEDSNGCINYEAFLK	176	202	NH	\N
2289	D3YWY6	Mpc1	Mitochondrial pyruvate carrier 1	MTFALCCYSLTFMR	31	44	NH	\N
2290	Q8BIW1	Prune	Protein prune homolog	MTICGILER	310	318	NH	\N
2291	A0A1C7CYV0	Pls3	Plastin-3	MVMTVFACLMGR	614	625	NH	\N
2292	A2AN98	Sec23b	Protein transport protein Sec23B	MVVPLACLLTPLK	34	46	NH	\N
2293	Q62383	Supt6h	Transcription elongation factor SPT6	NAFATPTISLQDSCDYLDR	323	341	NH	\N
2294	Q5PPR2	Exoc1	Exocyst complex component 1	NAFISCIWK	109	117	NH	\N
2295	Q8BFS6	Cpped1	Serine/threonine-protein phosphatase CPPED1	NAGGTYQNLDMVVSSAIGCQLGK	250	272	NH	\N
2296	P38060	Hmgcl	Hydroxymethylglutaryl-CoA lyase, mitochondrial	NANCSIEESFQR	138	149	NH	\N
2297	E9Q0U7	Hsph1	Heat shock protein 105 kDa	NAVEECVYEFR	596	606	NH	\N
2298	F8WHJ1	Fam160a2	FTS and Hook-interacting protein	NAVYCAVIFPEFLK	860	873	NH	\N
2299	P30999	Ctnnd1	Catenin delta-1	NCDGVPALVR	449	458	NH	\N
2300	Q924M7	Mpi	Mannose-6-phosphate isomerase	NCFSHLMK	196	203	NH	\N
2301	Q9CS42	Prps2	Ribose-phosphate pyrophosphokinase 2	NCIIVSPDAGGAK	164	176	NH	\N
2302	P68510	Ywhah	14-3-3 protein eta	NCNDFQYESK	111	120	NH	\N
2303	Q91Z53	Grhpr	Glyoxylate reductase/hydroxypyruvate reductase	NCVILPHIGSATYK	287	300	NH	\N
2304	P09528	Fth1	Ferritin heavy chain;Ferritin heavy chain, N-terminally processed	NDPHLCDFIETYYLSEQVK	126	144	NH	\N
2305	A0A498WGK2	Nars	Asparagine--tRNA ligase, cytoplasmic	NDPSLPEPACVK	115	126	NH	\N
2306	Q9WUM3	Coro1b	Coronin-1B;Coronin	NDQCYEDIR	22	30	NH	\N
2307	D3Z5B9	Lman1	Protein ERGIC-53	NDYEFCAK	217	224	NH	\N
2308	Q9ET54	Palld;Mypn	Palladin;Myopalladin	NEAGIVSCTAR	1337	1347	NH	\N
2309	Q6ZWX6	Eif2s1	Eukaryotic translation initiation factor 2 subunit 1	NECVVVIR	68	75	NH	\N
2310	P48722	Hspa4l	Heat shock 70 kDa protein 4L	NFDEALVDYFCDEFK	235	249	NH	\N
2311	A0A087WPL5	Dhx9	ATP-dependent RNA helicase A	NFLYAWCGK	6	14	NH	\N
2312	Q8BK64	Ahsa1	Activator of 90 kDa heat shock protein ATPase homolog 1	NGETELCMEGR	295	305	NH	\N
2313	G3V011	Myo1f;Myo1e	Unconventional myosin-If;Unconventional myosin-Ie	NGFEQFCINFVNEK	396	409	NH	\N
2314	Q99MS7	Ehbp1l1	EH domain-binding protein 1-like protein 1	NGLAFCAILHR	1242	1252	NH	\N
2315	Q91VH6	Memo1	Protein MEMO1	NGMNMSFSFLNYAQSSQCR	262	280	NH	\N
2316	Q60960	Kpna1	Importin subunit alpha-5;Importin subunit alpha-5, N-terminally processed	NGSGINPYCALIEEAYGLDK	461	480	NH	\N
2317	Q9CXU9	Eif1b	Eukaryotic translation initiation factor 1b	NICQFLLEVGIVK	92	104	NH	\N
2318	P23116	Eif3a	Eukaryotic translation initiation factor 3 subunit A	NICQQVNIK	76	84	NH	\N
2319	O35344	Kpna3	Importin subunit alpha-4	NILIMAGDEASTIAEIIEECGGLEK	437	461	NH	\N
2320	A0A0G2JGX4	Atp1a3	Sodium/potassium-transporting ATPase subunit alpha-3	NITFFSTNCVEGTAR	244	258	NH	\N
2321	A2A6T4	Ict1	Peptidyl-tRNA hydrolase ICT1, mitochondrial	NLAECLQK	126	133	NH	\N
2322	O70194	Eif3d	Eukaryotic translation initiation factor 3 subunit D	NLAMEATYINHNFSQQCLR	311	329	NH	\N
2323	A0A571BDS0	Xirp1	Xin actin-binding repeat-containing protein 1	NLEEAVAEDLAEVLGSEEPTEGDVQCMR	68	95	NH	\N
2324	Q6NSQ9	G6pc3	Glucose-6-phosphatase 3	NLFQFCFPAAYYASR	37	51	NH	\N
2325	Q3U4W8	Usp5	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 5	NLGNSCYLNSVVQVLFSIPDFQR	330	352	NH	\N
2326	A0A3Q4L2X0	Rock2;Rock1	Rho-associated protein kinase;Rho-associated protein kinase 1;Rho-associated protein kinase 2	NLICAFLTDR	311	320	NH	\N
2327	Q8VE73	Cul7	Cullin-7	NLLNCLVVR	1556	1564	NH	\N
2328	Q8K363	Ddx18	ATP-dependent RNA helicase DDX18	NLQCLVIDEADR	316	327	NH	\N
2329	P47757	Capzb	F-actin-capping protein subunit beta	NLSDLIDLVPSLCEDLLSSVDQPLK	24	48	NH	\N
2330	E0CXD1	Opa1	Dynamin-like 120 kDa protein, mitochondrial;Dynamin-like 120 kDa protein, form S1	NLSLAVSDCFWK	561	572	NH	\N
2331	Q52KR3	Prune2	Protein prune homolog 2	NLSLTCFAGEEPSSPER	581	597	NH	\N
2332	P43883	Plin2	Perilipin-2	NLTQQLQTTCQTVLVNAQGLPQNIQDQAK	314	342	NH	\N
2333	Q9WVA4	Tagln2	Transgelin-2	NMACVQR	121	127	NH	\N
2334	Q8BU30	Iars	Isoleucine--tRNA ligase, cytoplasmic	NNDLCYWVPEFVR	429	441	NH	\N
2335	P62317	Snrpd2	Small nuclear ribonucleoprotein Sm D2	NNTQVLINCR	38	47	NH	\N
2336	Q8CFZ0	Ube2i	SUMO-conjugating enzyme UBC9	NPDGTMNLMNWECAIPGK	31	48	NH	\N
2337	B1ASW5	Trappc1	Trafficking protein particle complex subunit 1	NPLCPLGQTVQSELFR	102	117	NH	\N
2338	Q91VR5	Ddx1	ATP-dependent RNA helicase DDX1	NQALFPACVLK	224	234	NH	\N
2339	P07742	Rrm1	Ribonucleoside-diphosphate reductase large subunit	NQIIACNGSIQSIPEIPDDLK	657	677	NH	\N
2340	E9QA74	Myo18a	Unconventional myosin-XVIIIa	NQLEESEFTCAAAVK	1293	1307	NH	\N
2341	B2RQS1	Strn3	Striatin-3	NQLLSCSADGTIR	514	526	NH	\N
2342	Q9JJ28	Flii	Protein flightless-1 homolog	NQLTSLPSAICK	279	290	NH	\N
2343	P47758	Srprb	Signal recognition particle receptor subunit beta	NSPSLLIACNK	169	179	NH	\N
2344	A0A087WSK5	Ubxn4	A0A087WSK5;A0A0R4J078	NTELCETPATSDTK	39	52	NH	\N
2345	P50396	Gdi1;Gdi2	Rab GDP dissociation inhibitor alpha;Rab GDP dissociation inhibitor beta	NTNDANSCQIIIPQNQVNR	310	328	NH	\N
2346	Q5SU72	Trim25	E3 ubiquitin/ISG15 ligase TRIM25	NTVMCAVVEQFLQAEQAR	66	83	NH	\N
2347	P14869	Rplp0	60S acidic ribosomal protein P0	NVASVCLQIGYPTVASVPHSIINGYK	221	246	NH	\N
2348	Q9DAV6	Serpinb9b	Q9DAV6	NVCFSPVSISSALAMVLLGAK	27	47	NH	\N
2349	Q9CQ65	Mtap	S-methyl-5-thioadenosine phosphorylase	NVDCVLLAR	52	60	NH	\N
2350	A2ADY9	Ddi2	Protein DDI1 homolog 2	NVLVIGTTGSQTTFLPEGELPECAR	339	363	NH	\N
2351	P26231	Ctnna1	Catenin alpha-1	NVPILYTASQACLQHPDVAAYK	217	238	NH	\N
2352	Q9CQL5	Mrpl18	39S ribosomal protein L18, mitochondrial	NVVACESIGR	121	130	NH	\N
2353	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	NVVAECLGK	949	957	NH	\N
2354	D3YWY6	Mpc1	Mitochondrial pyruvate carrier 1	NWLLFACHVTNEVAQLIQGGR	53	73	NH	\N
2355	Q9EQH3	Vps35	Vacuolar protein sorting-associated protein 35	NYLLQCTR	151	158	NH	\N
2356	Q8BXC0	Ptgis	Prostacyclin synthase	NYNMPWGAGHNQCLGK	430	445	NH	\N
2357	A2ALV7	AI314180;Ecm29	Proteasome-associated protein ECM29 homolog	QAACIWLLSLVR	955	966	NH	\N
2358	Q9CZN7	Shmt2	Serine hydroxymethyltransferase	QACTPMFR	341	348	NH	\N
2359	A0A0U1RNR3	Etfb	Electron transfer flavoprotein subunit beta	QAIDDDCNQTGQMTAGLLDWPQGTFASQVTLEGDK	125	159	NH	\N
2360	Q9CZG3	Commd8	COMM domain-containing protein 8	QALLGEIVDISCAQLQDFDWQLK	103	125	NH	\N
2361	D3YYC2	Drap1	Dr1-associated corepressor	QCIELEQQFDFLK	52	64	NH	\N
2362	P23116	Eif3a	Eukaryotic translation initiation factor 3 subunit A	QCLDLLR	159	165	NH	\N
2363	Q6P2B1	Tnpo3	Transportin-3	QDVESCYFAAQTMK	55	68	NH	\N
2364	A0A1B0GT37	Tnpo2	Transportin-2	QECLNNIGDASSLIR	91	105	NH	\N
2365	Q0GNC1	Inf2	Inverted formin-2	QEEVCVIDALLADIR	1000	1014	NH	\N
2366	Q8VDD5	Myh9	Myosin-9	QELEEICHDLEAR	911	923	NH	\N
2367	B1AWZ5	Nipsnap3b	Protein NipSnap homolog 3B	QEVEITYLVPWCK	124	136	NH	\N
2368	A0A0A6YWP6	Atp6v1h	V-type proton ATPase subunit H	QEYALAMIQCK	303	313	NH	\N
2369	Q9JK42	Pdk2	[Pyruvate dehydrogenase (acetyl-transferring)] kinase isozyme 2, mitochondrial	QFLDFGSSNACEK	35	47	NH	\N
2370	Q9DBT6	Tns1	Q9DBT6;A0A087WRU0;A0A087WQ94;A0A087WQM0;A0A6I8MWZ2;A0A087WQS0;A0A1D5RM59;E9Q0S6	QGAACNVLFVNSVDMESLTGPQAISK	484	509	NH	\N
2371	D3Z2X0	Cryz	Quinone oxidoreductase	QGAALGIPYFTACR	125	138	NH	\N
2372	Q9DB27	Mcts1	Malignant T-cell-amplified sequence 1	QHALCVGVMK	140	149	NH	\N
2373	Q61753	Phgdh	D-3-phosphoglycerate dehydrogenase	QHVLEAFQFCF	523	533	NH	\N
2374	A0A2R8VHP9	Pcbp2	A0A2R8VHP9;A0A2R8VKF0;A0A2R8VI15;A0A2R8VI71;A0A2R8VKN0;A0A2R8VI73;A0A2R8VI12;Q3TT81;A0A2R8VHL8;A0A2R8W6U6	QICVVMLETLSQSPPK	161	176	NH	\N
2375	Q3T9X3	Dnm2	Dynamin-2	QIELACDSQEDVDSWK	602	617	NH	\N
2376	A0A087WQ23	Trmt1l	TRMT1-like protein	QIIFCTLAALAK	105	116	NH	\N
2377	P70677	Casp3	Caspase-3;Caspase-3 subunit p17;Caspase-3 subunit p12	QIPCIVSMLTK	261	271	NH	\N
2378	O88544	Cops4	COP9 signalosome complex subunit 4	QIQSLCFQVNNLLEK	373	387	NH	\N
2379	J3QQ30	Pitpna	Phosphatidylinositol transfer protein alpha isoform	QLFCWLDK	228	235	NH	\N
2380	Q61598	Gdi2	Rab GDP dissociation inhibitor beta	QLICDPSYVK	279	288	NH	\N
2381	P98192	Gnpat	Dihydroxyacetone phosphate acyltransferase	QLLDQGSSQCYDALSSELQK	608	627	NH	\N
2382	V9GXF1	1110065P20Rik	Uncharacterized protein C1orf122 homolog	QLLDTIAACEEMLR	101	114	NH	\N
2383	O88544	Cops4	COP9 signalosome complex subunit 4	QLLTDFCTHLPNLPDSTAK	64	82	NH	\N
2384	Q5UE59	Klc1;Klc4;Klc3	Kinesin light chain 1;Kinesin light chain 4;Kinesin light chain 3	QLNNLALLCQNQGK	341	354	NH	\N
2385	P28033	Cebpb	CCAAT/enhancer-binding protein beta	QLPEPLLASAGHC	284	296	NH	\N
2386	A0A171KXD3	Prmt1	Protein arginine N-methyltransferase 1	QLVTNACLIK	191	200	NH	\N
2387	P26231	Ctnna1;Ctnna2	Catenin alpha-1;Catenin alpha-2	QMCMIMMEMTDFTR	718	731	NH	\N
2388	E9PUE7	Abr	Active breakpoint cluster region-related protein	QSANLYCTLEVDSFGYFVSK	472	491	NH	\N
2446	P30999	Ctnnd1	Catenin delta-1	SNAAAYLQHLCYR	384	396	NH	\N
2389	P62141	Ppp1cb;Ppp1cc;Ppp1ca	Serine/threonine-protein phosphatase PP1-beta catalytic subunit;Serine/threonine-protein phosphatase PP1-gamma catalytic subunit;Serine/threonine-protein phosphatase PP1-alpha catalytic subunit	QSLETICLLLAYK	98	110	NH	\N
2390	Q920D3	Med28	Mediator of RNA polymerase II transcription subunit 28	QTECFFLQK	90	98	NH	\N
2391	D3YTP0	Steap3	Metalloreductase STEAP3	QVLICSDQPEAK	164	175	NH	\N
2392	Q64737	Gart	Trifunctional purine biosynthetic protein adenosine-3;Phosphoribosylamine--glycine ligase;Phosphoribosylformylglycinamidine cyclo-ligase;Phosphoribosylglycinamide formyltransferase	QVLVAPGNAGTACAGK	29	44	NH	\N
2393	Q9D0R2	Tars	Threonine--tRNA ligase, cytoplasmic	QVMVVPVGPTCDEYAQK	619	635	NH	\N
2394	P52825	Cpt2	Carnitine O-palmitoyltransferase 2, mitochondrial	QYGQTVATYESCSTAAFK	478	495	NH	\N
2395	Q8CIB5	Fermt2	Fermitin family homolog 2	QYWCTFK	394	400	NH	\N
2396	Q60715	P4ha1	Prolyl 4-hydroxylase subunit alpha-1	RPCTLSELE	526	534	NH	\N
2397	Q9CPY7	Lap3	Cytosol aminopeptidase	SAGACTAAAFLR	458	469	NH	\N
2398	Q9WTI7	Myo1c	Unconventional myosin-Ic	SAICIQSWWR	760	769	NH	\N
2399	Q52KR3	Prune2	Protein prune homolog 2	SCDLDSLISAFTYAYFLDK	29	47	NH	\N
2400	Q6PB66	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial	SCGSLLPELSLAER	128	141	NH	\N
2401	Q99N94	Mrpl9	39S ribosomal protein L9, mitochondrial	SCHLEVGMK	166	174	NH	\N
2402	Q91V41	Rab14	Ras-related protein Rab-14	SCLLHQFTEK	25	34	NH	\N
2403	A0A286YCR8	Vdac2	Voltage-dependent anion-selective channel protein 2	SCSGVEFSTSGSSNTDTGK	47	65	NH	\N
2404	Q91WM1	Strbp	Spermatid perinuclear RNA-binding protein	SCVIVLR	217	223	NH	\N
2405	Q922B1	Macrod1	O-acetyl-ADP-ribose deacetylase MACROD1	SCYLSSLDLLLEHR	243	256	NH	\N
2406	G3UXX3	Spr	Sepiapterin reductase	SDGALVDCGTSAQK	185	198	NH	\N
2407	O08529	Capn2	Calpain-2 catalytic subunit	SDGFSIETCK	569	578	NH	\N
2408	E9PV48	I830012O16Rik;Ifit3	Interferon-induced protein with tetratricopeptide repeats 3	SEDLAALECLLQFPR	375	389	NH	\N
2409	Z4YLI8	Cluh	Clustered mitochondria protein homolog	SEDSIGPEAGCEEEGSSVSGLAK	693	715	NH	\N
2410	Q91YS7	Map2k2	Dual specificity mitogen-activated protein kinase kinase 2	SEGEEVDFAGWLCR	372	385	NH	\N
2411	O88844	Idh1	Isocitrate dehydrogenase [NADP] cytoplasmic	SEGGFIWACK	261	270	NH	\N
2412	Q99P72	Rtn4	Reticulon-4	SEIANVQSGANSLPCSELPCDLSFK	870	894	NH	\N
2413	Q6P8J7	Ckmt2	Creatine kinase S-type, mitochondrial	SEVELVQIVIDGVNYLVDCEK	379	399	NH	\N
2414	Q9WTN0	Ggps1	Geranylgeranyl pyrophosphate synthase	SFCEDLTEGK	203	212	NH	\N
2415	D3YU15	Ddah1	N(G),N(G)-dimethylarginine dimethylaminohydrolase 1	SFCSMAGPNLIAIGSSESAQK	73	93	NH	\N
2416	F6VYQ6	Exosc10	Exosome component 10	SFLGLTCLMQISTR	321	334	NH	\N
2417	Q8VDM4	Psmd2	26S proteasome non-ATPase regulatory subunit 2	SGALLACGIVNSGVR	442	456	NH	\N
2418	Q80X90	Flnb	Filamin-B	SGCTINNPAEFIVDPK	658	673	NH	\N
2419	P11087	Col1a1	Collagen alpha-1(I) chain	SGEYWIDPNQGCNLDAIK	1260	1277	NH	\N
2420	Q9D8E6	Rpl4	60S ribosomal protein L4	SGQGAFGNMCR	87	97	NH	\N
2421	A0A0G2JFH2	Map4	A0A0G2JFH2	SGVGPSQPTTVGTECGFVSR	171	190	NH	\N
2422	A0A5F8MPW9	Peg3	Paternally-expressed gene 3 protein	SHASVIIFEPANAPGECSGYIER	1570	1592	NH	\N
2423	Q8BFY9	Tnpo1	Transportin-1	SHAVACVNQFIISR	200	213	NH	\N
2424	Q52KR6	Acin1	Apoptotic chromatin condensation inducer in the nucleus	SHCFVTYSTVEEAVATR	263	279	NH	\N
2425	A0A286YCQ5	Nid2	Nidogen-2	SHLYGITAVYPYCPTGR	1154	1170	NH	\N
2426	E9Q390	Myof	Myoferlin	SICSPLVK	1217	1224	NH	\N
2427	Q9EPU0	Upf1	Regulator of nonsense transcripts 1	SILIDESTQATEPECMVPVVLGAK	638	661	NH	\N
2428	O08807	Prdx4	Peroxiredoxin-4	SINTEVVACSVDSQFTHLAWINTPR	143	167	NH	\N
2429	O88342	Wdr1	WD repeat-containing protein 1	SIQCLTVHR	322	330	NH	\N
2430	Q8BFY9	Tnpo1	Transportin-1	SITCWTLSR	464	472	NH	\N
2431	A0A1D5RM62	Hsdl1	Inactive hydroxysteroid dehydrogenase-like protein 1	SITVICDFYSLVR	16	28	NH	\N
2432	E9QA72	Tmem8c	Protein myomaker	SIYTQQIGPGLCFGALALMLR	107	127	NH	\N
2433	A0A140LIU3	Cox6b1	Cytochrome c oxidase subunit 6B1	SLCPVSWVSAWDDR	20	33	NH	\N
2434	Q9EST5	Anp32b	Acidic leucine-rich nuclear phosphoprotein 32 family member B	SLDLFGCEVTNR	117	128	NH	\N
2435	Z4YLI8	Cluh	Clustered mitochondria protein homolog	SLDPSDAFNGVDCNSLSFLSVFTDGDLGDSGK	179	210	NH	\N
2436	Q9JLI0	Akr1c12;Akr1c13	Aldo-keto reductase family 1 member C13	SLEAACLALDVGYR	34	47	NH	\N
2437	Q9CPR5	Mrpl15	39S ribosomal protein L15, mitochondrial	SLEILCKPIPFFLR	182	195	NH	\N
2438	Z4YL78	Ckap5	Cytoskeleton-associated protein 5	SLLKPFCAALLK	435	446	NH	\N
2439	Q9DCM0	Ethe1	Persulfide dioxygenase ETHE1, mitochondrial	SLLPGCQSVISR	93	104	NH	\N
2440	Q3U182	Crtc2	CREB-regulated transcription coactivator 2	SLQQLPSQACLVQPSGGQPPGR	505	526	NH	\N
2441	A0A286YDI8	Sec24c	A0A286YDI8;G3X972	SLSGGASYVDFLCHMHK	997	1013	NH	\N
2442	Q9D8L5	Ccdc91	Coiled-coil domain-containing protein 91	SLSSLELFLSCAQK	415	428	NH	\N
2443	P50580	Pa2g4	Proliferation-associated protein 2G4	SLVEASSSGVSVLSLCEK	34	51	NH	\N
2444	Q8CC88	Vwa8	von Willebrand factor A domain-containing protein 8	SMEAVCMVMEAFENYEEK	1738	1755	NH	\N
2445	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	SMSVYCSPAK	493	502	NH	\N
2447	Q8C605	Pfkp	ATP-dependent 6-phosphofructokinase;ATP-dependent 6-phosphofructokinase, platelet type	SNCNVAVINVGAPAAGMNAAVR	408	429	NH	\N
2448	Q9QUR6	Prep	Prolyl endopeptidase	SNFLVLCYLHDVK	346	358	NH	\N
2449	Q9DCL9	Paics	Multifunctional protein ADE2;Phosphoribosylaminoimidazole-succinocarboxamide synthase;Phosphoribosylaminoimidazole carboxylase	SNGLGPVLSGNTAYPVISCPPITPDWGAQDVWSSLR	332	367	NH	\N
2450	B1AU25	Aifm1	Apoptosis-inducing factor 1, mitochondrial	SNIWVAGDAACFYDIK	426	441	NH	\N
2451	P46061	Rangap1	Ran GTPase-activating protein 1	SPACFTLQELK	138	148	NH	\N
2452	P97287	Mcl1	Induced myeloid leukemia cell differentiation protein Mcl-1 homolog	SPGLLAVPPEEMAASAAAAIVSPEEELDGCEPEAIGK	81	117	NH	\N
2453	D3YVN1	Actl6a	Actin-like protein 6A	SPLAGDFITMQCR	143	155	NH	\N
2454	D3Z6B9	Aldh1l2	Mitochondrial 10-formyltetrahydrofolate dehydrogenase	SPLIIFSDCDLEK	586	598	NH	\N
2455	Q9CR37	Ppdpf	Pancreatic progenitor cell differentiation and proliferation factor	SPMTCGLTPETMK	87	99	NH	\N
2456	A2ARP8	Map1a	Microtubule-associated protein 1A;MAP1A heavy chain;MAP1 light chain LC2	SPQAQDTLGSLAGGQTGCTIQLLPEQDK	1300	1327	NH	\N
2457	Q3TGS9	Arfgap1	ADP-ribosylation factor GTPase-activating protein 1	SPSSDSWTCADASTGR	322	337	NH	\N
2458	Q9ERK4	Cse1l	Exportin-2	SQICDNAALYAQK	269	281	NH	\N
2459	P46460	Nsf	Vesicle-fusing ATPase	SQLSCVVVDDIER	595	607	NH	\N
2460	Q8VE88	Fam114a2	Protein FAM114A2	SQTLSQMTVMLCK	410	422	NH	\N
2461	Q8CGY8	Ogt	UDP-N-acetylglucosamine--peptide N-acetylglucosaminyltransferase 110 kDa subunit	SQYGLPEDAIVYCNFNQLYK	833	852	NH	\N
2462	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	SSCTIIPLMK	777	786	NH	\N
2463	P70670	Naca	Nascent polypeptide-associated complex subunit alpha, muscle-specific form	SSVCPPHPLTSPPSAAGAELGALTASIPPLEPK	146	178	NH	\N
2464	Q9D2R0	Aacs	Acetoacetyl-CoA synthetase	SSVLLGSISGGTDIISCFMGQNSSIPVYK	428	456	NH	\N
2465	Q9CXT8	Pmpcb	Mitochondrial-processing peptidase subunit beta	STQAAPQVVLNVPETQVTCLENGLR	44	68	NH	\N
2466	E9PV48	I830012O16Rik;Ifit3	Interferon-induced protein with tetratricopeptide repeats 3	STVNNSPLYSLVMCR	270	284	NH	\N
2467	Q9QZB7	Actr10	Actin-related protein 10	SVATLILDSLLQCPIDTR	279	296	NH	\N
2468	A0A1W2P8D3	Gns	N-acetylglucosamine-6-sulfatase	SVCGYQTFFAGK	59	70	NH	\N
2469	E9Q0U7	Hsph1	Heat shock protein 105 kDa	SVLDAAQIVGLNCLR	114	128	NH	\N
2470	Q91VZ6	Smap1	Stromal membrane-associated protein 1	SVNLDQWTPEQIQCMQDMGNTK	72	93	NH	\N
2471	O55201	Supt5h	Transcription elongation factor SPT5	SVTGGMCSVYLK	1000	1011	NH	\N
2472	Q8VCV2	Ndrg3	Protein NDRG3	SVTSNQSDGTQESCESPDVLDR	359	380	NH	\N
2473	P84091	Ap2m1	AP-2 complex subunit mu	SYLSGMPECK	204	213	NH	\N
2474	Q8K4L0	Ddx54	ATP-dependent RNA helicase DDX54	TACFLLPMFER	146	156	NH	\N
2475	Q9CY73	Mrpl44	39S ribosomal protein L44, mitochondrial	TAFINSCYIK	90	99	NH	\N
2476	D3YU08	Synpo2l	Synaptopodin 2-like protein	TAMFCFDEGSSTPGPTSGPPK	633	653	NH	\N
2477	Q3TDD9	Ppp1r21	Protein phosphatase 1 regulatory subunit 21	TASGFISPLSAECMLQYK	504	521	NH	\N
2478	A0A0G2JEA2	Dcun1d1	DCN1-like protein;DCN1-like protein 1	TAVSCLSQNDWK	25	36	NH	\N
2479	Q78PY7	Snd1	Staphylococcal nuclease domain-containing protein 1	TCATVTIGGINIAEALVSK	439	457	NH	\N
2480	P35293	Rab18	Ras-related protein Rab-18	TCDGVQCAFEELVEK	154	168	NH	\N
2481	Q9JKF1	Iqgap1	Ras GTPase-activating-like protein IQGAP1	TCLDNLASK	1533	1541	NH	\N
2482	A0A0A6YXF6	Rhoa;Rhoc;4930544G11Rik	Transforming protein RhoA;Rho-related GTP-binding protein RhoC	TCLLIVFSK	19	27	NH	\N
2483	Q8BVQ9	Psmc2	26S protease regulatory subunit 7	TDACFIR	275	281	NH	\N
2484	P50396	Gdi1	Rab GDP dissociation inhibitor alpha	TDDYLDQPCLETINR	194	208	NH	\N
2485	Q9QZD8	Slc25a10	Mitochondrial dicarboxylate carrier	TDGFLALYNGLSASLCR	53	69	NH	\N
2486	F7BX26	Ppp5c	Serine/threonine-protein phosphatase;Serine/threonine-protein phosphatase 5	TECYGYALGDATR	74	86	NH	\N
2487	A0A1Y7VNI1	Heatr1	A0A1Y7VNI1;G3X9B1	TEGWIIDCLVAMVVK	492	506	NH	\N
2488	Q61425	Hadh	Hydroxyacyl-coenzyme A dehydrogenase, mitochondrial	TFESLVDFCK	193	202	NH	\N
2489	Q8BH51	Cox14	Cytochrome c oxidase assembly protein COX14	TFSASMMLLTVYGGYLCSVR	14	33	NH	\N
2490	B7ZNJ1	Fn1	Fibronectin;Anastellin	TFYSCTTEGR	370	379	NH	\N
2491	Q61550	Rad21	Double-strand-break repair protein rad21 homolog	TGAESISLLELCR	578	590	NH	\N
2492	P55264	Adk	Adenosine kinase	TGCTFPEKPDFH	350	361	NH	\N
2493	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	TGGTYGEDLGADYNLSQVCDGK	2441	2462	NH	\N
2494	Q8BMD8	Slc25a24	Calcium-binding mitochondrial carrier protein SCaMC-1	TGQYSGIYGCAK	319	330	NH	\N
2495	G3UYV7	Rps28	40S ribosomal protein S28	TGSQGQCTQVR	8	18	NH	\N
2496	Q8R429	Atp2a1	Sarcoplasmic/endoplasmic reticulum calcium ATPase 1	TGTLTTNQMSVCK	353	365	NH	\N
2497	O55143	Atp2a2;Atp2a3	Sarcoplasmic/endoplasmic reticulum calcium ATPase 2;Calcium-transporting ATPase;Sarcoplasmic/endoplasmic reticulum calcium ATPase 3	TGTLTTNQMSVCR	353	365	NH	\N
2498	D3Z629	Rpl9;Rpl9-ps1	60S ribosomal protein L9	TGVACSVSQAQK	130	141	NH	\N
2499	B7FAU9	Flna	Filamin-A	THEAEIVEGENHTYCIR	2177	2193	NH	\N
2500	E9Q7D5	Arhgef5	E9Q7D5	TIAAPELLACAVQEEWLDIPSK	118	139	NH	\N
2501	A2ALV7	AI314180;Ecm29	Proteasome-associated protein ECM29 homolog	TIAVLLPCLLDK	1245	1256	NH	\N
2502	A0A0A0MQA5	Tuba4a	Tubulin alpha-4A chain	TIGGGDDSFTTFFCETGAGK	70	89	NH	\N
2503	Q9QZB9	Dctn5	Dynactin subunit 5	TIIMNDCIIR	40	49	NH	\N
2504	A0A2C9F2D2	Anxa7	Annexin A7	TILQCALNRPAFFAER	406	421	NH	\N
2505	Q8CGY6	Unc45b	Protein unc-45 homolog B	TILYSVANTLVNCTNSYDVK	570	589	NH	\N
2506	Q99LC5	Etfa	Electron transfer flavoprotein subunit alpha, mitochondrial	TIYAGNALCTVK	147	158	NH	\N
2507	J3QN18	Gm3015;Gm7929;Gm17654;Gm3072;Gm8094;Gm8127;Gm7954;Gm7945	J3QN18;J3QM56;F7AXR3;F6SKY8;K7N6U8;E9Q0P0;F7BAX1;F6ZAP6;A0A286YDV3;F6QI24	TLCNEGSQK	189	197	NH	\N
2508	Q3TQP6	Me1	Malic enzyme;NADP-dependent malic enzyme	TLFPGQGNNSYVFPGVALGVVACGLR	426	451	NH	\N
2509	F6UP77	Amdhd2	Putative N-acetylglucosamine-6-phosphate deacetylase	TLGGSIAPMDVCVR	371	384	NH	\N
2510	Q9JIG7	Ccdc22	Coiled-coil domain-containing protein 22	TLGINLVQVETECR	357	370	NH	\N
2511	Q6ZQ73	Cand2	Cullin-associated NEDD8-dissociated protein 2	TLIQCLGSVGR	236	246	NH	\N
2512	P70227	Itpr3	Inositol 1,4,5-trisphosphate receptor type 3	TLLGIIDCIQAPAAMLQAYEEPGGK	887	911	NH	\N
2513	Q9JHW2	Nit2	Omega-amidase NIT2	TLSPGDSFSTFDTPYCK	131	147	NH	\N
2514	Q99JY9	Actr3	Actin-related protein 3	TLTGTVIDSGDGVTHVIPVAEGYVIGSCIK	162	191	NH	\N
2515	P21278	Gna11	Guanine nucleotide-binding protein subunit alpha-11	TLWSDPGVQECYDR	134	147	NH	\N
2516	Q9EPL8	Ipo7	Importin-7	TMGFCYQILTEPNADPR	411	427	NH	\N
2517	Q8R1B4	Eif3c	Eukaryotic translation initiation factor 3 subunit C	TMVQLGICAFR	610	620	NH	\N
2518	A0A494BBB0	Capn1	Calpain-1 catalytic subunit	TNGFSLESCR	581	590	NH	\N
2519	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	TNHIGHTGYLNTVTVSPDGSLCASGGK	186	212	NH	\N
2520	Q6P4T2	Snrnp200	U5 small nuclear ribonucleoprotein 200 kDa helicase	TNVALMCMLR	510	519	NH	\N
2521	Q9D1Q6	Erp44	Endoplasmic reticulum resident protein 44	TPADCPVIAIDSFR	314	327	NH	\N
2522	B7FAU9	Flna	Filamin-A	TPCEEILVK	2591	2599	NH	\N
2523	Q8VHX6	Flnc	Filamin-C	TPCEEVYVK	2678	2686	NH	\N
2524	Q921T2	Tor1aip1	Torsin-1A-interacting protein 1	TPEASVMNEDPISNLCRPPLR	180	200	NH	\N
2525	A0A1B0GRF5	Lsp1	Lymphocyte-specific protein 1	TPSCQDIVAGDMSK	23	36	NH	\N
2526	Q06138	Cab39	Calcium-binding protein 39	TPTVEYICTQQNILFMLLK	114	132	NH	\N
2527	D3YZI8	Zbtb7a	Zinc finger and BTB domain-containing protein 7A	TQGLLCDVVILVEGR	29	43	NH	\N
2528	P61971	Nutf2	Nuclear transport factor 2	TQLGAIYIDASCLTWEGQQFQGK	27	49	NH	\N
2529	K3W4M2	Ryr1	Ryanodine receptor 1	TQTGNTTTINIIICTVDYLLR	3906	3926	NH	\N
2530	P62814	Atp6v1b2	V-type proton ATPase subunit B, brain isoform	TSCEFTGDILR	110	120	NH	\N
2531	Q9D338	Mrpl19	39S ribosomal protein L19, mitochondrial	TSQFLGICIK	130	139	NH	\N
2532	P17427	Ap2a2	AP-2 complex subunit alpha-2	TTQIGCLLR	897	905	NH	\N
2533	Q501J6	Ddx17	Probable ATP-dependent RNA helicase DDX17	TTSSANNPNLMYQDECDR	490	507	NH	\N
2534	P23780	Glb1	Beta-galactosidase	TVAEALGILCPNGPVK	385	400	NH	\N
2535	Q8VEH6	Cbwd1	COBW domain-containing protein 1	TVEAEEEYAEDCPELVPIETK	7	27	NH	\N
2536	P27659	Rpl3	60S ribosomal protein L3	TVFAEHISDECK	104	115	NH	\N
2537	P17427	Ap2a2	AP-2 complex subunit alpha-2	TVFEALQAPACHENLVK	481	497	NH	\N
2538	Q6ZQ38	Cand1	Cullin-associated NEDD8-dissociated protein 1	TVIGELPPASSGSALAANVCK	112	132	NH	\N
2539	P21981	Tgm2	Protein-glutamine gamma-glutamyltransferase 2	TVSYNGVLGPECGTEDINLTLDPYSENSIPLR	513	544	NH	\N
2540	G3UZ34	Eftud2	116 kDa U5 small nuclear ribonucleoprotein component	VADPVVTFCETVVETSSLK	645	663	NH	\N
2541	Q8BGW1	Fto	Alpha-ketoglutarate-dependent dioxygenase FTO	VAECSTGTLDYILER	320	334	NH	\N
2542	Q6IRU5	Cltb	Clathrin light chain B	VAQLCDFNPK	195	204	NH	\N
2543	Q9CXT8	Pmpcb	Mitochondrial-processing peptidase subunit beta	VASENSGLSTCTVGLWIDAGSR	69	90	NH	\N
2544	Q99KI0	Aco2	Aconitate hydratase, mitochondrial	VAVPSTIHCDHLIEAQVGGEK	118	138	NH	\N
2545	E9QN70	Lamb1	Laminin subunit beta-1	VAVYSTCL	1827	1834	NH	\N
2546	A0A286YCY8	Epb4.1l3;Epb41l3;Epb4.1l2;Epb41l2	Band 4.1-like protein 3;Band 4.1-like protein 3, N-terminally processed;Band 4.1-like protein 2	VCEHLNLLEK	147	156	NH	\N
2547	P62827	Ran;Rasl2-9;1700009N14Rik	GTP-binding nuclear protein Ran;GTP-binding nuclear protein Ran, testis-specific isoform	VCENIPIVLCGNK	111	123	NH	\N
2548	Q8CJ53	Trip10	Cdc42-interacting protein 4	VCLELAK	98	104	NH	\N
2549	A2ARZ7	Rab22a;Rab31	Ras-related protein Rab-22A;Ras-related protein Rab-31	VCLLGDTGVGK	8	18	NH	\N
2550	Q9CWJ9	Atic	Bifunctional purine biosynthesis protein PURH;Phosphoribosylaminoimidazolecarboxamide formyltransferase;IMP cyclohydrolase	VCMVYDLYPTLTPLAVAYAR	286	305	NH	\N
2551	P54071	Idh2	Isocitrate dehydrogenase [NADP], mitochondrial	VCVQTVESGAMTK	401	413	NH	\N
2552	D3Z099	Qdpr	Dihydropteridine reductase	VDAILCVAGGWAGGNAK	94	110	NH	\N
2553	Q80X90	Flnb	Filamin-B	VDIQTEDLEDGTCK	2045	2058	NH	\N
2668	P13542	Myh8	Myosin-8	YEETQAELESCQK	1463	1475	NH	\N
2554	F6Z9R1	Gm20538;Ndufb8	NADH dehydrogenase [ubiquinone] 1 beta subcomplex subunit 8, mitochondrial	VDTSPTPVSWDVMCK	6	20	NH	\N
2555	Q9Z2I8	Suclg2	Succinyl-CoA ligase [GDP-forming] subunit beta, mitochondrial	VEAILVNIFGGIVNCAIIANGITK	356	379	NH	\N
2556	Q9CZC8	Scrn1	Secernin-1	VECTYISIDQVPR	52	64	NH	\N
2557	A0A2I3BQL9	Pck2	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial	VECVGDDIAWMR	314	325	NH	\N
2558	Q3B7Z2	Osbp	Oxysterol-binding protein 1	VEDLSTCNDLIAK	216	228	NH	\N
2559	Q9D020	Nt5c3a	Cytosolic 5-nucleotidase 3A	VEEIICGLIK	63	72	NH	\N
2560	A0A494BAF6	Ddb1	DNA damage-binding protein 1	VELLGETSIAECLTYLDNGVVFVGSR	314	339	NH	\N
2561	S4R2J9	Prrc2c	Protein PRRC2C	VEPQEPVVEPATENQESENNCK	575	596	NH	\N
2562	Q01149	Col1a2	Collagen alpha-2(I) chain	VEVGPVCFK	1364	1372	NH	\N
2563	A0A3B2WCL5	Ranbp3	Ran-binding protein 3	VEVITGEEAESNVLQIQCK	380	398	NH	\N
2564	Q922B2	Dars	Aspartate--tRNA ligase, cytoplasmic	VFCIGPVFR	265	273	NH	\N
2565	Q8BRF7	Scfd1	Sec1 family domain-containing protein 1	VFDQYLNFITLEDDMFVLCNQNK	143	165	NH	\N
2566	D6RGM4	Smpd2	Sphingomyelin phosphodiesterase 2	VFNLNCWDIPYLSK	11	24	NH	\N
2567	A2A5R2	Arfgef2;Arfgef1	Brefeldin A-inhibited guanine nucleotide-exchange protein 2;Brefeldin A-inhibited guanine nucleotide-exchange protein 1	VGCNPNEDVAIFAVDSLR	1152	1169	NH	\N
2568	Q78HU3	Mvb12a	Multivesicular body subunit 12A	VGDIGGFAIWCK	135	146	NH	\N
2569	P62488	Polr2g	DNA-directed RNA polymerase II subunit RPB7	VGLFTEIGPMSCFISR	95	110	NH	\N
2570	Q99KI0	Aco2	Aconitate hydratase, mitochondrial	VGLIGSCTNSSYEDMGR	379	395	NH	\N
2571	Q6PB66	Lrpprc	Leucine-rich PPR motif-containing protein, mitochondrial	VGVDPDQETYINYVFPCFDSAQSVR	467	491	NH	\N
2572	D3Z2X0	Cryz	Quinone oxidoreductase	VHACGVNPVETYIR	42	55	NH	\N
2573	A0A0A6YXP3	Mbnl1;Mbnl2	Muscleblind-like protein 1;Muscleblind-like protein 2	VIACFDSLK	50	58	NH	\N
2574	Q61598	Gdi2	Rab GDP dissociation inhibitor beta	VICILSHPIK	300	309	NH	\N
2575	Q5U458	Dnajc11	DnaJ homolog subfamily C member 11	VIDVTVPLQCLVK	485	497	NH	\N
2576	Q9QYJ0	Dnaja2	DnaJ homolog subfamily A member 2	VIEPGCVR	303	310	NH	\N
2577	A0A0U1RNJ1	Fasn	Fatty acid synthase;[Acyl-carrier-protein] S-acetyltransferase;[Acyl-carrier-protein] S-malonyltransferase;3-oxoacyl-[acyl-carrier-protein] synthase;3-oxoacyl-[acyl-carrier-protein] reductase;3-hydroxyacyl-[acyl-carrier-protein] dehydratase;Enoyl-[acyl-carrier-protein] reductase;Oleoyl-[acyl-carrier-protein] hydrolase	VIFPGTGYLCLVWK	884	897	NH	\N
2578	D3Z0Y0	Hspa13	Heat shock 70 kDa protein 13	VIGIDLGTTYCSVGVFFPGTGK	33	54	NH	\N
2579	Q9DCD0	Pgd	6-phosphogluconate dehydrogenase, decarboxylating	VISTGVQAGIPMPCFTTALSFYDGYR	409	434	NH	\N
2580	P11983	Tcp1	T-complex protein 1 subunit alpha	VLCELADLQDK	74	84	NH	\N
2581	Q8BGT5	Gpt2	Alanine aminotransferase 2	VLCIINPGNPTGQVQSR	262	278	NH	\N
2582	A0A1L1SV73	Usp47	Ubiquitin carboxyl-terminal hydrolase 47	VLCIIQDTTNSK	23	34	NH	\N
2583	A0A2I3BQL9	Pck2	Phosphoenolpyruvate carboxykinase [GTP], mitochondrial	VLDWICR	513	519	NH	\N
2584	A0A494B9B2	Sil1	Nucleotide exchange factor SIL1	VLFALCSLLR	172	181	NH	\N
2585	Q8CGK3	Lonp1	Lon protease homolog, mitochondrial	VLFICTANVIDTIPEPLR	622	639	NH	\N
2586	Q9DBC7	Prkar1a	cAMP-dependent protein kinase type I-alpha regulatory subunit;cAMP-dependent protein kinase type I-alpha regulatory subunit, N-terminally processed	VLGPCSDILK	358	367	NH	\N
2587	A0A0G2JE08	Tdrkh	Tudor and KH domain-containing protein	VLLISGFPVQVCK	98	110	NH	\N
2588	Q9DBL7	Coasy	Bifunctional coenzyme A synthase;Phosphopantetheine adenylyltransferase;Dephospho-CoA kinase	VLLSVACVLAQEQLVVGVADK	208	228	NH	\N
2589	Q9WTX6	Cul1	Cullin-1	VLNGICAYLNR	132	142	NH	\N
2590	E9PVA8	Gcn1l1	E9PVA8	VLQEALCVISGVPGLK	642	657	NH	\N
2591	F8WHV4	Col19a1	Collagen alpha-1(XIX) chain	VLSLYMDCNLIASR	179	192	NH	\N
2592	A0A2I3BPH9	Fam49b	Protein FAM49B	VLTCTDLEQGPNFFLDFENAQPTESEK	7	33	NH	\N
2593	Q64442	Sord	Sorbitol dehydrogenase	VLVCGAGPVGMVTLLVAK	176	193	NH	\N
2594	Q3TL72	Uba3	NEDD8-activating enzyme E1 catalytic subunit	VLVIGAGGLGCELLK	58	72	NH	\N
2595	Q9Z1Z0	Uso1	General vesicular transport factor p115	VLVSPTNPPGATSSCQK	289	305	NH	\N
2596	Q61646	Hp	Haptoglobin;Haptoglobin alpha chain;Haptoglobin beta chain	VMPICLPSK	203	211	NH	\N
2597	A0A571BDS0	Xirp1	A0A571BDS0	VMPQISLECLR	1211	1221	NH	\N
2598	Q62418	Dbnl	Drebrin-like protein	VMYAFCR	62	68	NH	\N
2599	A0A2I3BRG8	Dhrs4	Dehydrogenase/reductase SDR family member 4	VNCLAPGLIK	128	137	NH	\N
2600	A3KGU5	Sptan1	Spectrin alpha chain, non-erythrocytic 1	VNDVCTNGQDLIK	1911	1923	NH	\N
2601	A0A0G2JGQ6	Dclk1	Serine/threonine-protein kinase DCLK1	VNGLPSPTHSAHCSFYR	27	43	NH	\N
2602	A0A494BBB0	Capn1	Calpain-1 catalytic subunit	VNGSYEALSGGCTSEAFEDFTGGVTEWYDLQK	198	229	NH	\N
2603	Q9Z0J0	Npc2	Epididymal secretory protein E1	VPFPIPEPDGCK	83	94	NH	\N
2604	Q6ZWZ2	Ube2r2	Ubiquitin-conjugating enzyme E2 R2	VPTTLAEYCIK	183	193	NH	\N
2605	Q8BKC5	Ipo5	Importin-5	VQAHAAAALINFTEDCPK	458	475	NH	\N
2606	A2BE28	Las1l	Ribosomal biogenesis protein LAS1L	VQCILEELK	288	296	NH	\N
2607	G5E866	Sf3b1	Splicing factor 3B subunit 1	VQENCIDLVGR	1031	1041	NH	\N
2608	Q91VK1	Bzw2	Basic leucine zipper and W2 domain-containing protein 2	VQEYCYDNIHFMK	346	358	NH	\N
2609	Q9R1J0	Nsdhl	Sterol-4-alpha-carboxylate 3-dehydrogenase, decarboxylating	VQFFIGDLCNQQDLYPALK	67	85	NH	\N
2610	O55033	Nck2	Cytoplasmic protein NCK2	VQLVDSVYCIGQR	335	347	NH	\N
2611	E9Q4P1	Wdfy1	E9Q4P1	VQSLCYLQLTR	245	255	NH	\N
2612	Q3UI33	Metap2	Methionine aminopeptidase 2	VQTDPPSVPICDLYPNGVFPK	121	141	NH	\N
2613	B7FAU9	Flna	Filamin-A	VQVQDNEGCSVEATVK	709	724	NH	\N
2614	Q62167	Ddx3x	ATP-dependent RNA helicase DDX3X	VRPCVVYGGAEIGQQIR	295	311	NH	\N
2615	Q8BZY3	Ddx19b;Ddx19a	ATP-dependent RNA helicase DDX19A	VSEQIVIGTPGTVLDWCSK	224	242	NH	\N
2616	A0A2I3BQV5	Xpo7	Exportin-7	VSFASTDEQDAMDGELVCR	509	527	NH	\N
2617	G3UYU5	Rpp40	Ribonuclease P protein subunit p40	VSFLIPECGLLSK	42	54	NH	\N
2618	Q9CR70	Lage3	EKC/KEOPS complex subunit Lage3	VSGCMLEVR	104	112	NH	\N
2619	A0A0G2JFW6	Rprd2	Regulation of nuclear pre-mRNA domain-containing protein 2	VSSSCLDLPDSTEEK	1002	1016	NH	\N
2620	F6TLX3	Ipo9	Importin-9	VSSVALCK	28	35	NH	\N
2621	Q9D7H3	RtcA;Rtca	RNA 3-terminal phosphate cyclase	VSTALSCLLGLPLR	22	35	NH	\N
2622	A0A0A6YVY7	Usp4	Ubiquitin carboxyl-terminal hydrolase;Ubiquitin carboxyl-terminal hydrolase 4	VSVTFDPFCYLTLPLPLK	467	484	NH	\N
2623	Q78IS1	Tmed3	Transmembrane emp24 domain-containing protein 3	VTALTQMESACVTIHEALK	138	156	NH	\N
2624	P63328	Ppp3ca	Serine/threonine-protein phosphatase 2B catalytic subunit alpha isoform	VTEMLVNVLNICSDDELGSEEDGFDGATAAAR	361	392	NH	\N
2625	E9Q586	Dctn1	Dynactin subunit 1	VTFSCAAGLGQR	1209	1220	NH	\N
2626	Q9D8N0	Eef1g	Elongation factor 1-gamma	VTLADITVVCTLLWLYK	157	173	NH	\N
2627	B9EIZ7	Coro6	Coronin;Coronin-6	VTWDSAFCAVNPK	33	45	NH	\N
2628	Q8VHX6	Flnc	Filamin-C	VTYCPTEPGTYIINIK	2099	2114	NH	\N
2629	Q91VD9	Ndufs1	NADH-ubiquinone oxidoreductase 75 kDa subunit, mitochondrial	VVAACAMPVMK	88	98	NH	\N
2630	Q8VDP4	Ccar2	Cell cycle and apoptosis regulator protein 2	VVAQNICQYR	747	756	NH	\N
2631	Q921K2	Parp1	Q921K2	VVCEDFLQDVSASTK	454	468	NH	\N
2632	E9Q740	Srp72	Signal recognition particle subunit SRP72	VVCLIQNGSFK	52	62	NH	\N
2633	Q8CGY6	Unc45b	Protein unc-45 homolog B	VVGQVPDLPSCLPLTDNTR	334	352	NH	\N
2634	P70398	Usp9x	Probable ubiquitin carboxyl-terminal hydrolase FAF-X;Ubiquitin carboxyl-terminal hydrolase	VVIQSNDDIACR	777	788	NH	\N
2635	P08030	Aprt	Adenine phosphoribosyltransferase	VVIVDDLLATGGTMFAACDLLHQLR	123	147	NH	\N
2636	A0A171KXD3	Prmt1	Protein arginine N-methyltransferase 1	VVLDVGSGTGILCMFAAK	38	55	NH	\N
2637	P35282	Rab21	Ras-related protein Rab-21	VVLLGEGCVGK	20	30	NH	\N
2638	A2A7Q5	P3h1;Lepre1	Prolyl 3-hydroxylase 1	VVMDGVISDDECQELQR	475	491	NH	\N
2639	Z4YJV4	Ogdh	2-oxoglutarate dehydrogenase, mitochondrial	VVNAPIFHVNSDDPEAVMYVCK	463	484	NH	\N
2640	D3Z3X4	Cisd2	CDGSH iron-sulfur domain-containing protein 2	VVNEINIEDLCLTK	82	95	NH	\N
2641	E9PY58	Clpb	Caseinolytic peptidase B protein homolog	VVNQLAAAYEQDLLPGGCTLR	630	650	NH	\N
2642	Q61578	Fdxr	NADPH:adrenodoxin oxidoreductase, mitochondrial	VVNVPGLYCSGWVK	390	403	NH	\N
2643	Q80X90	Flnb	Filamin-B	VVPCLVAPVAGR	988	999	NH	\N
2644	P28653	Bgn	Biglycan	VVQCSDLGLK	74	83	NH	\N
2645	H3BJ37	Comtd1	Catechol O-methyltransferase domain-containing protein 1	VVTCEVDAEPPK	68	79	NH	\N
2646	P61161	Actr2	Actin-related protein 2	VVVCDNGTGFVK	8	19	NH	\N
2647	Q9R002	Ifi202	Interferon-activable protein 202	VVVSGQLTSVNCEIGNTIR	397	415	NH	\N
2648	Q9QZE5	Copg1	Coatomer subunit gamma-1	VVVVQAISALCQK	377	389	NH	\N
2649	G3UZJ5	Csnk2b	Casein kinase II subunit beta	VYCENQPMLPIGLSDIPGEAMVK	133	155	NH	\N
2650	Q8BU88	Mrpl22	39S ribosomal protein L22, mitochondrial	VYCHYFVK	164	171	NH	\N
2651	P32233	Drg1	Developmentally-regulated GTP-binding protein 1	VYIPCIYVLNK	239	249	NH	\N
2652	Q99JI4	Psmd6	26S proteasome non-ATPase regulatory subunit 6	VYQGLYCVAIR	182	192	NH	\N
2653	Q99KQ4	Nampt	Nicotinamide phosphoribosyltransferase	VYSYFECR	33	40	NH	\N
2654	A0A286YCR8	Vdac2	Voltage-dependent anion-selective channel protein 2	WCEYGLTFTEK	76	86	NH	\N
2655	G3UY93	Vars	Valine--tRNA ligase	WFNTCVR	190	196	NH	\N
2656	Q80UG5	44448	Septin-9	WGTIEVENTTHCEFAYLR	518	535	NH	\N
2657	Q8BIJ6	Iars2	Isoleucine--tRNA ligase, mitochondrial	WGVMADWNNCYYTFDPK	202	218	NH	\N
2658	A0A0A6YXP3	Mbnl1;Mbnl2;Mbnl3	Muscleblind-like protein 1;Muscleblind-like protein 2;Muscleblind-like protein 3	WLTLEVCR	13	20	NH	\N
2659	P50247	Ahcy	Adenosylhomocysteinase	WSSCNIFSTQDHAAAAIAK	76	94	NH	\N
2660	O70250	Pgam2	Phosphoglycerate mutase 2	YAGLKPEELPTCESLK	142	157	NH	\N
2661	Q9WTM5	Ruvbl2	RuvB-like 2	YAIQLITAASLVCR	401	414	NH	\N
2662	Q8BWY3	Etf1	Eukaryotic peptide chain release factor subunit 1	YCFGVEDTLK	301	310	NH	\N
2663	Q08093	Cnn2	Calponin-2;Calponin	YCPQGSAADGAPAGDGQGEAPEYLAYCQEEAGY	273	305	NH	\N
2664	E9Q740	Srp72	Signal recognition particle subunit SRP72	YDECLAVYR	125	133	NH	\N
2665	A0A1D5RLP1	Cotl1	Coactosin-like protein	YDGATIVPGDQGADYQHFIQQCTDDVR	31	57	NH	\N
2666	A0A1L1SQ51	Tln2	Talin-2	YDQATDTIMCVTESIFSSMGDAGEMVR	803	829	NH	\N
2667	P63242	Eif5a;Eif5a2	Eukaryotic translation initiation factor 5A-1;Eukaryotic translation initiation factor 5A;Eukaryotic translation initiation factor 5A-2	YEDICPSTHNMDVPNIK	69	85	NH	\N
2669	Q5SXR6	Cltc	Clathrin heavy chain;Clathrin heavy chain 1	YESLELCRPVLQQGR	434	448	NH	\N
2670	Q02053	Uba1;Uba1y	Ubiquitin-like modifier-activating enzyme 1;Ubiquitin-like modifier-activating enzyme 1 Y	YFLVGAGAIGCELLK	471	485	NH	\N
2671	D3Z3M7	Clip1	CAP-Gly domain-containing linker protein 1	YFQCEPLK	108	115	NH	\N
2672	E9Q586	Dctn1	Dynactin subunit 1	YFTCDEGHGIFVR	61	73	NH	\N
2673	O88958	Gnpda1	Glucosamine-6-phosphate isomerase 1	YFTLGLPTGSTPLGCYQK	34	51	NH	\N
2674	Q9Z2X1	Hnrnpf	Heterogeneous nuclear ribonucleoprotein F;Heterogeneous nuclear ribonucleoprotein F, N-terminally processed	YGDSEFTVQSTTGHCVHMR	276	294	NH	\N
2675	Q9D423	Larp1b;Larp1	La-related protein 1	YGLECLFR	117	124	NH	\N
2676	Q3TQP6	Me1	Malic enzyme;NADP-dependent malic enzyme	YGMNCLIQFEDFANR	216	230	NH	\N
2677	H3BIY5	Agps	Alkyldihydroxyacetonephosphate synthase, peroxisomal	YGSVAFPNFEQGVACLR	32	48	NH	\N
2678	Q64481	Cyp3a16	Cytochrome P450 3A16	YGTCTHGLFK	25	34	NH	\N
2679	A0A1L1SSF8	0	Ester hydrolase C11orf54 homolog	YHDFGCALLANLFASEGQPGK	116	136	NH	\N
2680	Q5NCU4	Sparc	SPARC	YIAPCLDSELTEFPLR	149	164	NH	\N
2681	P47739	Aldh3a1	Aldehyde dehydrogenase, dimeric NADP-preferring	YIAPTILVDVDPQSPVMQEEIFGPVMPIVCVR	315	346	NH	\N
2682	A0A338P7B7	Dynlt1	Dynein light chain Tctex-type 1	YIVTCVIMQK	63	72	NH	\N
2683	P68254	Ywhaq	14-3-3 protein theta	YLAEVACGDDR	128	138	NH	\N
2684	K3W4M2	Ryr1	Ryanodine receptor 1	YLCLAVLPLITK	2554	2565	NH	\N
2685	Q9D554	Sf3a3	Splicing factor 3A subunit 3	YLDLHDCYLK	139	148	NH	\N
2686	E9PVA8	Gcn1l1	E9PVA8	YLLDNCAPLLR	241	251	NH	\N
2687	Q9R1P0	Psma4	Proteasome subunit alpha type-4;Proteasome subunit alpha type	YLLQYQEPIPCEQLVTALCDIK	97	118	NH	\N
2688	A2AAA9	Mrc2	C-type mannose receptor 2	YLNWESDQPDNPGEENCGVIR	318	338	NH	\N
2689	D3YXZ9	Shc1	SHC-transforming protein 1	YMGCVEVLQSMR	56	67	NH	\N
2690	A0A0N4SV00	Cct7	T-complex protein 1 subunit eta	YNFFTGCPK	316	324	NH	\N
2691	B7ZNJ1	Fn1	Fibronectin;Anastellin	YSFCTDHAVLVQTR	398	411	NH	\N
2692	A2AWN8	Ythdf1;Ythdf3	YTH domain-containing family protein 1;YTH domain-containing family protein 3	YSIWCSTEHGNK	435	446	NH	\N
2693	O88796	Rpp30	Ribonuclease P protein subunit p30	YTISNALNLMQICK	168	181	NH	\N
2694	Q3V3R1	Mthfd1l	Monofunctional C1-tetrahydrofolate synthase, mitochondrial	YTQQGFGNLPICMAK	894	908	NH	\N
2695	P68040	Gnb2l1	Guanine nucleotide-binding protein subunit beta-2-like 1;Guanine nucleotide-binding protein subunit beta-2-like 1, N-terminally processed	YTVQDESHSEWVSCVR	140	155	NH	\N
2696	Q99JX4	Eif3m	Eukaryotic translation initiation factor 3 subunit M	YTVYCSLIK	121	129	NH	\N
2697	P60766	Cdc42	Cell division control protein 42 homolog	YVECSALTQK	154	163	NH	\N
2698	P58252	Eef2	Elongation factor 2	YVEPIEDVPCGNIVGLVGVDQFLVK	457	481	NH	\N
2699	Q8VIK2	Mpv17l2	Mpv17-like protein 2	YWVPEPLQTPGCAD	187	200	NH	\N
2700	NH (no heavy): glutathionylated peptide is detected only with light label (i.e., heavy isotope labels are not determined in at least two out of triplicate experiments)	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Name: vals2019_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohand
--

SELECT pg_catalog.setval('public.vals2019_id_seq', 1, false);


--
-- Name: ix_vals2019pandas_index; Type: INDEX; Schema: public; Owner: rohand
--

CREATE INDEX ix_vals2019pandas_index ON public.vals2019pandas USING btree (index);


--
-- Name: ix_vals2020pandas_index; Type: INDEX; Schema: public; Owner: rohand
--

CREATE INDEX ix_vals2020pandas_index ON public.vals2020pandas USING btree (index);


--
-- Name: ix_vals2021pandas_index; Type: INDEX; Schema: public; Owner: rohand
--

CREATE INDEX ix_vals2021pandas_index ON public.vals2021pandas USING btree (index);


--
-- Name: ix_vals2023pandas_index; Type: INDEX; Schema: public; Owner: rohand
--

CREATE INDEX ix_vals2023pandas_index ON public.vals2023pandas USING btree (index);


--
-- PostgreSQL database dump complete
--

