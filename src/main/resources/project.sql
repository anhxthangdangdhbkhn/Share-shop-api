PGDMP     -                    z            movies    14.5    15.0 i    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
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
       public          postgres    false    5    214            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
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
          public          postgres    false    217            �            1259    20348 
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
       public          postgres    false    218    5            �           0    0    prefecture_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prefecture_id_seq OWNED BY public.prefecture.id;
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
    slug character varying(255)
);
    DROP TABLE public.product;
       public         heap    postgres    false    221    5            �            1259    20358    product_tags    TABLE     c   CREATE TABLE public.product_tags (
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
       public          postgres    false    5    223            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
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
       public          postgres    false    225    5            �           0    0    shop_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.shop_id_seq OWNED BY public.shop.id;
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
       public          postgres    false    227    5            �           0    0    sub_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sub_category_id_seq OWNED BY public.sub_category.id;
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
       public          postgres    false    229    5            �           0    0 
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
          public          postgres    false    233            �           2604    20390    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    20391 
   comment id    DEFAULT     h   ALTER TABLE ONLY public.comment ALTER COLUMN id SET DEFAULT nextval('public.comment_id_seq'::regclass);
 9   ALTER TABLE public.comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    20392 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    20393    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    20394    prefecture id    DEFAULT     n   ALTER TABLE ONLY public.prefecture ALTER COLUMN id SET DEFAULT nextval('public.prefecture_id_seq'::regclass);
 <   ALTER TABLE public.prefecture ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    20396    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    20397    shop id    DEFAULT     b   ALTER TABLE ONLY public.shop ALTER COLUMN id SET DEFAULT nextval('public.shop_id_seq'::regclass);
 6   ALTER TABLE public.shop ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    20398    sub_category id    DEFAULT     r   ALTER TABLE ONLY public.sub_category ALTER COLUMN id SET DEFAULT nextval('public.sub_category_id_seq'::regclass);
 >   ALTER TABLE public.sub_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    20399    tag id    DEFAULT     `   ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);
 5   ALTER TABLE public.tag ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    20400    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            c          0    20328    category 
   TABLE DATA           l   COPY public.category (id, created_at, updated_at, created_by, updated_by, enable, name, search) FROM stdin;
    public          postgres    false    210   F       e          0    20334    comment 
   TABLE DATA           [   COPY public.comment (id, created_at, updated_at, comment, product_id, user_id) FROM stdin;
    public          postgres    false    212   g�       g          0    20338    country 
   TABLE DATA           c   COPY public.country (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    214   ڀ       i          0    20342    image 
   TABLE DATA           �   COPY public.image (id, created_at, updated_at, created_by, updated_by, priority, url_medium, url_small, product_id, shop_id) FROM stdin;
    public          postgres    false    216   H�       k          0    20348 
   prefecture 
   TABLE DATA           F   COPY public.prefecture (id, created_at, updated_at, name) FROM stdin;
    public          postgres    false    218   �       m          0    20352    product 
   TABLE DATA           �   COPY public.product (id, created_at, updated_at, created_by, updated_by, description, description_sort, enable, hot, name, rating, tiktok, country_id, shop_id, sub_category_id, mode, until, price, sale_price, sale, slug) FROM stdin;
    public          postgres    false    220   ��       o          0    20358    product_tags 
   TABLE DATA           <   COPY public.product_tags (products_id, tags_id) FROM stdin;
    public          postgres    false    222   ��       p          0    20361    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    223   Ԥ       r          0    20365    shop 
   TABLE DATA           �   COPY public.shop (id, created_at, updated_at, created_by, updated_by, active, address, email, name, number, user_id, telegram_group, telegram_id) FROM stdin;
    public          postgres    false    225   �       t          0    20371    sub_category 
   TABLE DATA           {   COPY public.sub_category (id, created_at, updated_at, created_by, updated_by, enable, name, category_id, slug) FROM stdin;
    public          postgres    false    227   ��       v          0    20377    tag 
   TABLE DATA           _   COPY public.tag (id, created_at, updated_at, created_by, updated_by, enable, name) FROM stdin;
    public          postgres    false    229   z�       x          0    20381 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    231   ��       y          0    20384    users 
   TABLE DATA              COPY public.users (id, created_at, updated_at, address, avatar, birthday, email, is_account_non_expired, is_account_non_locked, is_credentials_non_expired, is_enabled, mobile, password, prefecture_id, create_expiry, create_token, reset_expiry, reset_token, username, shop_id) FROM stdin;
    public          postgres    false    232   ��       �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 53, true);
          public          postgres    false    211            �           0    0    comment_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comment_id_seq', 1, false);
          public          postgres    false    213            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 99, true);
          public          postgres    false    215            �           0    0    hibernate_sequence    SEQUENCE SET     C   SELECT pg_catalog.setval('public.hibernate_sequence', 1197, true);
          public          postgres    false    209            �           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 22, true);
          public          postgres    false    217            �           0    0    prefecture_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prefecture_id_seq', 63, true);
          public          postgres    false    219            �           0    0    product_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.product_id_seq', 5, true);
          public          postgres    false    221            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
          public          postgres    false    224            �           0    0    shop_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.shop_id_seq', 1, true);
          public          postgres    false    226            �           0    0    sub_category_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sub_category_id_seq', 1421, true);
          public          postgres    false    228            �           0    0 
   tag_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.tag_id_seq', 1, false);
          public          postgres    false    230            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 6, true);
          public          postgres    false    233            �           2606    20403 !   users UK6j5t70rd2eub907qysjvvd76n 
   CONSTRAINT     _   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n" UNIQUE (email);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "UK6j5t70rd2eub907qysjvvd76n";
       public            postgres    false    232            �           2606    20405    category category_pkey 
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
       public            postgres    false    216            �           2606    20413    prefecture prefecture_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.prefecture
    ADD CONSTRAINT prefecture_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.prefecture DROP CONSTRAINT prefecture_pkey;
       public            postgres    false    218            �           2606    20415    product product_pkey 
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
       public            postgres    false    232            �           2606    20430     shop FK36nknc2cfkui55nrprhr55d5v    FK CONSTRAINT     �   ALTER TABLE ONLY public.shop
    ADD CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v" FOREIGN KEY (user_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.shop DROP CONSTRAINT "FK36nknc2cfkui55nrprhr55d5v";
       public          postgres    false    225    232    3527            �           2606    20435 (   product_tags FK4n67l5ht7b0whs4sragr8axph    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph" FOREIGN KEY (products_id) REFERENCES public.product(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK4n67l5ht7b0whs4sragr8axph";
       public          postgres    false    3511    220    222            �           2606    20440 !   users FK4qu2c5f8i7hc6vf050wb0k948    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FK4qu2c5f8i7hc6vf050wb0k948";
       public          postgres    false    225    3517    232            �           2606    20445 #   product FK6cighpvj59jngocmr7ipusavu    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK6cighpvj59jngocmr7ipusavu" FOREIGN KEY (sub_category_id) REFERENCES public.sub_category(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK6cighpvj59jngocmr7ipusavu";
       public          postgres    false    220    3519    227            �           2606    20450 &   user_roles FK7ov27fyo7ebsvada1ej7qkphl    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl" FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FK7ov27fyo7ebsvada1ej7qkphl";
       public          postgres    false    231    3527    232            �           2606    20455 #   product FKaqw8hq5gyp5v7513xkvdac0lh    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh" FOREIGN KEY (country_id) REFERENCES public.country(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKaqw8hq5gyp5v7513xkvdac0lh";
       public          postgres    false    220    3505    214            �           2606    20460 !   image FKd0g1tmjbdkqd13kkeo6d3tcep    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKd0g1tmjbdkqd13kkeo6d3tcep";
       public          postgres    false    216    3517    225            �           2606    20465 &   user_roles FKej3jidxlte0r8flpavhiso3g6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6" FOREIGN KEY (role_id) REFERENCES public.roles(id);
 R   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "FKej3jidxlte0r8flpavhiso3g6";
       public          postgres    false    231    3513    223            �           2606    20470 #   product FKett17tt7p4pbuitp0if89kdt5    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5" FOREIGN KEY (shop_id) REFERENCES public.shop(id);
 O   ALTER TABLE ONLY public.product DROP CONSTRAINT "FKett17tt7p4pbuitp0if89kdt5";
       public          postgres    false    220    3517    225            �           2606    20475 !   image FKf34pcxeeyw3it5v2rthteef7v    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 M   ALTER TABLE ONLY public.image DROP CONSTRAINT "FKf34pcxeeyw3it5v2rthteef7v";
       public          postgres    false    216    3511    220            �           2606    20480 !   users FKhf381xrw2kuxkx75jyl8pewp4    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4" FOREIGN KEY (prefecture_id) REFERENCES public.prefecture(id);
 M   ALTER TABLE ONLY public.users DROP CONSTRAINT "FKhf381xrw2kuxkx75jyl8pewp4";
       public          postgres    false    232    3509    218            �           2606    20485 #   comment FKkwd7w0meugs0nu95w48hqhw2w    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w" FOREIGN KEY (user_id) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKkwd7w0meugs0nu95w48hqhw2w";
       public          postgres    false    212    3527    232            �           2606    20490 #   comment FKlo59icyee0u6jucfb68x22o3v    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v" FOREIGN KEY (product_id) REFERENCES public.product(id);
 O   ALTER TABLE ONLY public.comment DROP CONSTRAINT "FKlo59icyee0u6jucfb68x22o3v";
       public          postgres    false    3511    212    220            �           2606    20495 (   product_tags FKmb0hq4cm6sa2ji8a1ymqfyax4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4" FOREIGN KEY (tags_id) REFERENCES public.tag(id);
 T   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FKmb0hq4cm6sa2ji8a1ymqfyax4";
       public          postgres    false    3521    222    229            �           2606    20500 (   sub_category FKshci6pjlkmq0u7m9m1arwqbpb    FK CONSTRAINT     �   ALTER TABLE ONLY public.sub_category
    ADD CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb" FOREIGN KEY (category_id) REFERENCES public.category(id);
 T   ALTER TABLE ONLY public.sub_category DROP CONSTRAINT "FKshci6pjlkmq0u7m9m1arwqbpb";
       public          postgres    false    227    210    3501            c     x�3�4202�54�52Q04�2��21�314766�'e�%�!w��T)J�KW�{�{=gx~nj��sN~IFj�nrb	�1E6�>ܵSAM���JN���b]�̔b]�ĤL����p��d�#��p:�&��T�M5����+��3����鑚�S�6՜"S�3/�Tp9�� 9��3�!aB����\����pw{�B���8�xl�[bqFf~��crrjqq~,,(KA�we*�^��'��t�ц���M���͌-��%B
[�L���EK�1z\\\ ��      e   c   x�3�4202�54�52Q04�2��26�3273�0�'���P����P�_�����99��(50%1/]!=3Q!%�(�L��k�eL����p���qqq ��4�      g   ^   x�3�4202�54�5�T04�2��22�3�0645�'e�%�
a�w��(�%�rQf�_��]kK��Z�ǅWa�</�S,}�{b2W� c�40      i   �  x����N�0�kx
^�qN�n���71�aL�T�`,�@�ޒ`�Φ����Kw�6r��B����Rjp���`�;���E�̋�[{�Y,Wmlo��]����?#[��Q7Q5��Ϧ5Gi�h���%D\���D‼����U�Ѐ�=?�����{�#mG�S�됨Y/���C���H_z1�$,.-'�9됨Y눙v2�,�/���L�
9�$��F���yZy����y�x�J`L�� ΩU�a�v�u�0ӀE���F���vt�6P���<�԰�2�2�P�{9����f
�c����qMǰ)��U�wl����r����?0��E�8�6R���|n{:/����~��$0��#!\;D�_�}��ÐW��7���bz{2���Z���      k   �  x�}�MS�8�ϫ_�۞ƥO[���LA�e�j���$"va,�P��ӑ�sy1קӖ����ɥ�"��V"�*�WUd&�"�K�{lw��z�c�.��j	�;����*�V�K��w�j���<�вN���w�P?��*�3�-s�U���I.^��.�Om���%��k��8�%ßs�,q�&��$�ulC�WM�Y���'���m���}xل�9`j3^P ���﫻��Wa<���ZX��Ԍ���m��q�������K��sߑ��'�
$`�i.��7��Y�ZR�ҁi!��:�C7��@�چmI��0c�THW3��\���m��@R�T9�Ҳ�nbh�(HL�Y�������Ǧ	�&�q�S�qB����1����mW���.��]�6잆�P\&��EkF�a3�N"��L�\��]W��*��2<��(U��o��B�(.��)X�3������-�t�ŌR��g���I�Y��R�Pl3�?^du߇w��t+�
�ֲ�g�PjW߆���HW.��)جftlVg$ޞ"�dK���O�8���%)f�$�sT���#I���n7:�՜�+79��	�8��7MjO
(�LE�4���l�K��S@�d')�|�:^�c�*R��*�j�9�ۡ�^�U��Hv:WV���P��]�l�֧�*�]27&/�.�P�&�0��X��JEt�h�Y��<��p�Y|�	��=����m�,�����gr0���Fmd	�3���39A��V�&uB)4��f�$��|mV;t�]������*��HE&]A;�:����}�3��+2�
��:�����0rqM�#Gٟ��j�Q&����~B7U[���o�"�� ���@c�Rrn�aꚡ%�L�`B�f{^�U�4Ρu�	��Lh��my��m�I��!��Lma5�htv_��
L�d�LJm`Üѣ�5��H�2S4�,v?�_���.4]Y���݂�5w����:���>��N:�Bi�/��3��]�9n�3#{M�:R��
z���5�K
H[mc�!��%i�茾�m�ڛA�%3���'FtC35!�� ���Gc$�x���3H���Wj��fj���ABRiu��bF�8T��xv�H�*��lB����ߪI��Ti����h�k�w1���j��ѵ��x�al�r�2SP�����X4�o����1�k{�      m      x��[k�י��� oL�{�g&���-��x��F����b��u����J��Ȋ��AVE�e��%^�m���(�&|�?1�%���9�.�=����g��s��^��r�ٹ�v�۞;*�G��'��:sǏ�/ҫ.~� V�0⁗^�_xA\_�=qQf��$�Wm���*m�ӛ^z�j|5�r���[k*�k��<O���'t���h�]�N^	N�+�N�Q��ă���r�L����$Un���L���~[\پ&�H��9�IR/�Dꅞ�<~-���W��[^/�Z�攊s���*��@�RJdB
'T���b�=�%"�B��z�������kg[<>�Xں/ǃ"���ډ��R���/]\��屺:Z��a�LE^�^��Y��sZ��yLA�y|~��_������8g<�P��}>JT�C�އ BƮؒ�� �a8� 1l���"��x���DX�e�p��,"��֨����tUĹ�� ���R���M���D?U�8��^�h��J��JljF/��o��DVY��/�� B�a���6s�*���8�m�RƖ�J4^Y9CJ+��N���<��'�%�K6���\k��J#��8T�2��
�/s�x*�\1���]dӋd��3q�Wʏ�ٴ�y�5�E��Y�WJ�ȇ�]q��k��˂"Q�ni����`���!1TJ�ӌ�X̆��mʊ�G� )��K�N���De�t�
\O�I�K�mHCV�"�U�pZ��0�|"�� k1�P�G{�yKl96�8Tj�����x1���V�r�RA̚`A��)�������8�|Ud�$Ib d�6�;��ƊtH�+1�(v��^���4l���^>����.�����j�c���ˊ0���1��9~��*�1`S}�p����nx�F2�J7�A��pɀd	E�D[���2v�H�(d�d��bP�HN���raM[�:K�����l9m(�4�i^][��Je��!qR^�v����?'��a>��|1��=��N�+9G���Ҹd�)P����h�G�f��\���t6<2�(W��>1e����Y��	t�������_�jK�ظ�$�!�H���'#r�^�߳a�{/;�7.)�Jm��Yg /.z�@�μh�t5��ggWn����!1��,��+���Z�3/쓯�}��G�+��QN&X�"�hl�nya�P�WM�,S��Uc�F��uT:�X��ٟ���"f��"�������N@�N �m��?��T'l���T�|��*p��B�8�D��p<Y�W��3�SK@�f���SB�S'��v��j�zy���ӫ��T�3q��JX�8��*�"Mq2����3� !��<)ѻ;ZK��*>�J��-ĥN����d	���U��-ÖxK�zzy��i�=l��D�zhs�[��͌��轝Ƚv�p�wMo��R_������o��3}}?w���N��DI0�@3e�e��0���"~�\~�k��p�N6ɟ���x�L�=`8������!c���y���%�=���'|?ox���(�P�j�X١:�U*�|���P�x�HQ����F��W\g|�e��On*.�׽h���� X��2�o#<�9�L���u�[��x�y�_6 �8����V�/��R��|C"�#�dy-��ޓ�+�lSB���k�֡]�=��^*��@�hӚ\�k� �Ε�Yn�i��>ti�8q��$�N@�lXfE�:�Pɲ��e�A�d���k��D��,�u�P������-(��JN%��.@�od�	�H��L�����t<Y%�r��=��k��������4��/��@4}y�\��O�F�Otnd*�@E���S�s]� I�"͓[镘`-&֘J����q@�$�
�&�@�%�BT��oV��ȫ�yE9�4-k�2R:�A-J�H���V��k�5�<�zuE����A����X[�ۖ�Hoy�8D˘|v��!´�mT:�}cx9L��=�m��x�kuW��ź�s�tm�3ᓗ��6zeN�/��S��L��u_Z���u���U<�Qj�TY��C�/�U�{K�M>"�g���7)�L���^tzx ��J�Ư���-Fv���h�6��؆����3x�X� 4���(�j+kV(ݹ�Y��.���p1p�8c��t~�~;r�L
�^S�|�-���'�CG��pef�ڒxA^gl�d�g{�n��3
��t=��ɡ��b��ކ�,I����oQ��@���SEC����F�qC���-T�S�(Ӄ���{�#�ǵ}`�S� Ŵ_�k�Q�R��Z��lP'ۧj��>7x�=3G��[��Y�צLD%[;��e��1�	!t�$~a+QSj�ʋG�q�^/�MXԦb�]�?`3�������7��ݕ�e}8_��A�a�S��e3����bΘ���k:���?���>�b@�%�7�6��f����EUIo�L�n��\������eV��T�nܤ�جk�&�����3�^��<� ��A��B?k�=_���}��^���3��ZG�AØ��[e�lI�v~>��yE�}^�Ӫ�����%?Yޗ�Q�?��N�R�܇��/�s����B՛��)������
Iu�@l��3�� ǯ�;J�Hqr���4������������$��������~�z$�'����T�q�u:�����{��#GN^^_^=j������s��bmo�����=)����ţ[{� �Gws�>�D��p����B�{�B:�,ƻo swnvp�-�u��m���w��NW�xo���ȃ���a�����b����$m���v?
p -��v���9�D����(f'��G��ؿ#�U9�=�BL?V&�la��;�|����,��1-��g�@�2k�|A����Ƀ`�0��/�e%E����\��Q�N��>�{�RmR	WN��)UL�(\Z�=dul�� :TA�a��|�J�ڻ-0��t��E��I�ܼ�?(�"D��B֏s��l�>�����ԕ3e�=�|�wd�PW)T ��9�t#�Čh�+Ve��I����������"��P��4I�!���w��V�4��~y�̺�� i�����Ф��*#�����+�B\��s�Bɑ!�N$���=�˧�ڟޙbX ���F0���*�$���� ��(��ay��ȴ����S�V���T��
\4��U=e����Q������0'?�[���\F��ȑ�a���z�0�N�|����g[�"v�Tf��W֗�s�Һ�)�wo�ݾ��~.��IE�P�F%�|M�"��.�h������1�#�ޥ�B�7�|W� `B�n=���֛�@�ܥ9��(�Y�`�Ccc���:Ű50��;2E�4$�vo;b�������Db2ըo�`o��@��;�s7�x���{�ǂ�1�kH��t-_yj�p����T�_b�=4 �0,��?�M�(�^NV�D&�U �D4�~A,>�OHl�ΦH�$�5�Tb���{��ѐׁ����N��\�Rf�i���G;���9���2!��t��ǺN�:x{��s�e�h���rq�t(ٮ���~��߰ŵ�%����k�uD��{K'�/�O�Pz$⁊ɜ.�x�n씕	WDJ�9���9sG�R���i9��}6��zv���-�	$�Px|�%�n�n�������� 9�$��#��ȡ��d}��Z@;lVS��X�����Xv��z~�p��R�߇���Y�cH��Z�����?�i�~Z: �L��E�>r��n�GVO�e@eɗ�2D��z����G艌�*H�R�&�q[�|�����N�,�M ���z�o+p��h4{Θ����&H��ƹh�+Y��S;+dەE��V�er��P��S��ٌgVd.g��n|�˥�Ī�� K�L#֞��H<X��6�4V�ӭ��x���`5���K��[=�p�ec����j%��9��pSSk�ay?�֪h��`��g'���   ����sb+d� ��&�1U-��ǁ|Jܤ NG���A��C�u�9 ��1�����?�!�?��N" �Q��C�ϵ�s�D&��P�,MQ�[�H���~�="Ε%�1x�j�5x�#}���F�;!hC>�<��J��M!�Ҁ��]ʋȪ���w�n���d����6?��gJ��Yg��������'$�o��x�Ĥ�b��6��!�f�픁��E3�c/�l[;��*��)�u���5�W���2�뛈<)Fߔp�`4����l@G4��3�2��d0���脮�՟c�B�����c�KėHG;�*:��;��:����#�=`Cڎ�E	�|���Έ����@u'��lY�zg"ųMj%��2
���lڦ�i���GgS0w/1�C�ww��	�D��4�����zi�1/�ѐԦ�`�;"��kk�&L�2]��j��&bƗք�<A���12�L�o�$��tt;`�D�^\GL�+�Mw��� �|cx�)��d
�A@�v�V�i��$p��VL�j~[��>E�)��5h�n��uL�CR.,}��p�zm8���~��{lл�u�p��Ż����$k9�W���'�|La8�Mݒ$���?9�a�{F)𬇤��7A��$D�xj@����;$&���<��KN�@�$	L�����h���BA5^�-��I���}f���ѭL�s��ط!8N�����}j5��ӝ�?8�\�ő#���6�9rd�`��΍n�A��<�[�$`E�%S�&��XOuQhw\��7��eGO��?v�Dwvq�.i�ߴ����Xt�s�OGFT��!nQ��;�~�jg_�Kmq�Vu��Q�G#��4������)�I�·��\�ai�4�(��3�4�	U
��G��F�3(d*c���j� Og��׃�.f
�C�9���=��N����N��4q�-�A�ő}��o�Ә��f͇i��q*�h���~����t�@:�7��s���N��y����Y��(5z�������@�?�;;�撊i��@dU�?zWO���t(�Z'(X�Z�xb�r��-�B٬J7G�`��_2����Kn�ӯ���ZM���㐻��;����d� �\'���܌��0Ƣ�EB�唢&��^��5�F�2�>�I�."�Ժ���Z�ȩ3Fi?G�źA�5:��_J��9+�ɘ����;X;�s�M���6Sr�A}�CX.��S�'�,� zS�iEU-���Ι,�E}t�3��v��p��.N�4Q)*����8��O#�STw|b�zd�w��la�,Nd'#MRS��^��^[�׆_�i�I
�G���`��2�y��K��4�u�OnR���ͷHh��Ѡ�DHJ��<2��ͮ��n��u��I�o4����w�v�p�GVƆI�O�$�0�\d�9�:��Bͣ�u	XY���S�%6픑!��6�l�B�K��헵�ғYQ �u@��AЈ.C�Gbw���2���0y����Sc�M�g�$wӺ�o,�0`��I�K˖w5��6�k��vg��eݪI�ՏU�)�M���<���,c���ޗ���%��Mp��t\��b��j�w��z�1e찡gd|"�L}��Q������w�����gEg�z��zjW�h6��@��M�|n{A����z���� ����n8�/혇_eܣ6�Pn'��P���RZ�)��G��3%���T9���UpA7�\�Y+�����Q�k1#Y�D�D),t�8j��{ˬ���}Wx(�(��!���ǜ��Re2�X�����΢��J�W*��G((�c��~(@�yE8�ᅛ�>uxf�P��f�����
G�����/.�� �-�nwinqi�xg~�豹cO|�_0�2}�eAK_d���.��a��|P�b�L*����E�ٮ��:-�������r9���v��l-[� �K��ѭGw�{��ێ�(���.�m�R��X����"[�00���}���͎��5����/���)����o(��$! ��!T���G{|��Wtw��mi��[Ɏ��(o���.�fgf�/.t킙�PN�I�񽸽!U"�힌���볋'�'���(��Ǐ�'����������yg�� �����lܓ4FG��R?�I�]�>�uB~'6	=p�����=*��6�&�{�Ћ�0g�����$���P��6Q�Ɍ�:��cz��G�~�g�!�U4��X7�(��7q�����"�+��}M�X	$���%zE�u2�/�����&���CKo����zR��al��H�n22���g�t�>g�!�������"Nk�#Y����9��.����[<=b'���r��2��W>]/�#)fx�/��=x��9Quof_ �<T��h�u!����7�slE�s��ec5���J+���whZ�w�)s_5�����)o]��댞�1�U���	��-�����H �i�T}����Ք�)''�ٗ���[OHzDH�V��\nC&S��zK78L�%��1b]�w�9�4L�A=���p��V��N���w�zu�Y*��k"�D���[7��NR��Ϩ�ܕ��K= ��&(F̼�>:��|Co�ƍ]���ӒGNS]&�� ��L�߼�˵Y�A�D�
�ͧ����`�i9�k)�y;CZ~yώ�ZU�<�Qep /<�G����6i�g�/�+�WKv������ۡ��붃CIǗ� ���W]�]���H��@kI\��M���o����R�$�~=�9� ��<� lu��SS�YTR����j��d�c��@�ï��S��1�����<8)g4�T.�\�#� �,��ؚp��et�Omy�b���@ݘ���,�{|4����H��O���,�V��`��!�q���˳�f���
����>GOa.>���}�i�>�q֌}j.��:�1��֥�q�����0�<Ve�<i���k�f�X�=��PQ��+�q���K�rܰ����H�/���}5m
�`	SnKj�>�Ps���K�pٍ�����i�ܔ(��7�bCq=U���w{]}��b=�O8w�-˩�g���f_q�|1�{k�SU��I�}e��<��[�������_�7|�@{��7�L�����Gw���)k��;W՚*�x��?'�Er@u�J���bC4dv��<n<�y,{�}n��ͯG���ўO�<�5��cUF��h4cƑ���V㖲�?6Οα������̘�J�'�-�&�T���w�_�vg[�{������2?�x�'��v�����y4��6�����w.�^O�w���OC��W;�_�k�f      o      x������ � �      p   4   x�3���q�wt����2�p�B�\���!��G77.'4(���� �(;      r   t   x�3�4202�54�52Q04�22�2��3123���'e�%��y�
!�y���yP��_zF��c'�SQJObCKKc��������\L9NKcsCN#�? ����� z�)�      t   �
  x��ZM���>k~Ŝ�K����,m֛xW�Dʮ�����,E��XW��>E��A`؍a�ְ,�ȁ�����3�V���&�ȁ-�B�<3���EMoimMSTU����G�}�Pm]׮�I����gy9{�O��~Kk�(�R�%�MUm릥;�SC�!���C|T�LС�d!�\ǚ��$L�S�)D��nI!}�[9�g��e����=�$��z�>�W������r��\�^���-��%���0!G4P>NSf>	V�T�X^�Ȑ3�:��C<*g?Mj\�(���zZ�@��M�y��9>����C?)g��d4	�l��r]��Q�S!UG������'8-޺8-�.>N�W�lSd�K*$b#c�X�I�?�X�	��kݳ����V�yJ7M�^3MC��nfḜ��L?OR�LE�:QG
�V���8/;ˀ<��� ou�0���o\Xn9;�\ފ����:r[��'���������!'������;؉��C�j}��͔�iL� ����a..lu�6��Fp	A4��<�:
"��:�GQ<{;{]���3�|�QdʦOb���'��N�4t�p��iK�؆�/��pPO�L@b ҥ$#\m���2u]��_��=��	����R�|9r�k��,]&���dL!8愾����V?)C�&$�*���w����� �W�Zv�E�T����9r��_O����#����`WBd���T!���~��r���nmD�R]E�\���z$·��lW�)�X6r�D���{ m_���ј��y�D��+���}����4^l'�p�����(Sp�#�bU�s�Ju�0�"ZnQ�S�7L����K�N�����V���1���ٖ��� MN�z�Q�x��Y\u�t�X���B�/1��<d[�B�dw�Ƌ	�)p�y�z����f��T:@EN�����ކ�=*�;�1��� �jCz@*k����F\�шqRm�	��,'>�W��G��,�WE���]p�>���[����Q��w!M:U��دj���M�%jirZ�0 ���)+�A$yav��49���}�A���~V��8�}p���L���G�@H�j#]�j+��`�y@i̫�=�%�D�hH�3��Q`�a`�|�+L9n*7k������#S�UX>} �a:Y�Vy43��(�Tp��: �wv��0�
+z�B�t^�,��>gI*�"H1tH<@�g¿����=�F�L����5��-f�P>B���>(=s&�g4zK��M��H�1��	���@��?&̕�F�\�������2����ա_�	�GX�����T�,R��������쀭�6 �H�1�K�d��������&mD��*��P��u՞:h@t`�2�`��%�tx���dB�#l��6�)�x�G�w3�^m���L9�@RLxe����%�!���	W�]?8�G(�(̼T��F�㫄LGsd�eBm��xCh�i+J&y@�v��UVz\.�{��a�h}�^�SL}ya S.��Vk&>�|L��	K�"����B�m !��	�GbLYr��6+DauS��DGT�c#k�𢱞A�x��O��rY�u؏�
!�씳W�b�݄��]]�1<<K.�W�.OZ�֭��b�W���������]eq��b8H9e�,���߫����=�۰}pzr�s�xzl��*c�7�Y�A�����'8���	���p���o$�%���<UviF��hȒnm�:qp����bS鴑%'5=H��`�8E���Q�Yf�<�=T�좗�#��BE��kV�ԸIkP?�k��3��������łF��E#X� [�h��1�+�xӈ윂l�3�Bl����0w�!�c�rU�rf[�b��f��M��Ж��z���Zvj�s9F��pr[;vu�b�>0��z��:����X���{�	dâ��?���p��C2�c�7���h�������:rq���J��0 C������B֫6[[t�~H���F9��=���=���@d����&�#'f���e����x�?���.X�1��q�	�-�NSF��a���������A\c�?�˙8�����9�}�2�h*A�r_�}c�xh_L�'4�Nc#�-!��=�8�.L$����zI���Y�xQ�h�ܬg�!ٮ�ˍn�6^N�H�4���hH.`^������XlQ+d�
49���dki�hƦe/'�l��G�zm��Ԅ�An��=����Ii���)K
p����<�4J�WmŪߺ�;���z���=�����ū���E��_]\ut��w$7�ccq]�)���{e��3"`(���_4eG|���9��$F�4��=^Cr������������b�%�U�t�5�U�p�EoX�%����P�|v��fg�i���Iβ%=��aQ�=X�����%���.³�D�����r<h�x�l{mo���w����uL?���sBp��Y>�UE��྾���8�ª?����绮��d²̯%�u�H6��*r]�Q�0�^�Q�xW�zU �'�S��Ma�vUn�Ru�vyǩ��]�em�ʍ ����Z�]�o��L�ɍ��-����j,,�˭�r��L�]F��j4.c�-j�g쭌-r?�]!���!j�*њ��$���n"������      v      x������ � �      x      x�3�4�2�4�2c#�=... ��      y   �   x����
�0���Sx�qw��ēFT�VP����`+��֧�AR� �s�]�����>��n��$(e�tr���o/�sEV]2W���zi�G�=���0Z�@!H��<9��A{���9��A�Z�iYu4^�c��%��O��Iz������C������z785Tl(�|CT e���c|D3��9���w#     