PGDMP         3        
         {            shop    13.4    13.4 �    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    97164    shop    DATABASE     O   CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE shop;
                postgres    false            �            1259    124291    category    TABLE     F  CREATE TABLE public.category (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255),
    search character varying(255),
    image_url character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    124297    category_id_seq    SEQUENCE     x   CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    202            x           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    203            �            1259    124299    comment    TABLE     �   CREATE TABLE public.comment (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    comment character varying(255),
    product_id bigint,
    user_id bigint
);
    DROP TABLE public.comment;
       public         heap    postgres    false            �            1259    124302    comment_id_seq    SEQUENCE     w   CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.comment_id_seq;
       public          postgres    false    204            y           0    0    comment_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.comment_id_seq OWNED BY public.comment.id;
          public          postgres    false    205            �            1259    124304    country    TABLE     �   CREATE TABLE public.country (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255)
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    124307    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    206            z           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    207            �            1259    97194    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    124309    image    TABLE     S  CREATE TABLE public.image (
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
       public         heap    postgres    false            �            1259    124315    image_id_seq    SEQUENCE     u   CREATE SEQUENCE public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    208            {           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    209            �            1259    124317    movies    TABLE     -  CREATE TABLE public.movies (
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
       public         heap    postgres    false            �            1259    124323    movies_id_seq    SEQUENCE     v   CREATE SEQUENCE public.movies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    210            |           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    211            �            1259    124325 
   prefecture    TABLE     �   CREATE TABLE public.prefecture (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying(255)
);
    DROP TABLE public.prefecture;
       public         heap    postgres    false            �            1259    124328    prefecture_id_seq    SEQUENCE     z   CREATE SEQUENCE public.prefecture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prefecture_id_seq;
       public          postgres    false    212            }           0    0    prefecture_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prefecture_id_seq OWNED BY public.prefecture.id;
          public          postgres    false    213            �            1259    124330    price    TABLE     �  CREATE TABLE public.price (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    finish_at timestamp without time zone,
    name character varying(255),
    price bigint NOT NULL,
    sale_price bigint NOT NULL,
    start_at timestamp without time zone,
    product_id bigint,
    sale boolean
);
    DROP TABLE public.price;
       public         heap    postgres    false            �            1259    124333    price_id_seq    SEQUENCE     u   CREATE SEQUENCE public.price_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.price_id_seq;
       public          postgres    false    214            ~           0    0    price_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.price_id_seq OWNED BY public.price.id;
          public          postgres    false    215            �            1259    99043    product_id_seq    SEQUENCE     w   CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false            �            1259    124335    product    TABLE     �  CREATE TABLE public.product (
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
       public         heap    postgres    false    201            �            1259    124342    product_mode    TABLE     �   CREATE TABLE public.product_mode (
    id bigint NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint
);
     DROP TABLE public.product_mode;
       public         heap    postgres    false            �            1259    124345    product_mode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_mode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_mode_id_seq;
       public          postgres    false    217                       0    0    product_mode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_mode_id_seq OWNED BY public.product_mode.id;
          public          postgres    false    218            �            1259    124347    product_tags    TABLE     c   CREATE TABLE public.product_tags (
    products_id bigint NOT NULL,
    tags_id bigint NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false            �            1259    124350    roles    TABLE     V   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(60)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    124353    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    220            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    221            �            1259    124355    shop    TABLE     �  CREATE TABLE public.shop (
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
       public         heap    postgres    false            �            1259    124361    shop_id_seq    SEQUENCE     t   CREATE SEQUENCE public.shop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.shop_id_seq;
       public          postgres    false    222            �           0    0    shop_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.shop_id_seq OWNED BY public.shop.id;
          public          postgres    false    223            �            1259    124363    sub_category    TABLE     C  CREATE TABLE public.sub_category (
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
       public         heap    postgres    false            �            1259    124369    sub_category_id_seq    SEQUENCE     |   CREATE SEQUENCE public.sub_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sub_category_id_seq;
       public          postgres    false    224            �           0    0    sub_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sub_category_id_seq OWNED BY public.sub_category.id;
          public          postgres    false    225            �            1259    124371    tag    TABLE     �   CREATE TABLE public.tag (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by bigint,
    updated_by bigint,
    enable boolean NOT NULL,
    name character varying(255)
);
    DROP TABLE public.tag;
       public         heap    postgres    false            �            1259    124374 
   tag_id_seq    SEQUENCE     s   CREATE SEQUENCE public.tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.tag_id_seq;
       public          postgres    false    226            �           0    0 
   tag_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;
          public          postgres    false    227            �            1259    124376 
   user_roles    TABLE     ]   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    124379    users    TABLE       CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    124385    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    229            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    230            �            1259    124387    votes    TABLE     �   CREATE TABLE public.votes (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    voted_name character varying(60),
    movie_id bigint NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.votes;
       public         heap    postgres    false            �            1259    124390    votes_id_seq    SEQUENCE     u   CREATE SEQUENCE public.votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.votes_id_seq;
       public          postgres    false    231            �           0    0    votes_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.votes_id_seq OWNED BY public.votes.id;
          public          postgres    false    232            �           2604    124571    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �           2604    124572 
   comment id    DEFAULT     h   ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �           2604    124573 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �           2604    124574    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �           2604    124575 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    124576    prefecture id    DEFAULT     n   ALTER TABLE ONLY public.prefecture ALTER COLUMN id SET DEFAULT nextval('public.prefecture_id_seq'::regclass);
 <   ALTER TABLE public.prefecture ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    124577    price id    DEFAULT     d   ALTER TABLE ONLY public.price ALTER COLUMN id SET DEFAULT nextval('public.price_id_seq'::regclass);
 7   ALTER TABLE public.price ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    124578    product_mode id    DEFAULT     r   ALTER TABLE ONLY public.product_mode ALTER COLUMN id SET DEFAULT nextval('public.product_mode_id_seq'::regclass);
 >   ALTER TABLE public.product_mode ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    124579    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    124580    shop id    DEFAULT     b   ALTER TABLE ONLY public.shop ALTER COLUMN id SET DEFAULT nextval('public.shop_id_seq'::regclass);
 6   ALTER TABLE public.shop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    124581    sub_category id    DEFAULT     r   ALTER TABLE ONLY public.sub_category ALTER COLUMN id SET DEFAULT nextval('public.sub_category_id_seq'::regclass);
 >   ALTER TABLE public.sub_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    124582    tag id    DEFAULT     `   ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    124583    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    124584    votes id    DEFAULT     d   ALTER TABLE ONLY public.votes ALTER COLUMN id SET DEFAULT nextval('public.votes_id_seq'::regclass);
 7   ALTER TABLE public.votes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            S          0    124291    category 
   TABLE DATA           w   COPY public.category (id, created_at, updated_at, created_by, updated_by, enable, name, search, image_url) FROM stdin;
    public          postgres    false    202   )�       U          0    124299    comment 
   TABLE DATA           [   COPY public.comment (id, created_at, updated_at, comment, product_id, user_id) FROM stdin;
    public          postgres    false    204   �       W          0    124304    country 
   TABLE DATA           c   COPY public.country (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    206   ��       Y          0    124309    image 
   TABLE DATA           �   COPY public.image (id, created_at, updated_at, created_by, updated_by, priority, url_medium, url_small, product_id, shop_id) FROM stdin;
    public          postgres    false    208   �       [          0    124317    movies 
   TABLE DATA           s   COPY public.movies (id, created_at, updated_at, created_by, updated_by, description, movie_url, title) FROM stdin;
    public          postgres    false    210   v�       ]          0    124325 
   prefecture 
   TABLE DATA           F   COPY public.prefecture (id, created_at, updated_at, name) FROM stdin;
    public          postgres    false    212   ��       _          0    124330    price 
   TABLE DATA           �   COPY public.price (id, created_at, updated_at, created_by, updated_by, finish_at, name, price, sale_price, start_at, product_id, sale) FROM stdin;
    public          postgres    false    214   E�       a          0    124335    product 
   TABLE DATA           �   COPY public.product (id, created_at, updated_at, created_by, updated_by, description, description_sort, enable, hot, name, rating, tiktok, country_id, shop_id, sub_category_id, mode, until, price, sale_price, sale, slug, product_mode_id) FROM stdin;
    public          postgres    false    216   ͳ       b          0    124342    product_mode 
   TABLE DATA           `   COPY public.product_mode (id, name, created_at, updated_at, created_by, updated_by) FROM stdin;
    public          postgres    false    217   ��       d          0    124347    product_tags 
   TABLE DATA           <   COPY public.product_tags (products_id, tags_id) FROM stdin;
    public          postgres    false    219   �       e          0    124350    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    220   L�       g          0    124355    shop 
   TABLE DATA           �   COPY public.shop (id, created_at, updated_at, created_by, updated_by, active, address, email, name, number, user_id, telegram_group, telegram_id) FROM stdin;
    public          postgres    false    222   ��       i          0    124363    sub_category 
   TABLE DATA           {   COPY public.sub_category (id, created_at, updated_at, created_by, updated_by, enable, name, category_id, slug) FROM stdin;
    public          postgres    false    224   �       k          0    124371    tag 
   TABLE DATA           _   COPY public.tag (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    226   ��       m          0    124376 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    228   d�       n          0    124379    users 
   TABLE DATA              COPY public.users (id, created_at, updated_at, address, avatar, birthday, email, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled, mobile, password, prefecture_id, create_expiry, create_token, reset_expiry, reset_token, username, shop_id) FROM stdin;
    public          postgres    false    229   ��       p          0    124387    votes 
   TABLE DATA           Z   COPY public.votes (id, created_at, updated_at, voted_name, movie_id, user_id) FROM stdin;
    public          postgres    false    231   _�       �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 53, true);
          public          postgres    false    203            �           0    0    comment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comment_id_seq', 1, false);
          public          postgres    false    205            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 99, true);
          public          postgres    false    207            �           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 1197, true);
          public          postgres    false    200            �           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 76, true);
          public          postgres    false    209            �           0    0    movies_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.movies_id_seq', 1, false);
          public          postgres    false    211            �           0    0    prefecture_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prefecture_id_seq', 63, true);
          public          postgres    false    213            �           0    0    price_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.price_id_seq', 1, false);
          public          postgres    false    215            �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 15, true);
          public          postgres    false    201            �           0    0    product_mode_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_mode_id_seq', 1, false);
          public          postgres    false    218            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
          public          postgres    false    221            �           0    0    shop_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.shop_id_seq', 1, true);
          public          postgres    false    223            �           0    0    sub_category_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_category_id_seq', 1421, true);
          public          postgres    false    225            �           0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
          public          postgres    false    227            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    230            �           0    0    votes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.votes_id_seq', 1, false);
          public          postgres    false    232            �           2606    124410 !   users UK6j5t70rd2eub907qysjvvd76n 
   CONSTRAINT     _   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n" UNIQUE (email);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n";
       public            postgres    false    229            �           2606    124412 !   votes UKa0fhl991hi2ju9m8458oer09t 
   CONSTRAINT     k   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "UKa0fhl991hi2ju9m8458oer09t" UNIQUE (movie_id, user_id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "UKa0fhl991hi2ju9m8458oer09t";
       public            postgres    false    231    231            �           2606    124414    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    202            �           2606    124416    comment comment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.comment DROP CONSTRAINT comment_pkey;
       public            postgres    false    204            �           2606    124418    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    206            �           2606    124420    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    208            �           2606    124422    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    210            �           2606    124424    prefecture prefecture_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.prefecture
    ADD CONSTRAINT prefecture_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.prefecture DROP CONSTRAINT prefecture_pkey;
       public            postgres    false    212            �           2606    124426    price price_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public            postgres    false    214            �           2606    124428    product_mode product_mode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_mode
    ADD CONSTRAINT product_mode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_mode DROP CONSTRAINT product_mode_pkey;
       public            postgres    false    217            �           2606    124430    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    216            �           2606    124432    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    220            �           2606    124434    shop shop_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT shop_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.shop DROP CONSTRAINT shop_pkey;
       public            postgres    false    222            �           2606    124436    sub_category sub_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT sub_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sub_category DROP CONSTRAINT sub_category_pkey;
       public            postgres    false    224            �           2606    124438    tag tag_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    226            �           2606    124440 "   roles uk_nb4h0p6txrmfc0xbrd1kglp9t 
   CONSTRAINT     ]   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t UNIQUE (name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT uk_nb4h0p6txrmfc0xbrd1kglp9t;
       public            postgres    false    220            �           2606    124442    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    228    228            �           2606    124444    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            �           2606    124446    votes votes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.votes DROP CONSTRAINT votes_pkey;
       public            postgres    false    231            �           2606    124447     shop FK36nknc2cfkui55nrprhr55d5v    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v" FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.shop DROP CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v";
       public          postgres    false    222    2999    229            �           2606    124452 (   product_tags FK4n67l5ht7b0whs4sragr8axph    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph" FOREIGN KEY (products_id) REFERENCES public.product(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph";
       public          postgres    false    216    219    2981            �           2606    124457 !   users FK4qu2c5f8i7hc6vf050wb0k948    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948";
       public          postgres    false    229    2989    222            �           2606    124462 !   price FK52j58gg15g100mdmv5q76sv45    FK CONSTRAINT     �   ALTER TABLE ONLY public.price
    ADD CONSTRAINT "FK52j58gg15g100mdmv5q76sv45" FOREIGN KEY (product_id) REFERENCES public.product(id);
 M   ALTER TABLE ONLY public.price DROP CONSTRAINT "FK52j58gg15g100mdmv5q76sv45";
       public          postgres    false    2981    214    216            �           2606    124467 #   product FK6cighpvj59jngocmr7ipusavu    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK6cighpvj59jngocmr7ipusavu" FOREIGN KEY (sub_category_id) REFERENCES public.sub_category(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK6cighpvj59jngocmr7ipusavu";
       public          postgres    false    216    224    2991            �           2606    124472 &   user_roles FK7ov27fyo7ebsvada1ej7qkphl    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl" FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl";
       public          postgres    false    229    2999    228            �           2606    124477 !   votes FK80d0fbh7f3r561pebrwtbbs3l    FK CONSTRAINT     �   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "FK80d0fbh7f3r561pebrwtbbs3l" FOREIGN KEY (movie_id) REFERENCES public.movies(id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "FK80d0fbh7f3r561pebrwtbbs3l";
       public          postgres    false    210    2975    231            �           2606    124482 #   product FKaqw8hq5gyp5v7513xkvdac0lh    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh" FOREIGN KEY (country_id) REFERENCES public.country(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh";
       public          postgres    false    206    216    2971            �           2606    124487 !   image FKd0g1tmjbdkqd13kkeo6d3tcep    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep";
       public          postgres    false    208    222    2989            �           2606    124492 &   user_roles FKej3jidxlte0r8flpavhiso3g6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6" FOREIGN KEY (role_id) REFERENCES public.roles(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6";
       public          postgres    false    228    220    2985            �           2606    124497 #   product FKekb9b70g4ehsbpndahmmj8tml    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKekb9b70g4ehsbpndahmmj8tml" FOREIGN KEY (product_mode_id) REFERENCES public.product_mode(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKekb9b70g4ehsbpndahmmj8tml";
       public          postgres    false    217    216    2983            �           2606    124502 !   votes FKepnw5rdvj7jyavtpfiru6i662    FK CONSTRAINT     �   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT "FKepnw5rdvj7jyavtpfiru6i662" FOREIGN KEY (user_id) REFERENCES public.users(id);
 M   ALTER TABLE ONLY public.votes DROP CONSTRAINT "FKepnw5rdvj7jyavtpfiru6i662";
       public          postgres    false    2999    231    229            �           2606    124507 #   product FKett17tt7p4pbuitp0if89kdt5    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5";
       public          postgres    false    2989    222    216            �           2606    124512 !   image FKf34pcxeeyw3it5v2rthteef7v    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v";
       public          postgres    false    216    2981    208            �           2606    124517 !   users FKhf381xrw2kuxkx75jyl8pewp4    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4" FOREIGN KEY (prefecture_id) REFERENCES public.prefecture(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4";
       public          postgres    false    2977    212    229            �           2606    124522 #   comment FKkwd7w0meugs0nu95w48hqhw2w    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w" FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w";
       public          postgres    false    229    204    2999            �           2606    124527 #   comment FKlo59icyee0u6jucfb68x22o3v    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v";
       public          postgres    false    216    204    2981            �           2606    124532 (   product_tags FKmb0hq4cm6sa2ji8a1ymqfyax4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4" FOREIGN KEY (tags_id) REFERENCES public.tag(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4";
       public          postgres    false    226    219    2993            �           2606    124537 (   sub_category FKshci6pjlkmq0u7m9m1arwqbpb    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb" FOREIGN KEY (category_id) REFERENCES public.category(id);
 T   ALTER TABLE ONLY public.sub_category DROP CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb";
       public          postgres    false    2967    224    202            S   �  x���?k�@�Y�������y�[ڂq)8�K!���H`K&R�]�
Y:x(�k���7�9�h�Z�q�-?���󄱄˘�9�s���h���X8mtV��2>���"~�hEU�jS�5	Bm�k��iS�;��U5��f:3^Xm�A�I82�YIҝ�Մ�-�f*��٧�pCw}����3*(�����$�N`NFJLuJ2?��I��p����>Z��&Y�y�,�����Z�sb�˽P�R�qNIPt�ɓlBv?�e9t_����yHq=t{���4EYW�KDj��r\��	I*g��&��$a)��ߩ�I��p������.Z|i�GL�B��6�E��
��e:Gg�ѤO4#[�p�w��1I˘��2�҇](��7���Hs4=���0�-����u��=�ź�G;��i���`��S��%�MjMvo�N[m(���ǲ\��<h�!�@QF*���a�sh9"��"?O'����g�      U   c   x�3�4202�54�52Q04�2��26�3273�0�'���P����P�_�����99��(50%1/]!=3Q!%�(�L��k�eL����p���qqq ��4�      W   z   x�3�4202�54�5�T04�2��22�3�0645�'e�%�
a�w��(�%�rQf�_��]kK��Z�ǅWa�</�S,}�{b2�	EF��p��d.S�q���2��߇�wr��qqq [�^t      Y   P  x����r�:��g�"/0�w@ '&$��T�
������Y���
��U�nu����A������a�c��D�󇿕����G{�X��?w��z����h����5Bɿ7[���KqW͸�/5K韥����o�!�5N	+��|�̾ V}�>WVh�#	ؕ;�a�a��S���`�Q�}l��/?���Y0j��ŝ�;Bs�'�E)%Z9%󇀈��j���+k�S��g�0J�.!#*�g8�0�q0	C�L�����Aa��̏~-���PHی��(G�s�����E��������v�&Q���q��N�A2:��*�A��X}y+,S�6�g�[y���`=��h^���O�~v�l3��&�R#���ᇫ�|\�a�ν��yk��͸��	���3$+�t��M'��x���C��9�q)��0�!���S�(�SLꧏ0j�a��8�<wG�����c����pK�9ڋRS�f0��߳Z�=Mq\�����Lb�`��NO�sɰ���8�eFI�Ѧ.�RN	��Ԧ���`��:޴�����L`�b&�GFrTˠ�~60Gu�^�J����eƐ��	���Y	�8����������0k�8�`&�ǰ���K�9�~�j�~0'O�Nqd�E$�7���s���8N�{����J=��6)f�%���4v)0�|�7���Sĵ�z�f�BZ^�q3��%����Z� �a��{g��6őMEy���)+ql	���'��j8�9�-���1šm3���C#-�̱.Oj#�q�K9
��X��8�,3b��<���v���1�*���9�6�햯)l�Q��*i����",���F`��xBYJQ�)`��nQđrK0G-<n���Q����
�RW�̒�Xi�Zlɱ+�9�����������Wf<��'RW�i���V'<T~�A���(vRvA�a2@h%����`�%�Ǒp܀��ct\��yN0���qμk�@�*NY�q=f�����0�՗��3�`�eɥyXz�iM�S�1�n���]G�x���]0�L�Fe��\-�[�1����O�M#(�`��1$����jiI*1uJ�J����|c��:�D��
�`�k/�<¹D�)�%:ۖy�h���ј^0RM
�a��zTP�ޔ�#7z/L�#ǋ��>�1����A�ˁ�@���Α�	ƹ��5�C4WǏ�_ڎ�x{E+/�6���yO �Ŋ��hҡ��W{%c��4�-Y�xi��9F��H{��O��3ݚk��������A�hK
���dKRg��0NO�'�\8%xL�v������A�����>�1U���/zBLϒL�면��s���0�o�3��L��mkA5�~K�1ޏ3��X��+ە_�Ʋ�v���/	�z|��}��X�a�0Z����}�0�C��۷��ob�p����уѸ�� O��Q@�N��;�I;:Y	�(�ST>~!���aV�W�)�0l�'s<	��7�P`��r�G͋�+XQ�y����I6ٙ�;(�Su5;�H�>�,��V��ش~P�ؓ�k�\/�9$$��)�`�4��������Aw�oſ\��d�������� �n�'      [      x������ � �      ]   �  x�}�MS�8�ϫ_�۞ƥO[���LA�e�j���$"va,�P��ӑ�sy1קӖ����ɥ�"��V"�*�WUd&�"�K�{lw��z�c�.��j	�;����*�V�K��w�j���<�вN���w�P?��*�3�-s�U���I.^��.�Om���%��k��8�%ßs�,q�&��$�ulC�WM�Y���'���m���}xل�9`j3^P ���﫻��Wa<���ZX��Ԍ���m��q�������K��sߑ��'�
$`�i.��7��Y�ZR�ҁi!��:�C7��@�چmI��0c�THW3��\���m��@R�T9�Ҳ�nbh�(HL�Y�������Ǧ	�&�q�S�qB����1����mW���.��]�6잆�P\&��EkF�a3�N"��L�\��]W��*��2<��(U��o��B�(.��)X�3������-�t�ŌR��g���I�Y��R�Pl3�?^du߇w��t+�
�ֲ�g�PjW߆���HW.��)جftlVg$ޞ"�dK���O�8���%)f�$�sT���#I���n7:�՜�+79��	�8��7MjO
(�LE�4���l�K��S@�d')�|�:^�c�*R��*�j�9�ۡ�^�U��Hv:WV���P��]�l�֧�*�]27&/�.�P�&�0��X��JEt�h�Y��<��p�Y|�	��=����m�,�����gr0���Fmd	�3���39A��V�&uB)4��f�$��|mV;t�]������*��HE&]A;�:����}�3��+2�
��:�����0rqM�#Gٟ��j�Q&����~B7U[���o�"�� ���@c�Rrn�aꚡ%�L�`B�f{^�U�4Ρu�	��Lh��my��m�I��!��Lma5�htv_��
L�d�LJm`Üѣ�5��H�2S4�,v?�_���.4]Y���݂�5w����:���>��N:�Bi�/��3��]�9n�3#{M�:R��
z���5�K
H[mc�!��%i�茾�m�ڛA�%3���'FtC35!�� ���Gc$�x���3H���Wj��fj���ABRiu��bF�8T��xv�H�*��lB����ߪI��Ti����h�k�w1���j��ѵ��x�al�r�2SP�����X4�o����1�k{�      _   x   x���;
�0�zs�\@ُ��Vo`kP�Ф��E�t2��#`dɈ2.4�Fʜ�JL��(�ͧ��:��pz~B�k�ϝ��nW�eu~kؤ��@��Aw�U&�R��!WJ�kN�      a      x��\�oǕ�L�%x�H��pR<;+��b�I�Ȃ\�ݜn��k����6� ��� æ�W�
vl/��a}���K��^U�13�| �(QdwիwU�fi���v��]��Zwe����OuOѫ^��i�{�������z�vwquyy���W�W��O_Mq��g��9"9<x E����G��(ϔ��x?GF���nG�p�_�m���]?z���H�;�p~-��x�H8<�?<�Ov~������1>�8���>����Gw�Q���J���Σ��.�W���_R��c��~,��%607C`w?� ����2������|�q,d,2�@<��+E&G-b�;~�� ����W1�A&��;߼���(�Ñ���h�n��X���6~������8�g�pmaa�(7w���f2�V�e�6�Yj/�,u쀅8WN3�e�񽸹-Ude;��z����nguK�W���|�]���u��u���=�{s����Z�xp����3����YCNo�Nڑ���Ga��IEj !Sq�1O��Ç�2�%�@5�Aq�|4b��KV&��7��=f�JU�wE���@����A�x{�V�6K`Y����J�yQђ,���?�'O�o�?8<x7Zg5t_�ʄǟ �Ol��-'�?j���Qi�z�8n��O\�����<�R⌗� �bC�A��@Ҩ�^����̼�K����A�I��C���A˙��f�Y��C����~����Q-��)�5����J3�x-GE��xa]fra#ȼt��yn 1*n}-�G�QY�����՚�H���ۺ5��j�%�\t@%�z;1hH A8���L�}s��=��� 	k��xV�Zd���`a�~��hE�-���?Ɇȇ������U�����C*vPФw�G#g�igA�f ��@���zv9�}�B o�W�Z���c¦J�4�{�������������!< 2��VU�~?��}�JLh0W���9�dV|tGj-��D��4c`l�u�_�C�[`��"��v��ՠEo�@�)�h�O���wyQ(O�aC0���0¬2@�8:�LpT����٬(X	���鉘X��Uen���'�";Xo<�}X�v���p�A�nbS���0E/�i��&H�?.�/�1��Gw�w����vhY0� �Z�U�S�K6�(�HqR �`�b�{d]���;�$m��ŀV��p|eX��AU���	k̊1�w1�V
-��Ad�y���T��h�R������]���6-��tE�%.ZU�BW��qM!ċ�kZy�^p�Ո�⾣�X���7-2�o���|UIE"sv{k�re)-����o�����S��u���$��ݜ):���?��ET+����X���Ì��n`�g��Kf	m,G �g�I�G�!KR
E;+�fCY��G�M�oX3�ӴETl�a�#�- (�_��j�7!��H���7�
�����Z!G��kSh�u�`/qv��Z��v[R�PN1_�u
E�y��/���k�(@��j䁵ĭ�J{Ё������a��h�!�wXۧF��9�-~3�A���>0������Z7�?�`��lq�h�yS\ug*��{+��Ucj�ϙ�>\����kn�딦L�)��yh�)�Ѵ3�`�$��G�pI�+ߩz����'���I{�
CT�L��B�� wWqVɶ��m� E$G�<�WE�ylf���*Z����I�nw�!N�~�$ıWt<��]�"�ό�5��ϱ�+>��Gф_&��A�J̹M�3�1��#�<p���9(��D�I%����g#��#ZLL�7����w
�=��~b!Zԝl@�r(c/�����Cf����}���K�ͼ�˃;��NN���jb�K#�Z�n��IiR_6�&�p������x���ԪrQe!
I�Y���N����C�p�a+ ��7��D��G��nk����s�����؛˂�Lm�u���7���ivEgq����[ju�O�V��V�g���Z�s�cOn7�z�^Y��U���tW�˴��3��C�i�%�C���=qY���"�mW�����qn�K
G~����ol�0pK7�n>$��n�_V���V��Q�w`ʁ�r�T����n��qJ O�����J+��xb�xi*/�d��xi�J3b��]�;��L:��(aat� R8��ݦ�~��~z�ē.\���"UjR �O ��m��� e��P�z�犋�W./�������������r���������c8"�o�`��W���?��A���~ޓY��\��*�@�I��]�+3� A�a��IŐ.��
�4�uP̓�DE�^*N$��y���R�5�=!G�1�G��۞�d���r�cDR���H\��y�aA4��@s=	v4��b��,|"�>zR��g ���Mqn��p��G^�A�iAkCO&(/���,��*� v=����Cdu=iD
�Zn�$��@�5��T�21���$,�}�!{�BV�ө�����B�����%H-��^��7��[���ٯ�,��%`h� %CB���ǩ^A6�V��X0/����$��.م��C����-^�N�$"N�Av���X���Wy�BI��a��ԧ ��^"������n��)���P�mB6�� ��,,��h�@CH���i��Ր@
{��	{,E�,R؝+&���:r�Q�E�a!`e�;.6�^xd_[��:�G����˰vZk�1���m�l�^��YZ��j.��9��7�2���p��Mm	5����[-	xW%��`�%�h��rwv���£0D\���az�\!h����N�jj�`��43��6����<�I
�][j�y
Dd���#����5����]J"�(�A�rH���L�tI�|AM��&��]/��E�[)���V��k<��ޗζ�E���!�h��f&��˘���&#�����-_�jW��2o�0@.�!#J���'#R�~�*�Q�y�x�]b}:�ų� ���[��<\8i���t���[gx��/s/n^��ip*/I�J��R/�"��j[��ق��x�$�\�2�䳴����%�!�J�N�p\�_5��%�ҖJ t���	�D���62�������N@&A!��Y�|��N�{�P��^K�1&V#I<�D�? ��m'��昌��xv�D�rZ�i��`�l�yg�����箾�l����/�� ��i�BnN�$� �F[�\;J�W!t�tp�!�,'��$)��Q`6+L"�u���;BX�B&6��3nA�A�x����+���q������fo@�4^�~���"������;EkZu�����~9��mT��s�O�u��HL���u͘t��t��S�ʔ���'\�&1<�p�N:����&0��юux�PI��Wd�|C��<�~�����q�<���x����G�t5l�l�	��N��y���'k;c�<�FR��9'�i��5r6z��Q\lz	�%r�']L9#����xm��ڴ��6�lpgO��'&�PCRz�D*$���m��A0ͦB9CN�,�X���n�T=Gঃ�v�\�b/��� v5id&�5�P����n�j�ZO\��^�tL!X&3\먈���i�<Ո�D����t\:�3#�ےȇ���]� ����܆����

�TY��(�#G��(Ɗ��2[��LF-����T|iMf^.�s2E@4/�WDO�F��)?#��久b��?���������ǿ���75U��!k�8�%�	%��0��?���"�>���$��ʡ@�-^;��ʸ��c`^R�P���5�%��5��Z�Fr�+|�k�]��)	g�(���|�"5�k�z{��]ϊ��uh�	)M���
U��>'(��+�]��r-K]89m(F�Dgr2k�T������ge��0�G��u�����Mx�KW�,F��l)�� �  �'Z򜸪2oM��ev�&��٤I�t^����u���e��5���K����N0�n�b��J`ާ	J���l�"�� Q��,��]n���Y#�M��ˁ��i��\ڴ?�ϟOA6�V��������'����v����k�qb��%)��G�I�JJ�^��ܑV�)YK��#79R�#�%��[KE�(23��!Pk�R}.�uI+X"�E�ԥ"ePھ�H�	�r�c�IAt�I8n���飂29�T�oQ�E�h���0��W���S+|dҤ�H�g3��E�k�b�M���5�3�m��@�R^�82�K5|�Nð&%��<�ө|)@ܢݎ���0 ����[P�>�5�h��Il��`	^(�V����VFT. Tj�	��Lޒ{T�#muY+K�b�t[���V��V�d��rڭ��/�L��K�ژb�g��r�yB�K�[��g$s\������[+��i"C�,Y5<WG-�ÀOU���=�
�,p�.0]�T���a�'+�*k��_�~^|����l��(|��;����U|^M�C�|83~K�u)Ό?W����)O_�|��эĳOS��e��9�nb���N��i�u���~3(�(������;<�??�V;z��ƀ���\]��иө���e>�Xj�3�����F]�c:ZsDgi)
�+�ԇ�)4lqeu��;uj��^��!��P%6�1��P�ω�϶Qk��C��z>�{�}]����dÜDR����ǆ���܊�9k݁���'�7o�oB=�1;�㏰�e,��AF�{�eT(ot��@�W�0�{��L�1!�b� q�)o}E�d���@�.���mcut�n�>��D��Q)�N"CM��L��ܾ��-/�k�1n|�{��eYY�̂���3���NH��1o���d�K(Μ��ܭ��钴ꝼ.����ৢ����¹��ۡ�G�$��߲$���|(�H�mXÆno��[���MK�Kt�MM}�@�Aqq��3~��]�7o�93���߼�~�$xv����o�y��,"�"���U2>�Β��'�R�so�hO�5���:�Q?�D�`��n菿2m1�����K�޸C�qx��p�R�^.p�z�����kpG�F�����g���m�3��7o�����r�r�	7��-��|��������M��$���jG���]�$���6���ۑ��]�}� 0�>�ý������;�TR�5�����P�&��St����^զG"y;��)�����Ԕ�8I����UR�%m��5���[��A/>5�g5�K�����r��p��ұ�x���/�"O@��+�:ݶ��%�Ґvv+�Zܑ��j���:l+��:ܺI���)����-e.u�%3�X�d��mㅢƺ�Yw�Z�G-qV�D�z�.��L��nbu!�|c��E���)ݑj,
`>���	j�C�Ǉ�u����ַc��֑�f���j�=�6�E�ocgH/�C���+�݆KܹCҳ��%z�B�{�
��Vg��ܖ�����}j�n�g�V2�>�'G�␜M���M��e-mi��^|)�R��B��W�ҝe��,��"�����)]��LK�ơe��#;x�ͤJ���<MY�Q�ڍ�`�r0۠Ul�2�Sk�#?�q�Z�ȍ|l��&�oL#��H+Z�/I�	Q~�r�D� ��0�!���<7j�:,,<y/2?Sбl����\���Y`��c����{���J{����������Y�ȱh[��l�/�ɽ�^��C� ��#ɷ
dP�L����5��#���k��ے�j�$R��D@B!�m�@�C�e���\;���3;dn�{�z��W�R1,�Z�,ڒAFE�0�tl��vn��--��{�.��:ŝ[z�h�}m,���(:������x����֫���c��u��RKH�a�����+��;S��#�S&@�?㢜n�u-�ͩ�S��X���:�&E��c?��i���&� #+�:P*P��P=��L\�+��Y���U�|Aw��ꮙ!�@�҆��l_K�Uk��v����h�"f|h:VkeM_r�L�\Y\�����\�T�=����$5�ڒb��В�r���ÔP��_���f'���1u4�\6]�7��߻|��[vGȊ��li��)�XpXǧEQV��nO��yE;����dbF@���;�/6��n-�>J�K�̺��p2�J?���$_�M����ԀB~�V+*B���¨���5xYx:�����?{(*��Fl����tV;�zI8qJ_��5��܅��!{�����Vi�v\�Qv��4!����l}{����EZ�+A�j�W�8z�|g�6R�/�&��# J��2�L���u����}k���6�����**���*��ͫF1�o?)i,��=��Լ#���&�m�ͧ];)�ޅ�rU�s�,m�Y}��=�ɛ4�os�Ĉ��T%9��/���vi�b3�C]B[���Us���L��f57t�s*��X����{֙T��͞ꎝ��=�2{"*��1ImL�ΫC�!����Y8ѕ`2F]L��FG\��p����~ß47���4�ߝ���n�T.��Ij�Xܖ)H����6���T�5�ɟ?P3�Z��'M�.IM���D(�K�������-��>�����#sŅ�\�F�\kJ�ʅ}�/�#d�\2S9��i���Z��s��x(�T#J�����ǩ���|��/�,k�.e$���[9J�?]�,R]��'�e*g����lu����u������k���^:{���r�ų�5�V7}F�3�i�L�~V�\��΅tw�aم�۝.��T}Q��9q�Z|̲��c�*F���a��*�,Fޥ�L� C�n�/4�a��G��1�)ox�W�'P����E��U?R�t'�nq!o�[�Q����電�%q\�S����1@]�����'��C:�K'=#�:K@�(	Ҭx���m��܎+s:�e^�w���Qa�xa��|����c����j���,�AN�x��3Rl��,R�r�uv��]��G2��Q�,��9(�n(8*���5T$��#ɃL���P� wv���l��8�"o`�O�z�����&���Had�"�B��`U�ϔ�"����C9���yٌYG�;��rq�`�%��T��(�S�rA����Ծ^��}�F�j'�J�*OR�]H�BFD�7	��Q}e����Q������0#=�Z����W�"�¾�,��P+%�q`�\h�˘9���tC�[�<��^�V�ϲ��RQ�U?�H�  ��6�f�"ǧ�$������_%O����l���BpF�x27P��&�P�c��� ]ٰ����N'NM�1_�goXDQ}Ӑ ?��U��|F�2�^`>�@,�]�y����viS.]�W�Z��b��s��ݒ9��_�W���S���u��w8�V>�Ƅa�[�M�M�S^:V�G|�]�y-�����[:zQP�a8;r>�x��n��'�-҇f�u�v ��M�7	Ro���*������uڭ���r���W�J]�����ҝ��G��~t��t_ŋ�6�ڢ߶��ѝ{�*�N��;�ů�c��/��u�[�+���$f�W��3���L5VX�d2�/�i������L�^ꮵWZˋ��N������R���^vu6��z++��I�_M,K��B�Q��v�\.��#.ԁ/��^{q���WG�+�H�զ���_m;v�;��      b   n   x�3�N�IU)��KW�KO���#.#�l��]�K�PRTZ�pwc�2c�2��TTqΐ����<����\)S���BIf�Bvfj�B^Ffj)�L,AQ���� �L3G      d   "   x�3�4�2�4bc.# ���$������� z,H      e   4   x�3���q�wt����2�p�B�\���!��G77.'4(���� �(;      g   |   x�}�1�0��+�[wg�T�KEE�D� ّ�i(�|\���V��!`d6D��&�q�0Zύ�����Y��R����]zHy�}�
��^i���#��m���u�QD\K�a 4�ZV�UJ�Ϡ+      i   �
  x��ZM���>k~Ŝ�K����,m֛xW�Dʮ�����,E��XW��>E��A`؍a�ְ,�ȁ�����3�V���&�ȁ-�B�<3���EMoimMSTU����G�}�Pm]׮�I����gy9{�O��~Kk�(�R�%�MUm릥;�SC�!���C|T�LС�d!�\ǚ��$L�S�)D��nI!}�[9�g��e����=�$��z�>�W������r��\�^���-��%���0!G4P>NSf>	V�T�X^�Ȑ3�:��C<*g?Mj\�(���zZ�@��M�y��9>����C?)g��d4	�l��r]��Q�S!UG������'8-޺8-�.>N�W�lSd�K*$b#c�X�I�?�X�	��kݳ����V�yJ7M�^3MC��nfḜ��L?OR�LE�:QG
�V���8/;ˀ<��� ou�0���o\Xn9;�\ފ����:r[��'���������!'������;؉��C�j}��͔�iL� ����a..lu�6��Fp	A4��<�:
"��:�GQ<{;{]���3�|�QdʦOb���'��N�4t�p��iK�؆�/��pPO�L@b ҥ$#\m���2u]��_��=��	����R�|9r�k��,]&���dL!8愾����V?)C�&$�*���w����� �W�Zv�E�T����9r��_O����#����`WBd���T!���~��r���nmD�R]E�\���z$·��lW�)�X6r�D���{ m_���ј��y�D��+���}����4^l'�p�����(Sp�#�bU�s�Ju�0�"ZnQ�S�7L����K�N�����V���1���ٖ��� MN�z�Q�x��Y\u�t�X���B�/1��<d[�B�dw�Ƌ	�)p�y�z����f��T:@EN�����ކ�=*�;�1��� �jCz@*k����F\�шqRm�	��,'>�W��G��,�WE���]p�>���[����Q��w!M:U��دj���M�%jirZ�0 ���)+�A$yav��49���}�A���~V��8�}p���L���G�@H�j#]�j+��`�y@i̫�=�%�D�hH�3��Q`�a`�|�+L9n*7k������#S�UX>} �a:Y�Vy43��(�Tp��: �wv��0�
+z�B�t^�,��>gI*�"H1tH<@�g¿����=�F�L����5��-f�P>B���>(=s&�g4zK��M��H�1��	���@��?&̕�F�\�������2����ա_�	�GX�����T�,R��������쀭�6 �H�1�K�d��������&mD��*��P��u՞:h@t`�2�`��%�tx���dB�#l��6�)�x�G�w3�^m���L9�@RLxe����%�!���	W�]?8�G(�(̼T��F�㫄LGsd�eBm��xCh�i+J&y@�v��UVz\.�{��a�h}�^�SL}ya S.��Vk&>�|L��	K�"����B�m !��	�GbLYr��6+DauS��DGT�c#k�𢱞A�x��O��rY�u؏�
!�씳W�b�݄��]]�1<<K.�W�.OZ�֭��b�W���������]eq��b8H9e�,���߫����=�۰}pzr�s�xzl��*c�7�Y�A�����'8���	���p���o$�%���<UviF��hȒnm�:qp����bS鴑%'5=H��`�8E���Q�Yf�<�=T�좗�#��BE��kV�ԸIkP?�k��3��������łF��E#X� [�h��1�+�xӈ윂l�3�Bl����0w�!�c�rU�rf[�b��f��M��Ж��z���Zvj�s9F��pr[;vu�b�>0��z��:����X���{�	dâ��?���p��C2�c�7���h�������:rq���J��0 C������B֫6[[t�~H���F9��=���=���@d����&�#'f���e����x�?���.X�1��q�	�-�NSF��a���������A\c�?�˙8�����9�}�2�h*A�r_�}c�xh_L�'4�Nc#�-!��=�8�.L$����zI���Y�xQ�h�ܬg�!ٮ�ˍn�6^N�H�4���hH.`^������XlQ+d�
49���dki�hƦe/'�l��G�zm��Ԅ�An��=����Ii���)K
p����<�4J�WmŪߺ�;���z���=�����ū���E��_]\ut��w$7�ccq]�)���{e��3"`(���_4eG|���9��$F�4��=^Cr������������b�%�U�t�5�U�p�EoX�%����P�|v��fg�i���Iβ%=��aQ�=X�����%���.³�D�����r<h�x�l{mo���w����uL?���sBp��Y>�UE��྾���8�ª?����绮��d²̯%�u�H6��*r]�Q�0�^�Q�xW�zU �'�S��Ma�vUn�Ru�vyǩ��]�em�ʍ ����Z�]�o��L�ɍ��-����j,,�˭�r��L�]F��j4.c�-j�g쭌-r?�]!���!j�*њ��$���n"������      k   Z   x�3�4202�54�52T02�2��22ҳ417��#c�%�!�%
��\F�R����eL�)~��y\&X������Q��W����� �a8�      m      x�3�4�2�4�2c#�=... ��      n   �   x����
�0���Sx�qw��ēFT�VP����`+��֧�AR� �s�]�����>��n��$(e�tr���o/�sEV]2W���zi�G�=���0Z�@!H��<9��A{���9��A�Z�iYu4^�c��%��O��Iz������C������z785Tl(�|CT e���c|D3��9���w#      p      x������ � �     