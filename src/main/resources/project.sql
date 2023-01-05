PGDMP     -                      {            movies    14.5    15.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19137    movies    DATABASE     h   CREATE DATABASE movies WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE movies;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5            �            1259    20328    category    TABLE        CREATE TABLE public.category (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255),
    search character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false    5            �            1259    20333    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    5    210            �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    211            �            1259    20334    comment    TABLE     �   CREATE TABLE public.comment (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    comment character varying(255),
    product_id bigint,
    user_id bigint
);
    DROP TABLE public.comment;
       public         heap    postgres    false    5            �            1259    20337    comment_id_seq    SEQUENCE     w   CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.comment_id_seq;
       public          postgres    false    212    5            �           0    0    comment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;
          public          postgres    false    213            �            1259    20338    country    TABLE     �   CREATE TABLE public.country (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255)
);
    DROP TABLE public.country;
       public         heap    postgres    false    5            �            1259    20341    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    214    5            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    215            �            1259    19267    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false    5            �            1259    20342    image    TABLE     S  CREATE TABLE public.image (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    priority integer NOT NULL,
    url_medium character varying(255),
    url_small character varying(255),
    product_id bigint,
    shop_id bigint
);
    DROP TABLE public.image;
       public         heap    postgres    false    5            �            1259    20347    image_id_seq    SEQUENCE     u   CREATE SEQUENCE public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    216    5            �           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    217            �            1259    20512    movies    TABLE     -  CREATE TABLE public.movies (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    description character varying(255),
    movie_url character varying(255),
    title character varying(255)
);
    DROP TABLE public.movies;
       public         heap    postgres    false    5            �            1259    20511    movies_id_seq    SEQUENCE     v   CREATE SEQUENCE public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    235    5            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    234            �            1259    20348 
   prefecture    TABLE     �   CREATE TABLE public.prefecture (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);
    DROP TABLE public.prefecture;
       public         heap    postgres    false    5            �            1259    20351    prefecture_id_seq    SEQUENCE     z   CREATE SEQUENCE public.prefecture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prefecture_id_seq;
       public          postgres    false    5    218            �           0    0    prefecture_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prefecture_id_seq OWNED BY public.prefecture.id;
          public          postgres    false    219            �            1259    20357    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    5            �            1259    20352    product    TABLE     �  CREATE TABLE public.product (
    id bigint DEFAULT nextval('public.product_id_seq'::regclass) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    description text,
    description_sort character varying(255),
    enable boolean NOT NULL,
    hot boolean NOT NULL,
    name character varying(255),
    rating integer NOT NULL,
    tiktok character varying(255),
    country_id bigint,
    shop_id bigint,
    sub_category_id bigint,
    mode bigint,
    until timestamp without time zone,
    price bigint,
    sale_price bigint,
    sale boolean,
    slug character varying(255),
    product_mode_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false    221    5            �            1259    20546    product_mode    TABLE     �   CREATE TABLE public.product_mode (
    id bigint NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint
);
     DROP TABLE public.product_mode;
       public         heap    postgres    false    5            �            1259    20545    product_mode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_mode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_mode_id_seq;
       public          postgres    false    5    239            �           0    0    product_mode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_mode_id_seq OWNED BY public.product_mode.id;
          public          postgres    false    238            �            1259    20358    product_tags    TABLE     c   CREATE TABLE public.product_tags (
    products_id bigint NOT NULL,
    tags_id bigint NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false    5            �            1259    20361    roles    TABLE     V   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(60)
);
    DROP TABLE public.roles;
       public         heap    postgres    false    5            �            1259    20364    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    223    5            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    224            �            1259    20365    shop    TABLE     �  CREATE TABLE public.shop (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    active boolean NOT NULL,
    address character varying(255),
    email character varying(255),
    name character varying(255),
    number character varying(255),
    user_id bigint,
    telegram_group character varying(255),
    telegram_id character varying(255)
);
    DROP TABLE public.shop;
       public         heap    postgres    false    5            �            1259    20370    shop_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shop_id_seq;
       public          postgres    false    5    225            �           0    0    shop_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.shop_id_seq OWNED BY public.shop.id;
          public          postgres    false    226            �            1259    20371    sub_category    TABLE     C  CREATE TABLE public.sub_category (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255),
    category_id bigint NOT NULL,
    slug character varying(255)
);
     DROP TABLE public.sub_category;
       public         heap    postgres    false    5            �            1259    20376    sub_category_id_seq    SEQUENCE     |   CREATE SEQUENCE public.sub_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sub_category_id_seq;
       public          postgres    false    5    227            �           0    0    sub_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sub_category_id_seq OWNED BY public.sub_category.id;
          public          postgres    false    228            �            1259    20377    tag    TABLE     �   CREATE TABLE public.tag (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255)
);
    DROP TABLE public.tag;
       public         heap    postgres    false    5            �            1259    20380 
   tag_id_seq    SEQUENCE     s   CREATE SEQUENCE public.tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public          postgres    false    5    229            �           0    0 
   tag_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;
          public          postgres    false    230            �            1259    20381 
   user_roles    TABLE     ]   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false    5            �            1259    20384    users    TABLE       CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    address character varying(255),
    avatar character varying(255),
    birthday timestamp without time zone,
    email character varying(40),
    is_account_non_expired boolean NOT NULL,
    is_account_non_locked boolean NOT NULL,
    is_credentials_non_expired boolean NOT NULL,
    is_enabled boolean NOT NULL,
    mobile character varying(255),
    password character varying(100),
    prefecture_id bigint,
    create_expiry timestamp without time zone,
    create_token character varying(255),
    reset_expiry timestamp without time zone,
    reset_token character varying(255),
    username character varying(255),
    shop_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false    5            �            1259    20389    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    232    5            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    233            �            1259    20521    votes    TABLE     �   CREATE TABLE public.votes (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    voted_name character varying(60),
    movie_id bigint NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.votes;
       public         heap    postgres    false    5            �            1259    20520    votes_id_seq    SEQUENCE     u   CREATE SEQUENCE public.votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.votes_id_seq;
       public          postgres    false    237    5            �           0    0    votes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.votes_id_seq OWNED BY public.votes.id;
          public          postgres    false    236            �           2604    20390    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    20391 
   comment id    DEFAULT     h   ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    20392 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    20393    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20515 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    20394    prefecture id    DEFAULT     n   ALTER TABLE ONLY public.prefecture ALTER COLUMN id SET DEFAULT nextval('public.prefecture_id_seq'::regclass);
 <   ALTER TABLE public.prefecture ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20549    product_mode id    DEFAULT     r   ALTER TABLE ONLY public.product_mode ALTER COLUMN id SET DEFAULT nextval('public.product_mode_id_seq'::regclass);
 >   ALTER TABLE public.product_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    20396    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    20397    shop id    DEFAULT     b   ALTER TABLE ONLY public.shop ALTER COLUMN id SET DEFAULT nextval('public.shop_id_seq'::regclass);
 6   ALTER TABLE public.shop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    20398    sub_category id    DEFAULT     r   ALTER TABLE ONLY public.sub_category ALTER COLUMN id SET DEFAULT nextval('public.sub_category_id_seq'::regclass);
 >   ALTER TABLE public.sub_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    20399    tag id    DEFAULT     `   ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20400    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    20524    votes id    DEFAULT     d   ALTER TABLE ONLY public.votes ALTER COLUMN id SET DEFAULT nextval('public.votes_id_seq'::regclass);
 7   ALTER TABLE public.votes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            �          0    20328    category 
   TABLE DATA           l   COPY public.category (id, created_at, updated_at, created_by, updated_by, enable, name, search) FROM stdin;
    public          postgres    false    210   D�       �          0    20334    comment 
   TABLE DATA           [   COPY public.comment (id, created_at, updated_at, comment, product_id, user_id) FROM stdin;
    public          postgres    false    212   e�       �          0    20338    country 
   TABLE DATA           c   COPY public.country (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    214   ؞       �          0    20342    image 
   TABLE DATA           �   COPY public.image (id, created_at, updated_at, created_by, updated_by, priority, url_medium, url_small, product_id, shop_id) FROM stdin;
    public          postgres    false    216   b�       �          0    20512    movies 
   TABLE DATA           s   COPY public.movies (id, created_at, updated_at, created_by, updated_by, description, movie_url, title) FROM stdin;
    public          postgres    false    235   ��       �          0    20348 
   prefecture 
   TABLE DATA           F   COPY public.prefecture (id, created_at, updated_at, name) FROM stdin;
    public          postgres    false    218   ϥ       �          0    20352    product 
   TABLE DATA           �   COPY public.product (id, created_at, updated_at, created_by, updated_by, description, description_sort, enable, hot, name, rating, tiktok, country_id, shop_id, sub_category_id, mode, until, price, sale_price, sale, slug, product_mode_id) FROM stdin;
    public          postgres    false    220   ��       �          0    20546    product_mode 
   TABLE DATA           `   COPY public.product_mode (id, name, created_at, updated_at, created_by, updated_by) FROM stdin;
    public          postgres    false    239   R�       �          0    20358    product_tags 
   TABLE DATA           <   COPY public.product_tags (products_id, tags_id) FROM stdin;
    public          postgres    false    222   ��       �          0    20361    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    223   ��       �          0    20365    shop 
   TABLE DATA           �   COPY public.shop (id, created_at, updated_at, created_by, updated_by, active, address, email, name, number, user_id, telegram_group, telegram_id) FROM stdin;
    public          postgres    false    225   1�       �          0    20371    sub_category 
   TABLE DATA           {   COPY public.sub_category (id, created_at, updated_at, created_by, updated_by, enable, name, category_id, slug) FROM stdin;
    public          postgres    false    227   ��       �          0    20377    tag 
   TABLE DATA           _   COPY public.tag (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    229   ��       �          0    20381 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    231   ��       �          0    20384    users 
   TABLE DATA              COPY public.users (id, created_at, updated_at, address, avatar, birthday, email, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled, mobile, password, prefecture_id, create_expiry, create_token, reset_expiry, reset_token, username, shop_id) FROM stdin;
    public          postgres    false    232   ��       �          0    20521    votes 
   TABLE DATA           Z   COPY public.votes (id, created_at, updated_at, voted_name, movie_id, user_id) FROM stdin;
    public          postgres    false    237   ��       �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 53, true);
          public          postgres    false    211            �           0    0    comment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comment_id_seq', 1, false);
          public          postgres    false    213            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 99, true);
          public          postgres    false    215            �           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 1197, true);
          public          postgres    false    209            �           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 76, true);
          public          postgres    false    217            �           0    0    movies_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.movies_id_seq', 1, false);
          public          postgres    false    234            �           0    0    prefecture_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prefecture_id_seq', 63, true);
          public          postgres    false    219            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 15, true);
          public          postgres    false    221            �           0    0    product_mode_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_mode_id_seq', 1, false);
          public          postgres    false    238            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
          public          postgres    false    224            �           0    0    shop_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.shop_id_seq', 1, true);
          public          postgres    false    226            �           0    0    sub_category_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_category_id_seq', 1421, true);
          public          postgres    false    228            �           0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
          public          postgres    false    230            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    233            �           0    0    votes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.votes_id_seq', 1, false);
          public          postgres    false    236            �           2606    20403 !   users UK6j5t70rd2eub907qysjvvd76n 
   CONSTRAINT     _   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n" UNIQUE (email);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n";
       public            postgres    false    232            �           2606    20528 !   votes UKa0fhl991hi2ju9m8458oer09t 
   CONSTRAINT     k   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "UKa0fhl991hi2ju9m8458oer09t" UNIQUE (movie_id, user_id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "UKa0fhl991hi2ju9m8458oer09t";
       public            postgres    false    237    237            �           2606    20405    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    210            �           2606    20407    comment comment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_pkey;
       public            postgres    false    212            �           2606    20409    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    214            �           2606    20411    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    216            �           2606    20519    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    235            �           2606    20413    prefecture prefecture_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.prefecture
    ADD CONSTRAINT prefecture_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.prefecture DROP CONSTRAINT prefecture_pkey;
       public            postgres    false    218            �           2606    20551    product_mode product_mode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_mode
    ADD CONSTRAINT product_mode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_mode DROP CONSTRAINT product_mode_pkey;
       public            postgres    false    239            �           2606    20415    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    220            �           2606    20417    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    223            �           2606    20419    shop shop_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.shop DROP CONSTRAINT shop_pkey;
       public            postgres    false    225            �           2606    20421    sub_category sub_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT sub_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sub_category DROP CONSTRAINT sub_category_pkey;
       public            postgres    false    227            �           2606    20423    tag tag_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    229            �           2606    20425 "   roles uk_nb4h0p6txrmfc0xbrd1kglp9t 
   CONSTRAINT     ]   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t UNIQUE (name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t;
       public            postgres    false    223            �           2606    20427    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    231    231            �           2606    20429    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    232            �           2606    20526    votes votes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.votes DROP CONSTRAINT votes_pkey;
       public            postgres    false    237            �           2606    20430     shop FK36nknc2cfkui55nrprhr55d5v    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v" FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.shop DROP CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v";
       public          postgres    false    232    3545    225            �           2606    20435 (   product_tags FK4n67l5ht7b0whs4sragr8axph    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph" FOREIGN KEY (products_id) REFERENCES public.product(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph";
       public          postgres    false    222    220    3529            �           2606    20440 !   users FK4qu2c5f8i7hc6vf050wb0k948    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948";
       public          postgres    false    225    232    3535            �           2606    20445 #   product FK6cighpvj59jngocmr7ipusavu    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK6cighpvj59jngocmr7ipusavu" FOREIGN KEY (sub_category_id) REFERENCES public.sub_category(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK6cighpvj59jngocmr7ipusavu";
       public          postgres    false    227    220    3537            �           2606    20450 &   user_roles FK7ov27fyo7ebsvada1ej7qkphl    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl" FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl";
       public          postgres    false    231    232    3545            �           2606    20529 !   votes FK80d0fbh7f3r561pebrwtbbs3l    FK CONSTRAINT     �   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "FK80d0fbh7f3r561pebrwtbbs3l" FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "FK80d0fbh7f3r561pebrwtbbs3l";
       public          postgres    false    237    3547    235            �           2606    20455 #   product FKaqw8hq5gyp5v7513xkvdac0lh    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh" FOREIGN KEY (country_id) REFERENCES public.country(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh";
       public          postgres    false    3523    214    220            �           2606    20460 !   image FKd0g1tmjbdkqd13kkeo6d3tcep    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep";
       public          postgres    false    225    3535    216            �           2606    20465 &   user_roles FKej3jidxlte0r8flpavhiso3g6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6" FOREIGN KEY (role_id) REFERENCES public.roles(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6";
       public          postgres    false    3531    231    223            �           2606    20552 #   product FKekb9b70g4ehsbpndahmmj8tml    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKekb9b70g4ehsbpndahmmj8tml" FOREIGN KEY (product_mode_id) REFERENCES public.product_mode(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKekb9b70g4ehsbpndahmmj8tml";
       public          postgres    false    220    239    3553            �           2606    20534 !   votes FKepnw5rdvj7jyavtpfiru6i662    FK CONSTRAINT     �   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "FKepnw5rdvj7jyavtpfiru6i662" FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "FKepnw5rdvj7jyavtpfiru6i662";
       public          postgres    false    237    3545    232            �           2606    20470 #   product FKett17tt7p4pbuitp0if89kdt5    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5";
       public          postgres    false    225    3535    220            �           2606    20475 !   image FKf34pcxeeyw3it5v2rthteef7v    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v";
       public          postgres    false    220    216    3529            �           2606    20480 !   users FKhf381xrw2kuxkx75jyl8pewp4    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4" FOREIGN KEY (prefecture_id) REFERENCES public.prefecture(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4";
       public          postgres    false    232    3527    218            �           2606    20485 #   comment FKkwd7w0meugs0nu95w48hqhw2w    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w" FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w";
       public          postgres    false    232    212    3545            �           2606    20490 #   comment FKlo59icyee0u6jucfb68x22o3v    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v";
       public          postgres    false    220    3529    212            �           2606    20495 (   product_tags FKmb0hq4cm6sa2ji8a1ymqfyax4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4" FOREIGN KEY (tags_id) REFERENCES public.tag(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4";
       public          postgres    false    3539    229    222            �           2606    20500 (   sub_category FKshci6pjlkmq0u7m9m1arwqbpb    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb" FOREIGN KEY (category_id) REFERENCES public.category(id);
 T   ALTER TABLE ONLY public.sub_category DROP CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb";
       public          postgres    false    210    3519    227            �     x�3�4202�54�52Q04�2��21�314766�'e�%�!w��T)J�KW�{�{=gx~nj��sN~IFj�nrb	�1E6�>ܵSAM���JN���b]�̔b]�ĤL����p��d�#��p:�&��T�M5����+��3����鑚�S�6՜"S�3/�Tp9�� 9��3�!aB����\����pw{�B���8�xl�[bqFf~��crrjqq~,,(KA�we*�^��'��t�ц���M���͌-��%B
[�L���EK�1z\\\ ��      �   c   x�3�4202�54�52Q04�2��26�3273�0�'���P����P�_�����99��(50%1/]!=3Q!%�(�L��k�eL����p���qqq ��4�      �   z   x�3�4202�54�5�T04�2��22�3�0645�'e�%�
a�w��(�%�rQf�_��]kK��Z�ǅWa�</�S,}�{b2�	EF��p��d.S�q���2��߇�wr��qqq [�^t      �   @  x����R�J���)|����� 	�a��:%¾K��?=gH����]���{��	��#�B��H$l���?���h���Y�ߢ_��z��%S0�{��?��ߙmF���0Hj�f�����������Fm�  %a����C�Tf߀�^kϕ5��a(�]U�.�T�(�FfX�S
J���v�|o?��aX��T��4.'�Sf���]��\�5��o�Z5V}h0��.��G�%�Eȑ�iK̬��r4�2�2����8)�U���(~�4�T�Ef�:���Y�L+��_�f	Cm�I��Y���ᴏ��:�h��f�]B����[#3��̻�V���ܚ�G����-�`ܮ��z�#3�X<OA���`28μC���q�w&�%f�K��õh�V�DC�yy�LYW�E��X��ԧ^>2�<q.������)Z�0R�e�G"-����C)ǒX#���ɩ�`d��6|��������]O]L+N`z�J�%0�P�g3f������Qp�vr0����̒B��� �HV`^趣�D�刋�" �F��ox5h������-3�c�.'�+b.2;�h�y�`v�>X��1�_�Ť�U�s	2'������W����y��>m�3�e.��:0�gH>2;����NN���6'����s�qY�C�5�#�Ĭ����(n�͊�8�<wG��_���!�̭�Vdv��&[�͎� �N{�q\�.��Ci�̎U�'���e7+�ayK)�8�V���պ�BX#��S�&;�v6;6�dۚ�3�Ss :���ȲZ��Ӱ�0;jK�r,�j�P��:_���|dv��Go#&fG�1�8�Z��&M/)2���oEfG��`$���s�T>ʌ#�^X���0�4w�݊,�Ӥv���Q�U�$�o3�K��ADHhK̊��o��bV$��f�fF��Zj�&�ARr��ّ�[� �͎ʪ3�l�q�"��1�!���#��7����5��K��j�!�b¥��J �����>�[˸�� i�e�c@+�T�	ȥ�U���ƕQq�?��-����׌j�0H�*����"*�ô�̊wZ=�/e�P��na@��GfG=:m�]odv�]�0_�^�q��$]
��=���7��8Yt�/��>�*F]�΀�f��>á��E�~$���(�V����P�|d�{�:�m#��[/���u�����K�O��Ȥ`H�|df,�p>���"6���i��jQ誷+� ��|d���ކѳ�1�r�|��;P�B�H"%��+�b؍7aײ���KIk.��>*�t�T�R�p�=23v�|F'˦�x0XF��Z-�n|�s���e���~�V�Lѓ�
q'^|�`)^�"�A�kdf��lW���T9/�	����ȬJxAz�!�`�avPnD���{!b[^�hｖ�`��"�|�?��	����~���˳��5���m}z���X��o����W�-�O�_o�_��g)�n� P���#3c[}֗�bf�4a�ʅ����ا��Q���Y�ڻ]Gf��>f�-�!������>���      �      x������ � �      �   �  x�}�MS�8�ϫ_�۞ƥO[���LA�e�j���$"va,�P��ӑ�sy1קӖ����ɥ�"��V"�*�WUd&�"�K�{lw��z�c�.��j	�;����*�V�K��w�j���<�вN���w�P?��*�3�-s�U���I.^��.�Om���%��k��8�%ßs�,q�&��$�ulC�WM�Y���'���m���}xل�9`j3^P ���﫻��Wa<���ZX��Ԍ���m��q�������K��sߑ��'�
$`�i.��7��Y�ZR�ҁi!��:�C7��@�چmI��0c�THW3��\���m��@R�T9�Ҳ�nbh�(HL�Y�������Ǧ	�&�q�S�qB����1����mW���.��]�6잆�P\&��EkF�a3�N"��L�\��]W��*��2<��(U��o��B�(.��)X�3������-�t�ŌR��g���I�Y��R�Pl3�?^du߇w��t+�
�ֲ�g�PjW߆���HW.��)جftlVg$ޞ"�dK���O�8���%)f�$�sT���#I���n7:�՜�+79��	�8��7MjO
(�LE�4���l�K��S@�d')�|�:^�c�*R��*�j�9�ۡ�^�U��Hv:WV���P��]�l�֧�*�]27&/�.�P�&�0��X��JEt�h�Y��<��p�Y|�	��=����m�,�����gr0���Fmd	�3���39A��V�&uB)4��f�$��|mV;t�]������*��HE&]A;�:����}�3��+2�
��:�����0rqM�#Gٟ��j�Q&����~B7U[���o�"�� ���@c�Rrn�aꚡ%�L�`B�f{^�U�4Ρu�	��Lh��my��m�I��!��Lma5�htv_��
L�d�LJm`Üѣ�5��H�2S4�,v?�_���.4]Y���݂�5w����:���>��N:�Bi�/��3��]�9n�3#{M�:R��
z���5�K
H[mc�!��%i�茾�m�ڛA�%3���'FtC35!�� ���Gc$�x���3H���Wj��fj���ABRiu��bF�8T��xv�H�*��lB����ߪI��Ti����h�k�w1���j��ѵ��x�al�r�2SP�����X4�o����1�k{�      �      x��\�oǕ�L�%x�H��pR<;+��b�I�Ȃ\�ݜn��k����6� ��� æ�W�
vl/��a}���K��^U�13�| �(Qdwիw����\���6;��":����Zo��k/�Ꞣ[�f��l�D{u��[��Z������\_�&��ϟ�&������sDrx�@��x?Ϗ��Q�)�?���~<��Dg�ݎBጿ���û"~�6n��#�>�w|��Z��q9ȑpx�x�)��>�:�Ç�c,|�q.�Ã}�9�����Х�7"4���ѝG��=���AǏ�$�Ɵ���X$�YKl`o,���~$2l�Ã�eX%c�!2�����X�Xd

���W�L�Z� �w�z�A�?�K%�b��L��Cw�y�]qQ�#qEE�����q���m��+�3��ݿq�ϲ����0Qn�d-?�d8����m���^^Y��q��f�˦�{qs[�&�ʚ}7��7�+�����Hoq���*=g�T���.��{N�� ��뵆�थ�gD�%65� ���"~��+�翏��ϓ�� B��c����e"K��j�?����hĐ�L`�o��{�*�����t�w�x=����q��\/l����9>2�_�$�%Y�#��O"�&�px�n�&�j��	�?B��
�[&N,v�����Rq:�����8r�7y���/�A�5Ćr�<끤U)�Ls�	b�y'��Ã?0�n����.�-��3��f�ZՇ.m96�T7!E�ZZ[S�k*��m�f*�Z��Z;�º���F�y�Bg!��@bU��2Z�#�8�r1�*(ro�5����F�ukX��nK<�=��J��v$b��@�p&˙���>-z ��W,�
W�2�`9���������ъ~[�����=0���9����w1��"T젠I�h�F���΂$� rρfC���r����@�诎�F��	ƄM��iN�=���Ʌ�! =އ��U�+3B�@d1���~�T����`�fos�ɜ���Zg��i6���t�N�懘��`�oE����A��+�
1R?��_��P�@Æ`*�a�Ye.��qtd��4�̍���YQ� +2��5�1�d�;������O$Ev��x
{�����'�>�V�Ħ"�%8`�>:��M�"��~\�_�cd3���2���}���`�A�q���&��l�Q��� &���Ĕ�Ⱥ�;̯w�I�#������ʰ7���>M֘c8�b�9�Z���������$F��ᕡ��Zi'�mZ(�^K\����$���B��״�}�����}G�6-moZd:�"X-�����D�������QZH����HK#:����vkyI�'�9Stp��
΍?�
�V����}��������'4���_I���X�@�� �
�.C���4v V(͆��\�H��߰fV�i���f��7F,1Z@PH7�&[��oB��#�$eyo6jn-�M�B���� ��d��^�������춤��b�4��z���O_���@Q����k�[���;�������C�ﰶO��s[�fT���)�|`B���9f��n���z�9�������T���Vb	�;���x�3�}�<X;e�-���)M��S����%R֣ig
��I*?��� 8V�S�hKӕOf31�"������\B�t; ��<��mY��,��H�$y���4����ع�U�N+&�+����C���I�c?��x-�E��EJ��j`c��W|(2��	�L8/$�r��s��g>c��GLy�,r�+�sP㈄!�J�Q��F>AG���
oR#Z���{B!���B��;7؀�/�P�^�2%��̨�y]��iBP/�w4�>b,�f��:9�*#��Q.�<kY��2&�eH�����~��/D�>�����R��E��($Eg�-t�T�r�sX����7�?2w[sߧ��涾���\lgj{����.���\�fwQt�:�k��Vw�Toeyn�:���n:�9v�x*��n�}uڭ���r���[�J]	 ��KwN��7�����-|7�ڼj�~�¿9Bw	W_��X��;X�_�ǖ'�_\]�,�WV;�I���5gΣ�S�j�p�aU���.�-��{"�챽�h��uq���u���e���3b=�7/1.����2���l�j7�� ���v���l׏_��Ɔ
��[N��C�X�����`5\�je~���T�0V���<q8��'`�B���e���wC�����v<1L�4�z2��qC�4t�Y���S�.�Uq&��orش��E�
)�P�nӋe?�܆�T?�f�I�\mm�m5)"ˁ'��Pf�6��x��2��Fs�v��s���+��Jz��VI��h�TE^�FŌc�mez͆�1�;I0�ͭo���W� p�J�;��,��s.EC�d �m�$�9�ؕ2� A�a�LRŐ.��
�4�uP̛�DE�^*N$��y���R�5�=!G�1�i��۞�d���r�cDR���H\��y�aA4��@s=	v4��b��,|"�>�R��g ���Mqn��p��G^�A�iAkCo&(/���,��*� v=����C��=iD
�Zn�$�2��fk�*f� Pgb�!(�IX���B�"��$�Sq�ʏŅ$�{��K&�Z���H�o\w�:7,��	�_Y&�K�ЂA,J��XA�S���l:����`^$�=RIoe�pa�Ҕ��Ň!�K�D�I�Ȟ�4���w��*](�^:��a��t `7���G�����C ��J�^*�MȆ�������C Z��p`���8��Ha��>a��H�E
��a�D�<\GN2j�2�,q��&�-��k��BU��(������Nk�@8�r�=��m��K�0Kk�_Mn7=ǟ�fP&R�N��-���Z;[8Pu˃�%�d�.�$�U\n��n ��Yx��8`/�+�p���WGZ/w=����(�b��k�� �-�6e�gWŖZq�Y%<���0/vM�p}s����3Je���5/]}_�@�2�I8u�K� �bQ�VJ;=�U�|i�o �����i�`1|� Z�E���"�2�'�¯���߮�sv�W�ڕ#��7�yȈx`�ɈT����t�f^d���m�X_��~q�5����V�*N���)��u��^����KF���jt�����C�"����"��Ė&�u�`���y���L.�,�㫪{	f��d��*\��W�lj�í�����B:���c,�y�z@��b' ������O^��D��=p����k�����$F"��Iܬ��CsLF�`<;A�b9��4xg�n6ˍ�������箾�l����/�� ��i�BnN�$� �F[�\;J�W!t�tp�!�,'��$)��Q`6+l"�u���;BX�B&6��3nA�A�x����+���r����}�fo@�4^������"�������EkZu�����~���mT��u�.O�u��HL���u��t��t���|�-_�o��Mbx:��(�tKioM`*���n��ګ�Ș3>��,	�y��)���#�
y.����-��d7�j�X��yb3�JGz��R��������I�W�ȧ������rGq��%��e�t1�<2���)�k�7ۀ6<����e@tsd��tBI�ex�P���[�%��4�2X�9}�<b�v�G�S����}L�s���Dr���դ����`Cu|�j�g�A�U g=�Z8� �1�`��t@p��"�[���0T#�i��>�[���aݖD>�`�e��84��6�ܯ�W�0��^F�9:�D1V���1�B�v�e2j�W|/��K�hh2��8ޓ)�yA��"zz�p5�FN���5�'�-�����ȬޭT�-�,�8�]�&8����Y���-�M(1o�9֘�����?�$�tW�m��ȼV�� s�r�B�O�!-᤮a֊�D4�C]�+]��OI8 �  #�Ey t@dg���XK�ۓ���zVlͨC�MHh�e�W���g�9A�=�����k�X���iC1b&:���1X㣚M�4�l<+C$�).8rؔ���Ư6n�s_��k1��gKY~=�В��U�yk�5>(�'5����&M���zԽ� �H��/�׭�M�`�\��G(_w��v+��E'P��s����*RJ	���ʲ:��V_�5bٴk�8^���ʥM�����dCme�H>P�{��_y�?>?o]_X��&�'69^P��8y�����d셐��i� �b����j=r��!�0�]r�h��aEfFU�s�Z�T�e]R�
�He�2u��A���9���
9�1?IAt�%I8n��V�Xer���ߢ,�����C�(_[X\��O�,�;�&EGJ?�A�,�/]��ڄ:k_?�ٶ)0�-�E�#�T���6,kR��̓ﰝʗ�-z�1�O; p%��T��hA�s�z����]�/{���lt++�?*5o��DI&o�=�N����,��%L�h��-�g�^��]�.+I2�\����t��k&���#vmM��3eo��\!�#�G��k$s\.���.���[+��i"C�,Y5<WG-�ÀOU���=�
�p�0]�T���a�'+�*k��_�~^|����l��(|��;��}���>}e��۪�[J�Kqf���B/%���;��.�������oS���*�z��&ιI�:��\����;���Z{����x�T���g���~��:	����k�VV�����&����Uyn����<�s$O _"�˽��R����<Wt���lGo�ٽ���->|Q��/��l������Z��/�!\�-�ی֝N��3�_�#��Nd~�;Ъ������:����vǕ�]j��Z������:��i���Zk2��ɘZ˨��D�m����f�!~~=�=�Bj3�}u�a^�S�ˉ�ǆ���,�;�k�����'�7o�oB��1��N���8,����+_����lл�&vUN�]s����rɌ crʾ_�>���'7P{���-��SC�D�;�O�7Q�s�d���Pq�)x�v�ĵ�7n<8��2��7AG�e���IlM'�C{��]��d�<V�9U��[���%i՛�]�!���OEo�yG������&!_AzF��M,K2=i�� �T�8l��*�0�V�/��D��O:$�(];��ъ`��3����͛�W�f�l����Y�"�)��:%�މ,ɹq'e9�U2���cPOu�]��RM����;���+ӑe���(�4��;����*�n#�����+�Q�7�o`�|ོ!F��Ыf����� �ܼ:CVN=6�1~b�%ֶ6p�w�P�G޺I0��X������s��f?z;�v�Kmw��Gw�M�B;C�*��gU�����S�t������}|`���H��Ef��t+���I5%#NҜ7dk��kI۾fx/0�V��Ƨ����t)xS�<>N7����Y:�/�9>��Z��	�xe�a��Ѡ�DP�3�J� 7f�,�Ƭ�3����w��FhJƢ��r7�KM�DIŌ4)Yof;ȡ���׍������QK��*Qt��K�g��{�X]&k=�"��h��6����E����;A�~���P���0p�L�vl��:�`��2\�4��چ��6v�D�������r���ĝ;$=;Q�W(t�-�PΚ�ku֚��@���i�"9��fy�o� �df��t����ݏ{[�Җ�x��U��ژ��_�7zJ75�'�����8b���&�<Ӎ�qh�����q=Wi���-�:�T��ZnMg���R�sj=�����lP�)����Z�;ǂ���!1͐E7j�&i?!ʷR�]�hQ���9D|4�As;q�F����"�3˦ˏ?����f�"&1ZK�z쯴W�h�`)��H�(������p�v����&�E:4�Ih�A�2�2
[������Ӯ��nK"���(��b	�t�#�=��p,�/�*��%(?����V�R�-Q��h�3���ұ�o�#�J�J��B)�=u�{�����x���X&�VtVۃ�y�����k/���W	�4w랛��2��Ð��C�W>�ev:�G��L��ƌ��B�s-�ͩ�g��D��-��z,��ױ����ij)�I!�Ȋ1J�C6����Ĕf�⣚u�i��b��Tw�,���;Ԥ�`�Zj��Z35����)�����i���5}ɽI�re1�������T��{Hm��I�Ŷ%�:�%�?d��ÔPzܐg����ǯ�yL��4�MW�Mb��C�lb�s�Y����--=���u|Ze�K��$Aj�WLr��:�H&f��z*���i����60w�(u/Y2kp��d��6
~���$_�M���xvDj@!�2P��n'�0��/O��>��Ee.rĦ����I��ځ�K!<=�]/j���6��4�+���G�i�q�G��C҄��L�v��I�7��|�����N]r���
n#U�bh���P��	�d���'��/̻���[?v�Ѯ6��N�TQ9a��|�s��d���������l�yF�	�N� ���&����n��G�*G�dVO���0y�f�mƜ�(
IU��ɥz���& �y���p<u	Y<�謬���;�2�k�����*�Ta�>�����{֙T��͞ꎝ��gXe�DT8;�3ImL�ΫC�!����98ѕ`2F]L�y�(��V8bxA=Z�'�8�/�w�|T�Tf���$�O,�
Rm��u�`v�i������䏾(��J-G�CN�)IM���D(�y�`u�jj�J��GLmq�9�;2�U40�\�)E*�Nz�?�!�璙�	�ݸN{�~�zPD���CA�Q��?�?��ʚ, ��
���ɲ��RF�@8�)q�t���^�t�2��Y�rfi��pnn�V��*�X�����?sm���KgO_WN�x�⹦��G��sf~f�!����zSҹ����]Ⱥ�鲎N����ӏ��c��O�V�bTIx&��"�b�t�)�`H��->p�V6̧CD�c��aR~�Q~��*�PZ@�hR��y��d�-#.��Q��<���J��q�N]�G~��of^.d����	\z�3r��d�� ͊>�j>���X��;�P��~'qs���y�o_���3�nP�������ռ��ϗzG��u�E*Q��p�MZ�gF�#��9�_��9(�fA�r��*��.��A&��e	
(@���IL��J�g�70늫�D=}m�u-{�_�a�02R��Qs�*�g�s�Y�^�桜����lƮ���G�8���V0}�e*@~�䩽� BOn�?(��A��~�F=�'�J,�*OR7cH�YFD��y	��U}e��z�Q������0#=�Z�?�"E�}�1FZ3F�VJ�c�������s�'2���8��y�ٽ*���e[)?�(�~F��A �aڔ������t��C�g�J;:M�&7��ٸ��F���L�d����&�P�c��� ]y`?��>�N>*���b�T��E�s��< �9�W�o�;*�a����A���ڏ��k�̵K�r难�����K�'���fvK�%���%����H��:��;+�d°q�-��ئ�)�ݕ��W|TP��������^��(��
�0��y�oGz��l��E��I�&
����s��^m;v�*�      �   n   x�3�N�IU)��KW�KO���#.#�l��]�K�PRTZ�pwc�2c�2��TTqΐ����<����\)S���BIf�Bvfj�B^Ffj)�L,AQ���� �L3G      �      x������ � �      �   4   x�3���q�wt����2�p�B�\���!��G77.'4(���� �(;      �   |   x�}�1�0��+�[wg�T�KEE�D� ّ�i(�|\���V��!`d6D��&�q�0Zύ�����Y��R����]zHy�}�
��^i���#��m���u�QD\K�a 4�ZV�UJ�Ϡ+      �   �
  x��ZM���>k~Ŝ�K����,m֛xW�Dʮ�����,E��XW��>E��A`؍a�ְ,�ȁ�����3�V���&�ȁ-�B�<3���EMoimMSTU����G�}�Pm]׮�I����gy9{�O��~Kk�(�R�%�MUm릥;�SC�!���C|T�LС�d!�\ǚ��$L�S�)D��nI!}�[9�g��e����=�$��z�>�W������r��\�^���-��%���0!G4P>NSf>	V�T�X^�Ȑ3�:��C<*g?Mj\�(���zZ�@��M�y��9>����C?)g��d4	�l��r]��Q�S!UG������'8-޺8-�.>N�W�lSd�K*$b#c�X�I�?�X�	��kݳ����V�yJ7M�^3MC��nfḜ��L?OR�LE�:QG
�V���8/;ˀ<��� ou�0���o\Xn9;�\ފ����:r[��'���������!'������;؉��C�j}��͔�iL� ����a..lu�6��Fp	A4��<�:
"��:�GQ<{;{]���3�|�QdʦOb���'��N�4t�p��iK�؆�/��pPO�L@b ҥ$#\m���2u]��_��=��	����R�|9r�k��,]&���dL!8愾����V?)C�&$�*���w����� �W�Zv�E�T����9r��_O����#����`WBd���T!���~��r���nmD�R]E�\���z$·��lW�)�X6r�D���{ m_���ј��y�D��+���}����4^l'�p�����(Sp�#�bU�s�Ju�0�"ZnQ�S�7L����K�N�����V���1���ٖ��� MN�z�Q�x��Y\u�t�X���B�/1��<d[�B�dw�Ƌ	�)p�y�z����f��T:@EN�����ކ�=*�;�1��� �jCz@*k����F\�шqRm�	��,'>�W��G��,�WE���]p�>���[����Q��w!M:U��دj���M�%jirZ�0 ���)+�A$yav��49���}�A���~V��8�}p���L���G�@H�j#]�j+��`�y@i̫�=�%�D�hH�3��Q`�a`�|�+L9n*7k������#S�UX>} �a:Y�Vy43��(�Tp��: �wv��0�
+z�B�t^�,��>gI*�"H1tH<@�g¿����=�F�L����5��-f�P>B���>(=s&�g4zK��M��H�1��	���@��?&̕�F�\�������2����ա_�	�GX�����T�,R��������쀭�6 �H�1�K�d��������&mD��*��P��u՞:h@t`�2�`��%�tx���dB�#l��6�)�x�G�w3�^m���L9�@RLxe����%�!���	W�]?8�G(�(̼T��F�㫄LGsd�eBm��xCh�i+J&y@�v��UVz\.�{��a�h}�^�SL}ya S.��Vk&>�|L��	K�"����B�m !��	�GbLYr��6+DauS��DGT�c#k�𢱞A�x��O��rY�u؏�
!�씳W�b�݄��]]�1<<K.�W�.OZ�֭��b�W���������]eq��b8H9e�,���߫����=�۰}pzr�s�xzl��*c�7�Y�A�����'8���	���p���o$�%���<UviF��hȒnm�:qp����bS鴑%'5=H��`�8E���Q�Yf�<�=T�좗�#��BE��kV�ԸIkP?�k��3��������łF��E#X� [�h��1�+�xӈ윂l�3�Bl����0w�!�c�rU�rf[�b��f��M��Ж��z���Zvj�s9F��pr[;vu�b�>0��z��:����X���{�	dâ��?���p��C2�c�7���h�������:rq���J��0 C������B֫6[[t�~H���F9��=���=���@d����&�#'f���e����x�?���.X�1��q�	�-�NSF��a���������A\c�?�˙8�����9�}�2�h*A�r_�}c�xh_L�'4�Nc#�-!��=�8�.L$����zI���Y�xQ�h�ܬg�!ٮ�ˍn�6^N�H�4���hH.`^������XlQ+d�
49���dki�hƦe/'�l��G�zm��Ԅ�An��=����Ii���)K
p����<�4J�WmŪߺ�;���z���=�����ū���E��_]\ut��w$7�ccq]�)���{e��3"`(���_4eG|���9��$F�4��=^Cr������������b�%�U�t�5�U�p�EoX�%����P�|v��fg�i���Iβ%=��aQ�=X�����%���.³�D�����r<h�x�l{mo���w����uL?���sBp��Y>�UE��྾���8�ª?����绮��d²̯%�u�H6��*r]�Q�0�^�Q�xW�zU �'�S��Ma�vUn�Ru�vyǩ��]�em�ʍ ����Z�]�o��L�ɍ��-����j,,�˭�r��L�]F��j4.c�-j�g쭌-r?�]!���!j�*њ��$���n"������      �      x������ � �      �      x�3�4�2�4�2c#�=... ��      �   �   x����
�0���Sx�qw��ēFT�VP����`+��֧�AR� �s�]�����>��n��$(e�tr���o/�sEV]2W���zi�G�=���0Z�@!H��<9��A{���9��A�Z�iYu4^�c��%��O��Iz������C������z785Tl(�|CT e���c|D3��9���w#      �      x������ � �     