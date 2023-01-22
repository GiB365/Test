GDPC                                                                            -   <   res://.import/Wall.png-c1e6c8a44733b40234aae37bb1bf51ff.stex`�      F       u{�,�#���I�S�l�kH   res://.import/glowing_circle.png-75897cdbbc43d0e165348326f247e19b.stex  `�      �      ��;%A�$�"3<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0�      �      &�y���ڞu;>��.p@   res://.import/tilemap.png-b9bc55d9a3c5afef7bfb764e7fa08183.stex 0�      �       +4�i����͕���iK   res://Scenes/Bullet.tscnP      i      b��<J�����Ⱦ�$   res://Scenes/Enemies/Pentagon.tscn  �      �      '�U�|��?[n��_    res://Scenes/Enemies/Square.tscnP      w      >��zϸ�� P��$   res://Scenes/Enemies/Triangle.tscn  �            p����Dw��)�C)   res://Scenes/Lazer.tscn �&      f      EҨ\�W	�����.'	   res://Scenes/Main_menu.tscn `*      c       ��roQk� �z^��   res://Scenes/Player.tscn�*            �yB�-[8Æ�0n����   res://Scenes/Room.tscn  �.      �      �����?�Jt,���   res://Scenes/Test_stage.tscn�;      
      ��N��,��O����I�    res://Scenes/Triangle_ghost.tscn�A      �      
p��3�U!u��}��    res://Scripts/Bullet.gd.remap   ��      )       0L��K���#�ѐ�3�   res://Scripts/Bullet.gdc�C      l      SD$�U�f�Ӑ����'�    res://Scripts/Camera.gd.remap   �      )       6�>%��V0ߊ R Y�   res://Scripts/Camera.gdcF      �      u������>�/"�H$   res://Scripts/Health_bar.gd.remap    �      -       ���l��v����   res://Scripts/Health_bar.gdc�M      )      Qk�0�ΰ��ʷN)��7   res://Scripts/Lazer.gd.remapP�      (       �
�;���������   res://Scripts/Lazer.gdc �O      �      J�{c�+���\�6�    res://Scripts/Pentagon.gd.remap ��      +       �������Ewt(�   res://Scripts/Pentagon.gdc  �U      �      �D���D�&��h`E    res://Scripts/Player.gd.remap   ��      )       <y;�9Y;�k��S�   res://Scripts/Player.gdc�[      �      �(_��`�Gz��X�   res://Scripts/Room.gd.remap �      '       MH*`��aI���ѯ7�   res://Scripts/Room.gdc  �b      k      v��q��:�+�!�<�    res://Scripts/Square.gd.remap   �      )       Vަf~[���aڟ��   res://Scripts/Square.gdc j            RW<��X�M�v�$   res://Scripts/Test_stage.gd.remap   @�      -       ߀R�j#P����   res://Scripts/Test_stage.gdcq      -	      ���UF�#|��㞳    res://Scripts/Triangle.gd.remap p�      +       4�d���׈.[H�kv   res://Scripts/Triangle.gdc  @z      �      j#n��  M�w�$   res://Scripts/TriangleGhost.gd.remap��      0       ���j�be��z��P    res://Scripts/TriangleGhost.gdc ��      �      bg�7ލ�x�)Y�1$2    res://Scripts/Walker.gd.remap   Ц      )       *'��@�������   res://Scripts/Walker.gdc��      �      ܌���9ɷ?���    res://Sprites/Wall.png.import   ��      �      l��A���c���X���(   res://Sprites/glowing_circle.png.import `�      �      w�SN�|?�� 7��y�    res://Sprites/tilemap.png.import��      �      ��W%ƽ�8b�鯜�   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://icon.png   �      �      G1?��z�c��vN��   res://icon.png.import   �      �      ��fe��6�B��^ U�   res://project.binary�            `��A���k��=�             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Bullet.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 3, 3 )

[node name="Bullet" type="Area2D"]
scale = Vector2( 2, 2 )
collision_layer = 2
collision_mask = 20
script = ExtResource( 1 )

[node name="Sprite" type="Polygon2D" parent="."]
color = Color( 0.815686, 0.435294, 0.8, 1 )
polygon = PoolVector2Array( -3, -3, 3, -3, 3, 3, -3, 3 )

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[connection signal="body_entered" from="." to="." method="_on_Bullet_body_entered"]
       [gd_scene load_steps=5 format=2]

[ext_resource path="res://Scenes/Lazer.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Pentagon.gd" type="Script" id=2]

[sub_resource type="Animation" id=1]
resource_name = "Hit"
length = 0.3
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.3 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Color( 0.494118, 0.713726, 0.670588, 1 ), Color( 0.172549, 0.607843, 0.517647, 1 ) ]
}

[sub_resource type="Animation" id=2]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 0.172549, 0.607843, 0.517647, 1 ) ]
}

[node name="Pentagon" type="KinematicBody2D"]
scale = Vector2( 6, 6 )
collision_layer = 4
collision_mask = 16
script = ExtResource( 2 )

[node name="Collision" type="CollisionPolygon2D" parent="."]
rotation = -1.5708
polygon = PoolVector2Array( 0, -10, -10, -2, -6, 10, 6, 10, 10, -2 )

[node name="Sprite" type="Polygon2D" parent="."]
rotation = -1.5708
color = Color( 0.172549, 0.607843, 0.517647, 1 )
polygon = PoolVector2Array( 0, -10, -10, -2, -6, 10, 6, 10, 10, -2 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Hit = SubResource( 1 )
anims/RESET = SubResource( 2 )

[node name="Hurt_box" type="Area2D" parent="."]
collision_layer = 8
collision_mask = 3

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="Hurt_box"]
rotation = -1.5708
polygon = PoolVector2Array( 0, -10, -10, -2, -6, 10, 6, 10, 10, -2 )

