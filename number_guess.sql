--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_info (
    player_id integer NOT NULL,
    games_played integer DEFAULT 1 NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games_info OWNER TO freecodecamp;

--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 91);
INSERT INTO public.games VALUES (2, 1, 727);
INSERT INTO public.games VALUES (3, 2, 804);
INSERT INTO public.games VALUES (4, 2, 998);
INSERT INTO public.games VALUES (5, 1, 943);
INSERT INTO public.games VALUES (6, 1, 238);
INSERT INTO public.games VALUES (7, 1, 734);
INSERT INTO public.games VALUES (8, 3, 9);
INSERT INTO public.games VALUES (9, 4, 925);
INSERT INTO public.games VALUES (10, 4, 549);
INSERT INTO public.games VALUES (11, 5, 69);
INSERT INTO public.games VALUES (12, 5, 394);
INSERT INTO public.games VALUES (13, 4, 201);
INSERT INTO public.games VALUES (14, 4, 795);
INSERT INTO public.games VALUES (15, 4, 806);
INSERT INTO public.games VALUES (16, 3, 12);
INSERT INTO public.games VALUES (17, 6, 653);
INSERT INTO public.games VALUES (18, 6, 28);
INSERT INTO public.games VALUES (19, 7, 700);
INSERT INTO public.games VALUES (20, 7, 770);
INSERT INTO public.games VALUES (21, 6, 146);
INSERT INTO public.games VALUES (22, 6, 474);
INSERT INTO public.games VALUES (23, 6, 789);
INSERT INTO public.games VALUES (24, 8, 972);
INSERT INTO public.games VALUES (25, 8, 7);
INSERT INTO public.games VALUES (26, 9, 619);
INSERT INTO public.games VALUES (27, 9, 277);
INSERT INTO public.games VALUES (28, 8, 311);
INSERT INTO public.games VALUES (29, 8, 87);
INSERT INTO public.games VALUES (30, 8, 17);
INSERT INTO public.games VALUES (31, 10, 920);
INSERT INTO public.games VALUES (32, 10, 552);
INSERT INTO public.games VALUES (33, 11, 979);
INSERT INTO public.games VALUES (34, 11, 769);
INSERT INTO public.games VALUES (35, 10, 900);
INSERT INTO public.games VALUES (36, 10, 764);
INSERT INTO public.games VALUES (37, 10, 998);
INSERT INTO public.games VALUES (38, 3, 18);
INSERT INTO public.games VALUES (39, 12, 596);
INSERT INTO public.games VALUES (40, 12, 548);
INSERT INTO public.games VALUES (41, 13, 809);
INSERT INTO public.games VALUES (42, 13, 362);
INSERT INTO public.games VALUES (43, 12, 147);
INSERT INTO public.games VALUES (44, 12, 838);
INSERT INTO public.games VALUES (45, 12, 570);
INSERT INTO public.games VALUES (46, 3, 11);
INSERT INTO public.games VALUES (47, 14, 546);
INSERT INTO public.games VALUES (48, 14, 900);
INSERT INTO public.games VALUES (49, 15, 619);
INSERT INTO public.games VALUES (50, 15, 259);
INSERT INTO public.games VALUES (51, 14, 183);
INSERT INTO public.games VALUES (52, 14, 76);
INSERT INTO public.games VALUES (53, 14, 710);
INSERT INTO public.games VALUES (54, 16, 8);
INSERT INTO public.games VALUES (55, 17, 915);
INSERT INTO public.games VALUES (56, 17, 861);
INSERT INTO public.games VALUES (57, 18, 721);
INSERT INTO public.games VALUES (58, 18, 992);
INSERT INTO public.games VALUES (59, 17, 578);
INSERT INTO public.games VALUES (60, 17, 402);
INSERT INTO public.games VALUES (61, 17, 438);
INSERT INTO public.games VALUES (62, 19, 975);
INSERT INTO public.games VALUES (63, 19, 434);
INSERT INTO public.games VALUES (64, 20, 410);
INSERT INTO public.games VALUES (65, 20, 160);
INSERT INTO public.games VALUES (66, 19, 87);
INSERT INTO public.games VALUES (67, 19, 89);
INSERT INTO public.games VALUES (68, 19, 72);
INSERT INTO public.games VALUES (69, 21, 314);
INSERT INTO public.games VALUES (70, 22, 210);
INSERT INTO public.games VALUES (71, 21, 36);
INSERT INTO public.games VALUES (72, 21, 167);
INSERT INTO public.games VALUES (73, 21, 879);
INSERT INTO public.games VALUES (74, 3, 8);
INSERT INTO public.games VALUES (75, 23, 533);
INSERT INTO public.games VALUES (76, 24, 477);
INSERT INTO public.games VALUES (77, 23, 978);
INSERT INTO public.games VALUES (78, 23, 5);
INSERT INTO public.games VALUES (79, 23, 937);
INSERT INTO public.games VALUES (80, 16, 10);
INSERT INTO public.games VALUES (81, 25, 861);
INSERT INTO public.games VALUES (82, 26, 34);
INSERT INTO public.games VALUES (83, 25, 779);
INSERT INTO public.games VALUES (84, 25, 67);
INSERT INTO public.games VALUES (85, 25, 210);
INSERT INTO public.games VALUES (86, 27, 77);
INSERT INTO public.games VALUES (87, 27, 41);
INSERT INTO public.games VALUES (88, 28, 846);
INSERT INTO public.games VALUES (89, 28, 692);
INSERT INTO public.games VALUES (90, 27, 878);
INSERT INTO public.games VALUES (91, 27, 686);
INSERT INTO public.games VALUES (92, 27, 740);
INSERT INTO public.games VALUES (93, 29, 681);
INSERT INTO public.games VALUES (94, 29, 881);
INSERT INTO public.games VALUES (95, 30, 355);
INSERT INTO public.games VALUES (96, 30, 486);
INSERT INTO public.games VALUES (97, 29, 171);
INSERT INTO public.games VALUES (98, 29, 740);
INSERT INTO public.games VALUES (99, 29, 130);
INSERT INTO public.games VALUES (100, 31, 915);
INSERT INTO public.games VALUES (101, 31, 194);
INSERT INTO public.games VALUES (102, 32, 3);
INSERT INTO public.games VALUES (103, 32, 995);
INSERT INTO public.games VALUES (104, 31, 386);
INSERT INTO public.games VALUES (105, 31, 600);
INSERT INTO public.games VALUES (106, 31, 184);
INSERT INTO public.games VALUES (107, 33, 709);
INSERT INTO public.games VALUES (108, 33, 899);
INSERT INTO public.games VALUES (109, 34, 547);
INSERT INTO public.games VALUES (110, 34, 902);
INSERT INTO public.games VALUES (111, 33, 296);
INSERT INTO public.games VALUES (112, 33, 607);
INSERT INTO public.games VALUES (113, 33, 381);
INSERT INTO public.games VALUES (114, 35, 738);
INSERT INTO public.games VALUES (115, 35, 594);
INSERT INTO public.games VALUES (116, 36, 457);
INSERT INTO public.games VALUES (117, 36, 52);
INSERT INTO public.games VALUES (118, 35, 792);
INSERT INTO public.games VALUES (119, 35, 508);
INSERT INTO public.games VALUES (120, 35, 724);
INSERT INTO public.games VALUES (121, 37, 284);
INSERT INTO public.games VALUES (122, 37, 625);
INSERT INTO public.games VALUES (123, 38, 470);
INSERT INTO public.games VALUES (124, 38, 918);
INSERT INTO public.games VALUES (125, 37, 943);
INSERT INTO public.games VALUES (126, 37, 700);
INSERT INTO public.games VALUES (127, 37, 773);
INSERT INTO public.games VALUES (128, 39, 675);
INSERT INTO public.games VALUES (129, 39, 96);
INSERT INTO public.games VALUES (130, 40, 929);
INSERT INTO public.games VALUES (131, 40, 417);
INSERT INTO public.games VALUES (132, 39, 179);
INSERT INTO public.games VALUES (133, 39, 172);
INSERT INTO public.games VALUES (134, 39, 40);
INSERT INTO public.games VALUES (135, 41, 485);
INSERT INTO public.games VALUES (136, 41, 511);
INSERT INTO public.games VALUES (137, 42, 568);
INSERT INTO public.games VALUES (138, 42, 468);
INSERT INTO public.games VALUES (139, 41, 276);
INSERT INTO public.games VALUES (140, 41, 251);
INSERT INTO public.games VALUES (141, 41, 821);
INSERT INTO public.games VALUES (142, 43, 940);
INSERT INTO public.games VALUES (143, 43, 622);
INSERT INTO public.games VALUES (144, 44, 607);
INSERT INTO public.games VALUES (145, 44, 366);
INSERT INTO public.games VALUES (146, 43, 237);
INSERT INTO public.games VALUES (147, 43, 24);
INSERT INTO public.games VALUES (148, 43, 778);
INSERT INTO public.games VALUES (149, 45, 416);
INSERT INTO public.games VALUES (150, 45, 642);
INSERT INTO public.games VALUES (151, 46, 329);
INSERT INTO public.games VALUES (152, 46, 317);
INSERT INTO public.games VALUES (153, 45, 897);
INSERT INTO public.games VALUES (154, 45, 616);
INSERT INTO public.games VALUES (155, 45, 589);
INSERT INTO public.games VALUES (156, 47, 235);
INSERT INTO public.games VALUES (157, 47, 731);
INSERT INTO public.games VALUES (158, 48, 177);
INSERT INTO public.games VALUES (159, 48, 260);
INSERT INTO public.games VALUES (160, 47, 768);
INSERT INTO public.games VALUES (161, 47, 958);
INSERT INTO public.games VALUES (162, 47, 133);
INSERT INTO public.games VALUES (163, 49, 790);
INSERT INTO public.games VALUES (164, 49, 313);
INSERT INTO public.games VALUES (165, 50, 570);
INSERT INTO public.games VALUES (166, 50, 671);
INSERT INTO public.games VALUES (167, 49, 895);
INSERT INTO public.games VALUES (168, 49, 81);
INSERT INTO public.games VALUES (169, 49, 436);
INSERT INTO public.games VALUES (170, 51, 575);
INSERT INTO public.games VALUES (171, 51, 169);
INSERT INTO public.games VALUES (172, 52, 8);
INSERT INTO public.games VALUES (173, 52, 117);
INSERT INTO public.games VALUES (174, 51, 582);
INSERT INTO public.games VALUES (175, 51, 334);
INSERT INTO public.games VALUES (176, 51, 279);
INSERT INTO public.games VALUES (177, 53, 292);
INSERT INTO public.games VALUES (178, 53, 474);
INSERT INTO public.games VALUES (179, 54, 540);
INSERT INTO public.games VALUES (180, 54, 813);
INSERT INTO public.games VALUES (181, 53, 663);
INSERT INTO public.games VALUES (182, 53, 323);
INSERT INTO public.games VALUES (183, 53, 789);
INSERT INTO public.games VALUES (184, 55, 125);
INSERT INTO public.games VALUES (185, 55, 399);
INSERT INTO public.games VALUES (186, 56, 904);
INSERT INTO public.games VALUES (187, 56, 954);
INSERT INTO public.games VALUES (188, 55, 966);
INSERT INTO public.games VALUES (189, 55, 332);
INSERT INTO public.games VALUES (190, 55, 356);
INSERT INTO public.games VALUES (191, 57, 174);
INSERT INTO public.games VALUES (192, 57, 395);
INSERT INTO public.games VALUES (193, 58, 203);
INSERT INTO public.games VALUES (194, 58, 27);
INSERT INTO public.games VALUES (195, 57, 481);
INSERT INTO public.games VALUES (196, 57, 754);
INSERT INTO public.games VALUES (197, 57, 82);
INSERT INTO public.games VALUES (198, 59, 23);
INSERT INTO public.games VALUES (199, 59, 1000);
INSERT INTO public.games VALUES (200, 60, 417);
INSERT INTO public.games VALUES (201, 60, 216);
INSERT INTO public.games VALUES (202, 59, 403);
INSERT INTO public.games VALUES (203, 59, 782);
INSERT INTO public.games VALUES (204, 59, 979);
INSERT INTO public.games VALUES (205, 61, 20);
INSERT INTO public.games VALUES (206, 61, 591);
INSERT INTO public.games VALUES (207, 62, 871);
INSERT INTO public.games VALUES (208, 62, 450);
INSERT INTO public.games VALUES (209, 61, 456);
INSERT INTO public.games VALUES (210, 61, 140);
INSERT INTO public.games VALUES (211, 61, 545);
INSERT INTO public.games VALUES (212, 63, 508);
INSERT INTO public.games VALUES (213, 63, 929);
INSERT INTO public.games VALUES (214, 64, 284);
INSERT INTO public.games VALUES (215, 64, 10);
INSERT INTO public.games VALUES (216, 63, 171);
INSERT INTO public.games VALUES (217, 63, 519);
INSERT INTO public.games VALUES (218, 63, 621);
INSERT INTO public.games VALUES (219, 65, 669);
INSERT INTO public.games VALUES (220, 65, 225);
INSERT INTO public.games VALUES (221, 66, 59);
INSERT INTO public.games VALUES (222, 66, 268);
INSERT INTO public.games VALUES (223, 65, 140);
INSERT INTO public.games VALUES (224, 65, 378);
INSERT INTO public.games VALUES (225, 65, 384);
INSERT INTO public.games VALUES (226, 67, 713);
INSERT INTO public.games VALUES (227, 67, 607);
INSERT INTO public.games VALUES (228, 68, 636);
INSERT INTO public.games VALUES (229, 68, 468);
INSERT INTO public.games VALUES (230, 67, 269);
INSERT INTO public.games VALUES (231, 67, 924);
INSERT INTO public.games VALUES (232, 67, 429);
INSERT INTO public.games VALUES (233, 69, 725);
INSERT INTO public.games VALUES (234, 69, 297);
INSERT INTO public.games VALUES (235, 70, 431);
INSERT INTO public.games VALUES (236, 70, 106);
INSERT INTO public.games VALUES (237, 69, 29);
INSERT INTO public.games VALUES (238, 69, 58);
INSERT INTO public.games VALUES (239, 69, 44);
INSERT INTO public.games VALUES (240, 71, 33);
INSERT INTO public.games VALUES (241, 71, 748);
INSERT INTO public.games VALUES (242, 72, 865);
INSERT INTO public.games VALUES (243, 72, 591);
INSERT INTO public.games VALUES (244, 71, 625);
INSERT INTO public.games VALUES (245, 71, 737);
INSERT INTO public.games VALUES (246, 71, 301);
INSERT INTO public.games VALUES (247, 73, 787);
INSERT INTO public.games VALUES (248, 73, 318);
INSERT INTO public.games VALUES (249, 74, 649);
INSERT INTO public.games VALUES (250, 74, 661);
INSERT INTO public.games VALUES (251, 73, 702);
INSERT INTO public.games VALUES (252, 73, 528);
INSERT INTO public.games VALUES (253, 73, 251);
INSERT INTO public.games VALUES (254, 75, 329);
INSERT INTO public.games VALUES (255, 75, 417);
INSERT INTO public.games VALUES (256, 76, 681);
INSERT INTO public.games VALUES (257, 76, 292);
INSERT INTO public.games VALUES (258, 75, 575);
INSERT INTO public.games VALUES (259, 75, 586);
INSERT INTO public.games VALUES (260, 75, 438);
INSERT INTO public.games VALUES (261, 77, 37);
INSERT INTO public.games VALUES (262, 78, 830);
INSERT INTO public.games VALUES (263, 77, 665);
INSERT INTO public.games VALUES (264, 77, 543);
INSERT INTO public.games VALUES (265, 77, 424);
INSERT INTO public.games VALUES (266, 79, 319);
INSERT INTO public.games VALUES (267, 80, 345);
INSERT INTO public.games VALUES (268, 79, 245);
INSERT INTO public.games VALUES (269, 79, 639);
INSERT INTO public.games VALUES (270, 79, 321);
INSERT INTO public.games VALUES (271, 81, 353);
INSERT INTO public.games VALUES (272, 81, 80);
INSERT INTO public.games VALUES (273, 82, 612);
INSERT INTO public.games VALUES (274, 82, 537);
INSERT INTO public.games VALUES (275, 81, 515);
INSERT INTO public.games VALUES (276, 81, 166);
INSERT INTO public.games VALUES (277, 81, 372);
INSERT INTO public.games VALUES (278, 83, 704);
INSERT INTO public.games VALUES (279, 83, 345);
INSERT INTO public.games VALUES (280, 84, 535);
INSERT INTO public.games VALUES (281, 84, 994);
INSERT INTO public.games VALUES (282, 83, 885);
INSERT INTO public.games VALUES (283, 83, 999);
INSERT INTO public.games VALUES (284, 83, 101);


