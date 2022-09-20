# References: https://developer.apple.com/library/archive/technotes/tn2450/_index.html#//apple_ref/doc/uid/DTS40017618-CH1-KEY_TABLE_USAGES
function keymapDucky() {
  # Right Control --> Right arrow
  # Right Shift --> Up arrow
  # Right Alt --> Left arrow
  # Right GUI --> Down arrow
  # Left Alt --> Left GUI
  # Left GUI --> Left Alt
  # Caps lock --> Escape
  # Escape --> `
  hidutil property --set '{
    "UserKeyMapping": [
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E4,
        "HIDKeyboardModifierMappingDst":0x70000004F
      },
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E5,
        "HIDKeyboardModifierMappingDst":0x700000052
      },
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E6,
        "HIDKeyboardModifierMappingDst":0x700000050
      },
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E7,
        "HIDKeyboardModifierMappingDst":0x700000051
      },
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E2,
        "HIDKeyboardModifierMappingDst":0x7000000E3
      },
      {
        "HIDKeyboardModifierMappingSrc":0x7000000E3,
        "HIDKeyboardModifierMappingDst":0x7000000E2
      },
      {
        "HIDKeyboardModifierMappingSrc":0x700000039,
        "HIDKeyboardModifierMappingDst":0x700000029
      },
      {
        "HIDKeyboardModifierMappingSrc":0x700000029,
        "HIDKeyboardModifierMappingDst":0x700000035
      }
    ]
  }'
}

function keymapMac() {
  # Caps lock --> Escape
  hidutil property --set '{
    "UserKeyMapping": [
      {
        "HIDKeyboardModifierMappingSrc":0x700000039,
        "HIDKeyboardModifierMappingDst":0x700000029
      },
    ]
  }'
}

function rmKeymap() {
  hidutil property --set '{
    "UserKeyMapping": []
  }'
}

alias kmd=keymapDucky
alias kmm=keymapMac
alias rmk=rmKeymap