[node name="Lazer" parent="." instance=ExtResource( 1 )]
position = Vector2( 10, 0 )

[node name="Lazer_timer" type="Timer" parent="."]
wait_time = 2.0
autostart = true

[connection signal="area_entered" from="Hurt_box" to="." method="_on_Hurt_box_area_entered"]
[connection signal="timeout" from="Lazer_timer" to="." method="_on_Lazer_timer_timeout"]
             [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scripts/Square.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[sub_resource type="Animation" id=2]
resource_name = "Hit"
length = 0.3
tracks/0/type = "value"
tracks/0/path = NodePath("Polygon2D:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.3 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Color( 0.811765, 0.898039, 0.686275, 1 ), Color( 0.658824, 0.8, 0.45098, 1 ) ]
}

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Polygon2D:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 0.658824, 0.8, 0.45098, 1 ) ]
}

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 8, 8 )

[node name="Square" type="KinematicBody2D"]
scale = Vector2( 6, 6 )
collision_layer = 4
collision_mask = 20
script = ExtResource( 1 )

[node name="Collision" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Polygon2D" type="Polygon2D" parent="."]
color = Color( 0.658824, 0.8, 0.45098, 1 )
polygon = PoolVector2Array( -8, -8, -8, 8, 8, 8, 8, -8 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Hit = SubResource( 2 )
anims/RESET = SubResource( 3 )

[node name="Hurt_box" type="Area2D" parent="."]
collision_layer = 8
collision_mask = 3

[node name="CollisionPolygon2D" type="CollisionShape2D" parent="Hurt_box"]
shape = SubResource( 4 )

[connection signal="area_entered" from="Hurt_box" to="." method="_on_Hurt_box_area_entered"]
[connection signal="body_entered" from="Hurt_box" to="." method="_on_Hurt_box_body_entered"]
         [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Triangle.gd" type="Script" id=1]

[sub_resource type="Animation" id=1]
resource_name = "Hit"
length = 0.3
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.3 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Color( 0.686275, 0.439216, 0.439216, 1 ), Color( 0.803922, 0.254902, 0.254902, 1 ) ]
}

[sub_resource type="Animation" id=2]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:color")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 0.803922, 0.254902, 0.254902, 1 ) ]
}

[node name="Triangle" type="KinematicBody2D"]
scale = Vector2( 6, 6 )
collision_layer = 4
collision_mask = 16
script = ExtResource( 1 )

