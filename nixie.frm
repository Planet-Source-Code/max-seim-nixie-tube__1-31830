VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Nixie-Tubes"
   ClientHeight    =   960
   ClientLeft      =   3975
   ClientTop       =   2985
   ClientWidth     =   2445
   LinkTopic       =   "Form1"
   ScaleHeight     =   960
   ScaleWidth      =   2445
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   2550
      Top             =   180
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   975
      Index           =   4
      Left            =   1920
      Picture         =   "nixie.frx":0000
      ScaleHeight     =   975
      ScaleWidth      =   555
      TabIndex        =   4
      Top             =   0
      Width           =   555
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   975
      Index           =   3
      Left            =   1440
      Picture         =   "nixie.frx":0D0B
      ScaleHeight     =   975
      ScaleWidth      =   555
      TabIndex        =   3
      Top             =   0
      Width           =   555
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   975
      Index           =   2
      Left            =   960
      Picture         =   "nixie.frx":1A16
      ScaleHeight     =   975
      ScaleWidth      =   555
      TabIndex        =   2
      Top             =   0
      Width           =   555
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   975
      Index           =   1
      Left            =   480
      Picture         =   "nixie.frx":2721
      ScaleHeight     =   975
      ScaleWidth      =   555
      TabIndex        =   1
      Top             =   0
      Width           =   555
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   975
      Index           =   0
      Left            =   0
      Picture         =   "nixie.frx":342C
      ScaleHeight     =   975
      ScaleWidth      =   555
      TabIndex        =   0
      Top             =   0
      Width           =   555
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'
'
'   Nixie - Tube Display
'   By:  Max Seim  mlseim@mmm.com
'   Rev:  02.15.02
'
Dim h1 As Integer
Dim h2 As Integer
Dim m1 As Integer
Dim m2 As Integer
Dim f As Integer
Private Sub Form_Load()
ChDir App.Path
Form1.Top = (Screen.Height - Form1.Height) / 2 ' center form vertically on screen.
Form1.Left = (Screen.Width - Form1.Width) / 2 ' center form horizontally on screen.
End Sub
Private Sub Timer1_Timer()
h1 = Val(Mid$(Time$, 1, 1))
h2 = Val(Mid$(Time$, 2, 1))
m1 = Val(Mid$(Time$, 4, 1))
m2 = Val(Mid$(Time$, 5, 1))

Picture1(0).Picture = LoadPicture("tube" & h1 & ".gif")
Picture1(1).Picture = LoadPicture("tube" & h2 & ".gif")
Picture1(3).Picture = LoadPicture("tube" & m1 & ".gif")
Picture1(4).Picture = LoadPicture("tube" & m2 & ".gif")

' display the blinking colon
   If f = 0 Then
   Picture1(2).Picture = LoadPicture("tubecolon1.gif")
   f = 1
   Exit Sub
   End If
      If f = 1 Then
      Picture1(2).Picture = LoadPicture("tubecolon0.gif")
      f = 0
      End If
End Sub