--
-- Data for Name: games_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_info VALUES (40, 1, 9);
INSERT INTO public.games_info VALUES (41, 1, 99);
INSERT INTO public.games_info VALUES (41, 1, 904);
INSERT INTO public.games_info VALUES (42, 1, 639);
INSERT INTO public.games_info VALUES (42, 1, 69);
INSERT INTO public.games_info VALUES (41, 1, 433);
INSERT INTO public.games_info VALUES (41, 1, 640);
INSERT INTO public.games_info VALUES (41, 1, 711);
INSERT INTO public.games_info VALUES (43, 1, 142);
INSERT INTO public.games_info VALUES (43, 1, 541);
INSERT INTO public.games_info VALUES (44, 1, 540);
INSERT INTO public.games_info VALUES (44, 1, 561);
INSERT INTO public.games_info VALUES (43, 1, 703);
INSERT INTO public.games_info VALUES (43, 1, 621);
INSERT INTO public.games_info VALUES (43, 1, 581);
INSERT INTO public.games_info VALUES (45, 1, 165);
INSERT INTO public.games_info VALUES (45, 1, 309);
INSERT INTO public.games_info VALUES (46, 1, 289);
INSERT INTO public.games_info VALUES (46, 1, 489);
INSERT INTO public.games_info VALUES (45, 1, 353);
INSERT INTO public.games_info VALUES (45, 1, 804);
INSERT INTO public.games_info VALUES (45, 1, 536);
INSERT INTO public.games_info VALUES (47, 1, 218);
INSERT INTO public.games_info VALUES (47, 1, 297);
INSERT INTO public.games_info VALUES (48, 1, 798);
INSERT INTO public.games_info VALUES (48, 1, 261);
INSERT INTO public.games_info VALUES (47, 1, 8);
INSERT INTO public.games_info VALUES (47, 1, 448);
INSERT INTO public.games_info VALUES (47, 1, 275);
INSERT INTO public.games_info VALUES (49, 1, 621);
INSERT INTO public.games_info VALUES (49, 1, 795);
INSERT INTO public.games_info VALUES (50, 1, 73);
INSERT INTO public.games_info VALUES (50, 1, 995);
INSERT INTO public.games_info VALUES (49, 1, 270);
INSERT INTO public.games_info VALUES (49, 1, 920);
INSERT INTO public.games_info VALUES (49, 1, 934);
INSERT INTO public.games_info VALUES (51, 1, 42);
INSERT INTO public.games_info VALUES (51, 1, 46);
INSERT INTO public.games_info VALUES (52, 1, 640);
INSERT INTO public.games_info VALUES (52, 1, 129);
INSERT INTO public.games_info VALUES (51, 1, 430);
INSERT INTO public.games_info VALUES (51, 1, 480);
INSERT INTO public.games_info VALUES (51, 1, 11);
INSERT INTO public.games_info VALUES (53, 1, 554);
INSERT INTO public.games_info VALUES (53, 1, 412);
INSERT INTO public.games_info VALUES (54, 1, 895);
INSERT INTO public.games_info VALUES (54, 1, 86);
INSERT INTO public.games_info VALUES (53, 1, 377);
INSERT INTO public.games_info VALUES (53, 1, 372);
INSERT INTO public.games_info VALUES (53, 1, 628);
INSERT INTO public.games_info VALUES (55, 1, 532);
INSERT INTO public.games_info VALUES (55, 1, 698);
INSERT INTO public.games_info VALUES (56, 1, 302);
INSERT INTO public.games_info VALUES (56, 1, 746);
INSERT INTO public.games_info VALUES (55, 1, 430);
INSERT INTO public.games_info VALUES (55, 1, 324);
INSERT INTO public.games_info VALUES (55, 1, 365);
INSERT INTO public.games_info VALUES (57, 1, 938);
INSERT INTO public.games_info VALUES (57, 1, 907);
INSERT INTO public.games_info VALUES (58, 1, 771);
INSERT INTO public.games_info VALUES (58, 1, 993);
INSERT INTO public.games_info VALUES (57, 1, 446);
INSERT INTO public.games_info VALUES (57, 1, 11);
INSERT INTO public.games_info VALUES (57, 1, 607);
INSERT INTO public.games_info VALUES (59, 1, 98);
INSERT INTO public.games_info VALUES (59, 1, 363);
INSERT INTO public.games_info VALUES (60, 1, 575);
INSERT INTO public.games_info VALUES (60, 1, 155);
INSERT INTO public.games_info VALUES (59, 1, 314);
INSERT INTO public.games_info VALUES (59, 1, 157);
INSERT INTO public.games_info VALUES (59, 1, 909);
INSERT INTO public.games_info VALUES (61, 1, 861);
INSERT INTO public.games_info VALUES (61, 1, 110);
INSERT INTO public.games_info VALUES (62, 1, 931);
INSERT INTO public.games_info VALUES (62, 1, 630);
INSERT INTO public.games_info VALUES (61, 1, 762);
INSERT INTO public.games_info VALUES (61, 1, 882);
INSERT INTO public.games_info VALUES (61, 1, 447);
INSERT INTO public.games_info VALUES (63, 1, 114);
INSERT INTO public.games_info VALUES (63, 1, 957);
INSERT INTO public.games_info VALUES (64, 1, 381);
INSERT INTO public.games_info VALUES (64, 1, 743);
INSERT INTO public.games_info VALUES (63, 1, 380);
INSERT INTO public.games_info VALUES (63, 1, 135);
INSERT INTO public.games_info VALUES (63, 1, 47);
INSERT INTO public.games_info VALUES (65, 1, 148);
INSERT INTO public.games_info VALUES (65, 1, 85);
INSERT INTO public.games_info VALUES (66, 1, 160);
INSERT INTO public.games_info VALUES (66, 1, 722);
INSERT INTO public.games_info VALUES (65, 1, 805);
INSERT INTO public.games_info VALUES (65, 1, 718);
INSERT INTO public.games_info VALUES (65, 1, 359);
INSERT INTO public.games_info VALUES (67, 1, 725);
INSERT INTO public.games_info VALUES (67, 1, 488);
INSERT INTO public.games_info VALUES (68, 1, 241);
INSERT INTO public.games_info VALUES (68, 1, 222);
INSERT INTO public.games_info VALUES (67, 1, 912);
INSERT INTO public.games_info VALUES (67, 1, 323);
INSERT INTO public.games_info VALUES (67, 1, 688);
INSERT INTO public.games_info VALUES (69, 1, 186);
INSERT INTO public.games_info VALUES (69, 1, 882);
INSERT INTO public.games_info VALUES (70, 1, 941);
INSERT INTO public.games_info VALUES (70, 1, 600);
INSERT INTO public.games_info VALUES (69, 1, 607);
INSERT INTO public.games_info VALUES (69, 1, 345);
INSERT INTO public.games_info VALUES (69, 1, 379);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (40, 'Pedro');
INSERT INTO public.players VALUES (41, 'user_1713468468757');
INSERT INTO public.players VALUES (42, 'user_1713468468756');
INSERT INTO public.players VALUES (43, 'user_1713468578442');
INSERT INTO public.players VALUES (44, 'user_1713468578441');
INSERT INTO public.players VALUES (45, 'user_1713468609149');
INSERT INTO public.players VALUES (46, 'user_1713468609148');
INSERT INTO public.players VALUES (47, 'user_1713468642390');
INSERT INTO public.players VALUES (48, 'user_1713468642389');
INSERT INTO public.players VALUES (49, 'user_1713468649087');
INSERT INTO public.players VALUES (50, 'user_1713468649086');
INSERT INTO public.players VALUES (51, 'user_1721440311529');
INSERT INTO public.players VALUES (52, 'user_1721440311528');
INSERT INTO public.players VALUES (53, 'user_1721440410726');
INSERT INTO public.players VALUES (54, 'user_1721440410725');
INSERT INTO public.players VALUES (55, 'user_1721440500346');
INSERT INTO public.players VALUES (56, 'user_1721440500345');
INSERT INTO public.players VALUES (57, 'user_1721440591126');
INSERT INTO public.players VALUES (58, 'user_1721440591125');
INSERT INTO public.players VALUES (59, 'user_1721440726560');
INSERT INTO public.players VALUES (60, 'user_1721440726559');
INSERT INTO public.players VALUES (61, 'user_1721440875870');
INSERT INTO public.players VALUES (62, 'user_1721440875869');
INSERT INTO public.players VALUES (63, 'user_1721441095460');
INSERT INTO public.players VALUES (64, 'user_1721441095459');
INSERT INTO public.players VALUES (65, 'user_1721441111898');
INSERT INTO public.players VALUES (66, 'user_1721441111897');
INSERT INTO public.players VALUES (67, 'user_1721441234097');
INSERT INTO public.players VALUES (68, 'user_1721441234096');
INSERT INTO public.players VALUES (69, 'user_1721441443770');
INSERT INTO public.players VALUES (70, 'user_1721441443769');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (16, 'lopezo', 2, 8);
INSERT INTO public.users VALUES (51, 'user_1721439681635', 5, 169);
INSERT INTO public.users VALUES (2, 'user_1721438449516', 2, 804);
INSERT INTO public.users VALUES (1, 'user_1721438449517', 5, 91);
INSERT INTO public.users VALUES (64, 'user_1721439692573', 2, 10);
INSERT INTO public.users VALUES (26, 'user_1721439535693', 1, 34);
INSERT INTO public.users VALUES (39, 'user_1721439670393', 5, 40);
INSERT INTO public.users VALUES (13, 'user_1721439043563', 2, 362);
INSERT INTO public.users VALUES (79, 'user_1721440145905', 4, 245);
INSERT INTO public.users VALUES (12, 'user_1721439043564', 5, 147);
INSERT INTO public.users VALUES (5, 'user_1721438643074', 2, 69);
INSERT INTO public.users VALUES (25, 'user_1721439535694', 4, 67);
INSERT INTO public.users VALUES (4, 'user_1721438643075', 5, 201);
INSERT INTO public.users VALUES (71, 'user_1721439987912', 5, 33);
INSERT INTO public.users VALUES (63, 'user_1721439692574', 5, 171);
INSERT INTO public.users VALUES (54, 'user_1721439683324', 2, 540);
INSERT INTO public.users VALUES (7, 'user_1721438708005', 2, 700);
INSERT INTO public.users VALUES (15, 'user_1721439142162', 2, 259);
INSERT INTO public.users VALUES (42, 'user_1721439672217', 2, 468);
INSERT INTO public.users VALUES (6, 'user_1721438708006', 5, 28);
INSERT INTO public.users VALUES (28, 'user_1721439558886', 2, 692);
INSERT INTO public.users VALUES (14, 'user_1721439142163', 5, 76);
INSERT INTO public.users VALUES (53, 'user_1721439683325', 5, 292);
INSERT INTO public.users VALUES (9, 'user_1721438915293', 2, 277);
INSERT INTO public.users VALUES (27, 'user_1721439558887', 5, 41);
INSERT INTO public.users VALUES (8, 'user_1721438915294', 5, 7);
INSERT INTO public.users VALUES (41, 'user_1721439672218', 5, 251);
INSERT INTO public.users VALUES (18, 'user_1721439186704', 2, 721);
INSERT INTO public.users VALUES (11, 'user_1721438966157', 2, 769);
INSERT INTO public.users VALUES (10, 'user_1721438966158', 5, 552);
INSERT INTO public.users VALUES (30, 'user_1721439661251', 2, 355);
INSERT INTO public.users VALUES (17, 'user_1721439186705', 5, 402);
INSERT INTO public.users VALUES (29, 'user_1721439661252', 5, 130);
INSERT INTO public.users VALUES (56, 'user_1721439685052', 2, 904);
INSERT INTO public.users VALUES (44, 'user_1721439673973', 2, 366);
INSERT INTO public.users VALUES (20, 'user_1721439198869', 2, 160);
INSERT INTO public.users VALUES (66, 'user_1721439966068', 2, 59);
INSERT INTO public.users VALUES (55, 'user_1721439685053', 5, 125);
INSERT INTO public.users VALUES (19, 'user_1721439198870', 5, 72);
INSERT INTO public.users VALUES (32, 'user_1721439663117', 2, 3);
INSERT INTO public.users VALUES (43, 'user_1721439673974', 5, 24);
INSERT INTO public.users VALUES (22, 'user_1721439389723', 1, 210);
INSERT INTO public.users VALUES (31, 'user_1721439663118', 5, 184);
INSERT INTO public.users VALUES (21, 'user_1721439389724', 4, 36);
INSERT INTO public.users VALUES (3, 'juan', 5, 8);
INSERT INTO public.users VALUES (74, 'user_1721439989540', 2, 649);
INSERT INTO public.users VALUES (24, 'user_1721439424502', 1, 477);
INSERT INTO public.users VALUES (65, 'user_1721439966069', 5, 140);
INSERT INTO public.users VALUES (23, 'user_1721439424503', 4, 5);
INSERT INTO public.users VALUES (34, 'user_1721439664965', 2, 547);
INSERT INTO public.users VALUES (46, 'user_1721439675723', 2, 317);
INSERT INTO public.users VALUES (33, 'user_1721439664966', 5, 296);
INSERT INTO public.users VALUES (58, 'user_1721439686903', 2, 27);
INSERT INTO public.users VALUES (45, 'user_1721439675724', 5, 416);
INSERT INTO public.users VALUES (82, 'user_1721440860885', 2, 537);
INSERT INTO public.users VALUES (73, 'user_1721439989541', 5, 251);
INSERT INTO public.users VALUES (36, 'user_1721439666761', 2, 52);
INSERT INTO public.users VALUES (57, 'user_1721439686904', 5, 82);
INSERT INTO public.users VALUES (48, 'user_1721439677615', 2, 177);
INSERT INTO public.users VALUES (35, 'user_1721439666762', 5, 508);
INSERT INTO public.users VALUES (47, 'user_1721439677616', 5, 133);
INSERT INTO public.users VALUES (38, 'user_1721439668622', 2, 470);
INSERT INTO public.users VALUES (37, 'user_1721439668623', 5, 284);
INSERT INTO public.users VALUES (68, 'user_1721439979925', 2, 468);
INSERT INTO public.users VALUES (81, 'user_1721440860886', 5, 80);
INSERT INTO public.users VALUES (60, 'user_1721439688590', 2, 216);
INSERT INTO public.users VALUES (50, 'user_1721439679353', 2, 570);
INSERT INTO public.users VALUES (40, 'user_1721439670392', 2, 417);
INSERT INTO public.users VALUES (59, 'user_1721439688591', 5, 23);
INSERT INTO public.users VALUES (67, 'user_1721439979926', 5, 269);
INSERT INTO public.users VALUES (49, 'user_1721439679354', 5, 81);
INSERT INTO public.users VALUES (76, 'user_1721439991198', 2, 292);
INSERT INTO public.users VALUES (52, 'user_1721439681634', 2, 8);
INSERT INTO public.users VALUES (62, 'user_1721439691006', 2, 450);
INSERT INTO public.users VALUES (75, 'user_1721439991199', 5, 329);
INSERT INTO public.users VALUES (61, 'user_1721439691007', 5, 20);
INSERT INTO public.users VALUES (70, 'user_1721439985887', 2, 106);
INSERT INTO public.users VALUES (78, 'user_1721440112333', 1, 830);
INSERT INTO public.users VALUES (69, 'user_1721439985888', 5, 29);
INSERT INTO public.users VALUES (84, 'user_1721440862379', 2, 535);
INSERT INTO public.users VALUES (77, 'user_1721440112334', 4, 37);
INSERT INTO public.users VALUES (72, 'user_1721439987911', 2, 591);
INSERT INTO public.users VALUES (83, 'user_1721440862380', 5, 101);
INSERT INTO public.users VALUES (80, 'user_1721440145904', 1, 345);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 284, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 84, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games_info games_info_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_info
    ADD CONSTRAINT games_info_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