[node name="Collision" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( -10, -10, -10, 10, 10, 0 )

[node name="Sprite" type="Polygon2D" parent="."]
use_parent_material = true
color = Color( 0.803922, 0.254902, 0.254902, 1 )
polygon = PoolVector2Array( -10, -10, -10, 10, 10, 0 )

[node name="Attack_timer" type="Timer" parent="."]
one_shot = true

[node name="Ghost_timer" type="Timer" parent="."]
wait_time = 0.05

[node name="Hurt_box" type="Area2D" parent="."]
collision_layer = 8
collision_mask = 3

[node name="Collision" type="CollisionPolygon2D" parent="Hurt_box"]
polygon = PoolVector2Array( -10, -10, 10, 0, -10, 10 )

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/Hit = SubResource( 1 )
anims/RESET = SubResource( 2 )

[connection signal="timeout" from="Ghost_timer" to="." method="instance_ghost"]
[connection signal="area_entered" from="Hurt_box" to="." method="_on_Hurt_box_area_entered"]
[connection signal="body_entered" from="Hurt_box" to="." method="_on_Hurt_box_body_entered"]
  [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/Lazer.gd" type="Script" id=1]

[sub_resource type="Environment" id=2]
background_mode = 4
glow_enabled = true
glow_levels/4 = true
glow_levels/5 = false
glow_intensity = 0.94
glow_strength = 0.88
glow_hdr_luminance_cap = 30.45
glow_hdr_scale = 0.7
glow_bicubic_upscale = true

[node name="Lazer" type="RayCast2D"]
enabled = true
exclude_parent = false
cast_to = Vector2( 1920, 0 )
collision_mask = 17
script = ExtResource( 1 )

[node name="Line2D" type="Line2D" parent="."]
modulate = Color( 0, 0.803922, 14.4824, 1 )
z_index = -1
points = PoolVector2Array( 0, 0, 500, 0 )
width = 50.0
default_color = Color( 0.557007, 0.641002, 0.84375, 1 )
end_cap_mode = 2

[node name="Tween" type="Tween" parent="."]

[node name="WorldEnvironment" type="WorldEnvironment" parent="."]
environment = SubResource( 2 )
          [gd_scene format=2]

[node name="Main_menu" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
             [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Player.gd" type="Script" id=1]
[ext_resource path="res://Scripts/Camera.gd" type="Script" id=2]

[sub_resource type="OpenSimplexNoise" id=1]
octaves = 4
period = 2.0
persistence = 0.8

[node name="Player" type="KinematicBody2D"]
collision_mask = 24
script = ExtResource( 1 )

[node name="Collision" type="CollisionPolygon2D" parent="."]
scale = Vector2( 2, 2 )
polygon = PoolVector2Array( -10, 10, -10, -10, 10, 0 )

[node name="Sprite" type="Polygon2D" parent="."]
scale = Vector2( 2, 2 )
color = Color( 0.870588, 0.666667, 0.341176, 1 )
polygon = PoolVector2Array( -10, -10, -10, 10, 10, 0 )

[node name="Bullet_spawn" type="Position2D" parent="."]
position = Vector2( 10, 0 )

[node name="Cooldown" type="Timer" parent="."]
one_shot = true

[node name="Cam_snap" type="Position2D" parent="."]
script = ExtResource( 2 )
noise = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="Cam_snap"]
current = true
smoothing_enabled = true
smoothing_speed = 10.0
    [gd_scene load_steps=8 format=2]

[ext_resource path="res://Sprites/tilemap.png" type="Texture" id=1]
[ext_resource path="res://Sprites/Wall.png" type="Texture" id=2]
[ext_resource path="res://Scripts/Room.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=4]
extents = Vector2( 22, 11.5 )

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 2, 1 )

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 1, 2.5 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 2, 1 )

[node name="Room" type="StaticBody2D"]
scale = Vector2( 40, 40 )
z_index = -1
collision_layer = 16
collision_mask = 7
script = ExtResource( 4 )

[node name="Top_right" type="CollisionPolygon2D" parent="."]
position = Vector2( 48, 0 )
rotation = -3.14159
scale = Vector2( 1, -1 )
polygon = PoolVector2Array( 0, 11, 2, 11, 2, 2, 22, 2, 22, 0, 0, 0 )

[node name="Top_left" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 0, 11, 2, 11, 2, 2, 22, 2, 22, 0, 0, 0 )

[node name="Bottom_right" type="CollisionPolygon2D" parent="."]
position = Vector2( 48, 27 )
rotation = -3.14159
polygon = PoolVector2Array( 0, 11, 2, 11, 2, 2, 22, 2, 22, 0, 0, 0 )

[node name="Bottom_left" type="CollisionPolygon2D" parent="."]
position = Vector2( 0, 27 )
scale = Vector2( 1, -1 )
polygon = PoolVector2Array( 0, 11, 2, 11, 2, 2, 22, 2, 22, 0, 0, 0 )

[node name="Back_round" type="Sprite" parent="."]
z_index = 1
texture = ExtResource( 1 )
centered = false
hframes = 2
frame = 1

[node name="Room_area" type="Area2D" parent="."]
collision_layer = 32

[node name="CollisionShape2D" type="CollisionShape2D" parent="Room_area"]
position = Vector2( 24, 13.5 )
shape = SubResource( 4 )

[node name="Positions" type="Node2D" parent="."]

[node name="pos_1" type="Position2D" parent="Positions"]
position = Vector2( 5.975, 4.85 )

[node name="pos_2" type="Position2D" parent="Positions"]
position = Vector2( 41.05, 5.15 )

[node name="pos_3" type="Position2D" parent="Positions"]
position = Vector2( 6.65, 19.45 )

[node name="pos_4" type="Position2D" parent="Positions"]
position = Vector2( 38.775, 20.55 )

[node name="Doors" type="StaticBody2D" parent="."]
collision_layer = 16
collision_mask = 7

[node name="Bottom" type="CollisionShape2D" parent="Doors"]
position = Vector2( 24, 26 )
scale = Vector2( 1, 1 )
shape = SubResource( 3 )

[node name="Door" type="Sprite" parent="Doors/Bottom"]
rotation = 1.5708
texture = ExtResource( 2 )

[node name="Right" type="CollisionShape2D" parent="Doors"]
position = Vector2( 47, 13.5 )
scale = Vector2( 1, 1 )
shape = SubResource( 1 )

[node name="Door" type="Sprite" parent="Doors/Right"]
texture = ExtResource( 2 )

[node name="Left" type="CollisionShape2D" parent="Doors"]
position = Vector2( 1, 13.5 )
scale = Vector2( 1, 1 )
shape = SubResource( 1 )

[node name="Door" type="Sprite" parent="Doors/Left"]
texture = ExtResource( 2 )

[node name="Top" type="CollisionShape2D" parent="Doors"]
position = Vector2( 24, 1 )
scale = Vector2( 1, 1 )
shape = SubResource( 2 )

[node name="Door" type="Sprite" parent="Doors/Top"]
rotation = 1.5708
texture = ExtResource( 2 )

[node name="Enemies" type="Node2D" parent="."]
scale = Vector2( 0.025, 0.025 )

[connection signal="body_entered" from="Room_area" to="." method="_on_Room_area_body_entered"]
           [gd_scene load_steps=6 format=2]

[ext_resource path="res://Scenes/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Health_bar.gd" type="Script" id=2]
[ext_resource path="res://Scripts/Test_stage.gd" type="Script" id=3]

[sub_resource type="StyleBoxFlat" id=1]
bg_color = Color( 0.329412, 0.603922, 0.337255, 1 )

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 0, 0, 0, 1 )

[node name="Test_stage" type="Node2D"]
position = Vector2( 1, 0 )
script = ExtResource( 3 )

[node name="Player" parent="." instance=ExtResource( 1 )]

[node name="Rooms" type="Node2D" parent="."]
position = Vector2( -960, -540 )

[node name="Timer" type="Timer" parent="."]

[node name="Health" type="Control" parent="."]
margin_right = 40.0
margin_bottom = 40.0

[node name="Top" type="CanvasLayer" parent="Health"]
layer = 3
follow_viewport_enable = true

[node name="Health_bar" type="ProgressBar" parent="Health/Top"]
margin_left = -30.0
margin_top = -46.0
margin_right = 30.0
margin_bottom = -30.0
custom_styles/fg = SubResource( 1 )
custom_styles/bg = SubResource( 2 )
percent_visible = false
script = ExtResource( 2 )

[node name="Tween" type="Tween" parent="."]

[node name="Frequency" type="Timer" parent="."]
one_shot = true

[node name="Duration" type="Timer" parent="."]
one_shot = true

[connection signal="timeout" from="Timer" to="." method="generate"]
[connection signal="timeout" from="Frequency" to="." method="_on_Frequency_timeout"]
[connection signal="timeout" from="Duration" to="." method="_on_Duration_timeout"]
      [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/TriangleGhost.gd" type="Script" id=1]

[node name="Sprite" type="Polygon2D"]
scale = Vector2( 6, 6 )
color = Color( 0.878431, 0.247059, 0.247059, 1 )
polygon = PoolVector2Array( -10, -10, -10, 10, 10, 0 )
script = ExtResource( 1 )

[node name="Tween" type="Tween" parent="."]

[connection signal="tween_all_completed" from="Tween" to="." method="_on_Tween_tween_all_completed"]
  GDSC            R      ���ׄ�   �����Ӷ�   ��������������ض   ����Ҷ��   �Զ�   �¶�   �¶�   ��Զ   ���������������Ŷ���   ����׶��   ��������Ӷ��   ����ⶶ�   ������Ҷ   ����������������������Ҷ   ���϶���   ���������Ӷ�                     {�G�z�?  �������?   2                                                    !   	   &   
   +      ,      -      4      B      C      D      E      L      P      3YY8P�  Q;�  YY;�  �  Y;�  �  Y;�  Y;�  �  Y;�  �  Y;�  �  YYY0�  P�	  QV�  �
  P�  T�  T�  P�  Q�  QYYYY0�  P�  QV�  �  PQY`    GDSC   #   	   >   N     �������؄�   �����׶�   �����ׄ򶶶�   ���������������ض���   ��������������ض   ����Ӷ��   ���������������Ӷ���   ����ζ��   ����϶��   ����������Ҷ   ���Ӷ���   ��������Ӷ��   ������������ض��   ��������   �����Ķ�   �����׶�   ��������������������Ӷ��   �����϶�   ���������¶�   ��������������ڶ   �������������������ض���   ���������������Ŷ���   ����׶��   �������Ŷ���   �������ض���   ζ��   ������������������϶   ������������������Ҷ   ϶��   ���������׶�   ������������¶��   ���������׶�   ����Ҷ��   ����������Ҷ���   ����������������ض��   �       HB          �     8              �?                               
                                 	       
   %      &      +      0      1      ;      B      C      F      G      L      Q      R      X      ^      c      g      h      o      s      t      {          !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2      3     4   	  5     6     7   /  8   9  9   ?  :   A  ;   B  <   F  =   L  >   3YY5;�  W�  Y5;�  �  T�  YYY8;�  V�  YY;�  Y;�  YY;�	  �  Y;�
  �  YY;�  �  P�  R�  QY;�  �  T�  YY;�  YY;�  �  Y;�  �  YY0�  PQV�  �  �  PQ�  �  P�  Q�  �  PQ�  Y0�  P�  QV�  �  PQYY0�  P�  QV�  �
  �  �  �  �  �3  P�  �  �  R�  Q�  �  �  T�  T�  �  T�  �  �  PQ�  P�  Q�  �  T�  T�  �  T�  �  �  PQ�  P�  Q�  Y0�  P�  QV�  �  �5  P�  �  R�  R�  Q�  Y0�  P�  QV�  &�  �  V�  �  �5  P�  R�  R�  Q�  Y0�  PQV�  .�  �  �  Y0�  P�   QV�  �  T�)  �   �  .�  T�!  P�
  Q�  Y0�  PQV�  ;�  �  P�  T�  T�  �  T�  Q�  ;�  �  P�  T�  T�  �  T�  Q�  ;�"  �  P�  R�  Q�  &�  �"  V�  .�  �  �  �"  �  �  �  �  Y`            GDSC            K      ����������Ķ   �����Ķ�   �����¶�   ����������¶   �����϶�   ���������¶�   ��������Ҷ��   ��������Ӷ��   ���������޶�   ���������������Ŷ���   ����׶��   ����Ӷ��   �����޶�   ������������������ض   ��������������ض   d                                                     +      1   	   2   
   3      :      @      I      3YY;�  Y;�  �  P�  RQ�  Y0�  PQV�  �  �  PQT�  PQT�  PQT�  P�  Q�  �  �  T�  �  �  Y0�	  P�
  QV�  �  �  T�  �  �  P�  T�  �  QY`       GDSC      	   ,   �      ������򶶶   ���������Ѷ�   �������������Ѷ�   ��������޶��   �����϶�   ������������������Ŷ   ���ӄ�   �����Ŷ�   ��������   ���������������Ŷ���   ����׶��   ���������¶�   ������ٶ   �������������������Ӷ���   �����������Ѷ���   �������ڶ���   ������������������¶   �����������Ķ���   ���Ӷ���   ����������Ӷ   �����Ķ�   ����ض��   �������ڶ���   �������������������϶���   ����¶��   ��������Ķ��   ���¶���            �@            Player    �������?            width            �������?                   
                                 	   (   
   )      0      5      9      :      @      I      J      T      a      b      c      m      n      t      {      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   3YY;�  9�  YY;�  �  YY0�  PQV�  �  PQ�  W�  T�  L�  M�  T�  �  Y0�	  P�
  QV�  ;�  �  �  �  PQ�  �  &�  PQV�  �  �  P�  PQQ�  �  &�  PQT�  �  V�  �  PQT�  P�  R�  R�  Q�  �  �  W�  T�  L�  M�  �  Y0�  PQV�  W�  T�  PQ�  W�  T�  PW�  R�  R�  R�  R�  Q�  W�  T�  PQ�  Y0�  PQV�  W�  T�  PQ�  W�  T�  PW�  R�  R�  R�  R�  Q�  W�  T�  PQ�  �  Y0�  P�  QV�  �  �  �  �  &�  V�  �  PQ�  (V�  �  PQ�  �  �  P�  QY`       GDSC   !      -   �      ������������τ�   �������Ķ���   ��������������Ķ   ����Ķ��   ����Ķ��   �������϶���   ��������   ���������޶�   �����޶�   �����Ӷ�   ����¶��   �����Ķ�   �����϶�   ���������¶�   ��������Ҷ��   ������¶   ��������������ض   ���������������Ŷ���   ����׶��   �������ض���   �����������ٶ���   ������������������������Ҷ��   ���׶���   ���ƶ���   ���϶���   ���������Ӷ�   ������������������������Ҷ��   ���϶���   ����������Ӷ   ����������������������¶   �������������Ѷ�   �����׶�   ���������׶�   
                  �������?      Hit   �������?         �������?                   
                              #   	   (   
   )      .      /      2      3      9      P      W      X      _      d      v      w      ~      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   3YY5;�  W�  Y5;�  W�  YY;�  �  T�  Y;�  Y;�  �  Y;�	  YY;�
  �  YY;�  YY0�  PQV�  �  �  PQT�  PQT�  PQT�  PQT�  P�  Q�  �  P�  T�  QYY0�  P�  QV�  &�
  V�  �  �  P�  R�  �  P�  T�  QR�  Q�  Y0�  P�  QV�  �  �  T�	  �  �  T�  P�  Q�  �  T�  P�  Q�  &�  
�  V�  �  PQ�  �  �  T�  PQ�  YY0�  P�  QV�  �  T�  P�	  R�  R�  QYYY0�  PQV�  &�
  V�  �  T�  P�  Q�  �
  �  �  �  T�  T�  PQT�   P�  Q�  (V�  �  T�  P�  Q�  �
  �  Y`     GDSC   +   	   ,   �      ������������τ�   �����¶�   �����������ض���   �����������ض���   �������ض���   �������ض���   �����׶�   �������ƶ���   �����ׄ򶶶�   ����Ҷ��   ���������޶�   �����޶�   �������϶���   ��������   ���������������Ŷ���   ����׶��   ���Ҷ���   ����¶��   ���������Ķ�   ���������Ҷ�   ������¶   ������������������������ض��   �������������Ӷ�   ����������������Ҷ��   ��������¶��   ����¶��   ��������������Ӷ   �������Ӷ���   ��������Ҷ��   ��������������ڶ   ��������������ض   �������ض���   ��������������ض   ��������Ӷ��   �¶�   ����¶��   ����������Ӷ   �����Ӷ�   �Ŷ�   ���������׶�   ���������¶�   �������Ӷ���   �������������������Ӷ���      res://Scenes/Bullet.tscn   �        A         D         W         S         space                                                     #      $      )   	   .   
   3      :      ;      B      R      S      ]      ^      e      j      k      z      ~            �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   3YY5;�  �L  PQY5;�  W�  Y5;�  W�  Y5;�  W�  �  YY;�	  �  Y;�
  �  Y;�  �
  Y;�  �  T�  YY0�  P�  QV�  ;�  �  T�  P�  R�  R�  R�  Q�  �  �  �  T�  PQ�	  �  �  �  P�  PQQ�  �  P�  QY�  &�  T�  P�  Q�  T�  �  V�  �  PQYY0�  PQV�  ;�  �  T�  PQ�  �  P�  Q�  �  T�  P�  Q�  �  T�  �  �  �  T�  �  �  �  T�   �  T�   �  �  T�!  �  T�"  �  �  T�#  PQYY0�$  P�%  R�&  R�'  QV�  �  �%  �  �  &�'  �  V�  �  T�(  PQT�'  P�&  Q�  (V�  �  T�(  PQT�'  P�&  Q�  �  &�  
�  V�  �)  PQT�*  PQY`       GDSC   %      8        ���������τ򶶶�   �������Ӷ���   �����Ӷ�   �������ض���   ����Ŷ��   ����Ŷ��   ��������Ŷ��   ��������Ŷ��   ������Ŷ   ������Ŷ   ���¶���   ��������������Ŷ   ��������������Ŷ   �����������Ҷ���   �����϶�   ����������Ŷ   ����Ҷ��   �����������ض���   �����Ҷ�   ��������������ض   �������������������������Ҷ�   ���϶���   ������������Ҷ��   ���Ķ���   ��������   �����������Ҷ���   ����������Ŷ   ߶��   ����϶��   ж��   �������������Ӷ�   �������Ӷ���   ��Ŷ   ������Ӷ   ��������Ҷ��   ��������¶��   �������ض���   "   res://Scenes/Enemies/Triangle.tscn         res://Scenes/Enemies/Square.tscn   "   res://Scenes/Enemies/Pentagon.tscn                           add_enemies       disabled  ��Q��?  ��Q��?                                                              &      -   	   4   
   5      :      ?      @      F      L      M      R      S      Y      ]      ^      d      n      w      x            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5     6   	  7     8   3YY5;�  ?PQY5;�  ?P�  QY5;�  ?P�  QYY5;�  W�  Y5;�  W�  Y5;�  W�  YY;�	  �  Y;�
  �  YY;�  LMY;�  LMYY;�  �  YY0�  PQV�  �  PQ�  Y0�  PQV�  )�  �  T�  PQV�  �  T�  P�  T�  QYY0�  P�  QV�  &�  V�  �  &�
  V�  �?  P�
  Q�  �  �  �  �  �  P�  Q�  �  )�  �  T�  PQV�  �  T�  PQ�  �  T�  P�  R�  Q�  Y0�  PQV�  )�  �	  V�  �%  PQ�  �  ;�  �  �  ;�  �'  PQ�  �  &�  	�  V�  �  �  �  '�  �	  V�  �  �  �  �  ;�  �  T�  PQ�  ;�   L�
  R�  R�  R�  M�  �   T�!  PQ�  �  T�"  P�  Q�  �  T�  �  L�   T�#  PQM�$  Y`     GDSC   %      2        ������������τ�   �����Ӷ�   �������Ķ���   ��������������Ķ   �������϶���   ��������   �����Ӷ�   ����Ҷ��   ��������Ӷ��   �����Ӷ�   ����¶��   �����϶�   ���������������Ŷ���   ����׶��   �������������ٶ�   ���������������Ӷ���   ���������Ҷ�   ϶��   ζ��   �����Ӷ�   �����ڶ�   ������������������������Ҷ��   ���׶���   ߶��   ������������Ҷ��   ���ƶ���   ���϶���   ���������Ӷ�   ������������������������Ҷ��   ���϶���   ����������Ӷ   ����Ӷ��   �������������Ӷ�   �������Ӷ���   ���������¶�   ��������Ҷ��   ��������������ض       res://Scenes/Enemies/Square.tscn   d      
                           split               Hit       ?                                                               !   	   &   
   +      0      5      6      <      E      F      M      [      \      ]      a      q      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -     .     /     0     1     2   3YY5;�  �L  PQYY5;�  W�  YY;�  �  T�  Y;�  �  Y;�  �  Y;�  �  Y;�	  �  Y;�
  �  YY0�  PQV�  �  �  P�  R�  QYY0�  P�  QV�  ;�  �  P�  T�  PQ�  Q�  �  �  &�  V�  �  T�  �(  P�  �	  R�  �	  Q�  �  T�  �(  P�  �	  R�  �	  Q�  �  �  T�  P�  T�  QYY0�  P�  QV�  )�  �
  V�  �  P�  Q�  �  �  T�  P�  Q�  �  T�  P�  Q�  �  �  T�  PQYY0�  P�  QV�  �  T�  P�  R�	  R�
  Q�  Y0�
  PQV�  &�  T�  	�  V�  �  PQ�  .�  �?  P�  T�  Q�  ;�   �  T�!  PQ�  �"  PQT�#  P�   Q�  �   T�$  �$  �  P�  R�  Q�  �   T�  �  �  �  �   T�  �  �  �  �  PQ�  Y` GDSC   *      D   �     ���Ӷ���   ���۶���   ����Ŷ��   ����Ŷ��   �����Ķ�   �����Ķ�   �������������ض�   ��������   ����Ŷ��   ��ƶ   �����϶�   �������Ӷ���   �����¶�   ����¶��   ����������������Ҷ��   ����Ҷ��   �����������ض���   ���������Ӷ�   �����Ķ�   �����Ķ�   ����   ���ݶ���   ��Ŷ   ���Ӷ���   �������ڶ���   ������������Ӷ��   �������Ӷ���   ��������Ҷ��   �������ض���   ζ��   ϶��   ����¶��   ��������Ҷ��   ���¶���   ��ƶ   �����۶�   ��������������Ŷ   �����Ҷ�   ��Ŷ   ���Ӷ���   �������Ҷ���   ���¶���      res://Scenes/Room.tscn              enter      0      (                                                                                         "      '   	   -   
   .      4      8      9      @      I      M      N      O      U      _      e      f      p      v      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +     ,     -     .   ,  /   -  0   6  1   J  2   K  3   Y  4   _  5   e  6   t  7   z  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   3YY5;�  ?PQY5;�  W�  Y5;�  W�  YY;�  �  T�  Y;�  �  Y;�	  LMYY0�
  PQV�  �  PQ�  Y0�  P�  QV�  &�  T�  P�  QV�  �  PQ�  �  Y0�  PQV�  )�  �  T�  PQV�  �  T�  PQ�  �  ;�  �  T�  P�  Q�  �  T�  �  �  �	  �  T�  PQ�  �  �  )�  �	  T�  PQV�  �  P�  Q�  Y0�  P�  QV�  ;�  �  T�  PQ�  �  T�  P�  Q�  �  �  T�  T�  �	  L�  MT�  �  �  �  �  T�  T�  �	  L�  MT�  �  �  �  �  ;�  �  T�   P�  QT�   P�  Q�  ;�!  �  T�   P�  QT�   P�  Q�  ;�"  �  T�   P�  QT�   P�	  Q�  ;�#  �  T�   P�  QT�   P�
  QY�  ;�$  LM�  �  &�  �	  T�  PQ�  V�  �$  T�%  P�	  L�  M�	  L�  �  MQ�  �  &�  �  �  V�  �$  T�%  PP�	  L�  �  M�	  L�  MQQ�  �  &�$  T�&  P�  P�  R�
  QQV�  �!  T�'  PQ�  �!  T�(  �  �  &�$  T�&  P�  P�  R�
  QQV�  �  T�'  PQ�  �  T�(  �  �  &�$  T�&  P�  P�
  R�  QQV�  �#  T�'  PQ�  �#  T�(  �  �  &�$  T�&  P�  P�
  R�  QQV�  �"  T�'  PQ�  �"  T�(  �  �  �  �  T�$  �$  �  �  &�  �  �	  T�  PQV�  �  T�)  �  Y`   GDSC   :      ]   �     ������������τ�   �����������Ķ���   �����������Ķ���   ����������Ķ   ����������Ķ   �������Ķ���   ��������������Ķ   �����Ӷ�   �����Ӷ�   ����������Ӷ   �����Ŷ�   ����Ҷ��   �����Ӷ�   ���ƶ���   ���������޶�   �����޶�   �����Ӷ�   ����Ӷ��   �����������Ҷ���   ����������������Ҷ��   ���������Ҷ�   �������϶���   ��������   ��������ض��   �����Ķ�   �����϶�   ���������¶�   ��������Ҷ��   ���������������Ŷ���   ����׶��   �������ض���   �����������ٶ���   ��������������ض   ��������¶��   ����¶��   ����ⶶ�   ������Ҷ   ���������������Ӷ���   ���ƶ���   �����׶�   ���������׶�   ���ⶶ��   �������������¶�   ����¶��   �������Ӷ���   ��������������ڶ   ��������Ҷ��   ����Ķ��   ������ض   ������������������������Ҷ��   ���׶���   ���϶���   ���������Ӷ�   �¶�   �Զ�   ������������������������Ҷ��   ���϶���   ����������Ӷ       res://Scenes/Triangle_ghost.tscn   
      d      2                  �������?      ?  �������?  �������?            Hit                           
                               )   	   *   
   .      1      4      6      8      9      >      C      H      I      P      Q      W      \      a      h      i      l      m      p      q      w       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5      6     7     8     9     :   $  ;   /  <   0  =   5  >   6  ?   >  @   D  A   J  B   K  C   Q  D   Z  E   a  F   f  G   g  H   m  I   s  J   {  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   3YY5;�  W�  Y5;�  W�  Y5;�  W�  Y5;�  W�  YY5;�	  ?PQYY>�
  N�  �  R�  �  R�  �  YOYY;�  �  Y;�  �  Y;�  �  YY;�  �
  T�  YY8;�  �  Y;�  �  Y;�  �  Y;�  �  T�  �  Y;�  YY;�  YY0�  PQV�  �  �  PQT�  PQT�  PQT�  PQT�  P�  QYY0�  P�  QV�  /�  V�  �
  T�  V�  �  �  P�  R�  �  P�  T�   QR�  Q�  �  &�  T�!  �  V�  �  T�"  PQ�  �  T�"  PQ�  �  �
  T�  �  �  �
  T�  V�  �  �  �  T�#  T�$  P�  Q�  �  �  �  �%  P�  Q�  �  &�  V�  �  T�"  P�  Q�  �  T�&  PQ�  �  �
  T�  �  �  �  �  �  T�'  T�  PQT�(  P�  Q�  �  �
  T�  V�  �  �  T�)  T�$  P�  Q�  �  �  �  P�  R�  R�	  Q�  �  �%  P�  Q�  �  &�  T�!  �  V�  �  T�"  PQ�  �  �
  T�  YY0�*  PQV�  ;�+  �	  T�,  PQ�  �+  T�-  P�
  Q�  �.  P�+  Q�  �  �+  T�   �   �  �+  T�  �  �  �+  T�/  �  T�/  �  �+  T�0  �  T�0  YY0�1  P�2  QV�  �  �2  T�  �  �  T�&  P�
  Q�  �  T�3  P�  Q�  &�  
�  V�  �4  PQ�  �  �2  T�4  PQ�  �  �  T�"  P�2  T�5  Q�  �  T�&  PQ�  �  �
  T�  �  �  �2  T�6  YY0�7  P�8  QV�  �8  T�9  P�  R�  R�  QY`GDSC         
   2      ������؄򶶶   �����϶�   ����ض��   �������������������϶���   ����¶��    ����������������������������Ҷ��   ���������Ӷ�   
   modulate:a       �?             ?                               	            $      %      &      ,   	   0   
   3YY0�  PQV�  W�  T�  PRR�  R�  R�  R�  R�  Q�  W�  T�  PQYYY0�  PQV�  �  PQY`         GDSC          8   9     ���Ӷ���   �����Ķ�   ���������嶶   ����ⶶ�   ���ⶶ��   �涶   ��������   �������ض���   ��������   ��������ض��   �����������϶���   ����Ŷ��   ���������������ض���   �������������������ض���   �������������������ض���   ����¶��   ����������������ض��   �����Ҷ�   ������Ӷ   ����¶��   ���ݶ���   ���ƶ���   ���������������ض���   ��������������ض   ��Ŷ   ���������Ŷ�   ��������Ӷ��   ����Ӷ��   ��������¶��   ����������ض   ���Ӷ���   �����Ӷ�                     333333�?                                                            #      &      ,   	   1   
   6      ;      @      A      H      L      S      Y      a      b      h      n      t      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1     2   
  3     4     5   ,  6   0  7   7  8   3Y2�  YY:�  L�  T�  R�  T�  R�  T�  R�  T�  MYY;�  �  T�  Y;�	  Y;�
  LMY;�  Y;�  Y;�  �  Y;�  �  YY0�  P�  QV�  �  �  �  �
  T�  P�  Q�  �  T�  PQ�  �	  �  T�  PQYY0�  PQV�  )�  �  V�  &�  �  V�  &�'  PQ
�  �  �  V�  �  PQ�  �  &�  PQV�  �
  T�  P�  Q�  (V�  �  PQ�  �  .�
  �  Y0�  PQV�  ;�  �  �	  �  &�
  T�  P�  QV�  �  �  �  �  �  �  .�  �  (V�  .�  YY0�  PQV�  �  �  ;�  �  T�  PQ�  �  T�  P�	  Q�  �  T�  P�	  Q�  �  T�  PQ�  �	  �  T�  PQ�  *�
  T�  P�  �	  QV�  �	  �  T�  PQ�  &�	  �  V�  ;�  �
  T�  PQ�  �	  P�
  L�  �  M�
  L�  �  MQ�  �  �  �  �
  T�  P�  QY`         GDST               *   WEBPRIFF   WEBPVP8L   /  Ыfխ����            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Wall.png-c1e6c8a44733b40234aae37bb1bf51ff.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/Wall.png"
