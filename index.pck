GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex-      �      &�y���ڞu;>��.pL   res://.import/test sprite sheet.png-9e1476ff709b36d1b4d1039ae116d1ca.stex   �C      R�      *%��r�"Ep#   res://Game.gd.remap �3            b3`���ƀ��YPM>   res://Game.gdc  0      P      ]"[f
Aj��L]�����   res://Game.tscn �	            �yW�4C��k�Tu�)   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://den/Den.tscn  P      n      u���ʰ�s�}�M$   res://harvester/Harvester.gd.remap  �3     .       �w%0����?�f�    res://harvester/Harvester.gdc   �             �~������Xл3k2    res://harvester/Harvester.tscn  �      -      Vy���`�%��Ѫ
�$   res://healthSystem/HealthUI.gd.remap4     0       }�X, ����J,{���    res://healthSystem/HealthUI.gdc       �      �pf����a�
�8�8    res://healthSystem/HealthUI.tscn�      :      ��������P�/$��$   res://healthSystem/PlayerStats.tscn         �       ً_*#�2��}��$   res://healthSystem/Stats.gd.remap   @4     -       ��`Οh�S��P��#   res://healthSystem/Stats.gdc�             ��ٯ�	����o��p    res://healthSystem/Stats.tscn   �"      �       r�G����:KRJ@�8   res://hunter/Hunter.gd.remapp4     (       	eY��`P�j
�   res://hunter/Hunter.gdc �#      �      ��<�rhm�����   res://hunter/Hunter.tscn@)      �      ���"$L�N\Qb�   res://icon.png   5     �      G1?��z�c��vN��   res://icon.png.import   �2      �      ��fe��6�B��^ U�   res://player/Player.gd.remap�4     (       ����]{�ZNJD��l�   res://player/Player.gdc �5      �      �{6���]ۋ��GS�Y�   res://player/Player.tscn =      �      �a�?%�d鋇��Y^�,   res://player/test sprite sheet.png.import   0(     �      �?�у���V��䖓   res://project.binary�A     T	      _ߑq���{�5� j$   res://vegetable/Vegetable.gd.remap  �4     .       8��,-�u�NWq��    res://vegetable/Vegetable.gdc    +     �      �)2�㈋�y�n��/Cg    res://vegetable/Vegetable.tscn  �0     <      ��D�l���Ъ�        GDSC             ,      ���ӄ�   �����϶�   ���������������Ŷ���   ����׶��                                                 	   	   
   
                                                         &      '      (      )      3YYYYYYYYY0�  PQX=V�  -YYYYYYYY0�  P�  V�  QX=V�  �  Y�  -`[gd_scene load_steps=7 format=2]

[ext_resource path="res://player/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://vegetable/Vegetable.tscn" type="PackedScene" id=2]
[ext_resource path="res://den/Den.tscn" type="PackedScene" id=3]
[ext_resource path="res://harvester/Harvester.tscn" type="PackedScene" id=4]
[ext_resource path="res://hunter/Hunter.tscn" type="PackedScene" id=5]
[ext_resource path="res://Game.gd" type="Script" id=6]

[node name="Game" type="Node2D"]
script = ExtResource( 6 )

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 512, 300 )

[node name="Den" parent="." instance=ExtResource( 3 )]
position = Vector2( 874, 169 )

[node name="Harvester" parent="." instance=ExtResource( 4 )]
position = Vector2( 98, 113 )
player_path = NodePath("../Player")

[node name="Hunter" parent="." instance=ExtResource( 5 )]
position = Vector2( 221, 42 )
speed = 100
player_path = NodePath("../Player")

[node name="Harvester2" parent="." instance=ExtResource( 4 )]
position = Vector2( 574, -13 )
player_path = NodePath("../Player")
horizontal = false

[node name="Tomato" parent="." instance=ExtResource( 2 )]
position = Vector2( 62, 498 )

[node name="Tomato2" parent="." instance=ExtResource( 2 )]
position = Vector2( 619, 497 )

[node name="Tomato3" parent="." instance=ExtResource( 2 )]
position = Vector2( 515, 501 )

[node name="Carrot" parent="." instance=ExtResource( 2 )]
position = Vector2( 416, 503 )
vegetable_type = 1

[node name="Carrot2" parent="." instance=ExtResource( 2 )]
position = Vector2( 326, 493 )
vegetable_type = 1

[node name="Potato" parent="." instance=ExtResource( 2 )]
position = Vector2( 236, 498 )
vegetable_type = 2

[node name="Potato2" parent="." instance=ExtResource( 2 )]
position = Vector2( 152, 493 )
vegetable_type = 2
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=3 format=2]

[sub_resource type="Gradient" id=3]
offsets = PoolRealArray( 0.450262 )
colors = PoolColorArray( 0, 0.015625, 1, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 3 )
width = 50

[node name="Den" type="Node2D"]

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 1, 50 )
texture = SubResource( 2 )
  GDSC         ;   
     ���ӄ�   ����Ҷ��   ����������޶   ���������ڶ�   �����Ķ�   �������Ӷ���   ��������ض��   ����ⶶ�   �����϶�   �涶   ���������������Ŷ���   ����׶��   �������ض���   ζ��   ���ⶶ��   ϶��   ��������   �������϶���   �������ׄ�������������Ҷ   ���׶���   ���ׄ�   ��������������Ķ   ������������������Ŷ   ��������Ӷ��   ���������¶�   ���������Ӷ�   �����Ķ�   �������������Ӷ�   ,           �                                                                        	      
               $      %      ,      -      .      6      ;      A      B      C      D      E      F      G      R      Z      `      i      o      p       x   !   ~   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9     :     ;   3YYYYYYY8;�  Y8;�  V�  Y8;�  �  YY5;�  �  P�  QYY;�  �  T�  YYY0�  PQX=V�  &�  V�  �  �  T�	  YYYYYYY0�
  P�  V�  QX=V�  &�  T�  �  V�  �  �  T�  �  '�  T�  	�  V�  �  �  T�  Y�  &�  T�  �  V�  �  �  T�	  �  '�  T�  	�  V�  �  �  T�  Y�  ;�  �  Y�  �  �  �  �  YY0�  P�  V�  QX=V�  &�  T�  �  V�  �  �  T�  PQ�  '�  T�  �  �  V�  �  ;�  �  T�  PQ�  �  T�  PQ�  '�  T�  �  �  V�  �  ;�  �  T�  PQ�  �  �  �  T�  PQ�  '�  T�  �  �  V�  �  ;�  �  T�  PQ�  �  T�  P�  QY`[gd_scene load_steps=5 format=2]

[ext_resource path="res://harvester/Harvester.gd" type="Script" id=1]

[sub_resource type="Gradient" id=4]
offsets = PoolRealArray( 0.513089 )
colors = PoolColorArray( 1, 0, 0, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 4 )
width = 50

[sub_resource type="CircleShape2D" id=5]
radius = 25.02

[node name="Harvester" type="Node2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 1, 50 )
texture = SubResource( 2 )

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 15
monitorable = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 5 )

[connection signal="area_entered" from="Area2D" to="." method="_on_Area2D_area_entered"]
   GDSC            s      ������ڶ   �����Ŷ�   ���������Ŷ�   ���������Ŷ�   �������������Ŷ�   ����ڶ��   ����ڶ��   ����Ӷ��   ���¶���   �����϶�   ����������Ŷ   ���������޶�   �����޶�   ������¶                       HP =                health_change      
   set_hearts                     
                              !   	   ,   
   2      =      >      E      N      O      P      V      ^      f      q      3YY;�  9�  Y;�  9�  YY5;�  W�  YY0�  P�  QV�  �  �5  P�  R�  R�  Q�  &�  �  V�  �  T�  �  �>  P�  QYY0�  P�  QV�  �  �3  P�  R�  QYYY0�	  PQV�  T�  �
  T�  �  T�  �
  T�  �  �
  T�  P�  RR�  QY` [gd_scene load_steps=2 format=2]

[ext_resource path="res://healthSystem/HealthUI.gd" type="Script" id=1]

[node name="HealthUI" type="Control"]
margin_right = 40.0
margin_bottom = 40.0
script = ExtResource( 1 )

[node name="Label" type="Label" parent="."]
margin_right = 42.0
margin_bottom = 14.0
text = "HP = 3"
      [gd_scene load_steps=2 format=2]

[ext_resource path="res://HealthSystem/Stats.tscn" type="PackedScene" id=1]

[node name="PlayerStats" instance=ExtResource( 1 )]
             GDSC            F      ���Ӷ���   ���������޶�   �����޶�   ���������޶�   ��������޶��   �������������Ҷ�   ����Ӷ��   ����������ڶ            health_changed            	   no_health                                                       	   &   
   *      1      2      8      =      >      ?      @      A      B      C      D      3YY8P�  Q;�  Y5;�  �  9�  YYB�  YB�  P�  QYY0�  P�  QV�  �  �  �  �  P�  R�  Q�  �  &�  
�  V�  �  P�  QYYYYY�  �  Y`[gd_scene load_steps=2 format=2]

[ext_resource path="res://healthSystem/Stats.gd" type="Script" id=1]

[node name="Stats" type="Node"]
script = ExtResource( 1 )
max_health = 3
               GDSC         4   �      ���ӄ�   ����Ҷ��   ����������޶   �����Ķ�   �������Ӷ���   ���׶���   ���ׄ�   �����������Ķ���   ����Ķ��   ����������Ķ   �����϶�   ���������������Ŷ���   ����׶��   ���������Ҷ�   ������������¶��   �����������������Ӷ�   �������϶���   �������ض���   ���������Ҷ�   �������ׄ�������������Ҷ   ���������׶�   ��������Ӷ��   ���������¶�   �����������Ҷ���   �������������Ӷ�   ����¶��   ����������������������¶   ���������Ѷ�   ,     
   monitoring               hunter is eating      hunter finished eating                                                            	      
               '      0      1      2      :      <      =      >      ?      @      A      B      C      N      W      X      Z      [      \      ]       f   !   j   "   s   #   t   $   |   %   }   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   3YYYYYYY8;�  Y8;�  V�  YY5;�  �  P�  QY5;�  V�  W�  Y5;�  V�  W�	  YYY0�
  PQX=V�  -YYYYYYYY0�  P�  V�  QX=V�  &�  T�  PQV�  �  .Y�  �  �  ;�  �  T�  PQ�  &�  V�  ;�  �  T�  �  Y�  �  �  T�  PQY�  �  �  �  �  YYY0�  P�  V�  QX=V�  ;�  �  T�  PQ�  �  T�  P�  R�  Q�  �  T�  P�  Q�  �  T�  PQ�  �?  P�  QYYY0�  PQX=V�  �?  P�  Q�  �  T�  �  Y`     [gd_scene load_steps=5 format=2]

[ext_resource path="res://hunter/Hunter.gd" type="Script" id=1]

[sub_resource type="Gradient" id=1]
offsets = PoolRealArray( 0.513089 )
colors = PoolColorArray( 1, 0.421875, 0, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 1 )
width = 50

[sub_resource type="CircleShape2D" id=3]
radius = 25.02

[node name="Hunter" type="Node2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 1, 50 )
texture = SubResource( 2 )

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 4
collision_mask = 8

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 3 )

[node name="EatingTimer" type="Timer" parent="."]
wait_time = 5.0
one_shot = true

[connection signal="area_entered" from="Area2D" to="." method="_on_Area2D_area_entered"]
[connection signal="timeout" from="EatingTimer" to="." method="_on_EatingTimer_timeout"]
              GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSC   "   	   F   8     ���ӄ�   ����Ҷ��   ���������Ŷ�   �����϶�   �������Ŷ���   ����׶��   ���������������Ŷ���   �������϶���   ��������   ����¶��   ����������������Ҷ��   ϶��   ζ��   ���������Ҷ�   �������ض���   �����������������Ӷ�   ����϶��   ����¶��   �������������Ӷ�   ����������������ƶ��   ����������������Ӷ��   ��������¶��   ���������Ӷ�   ������������������Ŷ   ��������Ӷ��   ����Ķ��   �������ׄ�������������Ҷ   ���׶���   ���ׄ�   ��������������Ķ   ���������¶�   ����������������¶��   ���ݶ���   �����Ҷ�   ,     	   move_down            	   move_left      
   move_right        move_up                                                                     	      
                                 #      %      &      '      (      3      5      6      7      B      I      J      S      Y      b      i      r       x   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;   �   <   �   =     >   	  ?     @     A     B   #  C   .  D   /  E   6  F   3YYYYYYY8;�  YYY;�  V�  LMYYYY0�  PQX=V�  -YYYY0�  P�  V�  QX=V�  -YYY0�  P�  V�  QX=V�  ;�  �  T�  Y�  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  Y�  �  �  T�  PQY�  �  �  �  �  YY0�  PQV�  &�  T�  PQV�  .�  �  .�  T�  PQYY0�  P�  VQV�  Y�  �  *�  V�  ;�  �  T�  PQ�  �  T�  PQ�  &�  �  V�  .YY0�  PQV�  )�  �  V�  �  T�  PQ�  �  T�  PQYYY0�  P�  V�  QX=V�  �  T�  �  �  �  ;�  �  T�  PQY�  �  T�  PQ�  &�  T�  PQV�  �  T�   PQT�  P�  QY�  �  T�!  P�  QY`[gd_scene load_steps=11 format=2]

[ext_resource path="res://player/test sprite sheet.png" type="Texture" id=1]
[ext_resource path="res://player/Player.gd" type="Script" id=2]

[sub_resource type="AtlasTexture" id=3]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 0, 0, 430, 380 )

[sub_resource type="AtlasTexture" id=4]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 430, 0, 430, 380 )

[sub_resource type="AtlasTexture" id=5]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 860, 0, 430, 380 )

[sub_resource type="AtlasTexture" id=6]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 1290, 0, 430, 380 )

[sub_resource type="AtlasTexture" id=7]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 1720, 0, 430, 380 )

[sub_resource type="AtlasTexture" id=8]
flags = 4
atlas = ExtResource( 1 )
region = Rect2( 2150, 0, 430, 380 )

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ SubResource( 3 ), SubResource( 4 ), SubResource( 5 ), SubResource( 6 ), SubResource( 7 ), SubResource( 8 ) ],
"loop": true,
"name": "default",
"speed": 5.0
} ]

[sub_resource type="CircleShape2D" id=9]
radius = 28.0

[node name="Player" type="Node2D"]
script = ExtResource( 2 )

[node name="Camera2D" type="Camera2D" parent="."]
current = true
process_mode = 0
smoothing_enabled = true

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
scale = Vector2( 0.167442, 0.181579 )
frames = SubResource( 1 )
frame = 3
playing = true

[node name="Area2D" type="Area2D" parent="."]
collision_mask = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 9 )

