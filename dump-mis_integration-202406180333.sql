PGDMP         !                |            mis_integration    13.3    13.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    58387    mis_integration    DATABASE     s   CREATE DATABASE mis_integration WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE mis_integration;
                postgres    false            �            1259    58401    summary    TABLE     �   CREATE TABLE public.summary (
    id integer NOT NULL,
    lob character varying,
    cause_of_claim character varying,
    total_claims_burden double precision,
    date date
);
    DROP TABLE public.summary;
       public         heap    postgres    false            �            1259    58399    recap_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.recap_id_seq;
       public          postgres    false    201            �           0    0    recap_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.recap_id_seq OWNED BY public.summary.id;
          public          postgres    false    200            (           2604    58404 
   summary id    DEFAULT     f   ALTER TABLE ONLY public.summary ALTER COLUMN id SET DEFAULT nextval('public.recap_id_seq'::regclass);
 9   ALTER TABLE public.summary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    58401    summary 
   TABLE DATA           U   COPY public.summary (id, lob, cause_of_claim, total_claims_burden, date) FROM stdin;
    public          postgres    false    201            �           0    0    recap_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.recap_id_seq', 54, true);
          public          postgres    false    200            *           2606    58409    summary recap_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.summary
    ADD CONSTRAINT recap_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.summary DROP CONSTRAINT recap_pkey;
       public            postgres    false    201            �   �   x����� �˻�,�ҟ��ho^PkӨ4���+�D��u�0JC3��>�7ص��]gP��f3�B�h.��I2�
O�۳���X�ʙ*0Kh�{oQ�d�u�1�g��x���.}��G�9���LP�5?ÿ�K�7��H�{�����������sBt^��W���:9�N��S��6B�7���          �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    58387    mis_integration    DATABASE     s   CREATE DATABASE mis_integration WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE mis_integration;
                postgres    false            �            1259    58401    summary    TABLE     �   CREATE TABLE public.summary (
    id integer NOT NULL,
    lob character varying,
    cause_of_claim character varying,
    total_claims_burden double precision,
    date date
);
    DROP TABLE public.summary;
       public         heap    postgres    false            �            1259    58399    recap_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.recap_id_seq;
       public          postgres    false    201            �           0    0    recap_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.recap_id_seq OWNED BY public.summary.id;
          public          postgres    false    200            (           2604    58404 
   summary id    DEFAULT     f   ALTER TABLE ONLY public.summary ALTER COLUMN id SET DEFAULT nextval('public.recap_id_seq'::regclass);
 9   ALTER TABLE public.summary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    58401    summary 
   TABLE DATA           U   COPY public.summary (id, lob, cause_of_claim, total_claims_burden, date) FROM stdin;
    public          postgres    false    201   �
       �           0    0    recap_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.recap_id_seq', 54, true);
          public          postgres    false    200            *           2606    58409    summary recap_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.summary
    ADD CONSTRAINT recap_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.summary DROP CONSTRAINT recap_pkey;
       public            postgres    false    201           