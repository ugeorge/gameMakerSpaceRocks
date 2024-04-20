/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 50445DBC
/// @DnDArgument : "key" "ord("W")"
var l50445DBC_0;
l50445DBC_0 = keyboard_check(ord("W"));
if (l50445DBC_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 5AB26AD9
	/// @DnDParent : 50445DBC
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 053805F3
/// @DnDArgument : "key" "ord("S")"
var l053805F3_0;
l053805F3_0 = keyboard_check(ord("S"));
if (l053805F3_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B77FD65
	/// @DnDParent : 053805F3
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "op" "4"
	if(speed >= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 21D39644
		/// @DnDParent : 1B77FD65
		/// @DnDArgument : "dir" "image_angle"
		/// @DnDArgument : "speed" "-0.1"
		motion_add(image_angle, -0.1);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0230757A
/// @DnDArgument : "key" "ord("A")"
var l0230757A_0;
l0230757A_0 = keyboard_check(ord("A"));
if (l0230757A_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10B97AC5
	/// @DnDParent : 0230757A
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 058F7CA6
/// @DnDArgument : "key" "ord("D")"
var l058F7CA6_0;
l058F7CA6_0 = keyboard_check(ord("D"));
if (l058F7CA6_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7563595B
	/// @DnDParent : 058F7CA6
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 1B0A26EA
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 4C243254
var l4C243254_0;
l4C243254_0 = mouse_check_button_pressed(mb_left);
if (l4C243254_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1663F1EB
	/// @DnDParent : 4C243254
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_bullet"
	/// @DnDSaveInfo : "objectid" "Obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
}