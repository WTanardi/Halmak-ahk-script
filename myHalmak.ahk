; Halmak layout
; Top Row
q::w
w::l
e::r
r::b
t::z
y::;
u::q
i::u
o::d
p::j

; Middle Row
a::s
s::h
d::n
f::t
g::,
h::.
j::a
k::e
l::o
sc027::i

; Bottom Row
z::f
x::m
c::v
v::c
b::/
n::g
m::p
,::x
.::k
/::y

; Qwerty Ctrl, Alt and Windows Shortcut keys
; Top row
^q::^q
^w::^w
^e::^e
^r::^r
^t::^t
^y::^y
^u::^u
^i::^i
^o::^o
^p::^p

; Middle row
^a::^a
^s::^s
^d::^d
^f::^f
^g::^g
^h::^h
^j::^j
^k::^k
^l::^l
^sc027::^;

; Bottom row
^z::^z
^x::^x
^c::^c
^v::^v
^b::^b
^n::^n
^m::^m
^,::^,
^.::^.
^/::^/

; My own config
; Switch capslock and backspace keys
CapsLock::BackSpace
BackSpace::CapsLock

; Media keys
Home::F13
End::F14
PgUp::Media_Next
PgDn::Media_Prev 


; Space as modifier for arrow keys
#SingleInstance, Force
timer := 0
$Space::
  while GetKeyState("Space", "P")
    {
        timer++
        Sleep, 5
    }
  if timer < 100
    {
        Send {Space}
    }
    else if timer > 100
    {
        Send {Space down}
    }
    timer := 0
    return

;Space-Test

+Space:: 
  Send {Space}
  return

; Space arrows
Space & i::Send {Up}
Space & j::Send {Left}
Space & k::Send {Down}
Space & l::Send {Right}

; Space arrows with shift blocking
#If GetKeyState("Shift")
Space & i::Send +{Up}
Space & j::Send +{Left}
Space & k::Send +{Down}
Space & l::Send +{Right}

;Space arrows with control modifier
#If GetKeyState("Control")
Space & i::Send ^{Up}
Space & j::Send ^{Left}
Space & k::Send ^{Down}
Space & l::Send ^{Right}