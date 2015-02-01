/*
WinStructs - A class to hold Window Structure Definitions

STYLE GUIDE
===========
ALWAYS Put a link to the MSDN page for the STRUCT
ALWAYS Use the same name as the Struct.
ALWAYS Strip all lower case letters from the start of item names - eg "hDevice" becomes "Device"

*/

Class WinStructs {
	; https://msdn.microsoft.com/en-us/library/windows/desktop/ms645568%28v=vs.85%29.aspx
	static RAWINPUTDEVICELIST := "
	(
		HANDLE Device;	// A handle to the raw input device.
		DWORD Type;		// The type of device. This can be one of the following values
						// RIM_TYPEHID 			2 - The device is an HID that is not a keyboard and not a mouse
						// RIM_TYPEKEYBOARD 	1 - The device is a keyboard.
						// RIM_TYPEMOUSE 		0 - The device is a mouse.
	)"

	; https://msdn.microsoft.com/en-us/library/windows/desktop/ms645589(v=vs.85).aspx
	static RID_DEVICE_INFO_MOUSE := "
	(
		DWORD Id;
		DWORD NumberOfButtons;
		DWORD SampleRate;
		BOOL HasHorizontalWheel;
	)"
	
	; https://msdn.microsoft.com/en-us/library/windows/desktop/ms645587(v=vs.85).aspx
	static RID_DEVICE_INFO_KEYBOARD := "
	(
		DWORD Type;
		DWORD SubType;
		DWORD KeyboardMode;
		DWORD NumberOfFunctionKeys;
		DWORD NumberOfIndicators;
		DWORD NumberOfKeysTotal;
	)"
	
	; https://msdn.microsoft.com/en-us/library/windows/desktop/ms645584%28v=vs.85%29.aspx
	static RID_DEVICE_INFO_HID := "
	(
		DWORD VendorId;
		DWORD ProductId;
		DWORD VersionNumber;
		USHORT UsagePage;
		USHORT Usage;
	)"

	; https://msdn.microsoft.com/en-us/library/windows/desktop/ms645581%28v=vs.85%29.aspx
	static RID_DEVICE_INFO := "
	(
		DWORD Size;
		DWORD Type;
		{
			WinStructs.RID_DEVICE_INFO_MOUSE mouse;
			WinStructs.RID_DEVICE_INFO_KEYBOARD keyboard;
			WinStructs.RID_DEVICE_INFO_HID hid;
		}
	)"
	
	;https://msdn.microsoft.com/en-us/library/windows/hardware/ff539697(v=vs.85).aspx
	static HIDP_CAPS := "
	(
		USHORT Usage;
		USHORT UsagePage;
		USHORT InputReportByteLength;
		USHORT OutputReportByteLength;
		USHORT FeatureReportByteLength;
		USHORT Reserved[17];
		USHORT NumberLinkCollectionNodes;
		USHORT NumberInputButtonCaps;
		USHORT NumberInputValueCaps;
		USHORT NumberInputDataIndices;
		USHORT NumberOutputButtonCaps;
		USHORT NumberOutputValueCaps;
		USHORT NumberOutputDataIndices;
		USHORT NumberFeatureButtonCaps;
		USHORT NumberFeatureValueCaps;
		USHORT NumberFeatureDataIndices;
	)"

}