dest_files=[ "res://.import/Wall.png-c1e6c8a44733b40234aae37bb1bf51ff.stex" ]

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
      GDST;   ;            �  WEBPRIFF�  WEBPVP8L�  /:��2D�? ��$A�̟�K[Q5}�`��_�$۪�T�wq�{qm��G����;1 ڰMF�+{��<����Aj/�Ǚ���n�qV{�t�����*�`�m���@t�*,���w���u�%�3L�u�n��Xx#�!lM?�NJ��� D�4"s0g]���>����qf��� ��y�I��u��y�̓�q2�ס�`-@��3�T�
�m L��
G^�#�@���h�`�+A�0��l 0�]�0!:�� p�C��	"W h7�x(�s��Y;�����%���c�Q 
�N����,�pǰ��ﱟ�~��h:E�"O6C�ĕ9���o�D p�u#H� ;�{����� U��rJՋ  ���G9���K�׮Q�[ | g� 0�������Ă+�k��b� X��K4�L����#X��e�Xfw�y�=����`qMQ9M{xp�S� �J�	G,�4����N�Qv��`�ݺ	�.$c��4�8���7��{�?�s~1a��X����0�_�8
�l� x��s��������4=|pja������9�bI��Gpaz��6�g��>��C �����J��`�	<x�xB0z��Ij�?��G8�{8���s|�}��|.�
��*0\Ho�b�	,��7����FT� T��A.La���	q��p+ �(p�K����M��_��'
3.�F!¸&C��M��8 �}�H/`o� &Ȼ��D,`j�j��]���0W@����]�*N� �3�������p�A l��\�GH�\�G�3���t!��@�T�~G���U�)5O� �;";�� �\| ���  g=� |�`��ϩ��Y|�*彵��f�g�Z�y����[=�ywsI�>�j�<���K�E<��������             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/glowing_circle.png-75897cdbbc43d0e165348326f247e19b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/glowing_circle.png"
dest_files=[ "res://.import/glowing_circle.png-75897cdbbc43d0e165348326f247e19b.stex" ]

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
        GDST`                r   WEBPRIFFf   WEBPVP8LY   /_�' Hq([,Hq,K,L��?Z@��m$-����`��Ue�oD�'`�Jm�2�V�S�j�^�y�ZN���}\��t=   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/tilemap.png-b9bc55d9a3c5afef7bfb764e7fa08183.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/tilemap.png"
dest_files=[ "res://.import/tilemap.png-b9bc55d9a3c5afef7bfb764e7fa08183.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
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
            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
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
              [remap]

path="res://Scripts/Bullet.gdc"
       [remap]

path="res://Scripts/Camera.gdc"
       [remap]

path="res://Scripts/Health_bar.gdc"
   [remap]

path="res://Scripts/Lazer.gdc"
        [remap]

path="res://Scripts/Pentagon.gdc"
     [remap]

path="res://Scripts/Player.gdc"
       [remap]

path="res://Scripts/Room.gdc"
         [remap]

path="res://Scripts/Square.gdc"
       [remap]

path="res://Scripts/Test_stage.gdc"
   [remap]

path="res://Scripts/Triangle.gdc"
     [remap]

path="res://Scripts/TriangleGhost.gdc"
[remap]

path="res://Scripts/Walker.gdc"
       �PNG
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
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                     class         Walker        language      GDScript      path      res://Scripts/Walker.gd       base      Node   _global_script_class_icons                Walker            application/config/name         Roguelike shapes   application/run/main_scene$         res://Scenes/Test_stage.tscn   application/config/icon         res://icon.png     display/window/size/width      �     display/window/size/height      8     display/window/size/fullscreen            display/window/stretch/mode         viewport   display/window/stretch/aspect         keep+   gui/common/drop_mouse_on_gui_input_disabled            input/W�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      W      unicode           echo          script         input/A�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      A      unicode           echo          script         input/S�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      S      unicode           echo          script         input/D�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode      D      unicode           echo          script         input/space�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script         input/enter�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode           unicode           echo          script         layer_names/2d_physics/layer_1         Player     layer_names/2d_physics/layer_2         Bullet     layer_names/2d_physics/layer_3         Enemy      layer_names/2d_physics/layer_4         Enemy_attack   layer_names/2d_physics/layer_5         Stage   )   physics/common/enable_pause_aware_picking         )   rendering/environment/default_clear_color      r�>s� >��P>  �?)   rendering/environment/default_environment          res://default_env.tres               