[connection signal="area_entered" from="Area2D" to="." method="_on_Area2D_area_entered"]
        GDST
  |           6�  WEBPRIFF*�  WEBPVP8L�  /�^�8l�F�M��Ū��'ɽD���_c�X� ��"fK� b&Kgc��NC��q��{�$br�"��3 ���Fer+#'��p�`���Y,9�7� ���haC�
^�lv��G��a����@�3�Б�N�n"�<��.�K�*�*-��,��aضm��'vADL �Nx�ʫ�Y<����	�
�#��< aK8�E«�NzI�JȨ��;$��\�}7P� :�yIb�f�:)�*�J]2䶪�g-J5��t�v��z��o:=���DÔj&2j� �+�Y�\��9����?����$�a8͛oN�*@��V���6)�%I�/"�&/rv��d��z*����733�;��G�G��L��Ak�Zk�I�LUE~Y �m#lc;�a,� ;�)��$H�X?�yy���]Un��� )�$I��(9gfAw��c��?f\�驪��� sEY�m�ms5 ��"��c�l����H�$���G�Y�YW����n��6�$I2����������Fr$)j��ݻ�b���)�	ӟ���������?���?��ǟ���������?��q����/t����P�͕�$Mb�('����w�����ߪ�He�@�\Tv������?I���$�¹�7jE2:qf����K�r�߭k�[��.]�p{����
�y�#O��ѽk7����3�w�-%���Yl(�u�Z��w��G�+��Ͻv���&��{��90�L��v��Q�����%3�p��z�^)��?C�f�����eE���/����W�
��41k�U��G.�Q{���`�ʋ+?����'��̕5'��C��~��3�i���}��>d�*v���?�g~��Q��VE�2 kc�=v��7��`��Sϼ�[{����O��/M[������ )�
5 ���}f�}7ZH��݇P�����}�K;G{���X�Ƽ��_����� �M�FQ�:?�E���I�e��ݒ<�H^��۹��>��H��I�':`���l�o;`�d����3����Z�G_���{5�e��gɹ�}�ֵ��[7>�3���ZY���$��rt��3=O/7a~��l�S����5,�꟡7z���]}��K���3�{���sp���?�c�.���";�����+2�72v��3=U/�;��^�A5S��)�x'l5z�7�Fp��`�G{��Կ�l�C߲����O���'>�������ɯH�;�2@��������rߨ� � r��?�9a�g�{����O��~6��|r|u2��3u图fvk����s�����7~����SSA)
�4�P���,K
��f��^RM3� +X!oЎ' D �ɻ�ލV����W�~��8x����L
���3�ȷ�����k��	q�t��[�^Y\�ԗ�������c9��9V��1Vd���l4�d噞��)����t��lx�%XQD,��̼�cP��X�Xr������z��7��{?:pn|�q�M*i�Cϒ�|Ǖ��y��|�\&V�����&w~᧞2 ��P4���z^��5���EB �i�N�{�aUK��L��KgT�&? k�O ��b�XEA�˟�4��lZ-�����B��j=�7���Wg{�8��0>���U��~ŅkG�~�O�N��}�zcr�S�8���lO��߰��hl�:�,X�V� �
���6z��_�n%��P���U]������g�je��4�R�J.��Y��O�B�nܻ�c1��g��W���}���_��.�<�h���o�K����;�ܙ����T﩯y�޽��>�c[8��{F���-��:7nl)(��UT$+D!`�h�պ�Y��_���L�{����LV������tFYQ1�(��uzNGS�jv��Gֺ_fE��4V�U�,�r�ٯ�Ig�I����?�=h���W�/�3o��37&/�Ч.d�#������}�g� ��W�&����X����Z4��ZeE���(��XeQU)����������V�'ʴ��{��xq����'o���(� 
�Cq�A��d����rn�~���0'>��2V0�a9^vv�!��g�7��V|qw�N���NY�k?�L=�m^;��}�J���<�nL�}�Ǟ{����~B!� ���3�ypkKF�(��$	�I4
�u8V!�8��'6��At�_(��ړ�~�q�fR��D4�X0�V��9��������o�m���unU�:�S@v�Wx�,�X%�B4�Д*c�u�3���w֣���o�5�?�:u�۞zm�+?�s��}�Xy��������Q�{y��h�!XQ�mE;w>�2���*J�$	&��Y1#H�z���x�!F�P ��eZ���_��zw�2� 
��ՋEfY�F��x��x�G����W}�[ ��XsWv�}I��N>��ZN�qM0���~�����7�Z����o�J��}������+�>��_����<��s/���o��5��Q����)��A�T��bURn��ybȺ���-}XdQPDY�d+��pZ��3�<�CP4y3I�őq��L˶���ҽ���UY���H&��s��d��&3��Fo�Ӳ�9����k�va`��2�LD2:��l��w�	A�Vk�`��( ������0�s�;�m��]#��&�0���];�������/zKqg6ٹqg�����l�8z��k�����d�|rc�U49�0�����ޣ=��*��`q5�<����t:�g1CA��+�(�LVI��9{��D�&Lֽ�K�'d�.���/��ūƃN��ȋ~�/�^�$�;;�Y��ڥ�}�6��ʉ)g!Ą,��@\��V�,`�u�֝�h<�Y�����6Fo�U:�&cɮ,̻���{�_�m���w�j��>�KI��l�u�~��>s����ǭ?�i���ys���ޓ���k���ه����U�NcK�Z�@bUdI�*�,ˢ�ɋ7;[�7ʴ�_�����ɤ,}}ID'of7���'7��o�yu�a�X�w��{AɉK�<s���3�MQcE!d�f�<x��i�{�����lrurUw~t�!�� ��[�l|��O����I�.}�ʃ��^�+�i�T��V:*TE�a:kO|�}�?�{�C�.���yp0a�vz�û�@>�ڄ�����$����_=������  � Q��
 V0!�E��W��=�7�4rG��_j��x���ח���3v�A�ѻ�膘�zvvt2�\��?�S/�dkW�:s���v !�i�P,&��T�����Ν����b�a�曋�y�Y!�=�d��{��O}���,&9?�;������{���K/�m�AC!Pܢ8�,\��S'��N��[`#D�Ao�Q�����G.N�P�[?��GA67&�֛��e���� �@���*	V�"�����E�%�}2�ٹ{�����وg����7���N�۹s��F�>�.�..~��>�׎����D�l�S�έ[[-�&.>L2X���\�n�@p�N�����ʂb2:y��ƃ��v��o�Ѩ��G��'�;�H��M����o�m���U;�n�zp�NQ�� �����w��W����F&V�c((K
�9���W�F��IM]֍�����0���/�=����W�}�3�"
�
Fg��F+FZ�=O�A2}zB���{��g�n��(�����Ed'�e[�zVop�V�]}����n|�~�S�,Ș��S���Qة@qv�4PU)(���R� /���+������;�mX�������;��@�=�5��c_��H'�?��YV؆�G>f�|��M�P�{��^�Y����ʠ�f�^Z��oz�cϽ�l#Q0	#��kY����l�>�[_|v�!��7�y��W�Ν�D�Ջ�W�֯f�C��`co���b��ś��'��(�����~i���m\���$����ƍ[���zt���9��4���>��K�* �,M�
��k�z0�FW��zg��d�K�D�y�7ʃ;�2Z^��5MD�ﾻB!dxG���̉��k+̢h
B�	& T��(`����8��=�Ԋ�}��~ig�s#��6��{�־��S�vQAò((�8z1C{�g�C&WI���kp�NGѻ�����ĺ��G��ޝ�|�j�`I"@k�ރNcp㎲z���J�O�i��{��۳:{�l��Ӝ.����VB�i���{���޽x�������kG�cH@�0[���{�$�*B�v���U^� �����9��p�XDQ��*�
�f��ʄzO��R��C�4����x+~O�y��^;z��vF?׈�[�vɄE��%��0U$ !��&�Ѻug`Y;��b�?��c�n�8�M��Y��S�U�d�o=���"K�*I&���*p=���v~�|��U�?G�;����~	lyޞ3��K8�E3��5zb5�M
�r�~t��z��@�xpkgV�DӦ���z�Q�dUV �h��iL�E�(��C��D99y�a����Z-G�!� �C�1��gvB����-������Z��U��U�lD�s_3ڹ�3�;���O�}O�$�>0�vpˬ`A����(:G([����QU>$U���@q�?�� ��Փ;o��هP`W����م�z��No��'�W�y���L'��}��^�:hE�w��h��όx���[	.N.&�� LѬ[_|�|�-�z@���b��\�8K+���h��$�"��V�j��2&gg���� �Q��Ç�Eay^��X�b	}
"H��j��n8��g�`�����:U�d2�"ކt��}����oK��v�cx�G�>uƶ��&gG��B�*�a����Q��V���o��Cv	��4��w��wW  �������ck�����3�$9;zs"6>{�׻�['�x��0�Fr�����ڲ��jz[/�V��̔ލw:��jdYU�������|�;N�Tp�M
����$�j�м;{�MR�&�Fh�Ζ�;�#��yUv�N-�V��h2YTB��)���\}���}��KOm�	$M�v�ZF��@�8-f�lB��ׄ��>>����T��p����<�G>wp�g�;�=L����*D� ��J�z���٢|B@(�Z={���wn��V���u����wG蓟���Q��Wg���49p��}◄��h;���o�z��7Da�<��IU	 A ������<u&�rJP��w�(0����w�z$����U�����պ�]�$����0D虀*[͂�b���B2C(�	�z�y_ynٙg�e2'7�֝���$��4Z�j�n�Ȥ��69[�1��x���^��Ӯ��{��=8��ƑS&�����c���:������!T�Ň�D(NoР���4Hg�D�Y}{-G��$��7���*ѻ_��<�������w'+�����w��?����'��^ͥ���d�R���K�k�Fx��'�_�C�v��sf��eQE����,M!�6Μ0 @��QT��]�j+�����Y�\<;R�������F�a�s��`,��l�%	*�LT�`�h^�ʝB�<qi$���X�����E�������"�f�Ik3:�7q�c������~�S�=vf�SM�&E! [�XKV��+��]�ď=�a�p@���W��)��� @��2h��*�7_��2AD2:�ϠM�����G���|B��|��ن�ɳ7����w��7���L����_U^�i����~��N�O8[�n)GAV,����,�P4�upS�%�Q��E$F[�L����ά�i���A1*�ٛ�g���ۻ������U^��E��`�b+DE��  ����s�ʚ���vZ�Ѣ�D%�h�6���ł��o�<۩�{�Swv~�s'��K~�{Nl��z�ĩ��R�M�vvvv��ҟ{��=L�ɋߝd�zn���դjl(��e���;J�%G�B "*!7���?���q�'{���N�YO]r�ݻ����l�9J�L�牤Q��~)�t��Q��W��/���H����!���ś7� ��%D�{�d�(���/�L6ZY��p�{�]{P�=���AN�$8z&vPM���-����N�î�<P���w��xȇ�W�( ;s��C�"��8���(�EB��fX��cv2��z!PD�8[�݅ox�w�O�P�S��g.}�GY�:٠������vn|�n�ِSw/�VG�>D@snt,�²�����i���VDGo"�.����^Y�<l|��2y��d�Ȑ3��w�{O����"�?M����O��j�,��^�%0]�_ZԭyԻw�:J���٫dlx-B˒��r�T�¿���G>���=s��Fτ��oL|��N$W�Z� K�� ,8��6n���[���$�IeX(���U��ޝ�S[��L���e�Β"&3�lly��:�R���(���JFk�,&G��0�I�G�-o����� ½���/'�x��ڠ��fQLv���N�Ț�.&ɫ�|5bȻ�`�P��(V#�Jg˘,V�Tro�)���&�h�~�V$'_��>�jm|v˹:zw�H��bggʭ����*�Kd��g#���� �at�k�$�~��`�;CN��֫��]��wbc�E,���Ż�7ƽ��Q�#�O?����O���{��ܹs�/}�F�	4�����%�7�  d��:��=tv������8��&�{w����|��aм���lVT����(�`�V��r2q�I9�9���٠�kϽtk����Gf{���%)t�Ƶ^���A'M5��$ۺ�-8���j��/>DL<8L��ɢI��D�(��]v�/*���#'!=�n��{�N��'F4zu��L�"Ai���gz2�����R��2�K�$L�w���x��=vigR-����s]��Uw^{n���R���w�Y
@��w�7G{�Z��^���L�6�[��ޥKp��&�n%W
�۹q48wb0�pjq�`�� ��}x�C�w���
GUg �q��uv�z�hVd����J(e�����u��$I`�&�<���!��ɻ��|������č�ٽ3y�`��L�P����Fw��|߉";wa�F����ֆT �jc-�l%G;�xrꃰy�uT:�|�ٍ���y���ыWУ�����G;��F����E>eՊX��Lk���m�Kk�l�_J6�$����K/�\�	)�}/	���n�r�g��G`6�Y쫿x'n4�[��E��ޝ�I3��Jq*?���{0;�Ȩ�u�<�������p��j�lգqȁ`4-v�ʊ���(i5 
V��A�pz^49�Jy#dq�0��[w6�Q�-+z��(��� k������jqPSUEE�]1��.̎����A���::*F[��`mc�+�{�c<��d;;�����I�ArfG��[�=��5Z{�n<Rea�v�,*f'ΰL�_ZQ�����͚b�s�LO��H�$Ɍ�L�N1������Y]L�z^�59[jd�ҩ�3���{eoeU�����t��r����A��7���	���U<Lh&�@�Tm�2ggkP]DU����Ά�jv(;{-���h��U�3A��VgTR:����w'�|J޹����3/��Q,_(9q%�V;_X\����=���[��`��Sr�#������Opu��0x���rZ���A�R IN.6{5ڲ;��F��Q���KBuE��z�D��!��Y���Q�&��(J�(ˊ����FtUl�q��=vq�{'��+�[�j�ƍ���Fu��Q��ֹލwE�/�A�eB�&IL����:8�D"�$'�δ�@@������i)��^u5�r	�����m�fY&�A�vwW|�͒<�ȃ߷y>Y�Y��d�ʙ�I8x�F����F��^����'z̓�&qB��T0@�@��Bh^2����ޝ���3�΢��Շo.��޽�����8$[%Y2{���E��t��7�/z���0D�D���[޲��FP ���UT��**��Ȓ�ч��C�.��-ǹј���VB�]:7;p�[_i�r�L�ngΝ�٨�Mb_T��|c�F:��Q�n9�Q�%���mt��SDW����p�ƆS��X��bl�gU̀�Sz�ne�&�3*b+�Z<x�6��(���%m]1����+t)��)7]�[���E{�F(�@(e�� @�  ��&�!�6���{�G.�;W�Fo�]��΍NO1˂�w����L��ݳ�~i���~)��Q�q�L/3ƀ �qMS�;q�^[����I�s�b4Zlܱ[{��"��h�qE]���7vV�.�����ș��sng⻣k�m�f`�R*GHZ��^+��e������O^-�d�l��!�Ɔ�Z���[�L��X��(F�������ޝ��(�}�ڭOT����&�+g&��K6�v�V��֠���{� �Q��$F�De"�D(!���&U���*��*8
�� ��;���M��2�X]|8͊F���x���j�a�z`�����%0�_��j�\q� #�D#D+��#��U��j4XS>�t�g8�h~W[�8���+;�j�Ƶ�5­��+wF�\�ͤ>	~��5��&K�#¼��K��C"��ɻ��OVW�j54g��FAZ�q-�l�Yq���J��h�7W��7�sw�}ߣ9|�+T�2O$7�ٍ��9)�O-\jf;�l��ʬT{�ft�ܩAG�1cT"��	j*WT�d69:�k�h*����0;2�sO��^-NN�.&i�"XR��@��������(l�_
;���9q.���P�����X�V�"FckÖ[���dΞ��nT'��F�5�t.ܩ/�}�ZTGG{�&O��Z�7��p��7� �H�?z�w��
{e��͇��y��H���м��̲�f�9[�lU$WG�Y��y��g&����{�<#�X�.�]�Z,����N{���l��X[�V���\z�3�&4�D�	J� �\S5M5;Z����#8h����'n��':�ڇv��>�$�]-�fA"2:���C>�i�Jӳ�Rp�p��k/�B+[k��Ȕ �ȹ���YUT���u:��)�����,F���$;uftgQ���hW8��B��;�.�[2�;��X7��\8eP�����g�� �V�.V�}�5Yp)���5:^r�	��FI���$��n57n�W'y�Ƕ��k7~j(u;�! cVX#�qi�F3��J��7hfw̩�A��b�W}d����Q!@� 	A *
������j`�bV��S���\b���F�"K��(�a(�,L�Kӓ�ґ���jv�GJ$Y"�=~��
�9"2ʱ�V�ν�b1�:;�3hDW	��*�r���AQ�x	.}��.���/�_��#;YS�BA�  ��q�g�������;#D"
ޝ�NM�C���N���2�uiBʖ�]�dqZ����x���nm$�F��Ǒp��k{?q>��@
BH�J��~��.��f��ީ�U*a6�9�Y�P.��ۚ�#p D��q� �ʙ(�I8"G=30��$����Ɨ\�*���䀩ǘ`�<W���4=//�1��~	������{�Y��E��Q"ɲN��,{��%��L��ހ-�����.�;u%y�r{���XwK����<�M��Ϲ��N/hBC����T_�y�z�u���3+'N���"���$�nDzr��d�V�2�IVQYi��EPdW3�G��wW[_��G����v�:�ƭ��Yܒ�i-ª(+
Y��4ҹ�r�)��Y�����Y��-�� ^KF� ���  E�����H��l��%�n�L���XT�OZ<��~��X�!,M�K�0���2q��]���E�4��0�C�#z�2J�}AT�q�E��ÈO"��k���5s�:�h�s7~�֩Ŕ�8��֩�UEq�,�7z0t���z���L�Z���ĩ��NU�.�͜z��YGO1	g�C֠�&����ˢ��i���XM�`q�.��պqO{v��� l����2�.!ò������t,��9�];8��wn-D0g�-��s�N���`H 	AJ	#e�I(%���3�tV��j�W̊��״{��-.
���4�jzZ^��qv��9�$!r!
! ) _锈ޞG��*�΅��B���ιK�jq�S}K�'�G���h���EY�:+�8�!�X�F�Y��P+���'V��&5N�=x�Y�:ި�d�f�>��e��t<Ck4@�ʿ5�ِ(Vˉ&Y\h�jr��<�sz��ī���	  3�6��U,����d���������hf��Kf�n���ލ��U'�q.q����D%��QB RB�%&���� ��ɡ0&_��^����`�SM�� ���������f�K�%Y-! %�,���J�loC)*�3x�	% !#�R�QV����n,���9�9����w�G9�X��̅Τ ���huqq�H�p��"�br$��d�c�8#�&Us��J��3�#�ł5:�:�dU�,q��Q�L�@�! @6�nd}�cm=غ�0*} �����CM*Z&cݒ�9�����8����U"+2�̬mL��νQ�_2n�s�^����{�I��F(%T0A(aT�����F+��������%&3Be�tV����b�3ۛ��+9`͘VC�������D6D�'ޟ\ �C��Ѐ�{�uPJeD'Q�3F��D$`�$E�x�AQ=xmq�kX�1���B���8w�:"R�c+k+F'g�D  ?ub/($F�l��;��;;�f��;ӐE+��,Ck9,Y��bWD��t�$ˊUe�$��7��'��'ƫ7@�!J�	�@���sHn��p�58r[I j���tvZd1�
*��4���5	$��^��3;�e,ܢ(H) ��X@#@( Ad�`�"K�N�3Z[�8aL�:�^�S&Y��6��;�I��$[0�ͯ5H�{M��F�ӻ�RG�ߍt��m���Mbu�ճ���I�E(e��23H:�$�Ċ1I"T ι H\�S4;�];�}U!*&^���sJ��Z��Ylrvv�����@K� A@*@���Z��T �ѭ���+=|j�X�@�e)NC�E]�#u4�`�lV��2��׭x��{��&Q�Ȕ1
�2$� J�B9��r"� 
S���9W5��x���>`^X.��Ɗ/ ������:�D���8��I&"ƈ�-�e�� ���m@p B�"|@	�@��N'�B��|^/KL�d����J����d��� 0��z1m�_k��Nӯ	��Nvz^��K�Zn�Ň��;[jn9�b��^���z�Z"�T�^��B8 �HPU4nr�5s)�����]���Zg��(T0��X��ގ����� �o�\����p��	!�RB�A�'�IS��(�o��aL\q���:��MC�Z �E�aU���ݐX��ZE�2���j��L�w��8 �DY6d��LCJ)0d�0@J8@B�� Mh�B8rŬ(�� ��#O������ZNkkgO�&IQ% D�lh�I\��fT9��W��M�^`�꘢
W)�wXY�d�ʒ�`cee����Y^^3�UF�;Ms�qjMK:k��=��1y��Ҋ_R5� �b�_�Hv1)f�	p�B(�:�l0XKֲ��cTpM�̚j2+U�*GDA � ����s�+cɏ��n�mѬ��{7fa0���qp0P&'�&�T��3
	@�	٠�Eca�g(�F �@��� @P@�H� 
����W�n(�c�P�J�5���,++�|���PV�&��^��8�:���G_�I��S�PB)�% �~� ���	B��2J;
�b2���+��m� �G�yo����d4J�*��LkY�6P�E^������2O ��|,�i�j�f��i��F+kk��$�t������,*""�Ŵ-"y�i̬i�`���s�ӣ�R	�'(p��)�V2�kb�𸝈E\�g�d��Foec00	��(f�Iu�h�&T�B�@�@���+�'����J�-�l�s�\ػ����\�X��zpú:9Π~�!�F�L��I"h��E�l�J@%M�dE�%�h�N4����� ��	.#'Ѝk���ݨ����KV	�<�rZZdeM0���Y�����%�'_ܲ��~sT ��	�PB!@$H� �LP�aL�D"2�e2�(MU4G���g�S!8��2�hN�ƭ�8��*[��flcg���E���T�}����o"r���BӸYqTEC��hkm������6��&�Q�TR���b�9��;Mʧ�t�\�\x��<��IyI��2�8� *ׄ�8�3��s����U�q" @�aek�������Ţ�[5�ME�����E����!Hc�I.L����`)3H�Y�^�QM��S;;����hP�{5� <�"1���e5�^b�	Q�P �@@8�2N9CI�� E@
($AH � PAL�][�j�ƃΞ�I����pZ�by[-dQH�y�V�z=�O��̮>\,�J �A�P�8P�8E@H�rz�&� @	��RIGeY���N"���-E�8G��2o̖�ܸ����-���VGG�jp�h`)VQ&��m5{����#�0V��9�}I�&8�TGŤX8�mm�����+TE��*�d��V�i*�i�Ą��Tv�w��ҩ�l�'�e�� 
@!��9� ��ҕ5���N)��k�luTUUv�fE+:BS���f�ɢj��
B8�t:A(A�H��c'lO��d=�(B��UM�f�q�V���x�%^�\�[���3ꌲ�J��%I�	��"��PMh('9D B�e��R� r	QEh�{w�����_�� ��(buIDQ��UUP!_�G?:YDIV� �p�� @��HB��,�F�J2�g�Ag�z&+���h2YTU� ޵Z�V�8�;t2)�,�^]%�����Y
i(ri=&�d�2�0��s�j6�Ltk�D�:�3��ZLfIR��i�4�K�j�Y;s��S'������T H ( �A���K�m�+RZ�Ơ7�S���fM�4USQQ4�����UE��$��z&���rD%��e�`�~�W�j�fLFMSܺE�ލ����h��M���S4e4�:kYOA�E��ES-��q�P  H��$� !@)"E�%AC(
�
{o�N�?�.[%��X��(��*�[1<%�XE�A���@E��HX�4� RA�P�� *!�PF$��2aH�aȲ�ʨ3eh�88.�V��������h��EE�-.ޝl������r�,���SIӴ�����5�,��X���jl1�Z�ӂ�������[����(�����$�
* R$H�1I	����Ƕ����i��:-'��=8(WT�������l�h�^��IOtTG� 4DH)%�'3PY�U����"��p�n��ރ����,���:���F����jR-��i\��8� 8"�T P@�		RJ���� !�@� B���썃�V��uE�*�Q������&�6�#����8xI�����**�
�@ L�� H	PBi�_�P� �D(��$�$�,�T�2�J�^oem%����W5�n��scgC��"J.ލV�q�RQGQ�B	�d9��	��2X��V䚦�4npjek��Lg��h�`�%������ё��D|�i"1y��O�HVNl��� 4�_Ӄ�R@A( !@� �	*(L��9�K��1���[O$W���ܬY4��f��� �:�A6R�i2  �x��D��o:�+�t��9�BG���V�GY����7�d+{�aQ �ay��Ơ�"XTG���j�4�s���AC�!�@�R��Lb���,$d� � <T��p�7&pn|�lpy��0�"c�$�(��X��G����7R"�	�A %�"A�@���D�P9�cD����:�$�'���Y[[묈�L���l�p�c�e�{[�h�T����E���h�"�1HR�j�]��>�=�#���ܛ9����fG����zYO�z��SL�$�C6�v��"X���w����њ>v�3eB��/�vzR^
\ A $ʘ̨D��PB �x�tjc`d�� �i�ظ��e���*aY�4{Gw���f��h��YI�D�9�tW��%#�r�4���&���ݤ��N���`���dQiV�����q�Z^r�p.4�9��������*8 � )r� �!0A�EF	P� ���  �%NTU�{��=��*Y�FCA���BȂK Ū�B�pC�Y1�DL!��F ��t/�I r�����qN���c:���hE�T:I����������ɬ�� j��������(a�b��Q�� �HM�E��W���<���?�\������:�;�4����Z�i���s��j��2������X�	J�4].'�t�-2Yvb-1�s�W^x�H���%r.��1�$I�eY*:J�x����Q�qk��v�nu:���"ɪ$	VW�;;�� z����(����j<�j&1�
.j-z�b��̻�����eG�����j�8���*�P5E��T��U�Q�p�#�!J�LD�)�8DB G�q�=�O��e�jh@�pYFU0�U��BI�P��B�@��Dh��Q㪪YM#Db:���F�K��Ȳ���ƨ���9:8Z,�RpL�/#��1�s�5�$U�z�fz��8! ,B�T����̩���-z�
̗:�B劽���J6N�y�f4�-������B K��u�"0�^;d
M��  l�6z@��s빗�OwzP^�@D�R` SFe��$�$�0!��K��ƭ!Zkc��ހMN&Q�EI4�\L.���m�ykGo�y�FQE��T5��7ލ{-�ƣ��2:=�
F�U��lQ7�{Ť��P�D�t:Ёe��!�N���	 �DD�B�@H\ @�	��N�>Q���Z�ހT���%E����JC�]Y�b?" �@!��rU��ɬ�*�^���2d��Lg4���H�fv0�4��e���elݹ��͊,�zq�9�A0�ȈB�H
Y��{�܃E1K�HB�y�`!F[;��!��ѳXt��E�{b�D�4F*VT�a�1�h���@dk+J���^�w��r�Ӄ�I�#  @� ��QJ)a�J����Y�%�;^o�֝-eq4�*�VgGW��j�άto���xH�6ܞf�.J$p����\���tZ?x`lv6	����(�<(��jd������t0R��<n%�"��(
D��rJ'H��(yG��P�d6	��"�3hE��J��BT����A���ͪbVAH:k��A'I��F+[�^'�j�w4�YU՛���{���L�$89�P������ �`�F�zPL��FX%qM1ۙ��3X�a46�,�,�Ɗ �C1,K#)K�U���L��m #:	UG���,
�����l$�� !P,	 ���k�f�e3�tz��8�h$E��MNތ�q�ձ�=�s�۹���|揜1�5� �	BFR��z�U�ѻI�с���d��Y��j5�XL����`�u���%�A|�'�b�  � Q�g����ۻ����BKD%*M������F���b�8:����z����Z��F����(ꨘ,V�$+*&�X�;[·E��޽;�6zj~5X� �E�+���;�V��q�E2�ӵS�g���h����`W��,+�
�ah=�ex��x�"�]�-VY��k̴���
�H$��f������~MO�K���~�g^�kb�fHk�=8�V&QE���w�+���hh��6���_�x�o;��R(#�!(d ��1�)�nl(�g"���jtrd��Y�N'���g	s��T���P�ލ�	���"�|[#�s"r�i����Q#�d�wb4H�%�de�1ꭨV�����1xt%Et��Ũ����u`�)(� VAv��5��Xv�9�V�-�-.,�f{3��T�A�No`��ju��	Q4�ᴼF��4�*���٫����i�@Ӿ�-�ֺg��!��i�88��Bӛ���t��k�չq���p���`6y��h�;[��%�ǲ���|�;V$�]� !B A�1���!�dM�Z]}8�Hi�z�A��q�<ߟ�׊���-&/�ś[w:��e�@�0��ˉ>��B����Ѥ��3�ZY�艬��l�X�$��b�*���غuK;�@t��E���ɀF*���R	!+a=:�.-f��+��ט�Z�qG�EB[[�eh�֖�%��U�1�1Z�A��!�����%@#���f��3�����;��ȩ�� *�	J�-;��W�^��~�^��A��&:[�nu��I%���w'g����w~FvS��d�=�]��1�F!� �-����y1+��VG�>�"�tZGï�83OVd�Ţ�U��� `(���r�OtEeT5�b�WM*P������d�dY6�:��b2Z���n<R�E4y������� E��� ��c�H�Z5۹�6�bI����,Fgk`(F�;�Xl2�����5�ʢ�\_�#���j��Qr�.1����S�}������Nu�+�YԀ;ؙͪx��Ex����V�r��<2*��+��ŭk_�S$Nl�Hc���V�1U�ADDh !�h.��|���j�8z�W��ʙ�Q&c�:��U���I��]�PN8ҙ���[��jmmܺ��ɝ;76zMCZ����F��p����";�X�I3���[�Ċ��*"�(!��� ���1ƌ�:�����,&�;����X[�T���5�� 3+k &{{QQ��*c@ M����dTԘL��ᢚ�*���xIT�#���;�4׎���ލ���@���f����E5�A� �
$�(<�K����l��_��ںt�c���8爰+�ā�!c �;&�Vk�q�ƃ���<KIL��l��;8:m�nL�ٝWހK�=(d#��3��lcC���X����bgo!VNl�:��s��Z���(:��LU(X���E,b�2:��l��j�c2��
�U5M y�;� T'ud�>��Z�L���/���8��ZŎ[9a�^Ϗ�B6^jL��<36�r���~饃�ʩ̂�r��� ���~�
#)�Akc�΃On�9�u:���h��UBn,���ko������
A) ��C�UF���H��N� U�����ɶ6�zIg�r�̆��;G����(�"VI�1 ���������E�)�末�&մ�a�ۘ.���4x[.J�֝/Z��b1���,V�j��Uw�6����L$�!��2ύ�y�Ǿ`.�ʤ��+�J�� @�ƹLVqL�hVc�ۻs�Ƀ+�^��l�r�܆�*|�<�u�S�� |�#,f.3��	�e��l�jrt�Ә�SkkI�ml��٬rM)/g���	��f��l9Z��Y�1��B5s\T��mm�w1�/!ք��(�;: ��'���7�$��y�;�ܩL��*v�s[@k�<pJL��&����+���Q�KC��?|�GtN=�Kٔ��P�[)� H�,�3�{�H�N�����87��\��s��c]'s�r TPʑlC�-������	 �)v&GGb��� IT��P�����d� ��b	�ƍ���u�lRԔL��XT�<���6���%��i��d�c_INt~�Γ��ثE�N���s��	Q1�W��R4�s4 0�.�R� @�
��Tf?�S*������#��o��~ݥnS&#׀1\,� �b4zU#��+�:���\h��{�$�C� �ېk�1���Kz��ٞS+k}�a�w�`g2#���P<��H��������"�iFQU�55��΃�ocz	^�yp���2��Q!��9�7�s���hE��o���G6lYz���KD�1�q�C� ��������{�c����������
��#��� ���lј�S'N�FJ -^�\I��%�	H��>�n1�De��/��P��c[�^��w��ۛ�F^�ѣW��b5�Y")��d� U�j�1غ}�K�R���Z�%��Y�h
������<�d�bE���~7"kZ��bcʪ�;Ś�iV˳����2�!D,$�7%��b6��/�]�����BړWA��P�3x�U7�85غt�� ������O`J��L�Cg�Q!��l���*@���U�9���ҁ���Q/��K*�h"*rL�	#��U5�hN�.���ƣ[��2�R����1rG{{;��cme�s�[�U��F��⢸ע��[� �C���
V)Ĩ@������
L�%�=��h����6
�(�]�#,���N��z�9E��v�Aa�BDB�a�"dB�m`�A\r�P��͚��`�ޭ��wbk���]IDF,�!0PIH�������ۘށ���XH|/����ri���;�����7>��qqWo~�*;�ѷ�����h�bx�� ��p?�G0V!� C1���8.�:�ɶ�yl(��*W�z�
P�d �U�doo�X{d4�ҝ�6o،� B8A�?^pIuԨ��[aM<
P��sgz�7U�ʥ��G�)�B  "*J�40��u}�޵���%x		F�$�So{�<XtF'Iq��{���֝/(���f;���>�6�lo�(  ͎�f��`���JRisǤpbt�5ۓ����Q�Xp�q���8���K������z��)��ЪI ������ҟ�c�Q���J��-M�(�U��
(JM�4GB8B��ށ��JQtz/�хKj��N]9���7n]�7�Áz�~v�b��F/��»a ��~�P��(Hq L($�fX@s +J�B�[�H.=u"oZz�̊�H\y�ha�T=��K�Υ���%�Ƅ ��1���r#�2*[	��1Os���$['z�6�=)%��)E�+!��c��iJu�k��W�dA::���He�\�F�RY2�8w�̚�y��4�����/V�Շ_=c7|����CD3��̽,@3�P�*w)aq���3�<6�"FoF�a�@/٫���cT�5��{IeM "
J	nk(�����p~����&�0�_ii ��H2�)�if��5�/e3�q齔���A(�����:����ق��^�E���O>�N����?;�詏&�@�'^mj�2@R��Y@H�VD��4�9E��&�O%���GN�z�Sk�%�a`�әU����$��N A ��봍B)HVBD !Oh��[��8^��E�e��$%�t6ƫ�%x)����%��Vf��]�̎:q��Zg�;��3gػ��]�y��[��`��7���gouE�7WUR��	E��4�x�����;��P2��hS^�8�0NĪ8Q:�{�ߥ#�Q��sF$��FH����B\����	u ������U�y:&�@�D�}#�K��"���^�z�(���s�iB�u�ҙ����36&߼8"��d��bu��?{�ѣIK�+�}ە���(
2M0&�~E˪��E�H���"�w���eg�9�ӛ[��@t� �`啯�9ȑ���:;N�V��y�q"/����8U0+�b&���ɴ@@�+�]L/�KlhMx/�$QUA����޽�Y3:��#[���/�g��z�E��o�,��������I� @D1B$�&��D�b4���]vc5{/ݪ��y�BGv�uLhLK�g L�� �	�H�u����zx�11g�E!��P����V3��0 �/(Ls
�����`f�齔u��&,���h�m��Z�'�9A��V'��΁��v����e�*�DCLH@)�q4�(E�I��-���kG��]yb�%��(�T�F�XEL"�TdTJ/�Dk�<cTo#(����d�(�EQ��踜Lk�8R�W���t,X�]x/�5E��D79�{�Y��[�tz���V�.Z�_m��`���& 2�(
`��	��"kX��4��.�J(�� Pv��=�T�2P�4ΩL6�1�q�W(aF,�]h�f���p�QVT�Ye�TN�j�B��ނ��EԤ�R��!p B����{���h�spk�-��{���@����;BB�JE!H3������iRE��Z��Y,����R=\/�����!�����p�:�j��L"�p�*P�v z��(I�QBW��9b8�,
�ʹ-s2MPHL�p5�/��KF�Aue�Uo��W}�Aë��ڇǯ@����F"	V	 �v�"R�8�
&MJs�ʍ������dL ����vB��T����h���i��N ]9���i^g�-��"�L�FG���L*!�x5�/E3��KƄ �#�Q��{��'$F�ڛ��@Z�/q���1CQ���BTO�dEM�Ќ1h3��Ȍ�\:a�B�� �\�ia$�� U��l �-[e�� �ꞣ*4���EQ�+c�aP��2r�.���^^�V��KB���OU��� ���/�v|~����М �������`!1 "!]�!�;���\zf+��H� ihYb��B�H,�06z�,��^i�AG\�X��̪FC%e�Bd��jz^���KA A��s�@X)- D�U��m1�1��04C��ҝ"�"�%Ά�<e�t)��+�HN<rQ���� a�� `�&Ӂ�	4iTw�D���8[�լHF%B�5Z�b���Cf�,L�4�T�(��5�/ђ�KB� �9�W�N<&�Z���R   R��+j����ѳ��f?��$֮<�b��Q"8R�PXC���M�m�@3��S&Q�Y��-��cg��3�� ){b��h5�/�Rv/� ��iظM�YrC�����ɯШ��e(�B@�r>)���i$`��0�qmFf�ҥ�~�0 � CÁ: ���"$&�߅`mm�"tD#�t�Ơ�&�,�.F�5�Y�&����"��� ( �6\Q�����(��K���AB4M)��8ۉ X0��mY��1hOO�
�;��4`�<v���1��� �B�����B��<'��XDE1P��:���,fE\Lm���i B!ZM'��2(	ٽD�$
� ��� �����{�[���R,� 
�S�
@��sK]\UO�q�F�x�ƃ �S������[��LR1<���WU�ӓ���,���}�C�g��FY�L.f�F��2�TG ZM/�KY�%�
P��h�)+~�_8��o��AJ Q4K#V�p��Ň��-G���,a�{� ������ � ����$����I��B�6QVW#"� �x{�ɢH��&ZkC�e�2ʐR�Uӫ���K��0*PkH��V�|Ͻ���рf8B��(J�;F����F�*7*��e+W�m�n�@(0��ՐDh
rM%:z_�L� �6�I�eg$�m�֍h�,&GW��g`�1��QX�k�R�%rN)�(�\mIWt_�ĸZ��R� �Q����W��֞�a?:P��F	���;�S[����fl"�;�Ax ��h
�fB*��{�/�U�Ց� �v
�֝������,��4%�2�`5�/��!��B(D���Y`�A���9~@1�q4 ��,�x'Q���⑸�G�eh�\����`��G�td7�� �2*�� �2I��TAu��  �h�$ʢ�J�Dcϻ:{�����qp��I��H%
�jz^*�D�lV��ZO!�毁= ""�tMiXJ�D%��h~���?�%�z�B��1	^�?#TD��c����H��̪4:�b�Q��C�YA��ó���f���i �2]D/Q3;��HVVr1:[]��	l��U�HP��P��Q,�/��tM~���c��5�s��$�ʋbT�(�L�<by 	�bHF�H(HAEXT(��U���b�R��@lI��q*�%�e�?C�`��Q01Ӏ ��zI4�قx-�Ŭ9�I���>-�Z�tvC�L"��{�sk���qګ��L�ft� )kFq �U%�x&�TU����Dtc�  �$'_���w0;�TRu@T���f�n��B3;Xa�~e��8�ZE�ղñ�"��ʮ|���%�T��Z��w}C����5�y![�������,�$A9�@B�g$4�
VT��2�բ�-�f������  Xi�Y���V_���80�L �2�B/�+�f`��I�V��h� ʀ�Ј�pX�h��_�_�_��\1�8hQ�K�+�-���~fjH�J� ^�`�
����B�5N�]���0ƒ$1|�DEE
Dg���_  ec�*�n�7G+Nۇ�(BL B�W���%�ݛ4����D#�5��"a5,�t�1�t��������oX��#F'z��#��r��>G�;V����VE���4�!��� ����/	$��*Q$L��sŬ1&믜c��
t��Ѵ�)�6c�� �J`��DQI�L����4s���&@oeԑ��#)���h�g$I�8�\y߹G~�7��O�w�x��\��/�����M�;��۷�?d�Q,������B�pN��gu���]&2�`�*�T�P�(�!�V���o��_�)]����,��C.�B�2�	&@�)�]�U�v
P�h4��ׅ��E��f-M�J�(�Q�}�D�������w�ʿ���&�`�ν+ҾIKV�k ��T�J�"����|�p��B�J8H(eU��Pd�I:�
���x�_ѭ �e� �gA�y�Fb���55]F/����,@��������H��ih
i5�(F�
� ���٧���w-��{��iNTc����[�Do�nQ�x����(�B�!A8

������,KZ�@V/���p��Q(*��謌��>���׽`K4t�BQjXUPI^�	V0t�t�D�Ν�Dg��,����$���i��*Gs���I0�S��[w��0�P�S��%����8q���B�FG#�%�HV�� @��!�*�Z�ތ��X]�=)+	�3;�,c��20���D
QiT�eBDTL�e��^�b��^C�`����I ��P-�Dr<�A�Ŭ��ԩ�|�3G�%��ĵ����*D	���hQR�J�0!�@ >=N���{�=�����͇W[�8�ae'O�� ���	p(�����+ev  �����X�4���!�2�E/��WnT �a�ǖ�\�h�,f3�t4��U�Y�8��xJ�����IsP�X�2�����8Q����j��M�H��J�	 '������oK���3���Ht��x�S�F������1B�:�Ņq���󥧊ݝN[��1�  "�J0��4�@�
i��z���vc�L�#HƞZ��S�x�s���y����<GA���((�^85kȬm�_�э�S���Şxy��v"*����Di%��P�{!d�6��T���<�Gx��e)�!�Jr�t
*�(��F��	�3���v:�F� 0��f�Zɠ[�k��	 @;7^x�p�ĖS���%Ao�����H2�2�h8UP�\���������>��y�]�_x�|R�~U,)*�S���$�u81�(�ۅ��i&��'�B��	V�K�h�*�%�+������*K!Z�C�Q3�Y�2]E/Q���^kT�Bܗ{���!9��3�f�ʭ�x��T� C!���c�J\U4�N� ����S��/5kd�����D��i�qP�ԅ�0&� �A�_B���9z<)�!�
d���[�U���z���Y�h^�I��+D�(��i �,C�-�U�Rs�>s�T�`� l]�dWN�v�b���%��H�F��`�q�Q� Y��@{_z�<�,ۿ"�$C-b�X@�a�$�\ g������|�8����7Q��BDC�Rd����4�ld�8���"İD0�D�Q`�!�2VA�Lw�Ka����sL<�n�N�@t�G�^�aDs�Vc�[,���~;���/#,	,b�Ѣ��e�B�@E�D��P�􇞻0���AT�� QHUH�3[,�I��� p�UJ X�c)�B�D�,ӈ�4 �*ˠ[�k�eQ�/���e= ��q��$@�	Y!��!�i�$�8�P3Y�HV�|g|�X߁�^;V�g�A�,�u�H��9.�oO���B��Y&��U �!D�����(r�*��`�WN��Xpb~g�Ǫ�� Y�4�i �L@�Lw�Kt���M��{�u�B���dp�w��kL=���� EQ�ʊ��TU 3��|%�%��!I�ʰ���PX]�@C��D��EabP[o{�}�+쁊�"Xɼ��&1Y�#(p�Fb6dXV" q00�Ȓ�e��^
/�{~F����qڤ9��zfM�ػ�wt�dY�8��,�(��K�b&YYK8Tl��r�Vt`9 ���:J-('���;����w=~�|i� <�@�(U�}fUEJ�t�TMi�jQU�:�3�����t�|�a/��Ʌ����غ��EEi>����x&����h�h����������a��,�)"�4M�GI�L�!N(�(4Fqi��n��a����z��§~a�aT (��Z���QIo��`y�9B�4-
D%�2���DE�ez3^�<��7̕�����24{��^����HX�B��K�¤�g�L��#�e2T���*2�XH�P�* �SUA8��D�:��,���=� �!�N��n�fA(^9C�(Mh8p�B<,�
,0�e�i�&@UT4�t�����;��>��&��tO\��rI�Y���3D�T���5�,�^�w"J�a�RD��J�4��I��	�������/*!� ���?��r�a��h�L�y"
b4�bQUI�N�4ĢU��_�[���o��+Ur�C��}�Ú,&���3!��b�A�Q%�$��!�6r��+����B+*�2�$�	9���������K�zB�� D��h�*(]��%1-���q�xJ%N�3�U�*�3]F/-n}a���Ki�a�Oo4�odY�R4�y �������� ���f0�8�Z��YF�x���_��(��4�Fe�?�G���_� ! ����yqd�PIGQ D�>��4�!�x� ���LC�*)$a�r^j��­`���T
�ӭpۤ!�$S<(��UYR�s7�кEq�`��
��z8�?6�LY����$�!d.�p�X$w���^�e"�
bC�t�`c�\:�QU�5Q��1�EU�Y62Ӫ*Y%5Ӆ�R��ά=s����L?�We24�XAQQ��轛!�ʁ�iܩ�R�'悱 �
9
�<%�����r5��PbO��	!� I|��$&ɔ��n���ՙ��i7t,�JVEU,��33-V��y�8a�[����j�P�u��;�뼤�,��� Hq��ʪz��I�3W4.��JOg��_�+�+���Y�H�1^�b�	QS	��	"�1$�ġ�TN)��D���@t��gz~�S� ��,�X,��Pd��b�8�}���ޭ�Sg:\[�rz�]�r�*e�0B<eE�w���Z�&���ؿ
��2�^�o7�,AA�f�$��i�q�U�.
�8��GA�*E`JUۜBAY&@uə����@�X�j�E	�S��4��
�0�:/���EPk�6�Nղd[^&�XQ��eI�df���ۺ��1F�yI�!4d+�a����Ŭ�	&�H�a���(��4#ifD�SJ�0̷Te TX�w���$K:� Bh��z9Z�z�^B�Z�(D6���	ʹde���y�����`��x��v�/XkDQD�Q�X	��;�����F��Z��/B�Qr�^� ��ޅs'V��+/����0��Ĳ@P��!ESDX8W�N�Z��h"�"@`�3s�S�����6d�-T`��C�*����L+�D ���Ըq�� �����6�/�:�I!�hk=�Ƈ��J��O}���EFKш��,u����Fr4K�Ɠ�_�b�=QS��2]a��S8w�C@�~�'���d,Q,�h�U�W�HD�DQ�и�"t DdLLс�9�$ɲD�r>֧�ŭ�J�ҵ�� �Z�$��U�2��L��ERI��䥃?�G�}�o|�?��]�_͢r�&��%��𡧎ԙ~�5_��BdY&T�C���J��g_�FA%��y`}�t.\@�NZa��l,v� N�e�Ǯ�� ��BQHC��� �P�"b���e>�Z���xP�@$� �3zpd�d�6�=����++xsg �5 �eE�J��-��i;��\4�9/�ECBu�PSg��Pve�{u= �\�z�$Y�iJ9�������J��Y0x{;��@:7�q$�$6?������@20�E���0�����P@� �1E}hC�@�㏌�)	+*V(&�X�uV1*��٬5��|����7.� E�x,�XL����Ls��E�FӍ����t:yd̥�΄ �A���"�Q�D�(\=�8��G·Y��z��+��|ֲ��Uj]B�Qf�Ld��A3 T�j�3�P 2��,�����p�H�: �ӫK��w�@�����(��P,g��P1��WC����HCdG/� ����YVeQ$��f���Ό�h�s^r�$FF��Bb���fɶ��� �ez��,
�>{R���٫��n����)���ҹ� ���VW���0�7�\��?�24�!�����zA��XJ1�̡������HX�T�2a� ΍FtQ���ڢ���1�!��!(��բ��I�tLj�-v
�Fӝ��P*��'i��Zi^z�X�$�5M�g�ʔi&z�>�5�JV�����;�����
и�����t�d������+�̼�L����0<��B,�D1�e����>Y�� �ɤN 4�e� Y4�>Zh��J4��K,C`x08��AP�`Q9�Nʹ㽝��+�%���F��K�S�76�׼N�U�NO�,��T;O��X%�w���v�R�l�QQD�E�KP�Q&3�١8����N ����!OC��$��(�#�$Ib���y�}������k��,��c���9��Z�5�4��YV�Fe���	&1�\�#�L�:Z�(�$	�ga)��L��;����;��0�$#���~��\x�`1���QS9�QJu������Qt����v�6zA ��[�4�sA�D���v�F#3QZ&qY(���OA�E��2f��s��-�Q�΃��ǎ��0�UP���4k�^��P��V�}m*+gN��x�`'>
��^  ��-Z �D�ab3�ho� MW�K���H��k�]�L6�?GԸBe=aDO�?z]E����M��@���>$�d�t�s!�0�W�f��\ʃX�)����d�H�"��c����{̞Kz+g���4�m#���@I�⊷�`g	K����o��t\q�>q��,�!˒ 3Z�i����t�$DD�0V���eEŅ��$�P�A��\̢ɫ?{�m) ���A2)��ن��4PD L&���#�(��!⠤� ��6 Z�����?PT�A+"���'�� *�@8.�#�4z�$`��*���d��|ho&���:~]]��gE��e�i��L�y0�d4�9/QJ(e�DF� V�u%I*�6ރ��W��k! �3�g�Ɋ�w��n�&1n�"�s���)
��B��I͞B�� Y�)擇����T�������>��S,�"�-眢9^v��hF��D����ɉŃ�9�����eJ��fڽ�E$��xx����Y���b�C�*gz��0.X���3���!����dV,>\tZ�<�@e�`rQ�t��i�'�PWLPp�8�jQR����R��/9��"��԰� CQ�:�H�uZ�jŒ�E�����+n���UU��x��=OlYb��l5���f��N��4=~/#� �R&�I�6�5�Ʉ�z����Eq[��s�8ʒ�W�ս�E.�  #�H:�e�E�4(�@�F���!��%A�?�!����L�h�q'	@��E!��!��egY��FJ��n�O�)�.>�!�c�dQ$l������vk�D.�^���gNA|l�W?K�BS��I��ܧ�{�z[�Ic��!)f>l4�w�D��Z���<��b �x���wbp]w�Z$[�_��Ǔ8EH@ODA�f�᣶l �50������z�W>�Z�V6���f��&��ZDfڽ�T4�/ϔ#)�8�5MCYG(1ŋ��7gm<h\̲��vC�Z �։�|�a���(�'_l<��1�&E3�U"�,�꧚�����X-T�*�GR�^�]d����;�\N�,�ܓ�Y2�E���$��S(8��,Z.�^��qgI pJ�,��@ ׸t/�eIx��`��H��g�=�~w]p$��5<f�s�eh"F�n���YJ.D1�*	�*�,�|,'��4�A@�(&EQ����
R:=-��$���=t�  S��A��4�XTY��D�Iδ�E$��xw&�P!��p`0�4�"50B�@U.g�w�+�ɫ#k��/P� TbdV�$iB	qA�l����~7JC�:E��*�����1�V�j�]�{JQ�� ���X�@;;��'F���E����L;XD*�^��/��~)  R ��<Wx8 HT΁IdY�e" o��.ʒ߱G
����"�g��� �b��(�b�q�o�9��)�(��J��bb�@���U�X��Ǝ͊,�����@LI=�Χ����X��E	+��<,�ʹ�*�����p�4)#($�0\�� "����5�H:"Q"!E� ��;��,y�Mp��UR��Jc]��bE%,��:O��;z���p4R$"K��3��x$(�l�M�6���2
�b6�v
>���,������Y���IuX��Q�	��E:>:�&��.��&� ���E}�d��c�Y̊��kN�8�:B�^"
��:��q6���7'[�w�	��!�I*i��z�'����F�K+���� I�->SD���VE����z$�m9�UU��:���9D)��_�;��m'��u�/Es������g��1Mo�K���r��� �B�b�l�ԩ�� �s��Q����2	�L)U"D{n[L�l��s�L� �b��]`�A�x5�������VO��G��"K�"
�6�7��+V�-�頢�Z��*�*=�H㓿�H�����O�'�}կzϥ!�P��!�+dY�i&��exi��w��d$�PT\
��gޱ�8�x�W
��6C�PY���HQ0o���jT$���mډ��F�e5� `��������`��P(��i�B�g�+QT+fh�����AVi`З� c�S]l5����<��t~��b�  ������W��緼�TW9O��bt�h�UE��v��fZ����6�t���S֗�/r H�R,չ�MW��IV&/�rDLP��̀]��y��8ʊ�w�О ��; ��L�����P��_��k�X;[=A� (��EY!��К��")X�H�M��Y̲,e^��w�љUQ!�*�Y;��_�;~�Ǟ��FP��AQ �hQh�$��i������gƫ7o5���W),ɥ<h
G`�̃YA$�"Q(�Hٹ�\��͋�ӆ0NB H�����	�~���Z�պ�d��q�KHQZ(	�*Y O7�%[�b8b�U�J�� �F�XeU6�fZ�D���Y]�2�x?�ܽ�3+�>�m���]FQ�F��
�,�cQv�U,Z
	hz^ڹ�ыo��3��������	�R�4nc�M@z�N��P��ݺ���bu��j��)L)� �"���
i
R��կ��>��0m��������4�+���VBA�7C��%�(��h�h��}HqV2*�h�i:����\��B@�������}�ȩ���}��Nu$�,�QŒU��Y{U`��#�ů�}xi�x��[ه�Sz�H'�C��B�?׻02�X���r&MPu�J�ޔX�G�Y�*�� ��1�!@�J d�Ջ��)O�h�O�<�8oc^���),(D�y�+��$��XT:�7eCV�!f	K���ν��⟽r6������9����pP�޹'.��&Hs,�-�,?��i	r��&��Ɂ���'Θ�KB�  Y����S/���z����xh�r��(H���I��^}1�RqA�Xq� A�@�4D$�/���& �����ڨ̤X�T@���ɍ�/^��-K	��XDZ�6hƆU\�����wnr��c�=x���3��=?qm�`c��!���(���������:5��3<�	�kz#^����s�'�!�DF � �����x���m���O����L��6nx�(���.�  D� ���c)YD�ٛ�޼9��������FKÔ;bV���|���ٱ��J�� ˒h٠�>-OV"ZM��G�c=�? wt�K?�}��V$�\� XB�+��X$���ee�_��s�@ӻ�Ҭ��g���SH/	RJ��d��`�pJe�N�y�SF)��A��x�]�7D�  �XU!E!@ј����Շg'�D(ލ��?�d�Q)�Ph��DI�rv~���_\�KD<�U�Z��
:��i��YRd����jT�x�K׎@5yPq�/�i*EU�Ͱ�02����q.A��^��~w�Q��^"1@`���N�&��3�r����@YJ����+r�GI$( -d0���K4�L�E���h� �<����G64�����YETl����⫙��"�S��bX�F�3��(ѢʢI�����G�n]{���Wvj ���(Q"� ��K̴��W}ӆ�#Gqkz)^={s��{]H/	�	e�s ��ĄqQX��R�Z���7�Gn���@@ 0k��@�!U% lu��W_���X�'��|������  "��T�B$�Yqc����^����,/�XvTY>f� F�&AU#�j���4��GE
f�}Ꭿ�(�f�(�X����r2����/zG�4�/eW��;A�����H�
��W
�S����o&���b	!D���x�҈�A,! P%�~����$�q㋟��^GAo�I
Vd��у{�{�F�θ� R4�����z4�gdWY]E�����j�;N�έ)�Ƨ>w���aO��j�ѣxZ���|�-�1kz1^�V'��,�W^[��eJ���X��RFd�E�!���A��%�:ê J`����?���L"�5��������=��jUAª,�\��{?h}w���fBSH!�`#�)D�X�bUd�$�6藌�豷l�����B4�:bY�Z 	*�P?PJ�5[��ޱ�r�Xӻ�R2{��5����+*Ƅ�;E
�C��e�\H�D�D (^@���	�h\@	����f���;����X_�����"q�P2�����*̪��ս'�?(~smmF4Q��h�9��b��UV�#/�։Gt���yǩ������^2j������'
�4���G��D�i�r�~�o� oP>/	⑄1Q�[/=��R�1��LHf��TD��>b.4F��$�bي��ٛQ�ѓ�N��.^��(�f ��N�&�� V߈���d���D�*i�`�jݸ:K��b��,20{Ptִ,��۰�vp�޹3o,kd�)�&,&�3�L����bo�AY���9�5�u]���ť"H"�0@V[�U�. 0�QE�f$�GV�-�sn60�
H%FAj���Ç7��/�z[_|��QM�����W5�Q�^�|���xv�:�X�XrPKYŔ-J��"DgE^��4�n.����[ǵ��21���
��XA�&:&��P������J��3}���^� ��Pn��VҸ� �2
�p����' �~Q/�M���9�� ���V�!��w�ސO~t����#���h���$��Tf0��W�'7w]��ྺ����*�B���!�x-+�Y�7��� |�SO�xМ�N%Gm�f4��XLh#��nN�F��H!�L��N1)@tN���,Ve»�`���zS���T�tTp!���& p��7�o���T�@#2M��%?Up���h�g�z�'O��z�~I:��(\�&��Wo���>�8��*)ً�O�-�XFQp�i��YPс�V�&S�	G( ��@P�� ��VԥA.U㜺�⎨T�O�9�6!���� ƕ���=w�([�(t�z	Y�Ș@�:ɸc=H�Dᄂ�H�k r���A/��<B�����F(0F�V�dRWJf�|h��Ik�ѭ�o&%��*&�^��A�
�|7zt����䥣�s�w��'�Ь�����V	�f�fU��yۇhҘʅ�U��40�(c�q'@�hY[�:F�*8��_����<o�ɴ��(�r\�)+.ƍ����W%D����A/!���B�U���C��L	����(�o�%f ����0�Y�4'��eBt<G�X�{�s�D{u��x�0f ���� �( {��d����Ż�1�}��� �%�P���H2+�d��F�f<�����-&T,�EU�ʅ �E&�V�|��
+���z��[6�=ЏSb2m�Y�:���/��^��зQ>/��6�id���(:�te�v \�!�1b*¶r�h ��YZ���w'��RӸ�1�0M����	�j�4g���dBM3��
U5� �����Q�ƃ��(�����ZYE�&*�8���4��zʤ�lhUFk'�d��0B	*�����[�Ńf�_��d�hB�0:�?���)%��la��B�оDGP]�y^�e��
 �z&��?�@DN���
�L �8u'����Mpn�ɏ��{w/ע@J)��7�yrz{m�j�	��cI6�T�fu @r�|������KCɓvh�B ��u�t��4dE��7Bn}ω�=�˲�7�e�2 �PPq4����wC\IK�P	�*���h�mc�+%��b�1B�:DRV���u:�6���)��=� T���2���3I&�
� z�<��џH��A ����g�ҜA �D"�0�iuASgc��7X=�e"E��j�0I��YEn�$�  �G;��6~¾;�@B �#�8� �FK[-�*ZDf+Ua�}?����:Y"�2Y"�@ U.PSAh���kGg6d�n��T�v��S������Ls��JLg��+#� L��\��˩�bm=�xQ f��@�"5��PF%��g�kb�,���.�CfhϘ�2��� a2р @!��666��lU������&�L3kBU5ƨK�ѫ��A�֝�7i��bX�y"b�O���,�2��V�����KgF=���J�A9"U��n\��\�ūMIQ��QX�HV�,x6eZ(*����5�ʐ+
"��b=���y��y��x� �w��y	��P	�JH5�d��ݪT�f�8++�e%��ք���J�F����(�r�F���ŇY�e��7�dO�'Sو��5�,t�Z��������H]H��(J2�v��(��q��`�U�͇"���#38����%FA��%P�����ĝ��-O=r��S��V�lm��G&eZ(�Nf�+C���t�6�敪X��Qn���>;� ,x�� �{�C,T �(�8A���j̩�=�}�PC�"&�¨��M@�R :�ֻ����T�jtd,
.>|w���b- :��faQ�A�E��g�;�{;���<2�����o�h6�8-�-2��c7NTn�Tܻq�^T�K�,I�Q�8�TU᪅\ذ�{D��A��T��zEe5�)Ճ����-f���ԩ��Huea^f9r:~�]���M���{�LQ%BaeM�C���9�A���B�9@�0� �Ű9q��Q����ߴRU��`Q4�EE�E�ٻW�P�xb5u�AB���Q�%����ѻ���g쭯���i�ӊ0T��1HX,�D�*��Bq������!H�D�Qa����	X��B���$kY�T��(-�\Q%�$�4�+��0k�֬�5��y����Γ{ʇ�*��Y���e2�K��R���� �81+��������1Klw8 ���t��4)UI�d��V�b���۹�Q���dY3��j
�%P�]�K���휽m��Ҕ��� G{�I�ZF1*�j�Ύ���ES��(��r�B�����3B�%��{��R��2�iTU�gL�&�����Qf��J���Vȭ������[�Q�E���l%�}A"*PJH��T�Sk�\��q;k�ID�׌��S E�S��m�DUŒ,X�]����&�L$
��(j�&�*��;�<�6g�4%U�b4`��Z�`�,���H�3��PUU�s��@��HH@��B�kե!�#���2-T��	eKX��4�l�8���{޲e�lk^F��7x�s1������E��~AW���H)J(k��&���q����ч5he�]w�T��}�ǲ+�A�ʒ�Upd��ڰ D[ �Tb�5���8����N��ֻSSI5h�l��毎$�sO��4�*��jiĳZŽAD�by�P���|%_@ �B��9%�%G4f%1��[DL�hqtT	�v�o�����~�%���v^�O�W�*�}����Z Ǵ_��A��9b�ls��5!�ߛ�A��*J�+���D� ��?�Y�X�UYU�x���D�˚�"Т�v�''�G��^�nn
"J�0�o�����7��8-%�U��H�@�
 `�s q(�lr&<x�¹�ƋZy�qC2}��)8�2�t��Q�*3{�hDg둿�?�?�?���\ި�s^B�փG�Q��.��x��V��t���Dp�(\��F4Hԙ��i��?)PZ���8ʲ��ӵg %���|�IR ���h��t�5�%K�fF��Y�0��	��>�NNrO�E��Д����H��gk���hh�EQ����;���,�[�c�P*
~��L���DNll	���;zpD�s�r'>���]5��V�KJk�;ʇU��^|5���n%�*2ES�KPT	-v����$@$�:w~"�$4��U�:�z���S�Ƅ���,*Ґ� ��@����E�"X��#�p�s��ٛ��=����Dq������H��%�nF,�����i-,4� ��㾒%��[PH��$����3D���1Ž#�i�[�92'N��;ٻ~�_��:�2/oF�9��O��A̾z���'?�
��aa�毡�)�0	�$�F�k��I|�`��$Q��l�����{�DU!�A�\�0��UE㚪���x�{��q2u�q��%����ٟ�l��'/�͡��a%������?�a;��s��^C�Ex��Lߞ	��F��{���[����Gjc�ˏ̲���[W�}�Qzw>�.fE�8��W��g?k$AUDUC�/B�@h��Mje���*JT"��وVlu4�:�(�P	(9��A�d=�U�������(���n5.F�'�e+����������'�_�8�m �s�$��*�<Ew�&���so{��ES]]��y�e�����zpk6�ŝ�����υ�o�g�!�yIq����,Y���E�����UU�`V�D)� �gA��`2k�֫��ckG{�%��j�_���H�*� �7Q���Up���1�$���ر6�WkO�d�p�������Ύr$A�c�-�ѡ���l>�m︱h���Q��Df�Ύ'�riE��k�vL�Μ��=?2I��'ru�fml��N�"��櫢��xN/[e�H�6�@#! UӠ��lV���J<%M�ٺq�(�wg޶��pD)E�o~&���Ip͢�0� @1�Bwޞ�Xhh4�����(����j�`л���Q4Z E1�"H*��� d]�/�1����M\n�ᢒ�L_���7�t����)!����[3R�3��>q/����y���֭��U�$'�^��VC���(�� )��B��4FO�Б+���Z���x��T��(�Ѡ?	I�(	J)�@@V1���̹�����$G�NG��NRKQ"��Д�����Ύs���(�K��G����T<����:x5ˋ�4ѻp��׾2CD*&�v0gٸ�3o��g֕j+��4����,�d���I�-}sV���$2�/RpP�
̢n%4��H�g7�7x`|��許� ��uB$�½$��VD2JܢqnVPglB1Z�^��=�X�g(V+�zv��3�8Q�b8d�eU�Gm{\o�'�p���E`$�ZQ����{{�HV��R׮5��#c����%bu��A�d�ݳ�Ǝ ��d	���A�BIӠ��D P$��qG�޿
�r�7��,fIr���e[�24B�AR],�Ĩ�L�@�J��z
Ȋ�m�Qc�p:��Ә��G�����X�0Z��H��8U��j�T��A"bc4s ��y����4{ ��:��k_�Ղz���ʩ�KW��N0�C��r�0ax�A :y�"���H��AR���)92� CI@�+f�7�  ��u�:˲�w�^@�5pJ	������K�P�1��+�*K_�5���j2��� �(�Z�5 �D�qV�����j8Ds��$s˩�C3�)�gT�Q�x��gO�& �$<Ӯl��.}�J�|��Wq��;P��sՑ��֊U�3/	�e�"��޼w<��cYł�j~iuy+�$���)X%1R�s��������M��>��n{4� %���G2�,�f�z��?�7�d5�x��d��
��5�%����P-q���UBŨ8�� �rP���1t���J�x���EMϴ��׼��(�.|��t�g�4�� ng��Q�ĥ�^�.��e�s��2�(xʳ聝|�(G,
�D�F�	�@I� ��M:&��^�����"�Ξe{����%�x �̨��M��fM0=z��n��idWW.V&��MSM�aYT4���l�P@* �C�(QP�$��R�"���������i�����|˻�l�l}�7|dw>�=��`DnL�J�\9�iH�D<�^��Y4: �V#��q�ʂİ0���@	 
i|̀�Y��Up�nl,&"�x5i��I	@	%D�"�en�@Q��i~�g��g[[�nli��"
@�ᢨBLZYU$�����b@�DB4ū��`A! Q_��P@q��
/9Ӿ�/�����o�~ӯ�-���[�ڟ��]H@���N�`p�T���a/^�	6���]&�`U��Rӗ�$(DP2�
e�hI@XιC:�;��,�G�[
�+DƑ��L�����Rբi\Q�^��#w~�{��`��NO;��UŢ�R�%aI�8��4�*�
 j� ��TA�U���JF 	 �Eaz�uN��������O�g�G���[q_����;�ɝ����+��!���yIi�M�"8���`��*xIVe��\� �"&K#i���5^c�s�Ť������.� ��!i�ƇL{���*B�M�p_��w�g���8���N�Ɏ&I�)[�T�"I�e!��TYbP���ahIP�"���[w�����Ȁ�\>ʱuL��ҭ�&+fG_U�q���ҸCFU�zqal�fZ+���J
ǀ3G�I��d�4q�D@ �,O��p����97J%(T�Ri]�HFY�.T3�(P���7��;v<�q$E�zs������AT0�0P�0��"Yy6� �U$�$J�:�j��c�z�ȩ�c:���W�X�X�<��_�	 �j�����@��	!CvO+�Eh�����HR�<��G~Y*��r���k[�y˒�x�!�*|1�>�L%���\ST(���]����j����MU�xqb�Smu�,�� �kxW�$��G�B<E�"�5��7 �hE:
R�n=�v��\^�ެ����d��g�K	b��5D�%U� ���$��*�(�!��"!��& �J�B��_���x��% 
d���(d�/�x4�	��������K*Y\|x1ʌ�ޠe�dvr��������E��Q����z��!��*)X�(P�|��2bEQ�Q�v��H^��H���F�����_�8"����d�SL�l�L��Q�,@�*�!��#�'&�rۀ�d�y������~U^B��A'�	��Z� ՙ���P�NhfԸ��J[G���{5Y�@����O<hKD �"V˚$Ʌ�2�2H���*BT� ��^����1�K�,9{�1.��/�`�Hlx^�֓^C��j��:;[�I����4���	����3��,�(�j4P��������C����B�ʶ:F/tq%�{vB�x�*i��25P��ܬ�V��������
ø1а-"�,�4KS<g�#���AXQUUPX�wAU�(
Q4�͢^��c:������;t��~����[���iuG3P���a������L���	%�2I&$ao��ꙕ��_�؝O��^��"8����Ey%(Ԭa������jaLW�")V�,��z�E"QUX�z"�&��Id,DYŲ�i5��1��h�&�	[�t*/EW߽�Pz�%�#l����,ð�Ѻ�q+����ج`Q�|!p$Dp*Q�E��Q�FƈSO���^U,�Z+����6p&ld�Mp͢Y�q�B�����SO�"K2����d@y��(�Yt��hQHS�%W\��1��K�oސ�r����N��7zM#
��ev~wD�lŪ(Q��n8�.���
��_��ܪΝ��譐+�[�q  �R�
1P�W<.j���4�&F� �cvZ�(
������m5�\� �*e�t��T�ADi��.��qL��ҋcσ���@� ���ͻ���t<G�`���g��$��"Am��7r�1B(a��D]�ɝ7��P B��Z\{��H�]�(	5����N��������8fwΙ`AZA���k�F1�R�C�$YVh��bU�@�!,��Ev��T^�pn5c��+��*:9y�H��h�*8�����%Y�fU�`��\P�ȑ0ei4��z�葧z
 \���kG3����j�0�/UNP��¢qP.�h�}�Zh�F��FW�dD�(�@P�_L'K*���]�%a㘎����@�~9��!�EW���"Ȅ �����΍[eU�T��)   �R"Q��<F��O�3���k_y@g&|�)Ш�>~�U%�D�Nd�TM�
'����%�a ���m"�@�F��JTS�U���V%��i�sv�`p�qL��Җ�K�/	H4U�Zɢ�
@��F6�E�V�0 ��" �0	(!IF3�C+'hv�����Ҋ���	�b��8�o֛u�\Q�^
�v$E!��M�L�#i,�D��1�y�i(�Һ�Xd�]�t(/'Xf@���D�B E��lQUY<b̂ "F���`�P�%�x�+Gٖ
�(�t~�D=��������Ĥ�9����"�A��2X����$#���㪢X1�d�IѶ1�K�=��B�@3�P��U�D1(F�R. �Tb ��DJ5����̊֊* 2�kI2pUCUU��gQ�"2�DR�4΢��ʗT���K5CFGV4EL.m�K�$
Lë���"fhcĜ#D�Fؕ�&j&N���R��:
��R=����(����U	� X�hZ§�G�B�P����BqT��
d�a)�W,&I%W��1�K�x}�h~�|���������, A"�PB%�H���s�T��`�@X�<^x=A�I�$tMX8��Q� �Ֆ"�bx��#��@�J�P���U�BiX�Ɗ�"+�
���h^���/���fx�rJR9.GѢ "��!$���.P(�,� �P54QO��$E�+�娇�����B�FU���)�2!���w��l!ZQ �����`ט�%h��$ ���%�E�(�BQ�(a4�
2� )��;����*��Fs�Rj��!W�>�V��P�$�<��#UPU"���CC�%Aat�$H
�:fטN�% {S_^�V
i�,�XRC_n8���RB�0�<أc���9Ǹ/��Wz�.�ӌ�s�EE�%QERM#�G"q���(���*���LJ�,*���DU �v���y�a�,Ū��Q�D�D��Rʐ���$�s�*�,��5��
�D=a:``Q9j�����1�*�P�fV�q��dQ�,�4��͞,��VKCDTY��hט^�� b���(bU�� Bʁ  J%	I�Y4MUc	��*UU�>(�$�5!d9n��P��4c( 	���":�Ū2z ����AI~��1�;/!����*V��A
Sc@%�$	~P&�EC�	�� '"K��a�ˠ��H2�,9��5�N���H8�(�#��$B� ����4 JQٹeL/�KP���$a"��C �Jp����,D�g�F4M�qw��x�J�S�'��D�8�UH��jTUGAY>�d���4�e�,������Y�j��-EaEŤj����a��y	i���es�ud�@	B�dAFeT4�qU��vg�D����QՈ�
�$w�(2�)�h�(2��I'�T� ER�_���UYDS��v���yY�(�CVI%�D�t
�&!E��"d1�Q���UI"��@� �9C�$�EB�B��n�i�h�(�$q����Z1&"�)&Ba*���(
A��J0��w���y�x
+����E�(�r�@(�,�-K�+5!��Rԣ��DG5�8Q5B$8�!i��%E�b5BQ�I�����b$�� �)� ��1�:/!bX,J��0�  B0�M�0�rD3���c}��^�6�#)�`F*�����X�iR4���X�R���
AT���,Z��F�K#@HՆ1�:/!�XE&�,�NR�X� E�Y<J@���q��4l:X��S%b�U�Mp�ɡ7pBX
A!I��M�����`,����r�bRB �4E�u�_L��K5H�T�(*�DH�" @I9YF���F�u>�@�	�k	�UCU�� MQ�9YQH"���t���<Y6	��E1,�E��t�������"�N�ſ
� L�ɚ�W���u�U��AΫ2���e4���T� � ��D�$ȩ�9E�1P��~W]1 #�� $��OL߼T���,M��
$pT���D p�Ad1Q�Ep���D�i i��*��a5��2�B((�ȵM��U�B� ��$��h
�(�R:��$E2� !��X��*u�v1�/#�K'TM3�2�$PA�7 " KT":E�k�tqW�$	��\CF)��$�*�sJt�n!8��"fҞ�)���a�g4��F�"KQ@R�����yI�$��MU%�dR��8PA  �,�� j*a,n0QA@I�G�D���B���h��@bD�yt�!�X�UBd�d��T�/ѐ��
�E��t�����P�&� � � ��,�]�@T�\\'�=N���e
Ao���B��.f��0J(���܀�(
Ș,
R9JS���1 � ���x%�ӭ�H�WU�4�� A� Hh�=
:�U4.���@�Bp@M ci.J�SQB�]B P"�$	y"� 4E�����P��`�)
"�b ���`��.���꘦q��Б\���� A���wI�i��� �����i%J����bC�5�Q �D�D@A��
�2P�(5��@�RP,MA�Iv���yIe��"1�D'eb/R�o��	�C�H�i9��q���L"'
g�%�I`Th�A
��t��&d
T�TA�S/�c|� �B��MmĪ�*DS�
Ơl�ӥ�Q���)e��/y�`� 2L�`��
P5�#�(a�*@p$R� "����4B�o!�PF#G�� ����4�*+R"�FxܵWL��K��8��N��b��Dh@��t"PIPP�\�	�0eBAE�9"K@u*�����#%@�D�$�Ћ�*�C�Y��
� �����WL���2h�@�TJT�	�DCfu��U�0)��J�Ɓs��飲�r�N��k�h(��(�DM���c�T1��1z�*!HQ4E��u��b�t^"�;�*������!#�d"�
�D� �2�	��۷(�v��@4����R�)ʂ��H�s�G(��+P�@�`K�KL��yI	��j(JR.-o	�JH
A���#H$l� �$���jd1#GR�C 0 ���	�$��J0@t*���(e�)RY�Wt��.���긆����M�H��� PH�hdA�q�
�3D'����� �F)	�.%(@���#FQ���� �z�MA )�%��r�b�t^FT�̓�	2�"B E�(��9!�"Ƙ����$%�I�9S2���&P�P�T<�zS�	��V�h�B4���1��>1�:/a�@�P9 �@( 
�i	�Y<���(D�?��t�p�\��\�N�P�(5J$�����J���� �@�@��@�T�ӥ�0J�
��A&��D�5���B�$�*.h(a� LG�&��h:��ȉ �N�  ��B�!!�@B A �I�@D�4B ���r�����yIQ�B r���O���	��A] �pDI��)EE W��(�`�(P������AJ��B�a� @�$�>�1,KA�r�dh��.��D'�R&��d�T�R��q���9	�gc��@�\p�2=� �" ���/D ���P��
!����!*�	�D�
&�I����yI@/�ȑRHD"D�xO���`�R��AA�@�qB����RH����	R@JQg!i J" "�hJA* i ��X�@�!�OLw�K
��L&�2�\p�F(�H7hJ5Dd,l�$:W@MLy&
�PH� �_�@Ƒ�H�%���QU $��T�k���Z~P�F� ��(�*��;�t�$ Q�8��d�  0��5M�:�����1N
�"�ILh
N��'��(E���T ��2N0Ǧ�(
 a$� �����<���2F����ֿ/��
�DV�I"B�Ph*�rJ� D!��PB0hP&��nTO�.B�$�#E���o,(P"� ��B#H�A�p�"!��a�X��_�$��� �@�&� R&�L@���,�N9  � \05�� M�)e,�E �rY�&�L��I��(C�F����DC�� 
q:MA�Z-��^�=b�u^"�
@�&3&$3�U��Q&'!l�S ��H�d��TE㜫:]��B�	�9$H	�9&B,����Y�U���=�&�4���f����Mb�t^R��)c��@�j�����tR!D@�  hPYָ
\�=���D�Q �@E���ȀJ"F0�D���,#+5#B ��k(�`4��\�-b�u^"�A�@"�z��,
��eu�
D"P¨�����HT&�΂@H�K~r 	 "�UUT�� �B$�����5�D6�-��=L+��yI��T�T%4��3e&	�*���t:���(!�p��M�MfN�2d��#A�4J¯CN��
r� !� �(��$�$�Y����u�P6�Z���61]9/	!�3��H��R+���N���&L E<�d��Y͢2=K "dH��62A8%3Y �H*�1�h `��D��m���$rF��ij�% � �	$�0�� t�,�8D  !@0�[��Ĥj\5������D�6(�B %�4�9BDU,)FCA�8��F'9���!..V���ӵ�0NQP��ؿ�A�(7Y��
� �H���A:PT��f��j�9�H(A���JN0�eD�E��*)@��mmx
��l��Iw�iE�$�	H8 ˂�.P���*����.P � ���'m�N��UU8r� C�����6�� (d�)'���!���<i���@'���������h-�����DPAQi"�g�5��T��:�4)�(E$��}E��@5G��&S}��"P���(P�����CSKK����ZM�Շ�U!�����y)dM�� ש�F��P++�W�ٝE�ғ4 H�*@����h1k��$ld��6A	�r�*���� ��#E�x"��$"GC���ID�7�MWG���a�w^�Z��֏v�j��_�j�$CgmP�U��$i���	�s�O>�����/��Z��x�"��a�Ɓ"�T �5L$	�A�� ��6<X6-Vr��9t 8���Ch�AD�� ���%�8��� {��7�D�v�wj��h���v��Dk���/�4��͋�Mͫs��b�����{��U+�

ȁ	.a�@
 �)��5]Z��ױ4����P>��J�*��Q�*B�z�9L�1S��R{�8{?�bK�ɋg�|�d(L'�5�Ƀ����%����-�E�{5*-ZH�f(��A��&��׀ 9EȀC�  D	���m���M0��\L2$d04��c�"�?L��k������ɎE�ه�I!)<��ڹ�dv��ƞA�q��O�T�>��+� jt�*I����"� �@$$�!@�@Y?����F�!Dd�Ѥ`HX����l���iݹ�c �\]\d|݉�yd��썗�h�D�νG`��Ѣii��X� R����h�ZDM"@� �"R��)�
.a�VSg��P��V����W��(�� ��PT	���N/���P;7�X�
!\��՝7��1��AJ�ν=O!,��Z,�C�!��ҢɪB��UA|Xx=JR�H�H"�`F�F)�$I@;;=�(,���2γXUd �MaU!�ô��Kg����b{	i��FCC��f�v}ݧ����Μ3E1z;`�J��AkR�7k�{��o>,*kǹb�7gh� ��(("Yp��_��ȀH1I ��^��(�e��,%!X��(E��0���ҥ_�������^��g��ކ� Y	|�ō?�RxϚ<�7�D�OSP$EQ[+�J�A��;Ong��7W���F��W�`� �=DA�
�� R@��� @"dt��Z!Q�&���I��$!!K Q ��%��e�_ى���A����^��S��x�A,K
�������K�6,�L�XN�Q �P �0Z7�Qf-�-�ƽ`v􋓝-���F��.��;F$�@���h��_@s:���!�L��J��A�d�EP��b�=L'�����K*�z�]_��3�����a��/�b ��g(
@0ƅ���I�ր�3ũ0.���EoG�w
�R���A$���%�au6:`,Y\	���o�@	
��P&�l����Փd�ԩ���s^f���9�B���a�hD�(�1$��) Q_A����:�E,@�I��w;yC��1D (��� @	��	O&�Z��A���"'ZL �4�����Sw�i��e�E痲���^��;��2� �q4U����x�iV�bh��0���N[��,���X���W�gD�!�  TpIߠ!@�F0ˢB���,D��$�y�BɈ!4��
���yyO���d4����+/��A�r<M!
����$ou���k cD#H�,��y :�hUE����@�?��� $PP)�4�L  ���  ��l�4$@��% 2�)�@���h^Sl~Ɍ:&�V�g�� �h � @@��'R�5`#
AD14Xm��k�E���(Y$� P��[ H`��D�c�	,>�1 ��_Dk�EQD��8�� �4��`�=Lk</�Ah~��2��:��w7B��)��hz4����� � {�م@��������  �zP	�0��p��{ ��$H��R���D�D��LaR  ��0���� 4����e�>�e�O{�h��� �v�ɴ׀QBE�`�"}u󀊮�(�Z9}�)�RB$IR���Q� �!�(�i�_ (^��i�$�&i �*4 �"����ټĢe�_JAY'�/��B M�M�Z�C��c^�%� 
AH���^(Pw�.FUc���+�!!2��R�I��[H�!�'�� �XQTX2�I�� BD Ą��a:��Pd���D�Ĩ�7^����!�����<�H�*�i
@�aP�f�]Q�$�TIp��ɾ eF��z-B��J@"�4�& �<�"� �*!@�z�����$*� JA��a:���E�&0��(���e�O{�
)DS�N����	 �*�R��X	jc�̑�t���]%�7�@��a:�YT! �k� �qZ	AG�P�����{�Mo�%B�L �H�!�ټ$���KJ��P�����I�UB���y����s>�C��B�D4CQ>$��tG�90FUI4��:��8�8�e:�1��j@
@�BE> 1G#�(�  �D�3܅K��L�2Cm�ټ|>~9.���I�5��K�����HѬ�����n���<� HQ��yʛ��R������E1� :�^�M�zƨNg@E�`��(��9H  �4CA��h /cZ�3��m#E�e�*�*V����yI��� .�$�	�c�BYcLs{[O�
z�.S0�4��f�FA&�>���`�1I���H_��Kh��d=c̨��#rH��AP!�P̳҃ HQ� ��(����l��c�s;�h�M�C�Z
�V�`A�����l^�B�K�᜗�������l�1�h��{�6<��v�@��r̐! `U! ��yߝ\%ґ��uz+=��*_��WBuɊR�`�U�E�[*� �`Bh�s�(�a�R�h��j��*���:3��G��W��O�zy��)�,(X1��b:��z ��%�D{��Up5ɘ@Fg�ލ^!�aa���޽��P2�T��a=�f1褺<�4�:��\��� ЌfY�_���ȵ��L!P#H2t*� �Ȁ@@ ��h��G��T�u�+_iԗ�z�h������VA���e3��t0/e"Q�_���~7V��U��6�<�s�gQ�jЙ�՟�w=d8��UIT�q޽:�e<�G#Q �hc�#�:�N�?Є�BV2e�FIut�¾݊2"P �i�Rc��h����[4��_"�:u��ڻP1��ju�UP�hϡb:��z�,Q��/Q�( ��(���jU0fx;>yr�a(�u�A6X+
���?�s�#C0�	A �ջWWA7�Y�$J�����O\t���Z���Vz�⠉�Q(R&�� DBiJ�D%cLX����@�7�T��鬜:��ٛ�5(g��t��EU$�U�����yi4�t���U��ȳlr���I� r��}vgo�������:aX�������a�F�ec�e1:�  Z���c���66F	4Wh�C� r�+��謭�E�WD���!G@.8CF2�)��U���X�[�(+7J_b��Skfr��
�1��u�wlt�d��"�����g:�������I���Ť�� T����,Ȁf�>�яmxF����ｦ��q[��]����V$O�(�)���bx��5�ɓ�N�;�K��"k���*L�h-S�hm;��E(��&��"�R�pRR�%�lULh�`�\�D`�!�lc4���9�^'U��hWW��h<� ��y)m�X�u$.�4�9f����ȱh��WGIVg��O~��F�j"�VtB�ez~�;�����M�"E�VDX��� ��>4 ��N�Yr��)�w�y\X�b�%+��JVF=��X�p̲]��v�zB�+5A��3��@L&��Ei��T��U��0T6Z[9��n�\ut#�Q��G��I%��+���P�gw�i��%��:wik���/Mf��M�\�{�fB{���'��F��']>��9+�"�zؘZ�ԉw}h���~�Q��X�$ �J�x� 8�ޯ/�s�̕+[�a������4�O�b6�����=(�����h� �u@z�A���%%jBd�����b� H��$F���f����V�`q먩G:gzR��'� HN&3�itH�h��p^�lt�҅s��Ң�8�2�F�j5����ɪ�;g��Zb�k� �;7l1�̒��;1k ��x�ͽ;?W�y�`�*H2��X�(�.��W7o���Hg.\��
���і�0q�lV��QG�F+�ꠚT��EC()��M�(�$���qdT&����V��YT!���A�I�ru�@Xk���vb0�;3犽{�֦�y����b5�&������p^�څǞ���/UQ^i��Q'_��7�L �w�N\:���>�4���?���h2���;�UQ	�����l<���{����bR$��h�H�O�A�B�Ju]�T6���#�zB���kw�\�j�ӄ��(S��A�<8jZٶ	�-�Ę��\t��H��ifUT9ar^=r�
.޼9[e)�F�Sk�����&IF���^��{0����9�mH��(^prqq�b������48 rM��R ���{�q\~��`� �YU�����`g�(�� �h�z�?���}�cN���F��j��ޑw�g�a�ƃ�M0���6��@��������wn��[T�⩰��,ꊔVo�C.U�N�Fs�(���<�kQ%����Yi�MC%�Aϸꨨ��ec:��hf3
�kB�XV �P�P��m���ٝ���뱷�?O��� �М��jhbr5ˊ*Y��Pk7oΘ\�C�љ':J��K�t8/��ҙy���P,��B)'N�P��уI��'p�?���=kI'��� �L�EP�rw�|�#�h����"K>|G��BQ�^�y�VD�;;G3�T����z���끫�"�V�d�R�$�` V�����E Hf��Q�cۦgLg���f��{;�*�
G�,Y�ɬ����t4�9 %5a���щ+f��s4w��/��W���x���V���J2�D�Ť�n80��?���s�̩���T5���p^�)�P��y9����U��
F+�Nu`���S4,��[�����H K��B��,�
��b��:O��Ä2����+^E�����j@��x��.��QU���i*r����#,�����(��d�u��b��h����N����(�1W4P[Ioekmcd�޵;���L�7�;8
T�z��}���ֶI��v�T/ܻs�W>�=|ŧWN�@)bhV��x��$)@e��+��j�\�ޭ�:��+���t8/��AB��e�Q�*8VK��sk�:عwTE�?(��:��u�Ikc�j)ʊ-�,J��1&����8PBd#kk˲�7A�zglaV��1���c+���PTM�@���3�]�F�F�c�IQD��I6�0p��!��mݸ��h
(���*)
��� P*�z����$��F�f�jB8���(ߜ�@�X��X���`���(9�q�AŲl'�e�� �c�����>�&Q�c�MC"��D�(�lq�Xh�^s?�����t2/�DB �.������du���h�L�9q��
=xco�r���l��^fe����Z�!�"	VE�*��U`@~�kOtF��OJ%٨7ذ�jq��٫��Mܼ��O��� ��j�9b���EDC���ذ��IQ�����3`5�y�����XU��UR�<d�o�,	��Ψ���G{�I���cO%��h-s��Ep���u:=K�G.���Ή��Q'����R]�vkh_jtjk@䪢(��	A8`�|Ϯ�^B(a�$�u<�q ���*��ڲ�Z��ΖGÕ���5�k:��2(pf^.,#"[\}����l�;5Z<�vkzL_DB eT˰�cu��eX��jeYRe��c�D�t�1�t�Ψ7h`5�e�j��l�A��&���s瞹rn�
�  �*��8	_c��b�z����f'g��c!X��Ь���F�  �,�2&���� (���`�����;բ!��v��0�`��3{�ʅ����ғ�z�s�N!:��F�^g�܅ɝ/�T��d.}۷=5���9��`�`6��\� |L�a���.%�2Y����eY��-��Y�ZM��m������MR� �k:��R.T��\�ʂ�ه�Nlm�:���Թ��ҵ#�����j�[K�4�qZ��1�!�DEPK
Q�  �e� )����K�^���(\��*I��M�;&�}�h�ܙKk��)� �k�����B4���-0��"���D�Wh���;-G�ʢ�`lQ�!_��c|��<A�Q�d+�5����G��gi�ɠsj����ą�bv��H󋾂�v��vb��d�.=�v�^i-8��G���$4��`�Ν[�޸���h1�U�	|C��B(0����L�g�D�$X��(�XVU���jE�^��o��DҚ�k:��D&����x�nq�*�:{A����A2l]x���̝�!�
n�Ng����X��4Z��i� �DYR�"4TQC("��@ A ��  �0�QYb�$3��ɜ(G��Ȋ�����k�v��6N\8q������R
��5��T��{>��B�f5������"�&G�``�hɳX�Q�����E "�`	����Y]���g}G@e��t���ZG�;�;*BU&��kW3��:t�`R9W�����Z&����xpp��dm�Dge0��s_��s{Q������%QDB����yp�Ν{�vv�ŬpMD���������TP��2�K���zc�5�A�������f�I �ײh����w:� ���`q�4/gr#VE�{�mml���G�y����
�z��ETiNc�ױd���y��9�*�T.�P��8A�p!�+( �2J@G���eB㪝�QQTU2�}�[=�l�����ިg�a�W5������\�b���Q4���,0;YeE\�F�Ɩ����#8-�3"c	b�U�y��Q���J(�$3t#����;Z�*4f0�H�ЄIVF[U�LBXT��#X[H��Fnqt��i����he����M��?p�������DAB�An����=x�soooǅ�&P�4p��   ,
 P���w�w�Q @@":*3"Q�̮�I*r�jqP	+XQ�ܲH i9���zz�)02�NO�X\�s�ޛǽ<��_�$ �X�����`c�Lo0:��_��{~�~Yp���`�*�kuZ-�R����)�iB�	�9�@A�` � @ ʜFc2c�JB �T��`��\#�(89��m�e�E	�d�Qg��Iz5G���9V�9�� bi�A����*)�h6:��:[v]x�4�3��4$��@�j2+��HL0~v�Orɞ�J%V�$�F#�QMS�k�`��ӌN�i��t�6625;ة������Y�l���;��HtzYg��3o+^�*���o�-ϜZ�t2#�PA�4������h�XP�
��䂠���ԨnwMAJ��K�ĈNH�0�g2*(�f�(fE�V����$����4<�L�d6��3,,f^?��8�_F�ZfGAY1�ypP�2��8q�=����٫
�j�F�F�Y�,�h4Z-�A4�(� Y�b)��a$ � ��s� Ad�
� �@U�Q�s�)�٬i��P�����:��@)�eY��\8R Bs��WnM(�o|�"�e5-�#��QR�$X}�Z��{T�q�RR
���sS�q�s�!WѢ(*��W���7~�!eD��AOtF�L9j��ɢq�����m��ƁR�hmk�	��"�b6ۙ�h�b$˾
�ZL�����̎&;��G��o���w=�ĹK�.]��uz"!�A�)
��DPƅ���*�� /N�FT��R( ����uր��a	TP(�IQ-��9���(�,�D �kt<uSt��ut�z*Qh&{���� ���/c�ĊE59z�`6��o{�V _�Tv(�,ZL��"a�e����i�B�	�:�Lc�J ��� ��@ ȁh�Q��LBф
�@�s��j�H��A���BP�$�#� �{��'�pk���`�	�2D4d9��k8X�FI&�(9;�e��� ,L ]�a3"=#IF�,�"�?�[;��h6�*f+D|I��� J0&QY��d`����b19*�������F��6iإlmck`�ރY�fq�`zk'r�}=D��lqԸ
�4�@#I�kݩ�K�=��c�έmda�" @'˲$�1"� a�!����*8�kBca ~�5�8rMS8�(
W8׈�\���j���sz�Z�u:&_u�S��=<��p"R�̸� �b�8Z��M^{c�=�{U�d�I2K������4EAHA�(�������I��/ $� � W���"
�8p�i���h�(�Fkˠ�@� ! a�R��
Ս����������7>�g�dh���A��d� K���E�t6Z�:H#�� C  
B�A+X���������,[eA�!��H>H��C�!� � SF�Lt �)��(BG�Q1[4Mp5���言l��JjU��֙�Ln�5Up���A��A"�� AE  ���3Bd����K��z�Kά�u:��%�^5 �Ie��H@� �/)T����
ĨP�%��PAUUMӄ*4(^C�k��h1I�9Z�i�7���5`c�阅FԔ��!B��:#-ͤt,��N ��(VQ�T
�EkX��EB	����BCIPJ�H8 ��9��&��i��yG�܃�S� D�H	�@��������o�l`�U��t��<��h��4e�d5I2Q���d������eUX� "� �@@��3��lV �yF�n��VT�l�U�PS�#���!)�H� @� 
 �PB%B(�)aȈ�P=�R����0YTE�Ľ����d�4ɪ��_��¥fqggQ��X�,���VGr�uq�NK� �⁃�I+[��\�r�s[k+�N�a�2B(�"�J Q`HR"�QCZ5X8C��
ԩ:���Ѐ.@�4�i�EqTM�h(��c)4/�U`$���I�D񸗼���_N�%P��9 DUeY�
�$J
�4D��,-�$]` ���Rd�	����H 
�T�5��USUB�:������H�� *�|�_����i8-%K��`2���h@DS,ǲ:��²h��LdA��\\UZo�AkԿ��D�*���aU��$� `����2:��V��bEf�JT���@�FQ�@A8E@�EB�"#�(���#�0$T"�Q�#�!�5��͚E�h\.�T�IqP,\譬���h�s�-kb�Τ��XL�a0ZY�T�����o�0Ig0Z[;�q������^/Ie��ZZЄR$ ��%�� �5�t��P rB�T�j�L��k�$�@���Т0M ��w:��������
��/sO�_ ��XV%Q$IR%�&�B$�1�TG)%��B�
�@� '������B�@A��Ff4����Ûh\(���-������������EQTU�dǙ��&B��4Wb,Ʋ�b$�`U��F��h�5�1p�bF�&@Bc����l1	�
T'��n�g��fYV�i5,KK #�kU�Bh!� ��@H�	I���S@u�Q"���Q G�h�",��h��r�*��b���N���`�3�O���+�W�
�������K��� �˕�%ʈN��V6�Nl��ȒL:YfLǘ�P�!� F��(��P�(Tt��=q5�+f�k��8%�N�2�h��w�LSp����^�w0����2~9�t~݉���X��")��`���' 	J$B)���(a��E�(G.4���@p@��J����zF�{�jk�@�����έ/����������o����4��UE%Գ/#����A�a���RPUD��d�"+�*�LFA��:=�W��$���0����d1	ɳ_�8�n�N!�bi���$Y��0
(aPAr"
]  D�d�!Y
�A
 �4�5M�\C�QD�Q�٤(\Y����K����ۙ�EQM�f%�����L���J(�:��T	�(��J�I�{e�R �R@
=��+�J�@N�&�Є�5�k��q��z�N�����m��L�`��N������7��[�:��~	 �p�F�XUYRes
U P %T��H(PD@D�B A��;t`�I�l-�����^�܏������ɉ+;-Kшf)B�.;�
/�h�c��0Y$�(ʊ�*�L��Y�Ƞ�q�J1��*�����5h���*c�;���v�-GSC&��e=���0 J���@@B�`�8 �	j �p�PhBE�4N4Ԑ�@�(P�j1�8!Fq*�Yg5QW��Ѣh&����le��o��?0CB	eL2sW�5 �P�
�J�J�0�8��0�(ux�9p��	N@PMG$�
���%ۣi�m���=q���K����[�"����/G���!��1Pe����*4��� 8��($. �D����R�I2�)�D��&{w^y�+��kzC�C!H ���O��3�i����iŨH��,
��UEUeIp5Y��:����Z�	!XRT��aY�N�f�J�bu���,1z�A��(I@��2B	�F�
g@	 PN	�A�hH8Q�@. ��h�BpESͪ����#�A��3���T}����i\H��F/؏��;�$��h��P�P�-BC�
�S ����Ԩ 
:����L������(Q���i ���s�ҕ�.d�ΝG��
1�_�b�B5��B�
刌�&!
B�
Ș�(��=���ĭ�E�k���d� �hmt,� ��5Z˳4ES�*��	�H!(��,�:Fs��4
�*�`�UUU˒`�XDP�^â�jq��#���t��ZZ0�  ����d�sz^K�2#�Z�#�� 2�������� $H @cA D@�W��pES�Є I��Ԇ��w���ܿ�N6�t�h0l��u4:� �QEUC�P�
.��BC .���Rň�P
�*,��FA��D(a����O�$d9�>����K�������d�*G� S�����co��۸E�MH�!�""
�P��R�%�Wb �@|����iYi�3l�mz�V�3,��E�SN� aT/IĊH:ɀBQ0˂�`U9%ˢE4	��YV�����U  !cZ��2,���T Pe�j2�
,�zI��}0���R  @( �� @8�e3Hh��U!��E����:�N'eFފU��2iT2�#���  8@�	G\�pD��a�5�RH���J�at(CI	H�{X�	�d=�>���:�.\e��h2�-��9
�����+�g�R|,A  b�I��*����l�N���<K1��8[{<����������5XDZJR�(��L�^GtH9ǒjQ��(�
QUE!�,ZE�l�1�y=��0��V
=B9�AK3�Z%	�2aE�H��U2�0*1b`��%�dJ�%RB�pO@8 �D�
�B4� 
�a 3=���c_]�T�	c��];6X�(�:  $���`J,�@�1���k�40I��N��KO\�d�sV=(�f1+�j\��sB������~U�PͲA�a�v�<��G�����g?�Q�X�B&Q�G) ��qU5ɢ IX�X!�*c�jI�
�x^�e�����sF ����iX�QT�B2ɒ"����v�r�HH%� ��2 �!��@ ԈH8"'�@A� ��A��=c�|�g!�ZzW��/�wxO���񚞟xwI�T'�.����Rv�s٨��8��wH@���H�/Ǳ�l�O"�4RE� UEQ� Ͱ���;w>��?��� g�"'�AD(�,�b���D��`Y�EI0�"�0-ϳ�����Y�ml��*�M=�`YQբr�)\\ �@	C�
Ȑ ����Q�Lc� �J�!�Q!�)P��Af��L�'� �E��#�ni)a��qx����#�6����Q60&%����Q,�Qo]�TEQ0 DQ�k6n�3B@&刂+`��r���*���� �*j5<�24�KH$V�IF�[{	���Ѵ�"De@���&8r� p N�� @)��H�IHJ�QF$LF�;�g�'�2�x���i���NO�K7�ݪ��3g6V�$�L�L'�<�/�?j]=L�(ZMVQP�	 ��E,0JA��P r�
�U�$ɂd��@��9�Ӳ��/�n��lr6+�i�΀�[8����HD�	�B�D  ���H�	"1$�D�2J)!pX[�į���7M���:=%/-�n��`F['N����Ʉ1�@'��Ώ�;"DQ������l���"Ȑ0$�
&� N4.����[UU�HeF�2GSh1[!�d6�\�^�冃�Lݎ_ 
X: bQ"(!� �H	 H��"	�M�N����֝�����ѝ[{{��6��^f�QB��e�0�P�l��ͻ7�ޝ�;���M�(a@ )��*��qE�M�*E �AZ��hA ��7���X�W�-���gϵ JT�x/��1�l/"���H�Da1����;p�d�A2J��~���%��իgϾ��W���w_}�	�2�PB@.P W�&��%���C��(�uEQ+�X걿<0Ӱ��W��:}��T��dr4�Y���@���埈q�s	Q������w_��/�ٿ	(!� � @5���HT��d��Q,M���w��C��Zn�u��7 Ү���6��j1if�E3�
jt�l����,�"����ɇ�PEhH��tD��D�#dmi>`��yB����{ѹwz-^�v���PTW�&��~���@0VI���	(2���c��C�/�ug���K?aC�D��@.8uF����rN	>�����h��_~���?g�����n�T/��'�������?���?��ǟ���������?���?��ǟ����              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/test sprite sheet.png-9e1476ff709b36d1b4d1039ae116d1ca.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://player/test sprite sheet.png"
dest_files=[ "res://.import/test sprite sheet.png-9e1476ff709b36d1b4d1039ae116d1ca.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC         5   �      ���ӄ�   ������������Ӷ��   �����ٶ�   �����¶�   �����ٶ�   ����Ҷ��   ��������������Ӷ   �������������Ӷ�   �����Ӷ�   �����Ӷ�   ������������¶��   �����϶�   �������¶���   ��������������Ӷ   ������Ӷ   ����Ķ��   �����Ŷ�   ����������������¶��   �����¶�   ���������������Ŷ���   ����׶��   �������϶���   �������ض���   �����޶�         d           zo��?         zo��?  I���)�?  �^��x�?  zo@�?  �@�?  ��"ڎ��?                                                    	      
                                       "      -      .      5      6      ;      <      =      E      N      S      W      \      g      l      w       |   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   3YYYYYYY>�  N�  �  �  �  �  �  YOYYY8;�  Y8;�  �  Y8P�  Q;�  �  T�  YY5;�  W�	  YY;�
  VYYY0�  PQX=V�  ;�  V�  �  T�  �  ;�  V�  �  /�  V�  �  T�  V�  �  �  P�  R�  R�  Q�  �  T�  V�  �  �  P�  R�  R�  Q�  �  T�  V�  �  �  P�  R�	  R�
  Q�  �?  P�  QY�  �  T�  T�  L�  M�  YYY0�  P�  QV�  �
  �  YYYYYYYY0�  P�  V�  QX=V�  &�
  V�  ;�  �
  T�  �  Y�  &�  T�  PQ�  V�  �  �  �  �  `[gd_scene load_steps=5 format=2]

[ext_resource path="res://vegetable/Vegetable.gd" type="Script" id=1]

[sub_resource type="Gradient" id=5]
resource_local_to_scene = true
offsets = PoolRealArray( 0.450262 )
colors = PoolColorArray( 0.757813, 0.0236816, 0.247362, 1 )

[sub_resource type="GradientTexture" id=6]
resource_local_to_scene = true
gradient = SubResource( 5 )
width = 50

[sub_resource type="CircleShape2D" id=4]
radius = 25.1794

[node name="Vegetable" type="Node2D"]
script = ExtResource( 1 )
follow_distance = 50

[node name="Sprite" type="Sprite" parent="."]
scale = Vector2( 1, 50 )
texture = SubResource( 6 )

[node name="Area2D" type="Area2D" parent="."]
collision_layer = 2
collision_mask = 0
monitoring = false

[node name="CollisionShape2D" type="CollisionShape2D" parent="Area2D"]
shape = SubResource( 4 )
    [remap]

path="res://Game.gdc"
 [remap]

path="res://harvester/Harvester.gdc"
  [remap]

path="res://healthSystem/HealthUI.gdc"
[remap]

path="res://healthSystem/Stats.gdc"
   [remap]

path="res://hunter/Hunter.gdc"
        [remap]

path="res://player/Player.gdc"
        [remap]

path="res://vegetable/Vegetable.gdc"
  �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         ldjam52    application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     autoload/PlayerStats,      $   *res://HealthSystem/PlayerStats.tscn   display/window/stretch/mode         viewport   display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled            input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      physical_scancode             unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      physical_scancode             unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      physical_scancode             unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      physical_scancode             unicode           echo          script         layer_names/2d_physics/layer_1         player     layer_names/2d_physics/layer_2         items      layer_names/2d_physics/layer_3         enemies    layer_names/2d_physics/layer_4         following_items )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_environment          res://default_env.tres              